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

  factory GetFileEventTriggerArgs.fromMap(Map<String, dynamic> map) {
    return GetFileEventTriggerArgs(
      deviceName: pulumi.Input.fromValue(map['deviceName'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

