// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getSqlMigrationService.
class GetSqlMigrationServiceResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  final String id;
  /// Current state of the Integration runtime.
  final String integrationRuntimeState;
  final String? location;
  final String name;
  /// Provisioning state to track the async operation status.
  final String provisioningState;
  final SystemDataResponse systemData;
  final Map<String, String>? tags;
  final String type;

  /// Creates a new [GetSqlMigrationServiceResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Required.
  /// [integrationRuntimeState] Current state of the Integration runtime.
  /// [location] Optional.
  /// [name] Required.
  /// [provisioningState] Provisioning state to track the async operation status.
  /// [systemData] Required.
  /// [tags] Optional.
  /// [type] Required.
  GetSqlMigrationServiceResult({
    required this.azureApiVersion,
    required this.id,
    required this.integrationRuntimeState,
    this.location,
    required this.name,
    required this.provisioningState,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'integrationRuntimeState': integrationRuntimeState,
      'location': ?location,
      'name': name,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetSqlMigrationServiceResult.fromMap(Map<String, dynamic> map) {
    return GetSqlMigrationServiceResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      integrationRuntimeState: map['integrationRuntimeState'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

