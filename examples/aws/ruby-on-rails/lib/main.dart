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
        description: 'Enable HTTP and SSH access'.input(),
        ingress: [
          aws.ec2.SecurityGroupIngress(
            protocol: '-1'.input(),
            fromPort: 0.input(),
            toPort: 0.input(),
            cidrBlocks: ['0.0.0.0/0'].input(),
          ),
        ].input(),
        egress: [
          aws.ec2.SecurityGroupEgress(
            protocol: '-1'.input(),
            fromPort: 0.input(),
            toPort: 0.input(),
            cidrBlocks: ['0.0.0.0/0'].input(),
          ),
        ].input(),
      ),
    );

    final amiId = pulumi
        .output(
          aws.ec2.getAmi(
            aws.ec2.GetAmiArgs(
              mostRecent: true.input(),
              owners: ['137112412989'].input(),
              filters: [
                aws.ec2.GetAmiFilter(
                  name: 'name'.input(),
                  values: ['al2023-ami-*-x86_64'].input(),
                ),
                aws.ec2.GetAmiFilter(
                  name: 'virtualization-type'.input(),
                  values: ['hvm'].input(),
                ),
              ].input(),
            ),
          ),
        )
        .apply<String>((ami) => ami.id);

    final userData =
        '''
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
        instanceType: 't3.medium'.input(),
        vpcSecurityGroupIds: pulumi.Output.all([
          webSg.id,
        ]).apply<List<String>>((ids) => ids.cast<String>()).input(),
        userData: userData.input(),
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
