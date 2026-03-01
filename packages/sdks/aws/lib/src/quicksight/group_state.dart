// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Group resources.
class GroupState {
  /// Amazon Resource Name (ARN) of group
  final pulumi.Input<String>? arn;
  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  final pulumi.Input<String>? awsAccountId;
  /// A description for the group.
  final pulumi.Input<String>? description;
  /// A name for the group.
  final pulumi.Input<String>? groupName;
  /// The namespace. Currently, you should set this to `default`.
  final pulumi.Input<String>? namespace;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GroupState].
  /// [arn] Amazon Resource Name (ARN) of group
  /// [awsAccountId] AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  /// [description] A description for the group.
  /// [groupName] A name for the group.
  /// [namespace] The namespace. Currently, you should set this to `default`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GroupState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? awsAccountId,
    pulumi.Output<String>? description,
    pulumi.Output<String>? groupName,
    pulumi.Output<String>? namespace,
    pulumi.Output<String>? region,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      awsAccountId = pulumi.Input.asOptionalInput<String>(awsAccountId),
      description = pulumi.Input.asOptionalInput<String>(description),
      groupName = pulumi.Input.asOptionalInput<String>(groupName),
      namespace = pulumi.Input.asOptionalInput<String>(namespace),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'awsAccountId': ?awsAccountId,
      'description': ?description,
      'groupName': ?groupName,
      'namespace': ?namespace,
      'region': ?region,
    };
  }

  factory GroupState.fromMap(Map<String, dynamic> map) {
    return GroupState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      awsAccountId: map['awsAccountId'] == null ? null : pulumi.Output.create<String>(map['awsAccountId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      groupName: map['groupName'] == null ? null : pulumi.Output.create<String>(map['groupName'] as String),
      namespace: map['namespace'] == null ? null : pulumi.Output.create<String>(map['namespace'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

