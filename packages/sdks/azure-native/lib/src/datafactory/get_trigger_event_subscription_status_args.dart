// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datafactory_get_trigger_event_subscription_status_args_doc}
/// Arguments for getTriggerEventSubscriptionStatus.
/// {@endtemplate}
/// {@macro pulumi_datafactory_get_trigger_event_subscription_status_args_doc}
class GetTriggerEventSubscriptionStatusArgs {
  /// The factory name.
  final pulumi.Input<String> factoryName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The trigger name.
  final pulumi.Input<String> triggerName;

  /// Creates a new [GetTriggerEventSubscriptionStatusArgs].
  /// [factoryName] The factory name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [triggerName] The trigger name.
  const GetTriggerEventSubscriptionStatusArgs({
    required this.factoryName,
    required this.resourceGroupName,
    required this.triggerName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'factoryName': factoryName,
      'resourceGroupName': resourceGroupName,
      'triggerName': triggerName,
    };
  }

  factory GetTriggerEventSubscriptionStatusArgs.fromMap(Map<String, dynamic> map) {
    return GetTriggerEventSubscriptionStatusArgs(
      factoryName: pulumi.Input.fromValue(map['factoryName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      triggerName: pulumi.Input.fromValue(map['triggerName'] as String),
    );
  }
}
