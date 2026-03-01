// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EnvironmentEC2 resources.
class EnvironmentEC2State {
  /// The ARN of the environment.
  final pulumi.Input<String>? arn;
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
  final pulumi.Input<String>? imageId;
  /// The type of instance to connect to the environment, e.g., `t2.micro`.
  final pulumi.Input<String>? instanceType;
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
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The type of the environment (e.g., `ssh` or `ec2`).
  final pulumi.Input<String>? type;

  /// Creates a new [EnvironmentEC2State].
  /// [arn] The ARN of the environment.
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
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [type] The type of the environment (e.g., `ssh` or `ec2`).
  EnvironmentEC2State({
    pulumi.Output<String>? arn,
    pulumi.Output<int>? automaticStopTimeMinutes,
    pulumi.Output<String>? connectionType,
    pulumi.Output<String>? description,
    pulumi.Output<String>? imageId,
    pulumi.Output<String>? instanceType,
    pulumi.Output<String>? name,
    pulumi.Output<String>? ownerArn,
    pulumi.Output<String>? region,
    pulumi.Output<String>? subnetId,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? type,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      automaticStopTimeMinutes = pulumi.Input.asOptionalInput<int>(automaticStopTimeMinutes),
      connectionType = pulumi.Input.asOptionalInput<String>(connectionType),
      description = pulumi.Input.asOptionalInput<String>(description),
      imageId = pulumi.Input.asOptionalInput<String>(imageId),
      instanceType = pulumi.Input.asOptionalInput<String>(instanceType),
      name = pulumi.Input.asOptionalInput<String>(name),
      ownerArn = pulumi.Input.asOptionalInput<String>(ownerArn),
      region = pulumi.Input.asOptionalInput<String>(region),
      subnetId = pulumi.Input.asOptionalInput<String>(subnetId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      type = pulumi.Input.asOptionalInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'automaticStopTimeMinutes': ?automaticStopTimeMinutes,
      'connectionType': ?connectionType,
      'description': ?description,
      'imageId': ?imageId,
      'instanceType': ?instanceType,
      'name': ?name,
      'ownerArn': ?ownerArn,
      'region': ?region,
      'subnetId': ?subnetId,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'type': ?type,
    };
  }

  factory EnvironmentEC2State.fromMap(Map<String, dynamic> map) {
    return EnvironmentEC2State(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      automaticStopTimeMinutes: map['automaticStopTimeMinutes'] == null ? null : pulumi.Output.create<int>(map['automaticStopTimeMinutes'] as int),
      connectionType: map['connectionType'] == null ? null : pulumi.Output.create<String>(map['connectionType'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      imageId: map['imageId'] == null ? null : pulumi.Output.create<String>(map['imageId'] as String),
      instanceType: map['instanceType'] == null ? null : pulumi.Output.create<String>(map['instanceType'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      ownerArn: map['ownerArn'] == null ? null : pulumi.Output.create<String>(map['ownerArn'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      subnetId: map['subnetId'] == null ? null : pulumi.Output.create<String>(map['subnetId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

