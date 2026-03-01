// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'file_source_info.dart';
import 'role_sink_info.dart';

/// {@template pulumi_databoxedge_file_event_trigger_args_doc}
/// The set of arguments for FileEventTrigger.
/// {@endtemplate}
/// {@macro pulumi_databoxedge_file_event_trigger_args_doc}
class FileEventTriggerArgs {
  /// A custom context tag typically used to correlate the trigger against its usage. For example, if a periodic timer trigger is intended for certain specific IoT modules in the device, the tag can be the name or the image URL of the module.
  final pulumi.Input<String>? customContextTag;
  /// Creates or updates a trigger
  final pulumi.Input<String> deviceName;
  /// Trigger Kind.
  /// Expected value is 'FileEvent'.
  final pulumi.Input<String> kind;
  /// The trigger name.
  final pulumi.Input<String>? name;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;
  /// Role sink info.
  final pulumi.Input<RoleSinkInfo> sinkInfo;
  /// File event source details.
  final pulumi.Input<FileSourceInfo> sourceInfo;

  /// Creates a new [FileEventTriggerArgs].
  /// [customContextTag] A custom context tag typically used to correlate the trigger against its usage. For example, if a periodic timer trigger is intended for certain specific IoT modules in the device, the tag can be the name or the image URL of the module.
  /// [deviceName] Creates or updates a trigger
  /// [kind] Trigger Kind.
  /// [name] The trigger name.
  /// [resourceGroupName] The resource group name.
  /// [sinkInfo] Role sink info.
  /// [sourceInfo] File event source details.
  FileEventTriggerArgs({
    pulumi.Output<String>? customContextTag,
    required pulumi.Output<String> deviceName,
    required pulumi.Output<String> kind,
    pulumi.Output<String>? name,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<RoleSinkInfo> sinkInfo,
    required pulumi.Output<FileSourceInfo> sourceInfo,
  }) :
      customContextTag = pulumi.Input.asOptionalInput<String>(customContextTag),
      deviceName = pulumi.Input.asInput<String>(deviceName),
      kind = pulumi.Input.asInput<String>(kind),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sinkInfo = pulumi.Input.asInput<RoleSinkInfo>(sinkInfo),
      sourceInfo = pulumi.Input.asInput<FileSourceInfo>(sourceInfo);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customContextTag': ?customContextTag,
      'deviceName': deviceName,
      'kind': kind,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'sinkInfo': pulumi.Input.mapInputValue<RoleSinkInfo, Map<String, dynamic>>(sinkInfo, (value) => value.toMap()),
      'sourceInfo': pulumi.Input.mapInputValue<FileSourceInfo, Map<String, dynamic>>(sourceInfo, (value) => value.toMap()),
    };
  }

  factory FileEventTriggerArgs.fromMap(Map<String, dynamic> map) {
    return FileEventTriggerArgs(
      customContextTag: map['customContextTag'] == null ? null : pulumi.Output.create<String>(map['customContextTag'] as String),
      deviceName: pulumi.Output.create<String>(map['deviceName'] as String),
      kind: pulumi.Output.create<String>(map['kind'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sinkInfo: pulumi.Output.create<RoleSinkInfo>(RoleSinkInfo.fromMap((map['sinkInfo'] as Map).cast<String, dynamic>())),
      sourceInfo: pulumi.Output.create<FileSourceInfo>(FileSourceInfo.fromMap((map['sourceInfo'] as Map).cast<String, dynamic>())),
    );
  }
}

