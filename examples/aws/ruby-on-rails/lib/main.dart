import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/pulumi_aws.dart' as aws;

class RubyOnRailsStack extends pulumi.Stack {
  late final pulumi.Output<String> vmIP;
  late final pulumi.Output<String> websiteURL;

  RubyOnRailsStack() {
    final config = pulumi.Config();
    final dbUser = config.require('dbUser');
    final dbPassword = config.require('dbPassword');
    final dbRootPassword = config.require('dbRootPassword');

    final webSg = aws.ec2.SecurityGroup(
      'webServerSecurityGroup',
      args: aws.ec2.SecurityGroupArgs(
        description: 'Enable HTTP and SSH access',
        ingress: [
          aws.ec2.SecurityGroupIngress(
            protocol: '-1',
            fromPort: 0,
            toPort: 0,
            cidrBlocks: ['0.0.0.0/0'],
          ),
        ],
        egress: [
          aws.ec2.SecurityGroupEgress(
            protocol: '-1',
            fromPort: 0,
            toPort: 0,
            cidrBlocks: ['0.0.0.0/0'],
          ),
        ],
      ),
    );

    final amiId = pulumi
        .output(
          aws.ec2.getAmi(
            aws.ec2.GetAmiArgs(
              mostRecent: true,
              owners: ['137112412989'],
              filters: [
                aws.ec2.GetAmiFilter(
                  name: 'name',
                  values: ['al2023-ami-*-x86_64'],
                ),
                aws.ec2.GetAmiFilter(
                  name: 'virtualization-type',
                  values: ['hvm'],
                ),
              ],
            ),
          ),
        )
        .apply((ami) => (ami as aws.ec2.GetAmiResult).id);

    final userData = '''
#!/bin/bash
set -euxo pipefail

dnf update -y
dnf install -y ruby ruby-devel mysql mysql-server mysql-devel git gcc gcc-c++ make

systemctl enable mysqld
systemctl start mysqld || true

cat >/tmp/rails-bootstrap.env <<'EOF'
DB_USER=$dbUser
DB_PASSWORD=$dbPassword
DB_ROOT_PASSWORD=$dbRootPassword
EOF

echo "Rails bootstrap baseline complete." >/var/log/rails-bootstrap.log
''';

    final webServer = aws.ec2.Instance(
      'webServer',
      args: aws.ec2.InstanceArgs(
        ami: amiId,
        instanceType: 't3.medium',
        vpcSecurityGroupIds: [webSg.id].output(),
        userData: userData,
      ),
    );

    vmIP = webServer.publicIp;
    websiteURL = webServer.publicDns.apply((dns) => 'http://$dns/notes');
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [
      pulumi.OutputProperty('vmIP', vmIP),
      pulumi.OutputProperty('websiteURL', websiteURL),
    ];
  }
}
