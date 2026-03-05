// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'approver_response.dart';
import 'request_metadata_response.dart';
import 'system_data_response.dart';

/// Result data returned by getApproval.
class GetApprovalResult {
  /// List of approvers for the approval request
  final List<ApproverResponse>? approvers;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Approval request creation time
  final String? createdAt;
  /// Parameter for optimizing query results
  final String? grandparentResourceId;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The name of the resource
  final String name;
  /// Parameter for optimizing query results
  final String? parentResourceId;
  /// Provisioning State.
  final String provisioningState;
  /// Request metadata for the approval request.
  final RequestMetadataResponse requestMetadata;
  /// Approval request state change time, time at which approval request state changed from pending to approved or rejected.
  final String? stateChangedAt;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Ticket ID for the approval request
  final String? ticketId;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetApprovalResult].
  /// [approvers] List of approvers for the approval request
  /// [azureApiVersion] The Azure API version of the resource.
  /// [createdAt] Approval request creation time
  /// [grandparentResourceId] Parameter for optimizing query results
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [parentResourceId] Parameter for optimizing query results
  /// [provisioningState] Provisioning State.
  /// [requestMetadata] Request metadata for the approval request.
  /// [stateChangedAt] Approval request state change time, time at which approval request state changed from pending to approved or rejected.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [ticketId] Ticket ID for the approval request
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetApprovalResult({
    this.approvers,
    required this.azureApiVersion,
    this.createdAt,
    this.grandparentResourceId,
    required this.id,
    required this.name,
    this.parentResourceId,
    required this.provisioningState,
    required this.requestMetadata,
    this.stateChangedAt,
    required this.systemData,
    this.ticketId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'approvers': ?(() { final guardedValue = approvers; if (guardedValue == null) return null; return pulumi.Input.encodeList<ApproverResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'azureApiVersion': azureApiVersion,
      'createdAt': ?createdAt,
      'grandparentResourceId': ?grandparentResourceId,
      'id': id,
      'name': name,
      'parentResourceId': ?parentResourceId,
      'provisioningState': provisioningState,
      'requestMetadata': requestMetadata.toMap(),
      'stateChangedAt': ?stateChangedAt,
      'systemData': systemData.toMap(),
      'ticketId': ?ticketId,
      'type': type,
    };
  }

  factory GetApprovalResult.fromMap(Map<String, dynamic> map) {
    return GetApprovalResult(
      approvers: (() { final guardedValue = map['approvers']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApproverResponse>(guardedValue, (value) => ApproverResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      azureApiVersion: map['azureApiVersion'] as String,
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      grandparentResourceId: (() { final guardedValue = map['grandparentResourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      name: map['name'] as String,
      parentResourceId: (() { final guardedValue = map['parentResourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: map['provisioningState'] as String,
      requestMetadata: RequestMetadataResponse.fromMap((map['requestMetadata']! as Map).cast<String, dynamic>()),
      stateChangedAt: (() { final guardedValue = map['stateChangedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      ticketId: (() { final guardedValue = map['ticketId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: map['type'] as String,
    );
  }
}

