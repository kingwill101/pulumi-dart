// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'periodic_timer_source_info.dart';
import 'role_sink_info.dart';

/// {@template pulumi_databoxedge_periodic_timer_event_trigger_args_doc}
/// The set of arguments for PeriodicTimerEventTrigger.
/// {@endtemplate}
/// {@macro pulumi_databoxedge_periodic_timer_event_trigger_args_doc}
class PeriodicTimerEventTriggerArgs {
  /// A custom context tag typically used to correlate the trigger against its usage. For example, if a periodic timer trigger is intended for certain specific IoT modules in the device, the tag can be the name or the image URL of the module.
  final pulumi.Input<String>? customContextTag;

  /// Creates or updates a trigger
  final pulumi.Input<String> deviceName;

  /// Trigger Kind.
  /// Expected value is 'PeriodicTimerEvent'.
  final pulumi.Input<String> kind;

  /// The trigger name.
  final pulumi.Input<String>? name;

  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;

  /// Role Sink information.
  final pulumi.Input<RoleSinkInfo> sinkInfo;

  /// Periodic timer details.
  final pulumi.Input<PeriodicTimerSourceInfo> sourceInfo;

  /// Creates a new [PeriodicTimerEventTriggerArgs].
  /// [customContextTag] A custom context tag typically used to correlate the trigger against its usage. For example, if a periodic timer trigger is intended for certain specific IoT modules in the device, the tag can be the name or the image URL of the module.
  /// [deviceName] Creates or updates a trigger
  /// [kind] Trigger Kind.
  /// [name] The trigger name.
  /// [resourceGroupName] The resource group name.
  /// [sinkInfo] Role Sink information.
  /// [sourceInfo] Periodic timer details.
  PeriodicTimerEventTriggerArgs({
    this.customContextTag,
    required this.deviceName,
    required this.kind,
    this.name,
    required this.resourceGroupName,
    required this.sinkInfo,
    required this.sourceInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customContextTag': ?customContextTag,
      'deviceName': deviceName,
      'kind': kind,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'sinkInfo':
          pulumi.Input.mapInputValue<RoleSinkInfo, Map<String, dynamic>>(
            sinkInfo,
            (value) => value.toMap(),
          ),
      'sourceInfo':
          pulumi.Input.mapInputValue<
            PeriodicTimerSourceInfo,
            Map<String, dynamic>
          >(sourceInfo, (value) => value.toMap()),
    };
  }

  factory PeriodicTimerEventTriggerArgs.fromMap(Map<String, dynamic> map) {
    return PeriodicTimerEventTriggerArgs(
      customContextTag: (() {
        final guardedValue = map['customContextTag'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      deviceName: pulumi.Input.fromValue(map['deviceName'] as String),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      sinkInfo: pulumi.Input.fromValue(
        RoleSinkInfo.fromMap((map['sinkInfo']! as Map).cast<String, dynamic>()),
      ),
      sourceInfo: pulumi.Input.fromValue(
        PeriodicTimerSourceInfo.fromMap(
          (map['sourceInfo']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
