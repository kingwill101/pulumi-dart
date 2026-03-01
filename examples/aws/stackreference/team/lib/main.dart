import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/pulumi_aws.dart' as aws;

class ExampleStack extends pulumi.Stack {
  late final pulumi.Output<String> instanceId;
  late final pulumi.Output<Map<String, String>?> instanceTags;

  ExampleStack() {
    final config = pulumi.Config();

    final companyStack = pulumi.StackReference(config.require('companyStack'));
    final departmentStack = pulumi.StackReference(
      config.require('departmentStack'),
    );

    final companyName = companyStack
        .getOutput(pulumi.Input.fromValue('companyName'))
        .apply<String>((value) => value as String);
    final departmentName = departmentStack
        .getOutput(pulumi.Input.fromValue('departmentName'))
        .apply<String>((value) => value as String);
    final teamName = config.require('teamName');

    final combinedTags = pulumi.Output
        .all<dynamic>([companyName, departmentName])
        .apply<Map<String, String>>(
          (values) => <String, String>{
            'company': values[0] as String,
            'department': values[1] as String,
            'team': teamName,
            'Managed By': 'Pulumi',
          },
        );

    final amiLookup = aws.ec2.getAmi(
      aws.ec2.GetAmiArgs(
        owners: ['099720109477'],
        mostRecent: true,
        filters: [
          aws.ec2.GetAmiFilter(
            name: 'name',
            values: ['ubuntu/images/hvm-ssd/ubuntu-bionic-18.04-amd64-server-*'],
          ),
        ],
      ),
    );

    final amiId = pulumi
        .output(amiLookup.then((result) => result.id))
        .apply<String>((value) => value as String);

    final instance = aws.ec2.Instance(
      'tagged',
      args: aws.ec2.InstanceArgs(
        ami: amiId,
        instanceType: 't2.medium',
        tags: combinedTags,
      ),
    );

    instanceId = instance.id;
    instanceTags = instance.tags;
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [
      pulumi.OutputProperty('instanceId', instanceId),
      pulumi.OutputProperty('instanceTags', instanceTags),
    ];
  }
}
