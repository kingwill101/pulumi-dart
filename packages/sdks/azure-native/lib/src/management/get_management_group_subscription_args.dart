// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_management_get_management_group_subscription_args_doc}
/// Arguments for getManagementGroupSubscription.
/// {@endtemplate}
/// {@macro pulumi_management_get_management_group_subscription_args_doc}
class GetManagementGroupSubscriptionArgs {
  /// Management Group ID.
  final pulumi.Input<String> groupId;

  /// Creates a new [GetManagementGroupSubscriptionArgs].
  /// [groupId] Management Group ID.
  const GetManagementGroupSubscriptionArgs({
    required this.groupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupId': groupId,
    };
  }

  factory GetManagementGroupSubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return GetManagementGroupSubscriptionArgs(
      groupId: pulumi.Input.fromValue(map['groupId'] as String),
    );
  }
}

