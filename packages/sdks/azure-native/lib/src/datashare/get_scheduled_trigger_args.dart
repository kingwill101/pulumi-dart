// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datashare_get_scheduled_trigger_args_doc}
/// Arguments for getScheduledTrigger.
/// {@endtemplate}
/// {@macro pulumi_datashare_get_scheduled_trigger_args_doc}
class GetScheduledTriggerArgs {
  /// The name of the share account.
  final pulumi.Input<String> accountName;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the shareSubscription.
  final pulumi.Input<String> shareSubscriptionName;
  /// The name of the trigger.
  final pulumi.Input<String> triggerName;

  /// Creates a new [GetScheduledTriggerArgs].
  /// [accountName] The name of the share account.
  /// [resourceGroupName] The resource group name.
  /// [shareSubscriptionName] The name of the shareSubscription.
  /// [triggerName] The name of the trigger.
  const GetScheduledTriggerArgs({
    required this.accountName,
    required this.resourceGroupName,
    required this.shareSubscriptionName,
    required this.triggerName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'resourceGroupName': resourceGroupName,
      'shareSubscriptionName': shareSubscriptionName,
      'triggerName': triggerName,
    };
  }

  factory GetScheduledTriggerArgs.fromMap(Map<String, dynamic> map) {
    return GetScheduledTriggerArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      shareSubscriptionName: pulumi.Input.fromValue(map['shareSubscriptionName'] as String),
      triggerName: pulumi.Input.fromValue(map['triggerName'] as String),
    );
  }
}
