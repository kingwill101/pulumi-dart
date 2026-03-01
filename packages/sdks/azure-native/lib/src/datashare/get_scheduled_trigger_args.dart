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
  GetScheduledTriggerArgs({
    required pulumi.Output<String> accountName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> shareSubscriptionName,
    required pulumi.Output<String> triggerName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      shareSubscriptionName = pulumi.Input.asInput<String>(shareSubscriptionName),
      triggerName = pulumi.Input.asInput<String>(triggerName);

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
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      shareSubscriptionName: pulumi.Output.create<String>(map['shareSubscriptionName'] as String),
      triggerName: pulumi.Output.create<String>(map['triggerName'] as String),
    );
  }
}

