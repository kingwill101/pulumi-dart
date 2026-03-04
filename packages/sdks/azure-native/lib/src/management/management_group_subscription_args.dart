// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_management_management_group_subscription_args_doc}
/// The set of arguments for ManagementGroupSubscription.
/// {@endtemplate}
/// {@macro pulumi_management_management_group_subscription_args_doc}
class ManagementGroupSubscriptionArgs {
  /// Management Group ID.
  final pulumi.Input<String> groupId;

  /// Creates a new [ManagementGroupSubscriptionArgs].
  /// [groupId] Management Group ID.
  ManagementGroupSubscriptionArgs({required this.groupId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'groupId': groupId};
  }

  factory ManagementGroupSubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return ManagementGroupSubscriptionArgs(
      groupId: pulumi.Input.fromValue(map['groupId'] as String),
    );
  }
}
