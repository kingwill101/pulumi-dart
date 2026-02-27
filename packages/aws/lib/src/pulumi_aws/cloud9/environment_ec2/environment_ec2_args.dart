// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for EnvironmentEC2.
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

  EnvironmentEC2Args({
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
    final map = <String, dynamic>{};
    final automaticStopTimeMinutesValue = automaticStopTimeMinutes;
    if (automaticStopTimeMinutesValue != null) {
      map['automaticStopTimeMinutes'] = automaticStopTimeMinutesValue;
    }
    final connectionTypeValue = connectionType;
    if (connectionTypeValue != null) {
      map['connectionType'] = connectionTypeValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['imageId'] = imageId;
    map['instanceType'] = instanceType;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final ownerArnValue = ownerArn;
    if (ownerArnValue != null) {
      map['ownerArn'] = ownerArnValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final subnetIdValue = subnetId;
    if (subnetIdValue != null) {
      map['subnetId'] = subnetIdValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory EnvironmentEC2Args.fromMap(Map<String, dynamic> map) {
    return EnvironmentEC2Args(
      automaticStopTimeMinutes:
          pulumi.Input.asOptionalInput<int>(map['automaticStopTimeMinutes']),
      connectionType:
          pulumi.Input.asOptionalInput<String>(map['connectionType']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      imageId: pulumi.Input.asInput<String>(map['imageId']),
      instanceType: pulumi.Input.asInput<String>(map['instanceType']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      ownerArn: pulumi.Input.asOptionalInput<String>(map['ownerArn']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      subnetId: pulumi.Input.asOptionalInput<String>(map['subnetId']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
