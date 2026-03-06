// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloud9_environment_ec2_environment_ec2_args_doc}
/// The set of arguments for EnvironmentEC2.
/// {@endtemplate}
/// {@macro pulumi_cloud9_environment_ec2_environment_ec2_args_doc}
class EnvironmentEC2Args {
  /// The number of minutes until the running instance is shut down after the environment has last been used.
  final pulumi.Input<int>? automaticStopTimeMinutes;
  /// The connection type used for connecting to an Amazon EC2 environment. Valid values are `CONNECT_SSH` and `CONNECT_SSM`. For more information please refer [AWS documentation for Cloud9](https://docs.aws.amazon.com/cloud9/latest/user-guide/ec2-ssm.html).
  final pulumi.Input<String>? connectionType;
  /// The description of the environment.
  final pulumi.Input<String>? description;
  /// The identifier for the Amazon Machine Image (AMI) that's used to create the EC2 instance. Valid values are
  /// * `amazonlinux-2-x86_64`
  /// * `amazonlinux-2023-x86_64`
  /// * `ubuntu-18.04-x86_64`
  /// * `ubuntu-22.04-x86_64`
  /// * `resolve:ssm:/aws/service/cloud9/amis/amazonlinux-2-x86_64`
  /// * `resolve:ssm:/aws/service/cloud9/amis/amazonlinux-2023-x86_64`
  /// * `resolve:ssm:/aws/service/cloud9/amis/ubuntu-18.04-x86_64`
  /// * `resolve:ssm:/aws/service/cloud9/amis/ubuntu-22.04-x86_64`
  final pulumi.Input<String> imageId;
  /// The type of instance to connect to the environment, e.g., `t2.micro`.
  final pulumi.Input<String> instanceType;
  /// The name of the environment.
  final pulumi.Input<String>? name;
  /// The ARN of the environment owner. This can be ARN of any AWS IAM principal. Defaults to the environment's creator.
  final pulumi.Input<String>? ownerArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The ID of the subnet in Amazon VPC that AWS Cloud9 will use to communicate with the Amazon EC2 instance.
  final pulumi.Input<String>? subnetId;
  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [EnvironmentEC2Args].
  /// [automaticStopTimeMinutes] The number of minutes until the running instance is shut down after the environment has last been used.
  /// [connectionType] The connection type used for connecting to an Amazon EC2 environment. Valid values are `CONNECT_SSH` and `CONNECT_SSM`. For more information please refer [AWS documentation for Cloud9](https://docs.aws.amazon.com/cloud9/latest/user-guide/ec2-ssm.html).
  /// [description] The description of the environment.
  /// [imageId] The identifier for the Amazon Machine Image (AMI) that's used to create the EC2 instance. Valid values are
  /// [instanceType] The type of instance to connect to the environment, e.g., `t2.micro`.
  /// [name] The name of the environment.
  /// [ownerArn] The ARN of the environment owner. This can be ARN of any AWS IAM principal. Defaults to the environment's creator.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [subnetId] The ID of the subnet in Amazon VPC that AWS Cloud9 will use to communicate with the Amazon EC2 instance.
  /// [tags] Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const EnvironmentEC2Args({
    this.automaticStopTimeMinutes,
    this.connectionType,
    this.description,
    required this.imageId,
    required this.instanceType,
    this.name,
    this.ownerArn,
    this.region,
    this.subnetId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automaticStopTimeMinutes': ?automaticStopTimeMinutes,
      'connectionType': ?connectionType,
      'description': ?description,
      'imageId': imageId,
      'instanceType': instanceType,
      'name': ?name,
      'ownerArn': ?ownerArn,
      'region': ?region,
      'subnetId': ?subnetId,
      'tags': ?tags,
    };
  }

  factory EnvironmentEC2Args.fromMap(Map<String, dynamic> map) {
    return EnvironmentEC2Args(
      automaticStopTimeMinutes: (() { final guardedValue = map['automaticStopTimeMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      connectionType: (() { final guardedValue = map['connectionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      imageId: pulumi.Input.fromValue(map['imageId'] as String),
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ownerArn: (() { final guardedValue = map['ownerArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetId: (() { final guardedValue = map['subnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

