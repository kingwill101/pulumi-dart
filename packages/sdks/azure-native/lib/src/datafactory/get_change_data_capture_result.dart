// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'change_data_capture_response_folder.dart';
import 'mapper_policy_response.dart';
import 'mapper_source_connections_info_response.dart';
import 'mapper_target_connections_info_response.dart';

/// Result data returned by getChangeDataCapture.
class GetChangeDataCaptureResult {
  /// A boolean to determine if the vnet configuration needs to be overwritten.
  final bool? allowVNetOverride;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The description of the change data capture.
  final String? description;
  /// Etag identifies change in the resource.
  final String etag;
  /// The folder that this CDC is in. If not specified, CDC will appear at the root level.
  final ChangeDataCaptureResponseFolder? folder;
  /// The resource identifier.
  final String id;
  /// The resource name.
  final String name;
  /// CDC policy
  final MapperPolicyResponse policy;
  /// List of sources connections that can be used as sources in the CDC.
  final List<MapperSourceConnectionsInfoResponse> sourceConnectionsInfo;
  /// Status of the CDC as to if it is running or stopped.
  final String? status;
  /// List of target connections that can be used as sources in the CDC.
  final List<MapperTargetConnectionsInfoResponse> targetConnectionsInfo;
  /// The resource type.
  final String type;

  /// Creates a new [GetChangeDataCaptureResult].
  /// [allowVNetOverride] A boolean to determine if the vnet configuration needs to be overwritten.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [description] The description of the change data capture.
  /// [etag] Etag identifies change in the resource.
  /// [folder] The folder that this CDC is in. If not specified, CDC will appear at the root level.
  /// [id] The resource identifier.
  /// [name] The resource name.
  /// [policy] CDC policy
  /// [sourceConnectionsInfo] List of sources connections that can be used as sources in the CDC.
  /// [status] Status of the CDC as to if it is running or stopped.
  /// [targetConnectionsInfo] List of target connections that can be used as sources in the CDC.
  /// [type] The resource type.
  GetChangeDataCaptureResult({
    this.allowVNetOverride,
    required this.azureApiVersion,
    this.description,
    required this.etag,
    this.folder,
    required this.id,
    required this.name,
    required this.policy,
    required this.sourceConnectionsInfo,
    this.status,
    required this.targetConnectionsInfo,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowVNetOverride': ?allowVNetOverride,
      'azureApiVersion': azureApiVersion,
      'description': ?description,
      'etag': etag,
      'folder': ?folder?.toMap(),
      'id': id,
      'name': name,
      'policy': policy.toMap(),
      'sourceConnectionsInfo': pulumi.Input.encodeList<MapperSourceConnectionsInfoResponse, Map<String, dynamic>>(sourceConnectionsInfo, (value) => value.toMap()),
      'status': ?status,
      'targetConnectionsInfo': pulumi.Input.encodeList<MapperTargetConnectionsInfoResponse, Map<String, dynamic>>(targetConnectionsInfo, (value) => value.toMap()),
      'type': type,
    };
  }

  factory GetChangeDataCaptureResult.fromMap(Map<String, dynamic> map) {
    return GetChangeDataCaptureResult(
      allowVNetOverride: (() { final guardedValue = map['allowVNetOverride']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      azureApiVersion: map['azureApiVersion'] as String,
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: map['etag'] as String,
      folder: (() { final guardedValue = map['folder']; if (guardedValue == null) return null; return ChangeDataCaptureResponseFolder.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: map['id'] as String,
      name: map['name'] as String,
      policy: MapperPolicyResponse.fromMap((map['policy']! as Map).cast<String, dynamic>()),
      sourceConnectionsInfo: pulumi.Input.decodeList<MapperSourceConnectionsInfoResponse>(map['sourceConnectionsInfo']!, (value) => MapperSourceConnectionsInfoResponse.fromMap((value as Map).cast<String, dynamic>())),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      targetConnectionsInfo: pulumi.Input.decodeList<MapperTargetConnectionsInfoResponse>(map['targetConnectionsInfo']!, (value) => MapperTargetConnectionsInfoResponse.fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
    );
  }
}

