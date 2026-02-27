// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'management_server_type.dart';
import 'network_config_backupdr_v1.dart';

/// The set of arguments for ManagementServer.
class ManagementServerArgs {
  /// Optional. The description of the ManagementServer instance (2048 characters or less).
  final pulumi.Input<String>? description;

  /// Optional. Server specified ETag for the ManagementServer resource to prevent simultaneous updates from overwiting each other.
  final pulumi.Input<String>? etag;

  /// Optional. Resource labels to represent user provided metadata. Labels currently defined: 1. migrate_from_go= If set to true, the MS is created in migration ready mode.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// Required. The name of the management server to create. The name must be unique for the specified project and location.
  final pulumi.Input<String> managementServerId;

  /// VPC networks to which the ManagementServer instance is connected. For this version, only a single network is supported.
  final pulumi.Input<List<NetworkConfigBackupdrV1>> networks;
  final pulumi.Input<String>? project;

  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// The type of the ManagementServer resource.
  final pulumi.Input<ManagementServerType> type;

  ManagementServerArgs({
    this.description,
    this.etag,
    this.labels,
    this.location,
    required this.managementServerId,
    required this.networks,
    this.project,
    this.requestId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final etagValue = etag;
    if (etagValue != null) {
      map['etag'] = etagValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    map['managementServerId'] = managementServerId;
    map['networks'] = pulumi.Input.mapInputValue<List<NetworkConfigBackupdrV1>,
            List<Map<String, dynamic>>>(
        networks,
        (value) => pulumi.Input.encodeList<NetworkConfigBackupdrV1,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    map['type'] = pulumi.Input.mapInputValue<ManagementServerType, String>(
        type, (value) => value.value);
    return map;
  }

  factory ManagementServerArgs.fromMap(Map<String, dynamic> map) {
    return ManagementServerArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      etag: pulumi.Input.asOptionalInput<String>(map['etag']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      managementServerId:
          pulumi.Input.asInput<String>(map['managementServerId']),
      networks:
          pulumi.Input.asInput<List<NetworkConfigBackupdrV1>>(map['networks']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      requestId: pulumi.Input.asOptionalInput<String>(map['requestId']),
      type: pulumi.Input.asInput<ManagementServerType>(map['type']),
    );
  }
}
