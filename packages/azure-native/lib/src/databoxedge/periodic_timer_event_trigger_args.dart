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
    String? customContextTag,
    required String deviceName,
    required String kind,
    String? name,
    required String resourceGroupName,
    required RoleSinkInfo sinkInfo,
    required PeriodicTimerSourceInfo sourceInfo,
  }) :
      customContextTag = pulumi.Input.asOptionalInput<String>(customContextTag),
      deviceName = pulumi.Input.asInput<String>(deviceName),
      kind = pulumi.Input.asInput<String>(kind),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sinkInfo = pulumi.Input.asInput<RoleSinkInfo>(sinkInfo),
      sourceInfo = pulumi.Input.asInput<PeriodicTimerSourceInfo>(sourceInfo);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customContextTag': ?customContextTag,
      'deviceName': deviceName,
      'kind': kind,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'sinkInfo': pulumi.Input.mapInputValue<RoleSinkInfo, Map<String, dynamic>>(sinkInfo, (value) => value.toMap()),
      'sourceInfo': pulumi.Input.mapInputValue<PeriodicTimerSourceInfo, Map<String, dynamic>>(sourceInfo, (value) => value.toMap()),
    };
  }

  factory PeriodicTimerEventTriggerArgs.fromMap(Map<String, dynamic> map) {
    return PeriodicTimerEventTriggerArgs(
      customContextTag: map['customContextTag'] == null ? null : map['customContextTag'] as String,
      deviceName: map['deviceName'] as String,
      kind: map['kind'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      sinkInfo: RoleSinkInfo.fromMap((map['sinkInfo'] as Map).cast<String, dynamic>()),
      sourceInfo: PeriodicTimerSourceInfo.fromMap((map['sourceInfo'] as Map).cast<String, dynamic>()),
    );
  }
}

