// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_databoxedge_get_file_event_trigger_args_doc}
/// Arguments for getFileEventTrigger.
/// {@endtemplate}
/// {@macro pulumi_databoxedge_get_file_event_trigger_args_doc}
class GetFileEventTriggerArgs {
  /// The device name.
  final pulumi.Input<String> deviceName;
  /// The trigger name.
  final pulumi.Input<String> name;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetFileEventTriggerArgs].
  /// [deviceName] The device name.
  /// [name] The trigger name.
  /// [resourceGroupName] The resource group name.
  GetFileEventTriggerArgs({
    required String deviceName,
    required String name,
    required String resourceGroupName,
  }) :
      deviceName = pulumi.Input.asInput<String>(deviceName),
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceName': deviceName,
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetFileEventTriggerArgs.fromMap(Map<String, dynamic> map) {
    return GetFileEventTriggerArgs(
      deviceName: map['deviceName'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

