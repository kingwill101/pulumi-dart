// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for GroupMembership.
class GroupMembershipQuicksightArgs {
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

  GroupMembershipQuicksightArgs({
    this.awsAccountId,
    required this.groupName,
    required this.memberName,
    this.namespace,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final awsAccountIdValue = awsAccountId;
    if (awsAccountIdValue != null) {
      map['awsAccountId'] = awsAccountIdValue;
    }
    map['groupName'] = groupName;
    map['memberName'] = memberName;
    final namespaceValue = namespace;
    if (namespaceValue != null) {
      map['namespace'] = namespaceValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GroupMembershipQuicksightArgs.fromMap(Map<String, dynamic> map) {
    return GroupMembershipQuicksightArgs(
      awsAccountId: pulumi.Input.asOptionalInput<String>(map['awsAccountId']),
      groupName: pulumi.Input.asInput<String>(map['groupName']),
      memberName: pulumi.Input.asInput<String>(map['memberName']),
      namespace: pulumi.Input.asOptionalInput<String>(map['namespace']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
