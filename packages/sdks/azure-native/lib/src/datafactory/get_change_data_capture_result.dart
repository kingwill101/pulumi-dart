// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'change_data_capture_folder_response.dart';
import 'mapper_policy_response.dart';
import 'mapper_source_connections_info_response.dart';
import 'mapper_target_connections_info_response.dart';
import 'system_data_response.dart';

/// Result data returned by getChangeDataCapture.
class GetChangeDataCaptureResult {
  /// A boolean to determine if the vnet configuration needs to be overwritten.
  final bool? allowVNetOverride;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The description of the change data capture.
  final String? description;
  /// "If etag is provided in the response body, it may also be provided as a header per the normal etag convention.  Entity tags are used for comparing two or more entities from the same requested resource. HTTP/1.1 uses entity tags in the etag (section 14.19), If-Match (section 14.24), If-None-Match (section 14.26), and If-Range (section 14.27) header fields.")
  final String? etag;
  /// The folder that this CDC is in. If not specified, CDC will appear at the root level.
  final ChangeDataCaptureFolderResponse? folder;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The name of the resource
  final String? name;
  /// CDC policy
  final MapperPolicyResponse? policy;
  /// List of sources connections that can be used as sources in the CDC.
  final List<MapperSourceConnectionsInfoResponse>? sourceConnectionsInfo;
  /// Status of the CDC as to if it is running or stopped.
  final String? status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// List of target connections that can be used as sources in the CDC.
  final List<MapperTargetConnectionsInfoResponse>? targetConnectionsInfo;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetChangeDataCaptureResult].
  /// [allowVNetOverride] A boolean to determine if the vnet configuration needs to be overwritten.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [description] The description of the change data capture.
  /// [etag] "If etag is provided in the response body, it may also be provided as a header per the normal etag convention.  Entity tags are used for comparing two or more entities from the same requested resource. HTTP/1.1 uses entity tags in the etag (section 14.19), If-Match (section 14.24), If-None-Match (section 14.26), and If-Range (section 14.27) header fields.")
  /// [folder] The folder that this CDC is in. If not specified, CDC will appear at the root level.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [policy] CDC policy
  /// [sourceConnectionsInfo] List of sources connections that can be used as sources in the CDC.
  /// [status] Status of the CDC as to if it is running or stopped.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [targetConnectionsInfo] List of target connections that can be used as sources in the CDC.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetChangeDataCaptureResult({
    this.allowVNetOverride,
    this.azureApiVersion,
    this.description,
    this.etag,
    this.folder,
    this.id,
    this.name,
    this.policy,
    this.sourceConnectionsInfo,
    this.status,
    this.systemData,
    this.targetConnectionsInfo,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowVNetOverride': ?allowVNetOverride,
      'azureApiVersion': ?azureApiVersion,
      'description': ?description,
      'etag': ?etag,
      'folder': ?folder?.toMap(),
      'id': ?id,
      'name': ?name,
      'policy': ?policy?.toMap(),
      'sourceConnectionsInfo': ?(() { final guardedValue = sourceConnectionsInfo; if (guardedValue == null) return null; return pulumi.Input.encodeList<MapperSourceConnectionsInfoResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'status': ?status,
      'systemData': ?systemData?.toMap(),
      'targetConnectionsInfo': ?(() { final guardedValue = targetConnectionsInfo; if (guardedValue == null) return null; return pulumi.Input.encodeList<MapperTargetConnectionsInfoResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'type': ?type,
    };
  }

  factory GetChangeDataCaptureResult.fromMap(Map<String, dynamic> map) {
    return GetChangeDataCaptureResult(
      allowVNetOverride: (() { final guardedValue = map['allowVNetOverride']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      folder: (() { final guardedValue = map['folder']; if (guardedValue == null) return null; return ChangeDataCaptureFolderResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      policy: (() { final guardedValue = map['policy']; if (guardedValue == null) return null; return MapperPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      sourceConnectionsInfo: (() { final guardedValue = map['sourceConnectionsInfo']; if (guardedValue == null) return null; return pulumi.Input.decodeList<MapperSourceConnectionsInfoResponse>(guardedValue, (value) => MapperSourceConnectionsInfoResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      targetConnectionsInfo: (() { final guardedValue = map['targetConnectionsInfo']; if (guardedValue == null) return null; return pulumi.Input.decodeList<MapperTargetConnectionsInfoResponse>(guardedValue, (value) => MapperTargetConnectionsInfoResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
