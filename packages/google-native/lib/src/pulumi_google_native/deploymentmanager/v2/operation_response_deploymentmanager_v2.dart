// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instances_bulk_insert_operation_metadata_response_deploymentmanager_v2.dart';
import 'operation_error_response_deploymentmanager_v2.dart';
import 'operation_warnings_item_response_deploymentmanager_v2.dart';
import 'set_common_instance_metadata_operation_metadata_response_deploymentmanager_v2.dart';

/// Represents an Operation resource. Google Compute Engine has three Operation resources: * [Global](/compute/docs/reference/rest/{$api_version}/globalOperations) * [Regional](/compute/docs/reference/rest/{$api_version}/regionOperations) * [Zonal](/compute/docs/reference/rest/{$api_version}/zoneOperations) You can use an operation resource to manage asynchronous API requests. For more information, read Handling API responses. Operations can be global, regional or zonal. - For global operations, use the `globalOperations` resource. - For regional operations, use the `regionOperations` resource. - For zonal operations, use the `zoneOperations` resource. For more information, read Global, Regional, and Zonal Resources.
class OperationResponseDeploymentmanagerV2 {
  /// The value of `requestId` if you provided it in the request. Not present otherwise.
  final String clientOperationId;

  /// [Deprecated] This field is deprecated.
  final String creationTimestamp;

  /// A textual description of the operation, which is set when the operation is created.
  final String description;

  /// The time that this operation was completed. This value is in RFC3339 text format.
  final String endTime;

  /// If errors are generated during processing of the operation, this field will be populated.
  final OperationErrorResponseDeploymentmanagerV2 error;

  /// If the operation fails, this field contains the HTTP error message that was returned, such as `NOT FOUND`.
  final String httpErrorMessage;

  /// If the operation fails, this field contains the HTTP error status code that was returned. For example, a `404` means the resource was not found.
  final int httpErrorStatusCode;

  /// The time that this operation was requested. This value is in RFC3339 text format.
  final String insertTime;
  final InstancesBulkInsertOperationMetadataResponseDeploymentmanagerV2
      instancesBulkInsertOperationMetadata;

  /// Type of the resource. Always `compute#operation` for Operation resources.
  final String kind;

  /// Name of the operation.
  final String name;

  /// An ID that represents a group of operations, such as when a group of operations results from a `bulkInsert` API request.
  final String operationGroupId;

  /// The type of operation, such as `insert`, `update`, or `delete`, and so on.
  final String operationType;

  /// An optional progress indicator that ranges from 0 to 100. There is no requirement that this be linear or support any granularity of operations. This should not be used to guess when the operation will be complete. This number should monotonically increase as the operation progresses.
  final int progress;

  /// The URL of the region where the operation resides. Only applicable when performing regional operations.
  final String region;

  /// Server-defined URL for the resource.
  final String selfLink;

  /// If the operation is for projects.setCommonInstanceMetadata, this field will contain information on all underlying zonal actions and their state.
  final SetCommonInstanceMetadataOperationMetadataResponseDeploymentmanagerV2
      setCommonInstanceMetadataOperationMetadata;

  /// The time that this operation was started by the server. This value is in RFC3339 text format.
  final String startTime;

  /// The status of the operation, which can be one of the following: `PENDING`, `RUNNING`, or `DONE`.
  final String status;

  /// An optional textual description of the current status of the operation.
  final String statusMessage;

  /// The unique target ID, which identifies a specific incarnation of the target resource.
  final String targetId;

  /// The URL of the resource that the operation modifies. For operations related to creating a snapshot, this points to the persistent disk that the snapshot was created from.
  final String targetLink;

  /// User who requested the operation, for example: `user@example.com` or `alice_smith_identifier (global/workforcePools/example-com-us-employees)`.
  final String user;

  /// If warning messages are generated during processing of the operation, this field will be populated.
  final List<OperationWarningsItemResponseDeploymentmanagerV2> warnings;

  /// The URL of the zone where the operation resides. Only applicable when performing per-zone operations.
  final String zone;

