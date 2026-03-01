// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'change_data_capture_folder.dart';
import 'mapper_policy.dart';
import 'mapper_source_connections_info.dart';
import 'mapper_target_connections_info.dart';

/// {@template pulumi_datafactory_change_data_capture_args_doc}
/// The set of arguments for ChangeDataCapture.
/// {@endtemplate}
/// {@macro pulumi_datafactory_change_data_capture_args_doc}
class ChangeDataCaptureArgs {
  /// A boolean to determine if the vnet configuration needs to be overwritten.
  final pulumi.Input<bool>? allowVNetOverride;
  /// The change data capture name.
  final pulumi.Input<String>? changeDataCaptureName;
  /// The description of the change data capture.
  final pulumi.Input<String>? description;
  /// The factory name.
  final pulumi.Input<String> factoryName;
  /// The folder that this CDC is in. If not specified, CDC will appear at the root level.
  final pulumi.Input<ChangeDataCaptureFolder>? folder;
  /// CDC policy
  final pulumi.Input<MapperPolicy> policy;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;
  /// List of sources connections that can be used as sources in the CDC.
  final pulumi.Input<List<MapperSourceConnectionsInfo>> sourceConnectionsInfo;
  /// Status of the CDC as to if it is running or stopped.
  final pulumi.Input<String>? status;
  /// List of target connections that can be used as sources in the CDC.
  final pulumi.Input<List<MapperTargetConnectionsInfo>> targetConnectionsInfo;

  /// Creates a new [ChangeDataCaptureArgs].
  /// [allowVNetOverride] A boolean to determine if the vnet configuration needs to be overwritten.
  /// [changeDataCaptureName] The change data capture name.
  /// [description] The description of the change data capture.
  /// [factoryName] The factory name.
  /// [folder] The folder that this CDC is in. If not specified, CDC will appear at the root level.
  /// [policy] CDC policy
  /// [resourceGroupName] The resource group name.
  /// [sourceConnectionsInfo] List of sources connections that can be used as sources in the CDC.
  /// [status] Status of the CDC as to if it is running or stopped.
  /// [targetConnectionsInfo] List of target connections that can be used as sources in the CDC.
  ChangeDataCaptureArgs({
    bool? allowVNetOverride,
    String? changeDataCaptureName,
    String? description,
    required String factoryName,
    ChangeDataCaptureFolder? folder,
    required MapperPolicy policy,
    required String resourceGroupName,
    required List<MapperSourceConnectionsInfo> sourceConnectionsInfo,
    String? status,
    required List<MapperTargetConnectionsInfo> targetConnectionsInfo,
  }) :
      allowVNetOverride = pulumi.Input.asOptionalInput<bool>(allowVNetOverride),
      changeDataCaptureName = pulumi.Input.asOptionalInput<String>(changeDataCaptureName),
      description = pulumi.Input.asOptionalInput<String>(description),
      factoryName = pulumi.Input.asInput<String>(factoryName),
      folder = pulumi.Input.asOptionalInput<ChangeDataCaptureFolder>(folder),
      policy = pulumi.Input.asInput<MapperPolicy>(policy),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sourceConnectionsInfo = pulumi.Input.asInput<List<MapperSourceConnectionsInfo>>(sourceConnectionsInfo),
      status = pulumi.Input.asOptionalInput<String>(status),
      targetConnectionsInfo = pulumi.Input.asInput<List<MapperTargetConnectionsInfo>>(targetConnectionsInfo);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowVNetOverride': ?allowVNetOverride,
      'changeDataCaptureName': ?changeDataCaptureName,
      'description': ?description,
      'factoryName': factoryName,
      'folder': ?pulumi.Input.mapOptionalInputValue<ChangeDataCaptureFolder, Map<String, dynamic>>(folder, (value) => value.toMap()),
      'policy': pulumi.Input.mapInputValue<MapperPolicy, Map<String, dynamic>>(policy, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'sourceConnectionsInfo': pulumi.Input.mapInputValue<List<MapperSourceConnectionsInfo>, List<Map<String, dynamic>>>(sourceConnectionsInfo, (value) => pulumi.Input.encodeList<MapperSourceConnectionsInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'status': ?status,
      'targetConnectionsInfo': pulumi.Input.mapInputValue<List<MapperTargetConnectionsInfo>, List<Map<String, dynamic>>>(targetConnectionsInfo, (value) => pulumi.Input.encodeList<MapperTargetConnectionsInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ChangeDataCaptureArgs.fromMap(Map<String, dynamic> map) {
    return ChangeDataCaptureArgs(
      allowVNetOverride: map['allowVNetOverride'] == null ? null : map['allowVNetOverride'] as bool,
      changeDataCaptureName: map['changeDataCaptureName'] == null ? null : map['changeDataCaptureName'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      factoryName: map['factoryName'] as String,
      folder: map['folder'] == null ? null : ChangeDataCaptureFolder.fromMap((map['folder'] as Map).cast<String, dynamic>()),
      policy: MapperPolicy.fromMap((map['policy'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      sourceConnectionsInfo: pulumi.Input.decodeList<MapperSourceConnectionsInfo>(map['sourceConnectionsInfo'], (value) => MapperSourceConnectionsInfo.fromMap((value as Map).cast<String, dynamic>())),
      status: map['status'] == null ? null : map['status'] as String,
      targetConnectionsInfo: pulumi.Input.decodeList<MapperTargetConnectionsInfo>(map['targetConnectionsInfo'], (value) => MapperTargetConnectionsInfo.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

