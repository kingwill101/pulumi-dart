// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_databoxedge_get_periodic_timer_event_trigger_args_doc}
/// Arguments for getPeriodicTimerEventTrigger.
/// {@endtemplate}
/// {@macro pulumi_databoxedge_get_periodic_timer_event_trigger_args_doc}
class GetPeriodicTimerEventTriggerArgs {
  /// The device name.
  final pulumi.Input<String> deviceName;
  /// The trigger name.
  final pulumi.Input<String> name;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetPeriodicTimerEventTriggerArgs].
  /// [deviceName] The device name.
  /// [name] The trigger name.
  /// [resourceGroupName] The resource group name.
  GetPeriodicTimerEventTriggerArgs({
    required this.deviceName,
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceName': deviceName,
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetPeriodicTimerEventTriggerArgs.fromMap(Map<String, dynamic> map) {
    return GetPeriodicTimerEventTriggerArgs(
      deviceName: pulumi.Input.fromValue(map['deviceName'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

