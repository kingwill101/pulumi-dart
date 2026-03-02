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
    this.arn,
    this.awsAccountId,
    this.description,
    this.groupName,
    this.namespace,
    this.region,
  });

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
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      awsAccountId: map['awsAccountId'] == null ? null : (map['awsAccountId'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      groupName: map['groupName'] == null ? null : (map['groupName'] as String).input(),
      namespace: map['namespace'] == null ? null : (map['namespace'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
    );
  }
}

