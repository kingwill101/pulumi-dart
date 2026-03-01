// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_quicksight_group_membership_group_membership_args_doc}
/// The set of arguments for GroupMembership.
/// {@endtemplate}
/// {@macro pulumi_quicksight_group_membership_group_membership_args_doc}
class GroupMembershipArgs {
  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  final pulumi.Input<String>? awsAccountId;

  /// The name of the group in which the member will be added.
  final pulumi.Input<String> groupName;

  /// The name of the member to add to the group.
  final pulumi.Input<String> memberName;

  /// The namespace that you want the user to be a part of. Defaults to `default`.
  final pulumi.Input<String>? namespace;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GroupMembershipArgs].
  /// [awsAccountId] AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  /// [groupName] The name of the group in which the member will be added.
  /// [memberName] The name of the member to add to the group.
  /// [namespace] The namespace that you want the user to be a part of. Defaults to `default`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GroupMembershipArgs({
    String? awsAccountId,
    required String groupName,
    required String memberName,
    String? namespace,
    String? region,
  }) : awsAccountId = pulumi.Input.asOptionalInput<String>(awsAccountId),
       groupName = pulumi.Input.asInput<String>(groupName),
       memberName = pulumi.Input.asInput<String>(memberName),
       namespace = pulumi.Input.asOptionalInput<String>(namespace),
       region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsAccountId': ?awsAccountId,
      'groupName': groupName,
      'memberName': memberName,
      'namespace': ?namespace,
      'region': ?region,
    };
  }

  factory GroupMembershipArgs.fromMap(Map<String, dynamic> map) {
    return GroupMembershipArgs(
      awsAccountId: map['awsAccountId'] == null
          ? null
          : map['awsAccountId'] as String,
      groupName: map['groupName'] as String,
      memberName: map['memberName'] as String,
      namespace: map['namespace'] == null ? null : map['namespace'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
