// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering GroupMembership resources.
class GroupMembershipState {
  final pulumi.Input<String>? arn;
  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  final pulumi.Input<String>? awsAccountId;
  /// The name of the group in which the member will be added.
  final pulumi.Input<String>? groupName;
  /// The name of the member to add to the group.
  final pulumi.Input<String>? memberName;
  /// The namespace that you want the user to be a part of. Defaults to `default`.
  final pulumi.Input<String>? namespace;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GroupMembershipState].
  /// [arn] Optional.
  /// [awsAccountId] AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  /// [groupName] The name of the group in which the member will be added.
  /// [memberName] The name of the member to add to the group.
  /// [namespace] The namespace that you want the user to be a part of. Defaults to `default`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GroupMembershipState({
    this.arn,
    this.awsAccountId,
    this.groupName,
    this.memberName,
    this.namespace,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'awsAccountId': ?awsAccountId,
      'groupName': ?groupName,
      'memberName': ?memberName,
      'namespace': ?namespace,
      'region': ?region,
    };
  }

  factory GroupMembershipState.fromMap(Map<String, dynamic> map) {
    return GroupMembershipState(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      awsAccountId: map['awsAccountId'] == null ? null : (map['awsAccountId'] as String).input(),
      groupName: map['groupName'] == null ? null : (map['groupName'] as String).input(),
      memberName: map['memberName'] == null ? null : (map['memberName'] as String).input(),
      namespace: map['namespace'] == null ? null : (map['namespace'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
    );
  }
}