  OperationResponseDeploymentmanagerV2({
    required this.clientOperationId,
    required this.creationTimestamp,
    required this.description,
    required this.endTime,
    required this.error,
    required this.httpErrorMessage,
    required this.httpErrorStatusCode,
    required this.insertTime,
    required this.instancesBulkInsertOperationMetadata,
    required this.kind,
    required this.name,
    required this.operationGroupId,
    required this.operationType,
    required this.progress,
    required this.region,
    required this.selfLink,
    required this.setCommonInstanceMetadataOperationMetadata,
    required this.startTime,
    required this.status,
    required this.statusMessage,
    required this.targetId,
    required this.targetLink,
    required this.user,
    required this.warnings,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clientOperationId'] = clientOperationId;
    map['creationTimestamp'] = creationTimestamp;
    map['description'] = description;
    map['endTime'] = endTime;
    map['error'] = error.toMap();
    map['httpErrorMessage'] = httpErrorMessage;
    map['httpErrorStatusCode'] = httpErrorStatusCode;
    map['insertTime'] = insertTime;
    map['instancesBulkInsertOperationMetadata'] =
        instancesBulkInsertOperationMetadata.toMap();
    map['kind'] = kind;
    map['name'] = name;
    map['operationGroupId'] = operationGroupId;
    map['operationType'] = operationType;
    map['progress'] = progress;
    map['region'] = region;
    map['selfLink'] = selfLink;
    map['setCommonInstanceMetadataOperationMetadata'] =
        setCommonInstanceMetadataOperationMetadata.toMap();
    map['startTime'] = startTime;
    map['status'] = status;
    map['statusMessage'] = statusMessage;
    map['targetId'] = targetId;
    map['targetLink'] = targetLink;
    map['user'] = user;
    map['warnings'] = pulumi.Input.encodeList<
        OperationWarningsItemResponseDeploymentmanagerV2,
        Map<String, dynamic>>(warnings, (value) => value.toMap());
    map['zone'] = zone;
    return map;
  }

  factory OperationResponseDeploymentmanagerV2.fromMap(
      Map<String, dynamic> map) {
    return OperationResponseDeploymentmanagerV2(
      clientOperationId: map['clientOperationId'] as String,
      creationTimestamp: map['creationTimestamp'] as String,
      description: map['description'] as String,
      endTime: map['endTime'] as String,
      error: OperationErrorResponseDeploymentmanagerV2.fromMap(
          (map['error'] as Map).cast<String, dynamic>()),
      httpErrorMessage: map['httpErrorMessage'] as String,
      httpErrorStatusCode: map['httpErrorStatusCode'] as int,
      insertTime: map['insertTime'] as String,
      instancesBulkInsertOperationMetadata:
          InstancesBulkInsertOperationMetadataResponseDeploymentmanagerV2
              .fromMap((map['instancesBulkInsertOperationMetadata'] as Map)
                  .cast<String, dynamic>()),
      kind: map['kind'] as String,
      name: map['name'] as String,
      operationGroupId: map['operationGroupId'] as String,
      operationType: map['operationType'] as String,
      progress: map['progress'] as int,
      region: map['region'] as String,
      selfLink: map['selfLink'] as String,
      setCommonInstanceMetadataOperationMetadata:
          SetCommonInstanceMetadataOperationMetadataResponseDeploymentmanagerV2
              .fromMap(
                  (map['setCommonInstanceMetadataOperationMetadata'] as Map)
                      .cast<String, dynamic>()),
      startTime: map['startTime'] as String,
      status: map['status'] as String,
      statusMessage: map['statusMessage'] as String,
      targetId: map['targetId'] as String,
      targetLink: map['targetLink'] as String,
      user: map['user'] as String,
      warnings: pulumi.Input.decodeList<
              OperationWarningsItemResponseDeploymentmanagerV2>(
          map['warnings'],
          (value) => OperationWarningsItemResponseDeploymentmanagerV2.fromMap(
              (value as Map).cast<String, dynamic>())),
      zone: map['zone'] as String,
    );
  }
}
