// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datafactory_get_trigger_event_subscription_status_args_doc}
/// Arguments for getTriggerEventSubscriptionStatus.
/// {@endtemplate}
/// {@macro pulumi_datafactory_get_trigger_event_subscription_status_args_doc}
class GetTriggerEventSubscriptionStatusArgs {
  /// The factory name.
  final pulumi.Input<String> factoryName;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;
  /// The trigger name.
  final pulumi.Input<String> triggerName;

  /// Creates a new [GetTriggerEventSubscriptionStatusArgs].
  /// [factoryName] The factory name.
  /// [resourceGroupName] The resource group name.
  /// [triggerName] The trigger name.
  GetTriggerEventSubscriptionStatusArgs({
    required pulumi.Output<String> factoryName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> triggerName,
  }) :
      factoryName = pulumi.Input.asInput<String>(factoryName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      triggerName = pulumi.Input.asInput<String>(triggerName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'factoryName': factoryName,
      'resourceGroupName': resourceGroupName,
      'triggerName': triggerName,
    };
  }

  factory GetTriggerEventSubscriptionStatusArgs.fromMap(Map<String, dynamic> map) {
    return GetTriggerEventSubscriptionStatusArgs(
      factoryName: pulumi.Output.create<String>(map['factoryName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      triggerName: pulumi.Output.create<String>(map['triggerName'] as String),
    );
  }
}

