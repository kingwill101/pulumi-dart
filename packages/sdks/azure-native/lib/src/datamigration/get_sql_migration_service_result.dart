// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getSqlMigrationService.
class GetSqlMigrationServiceResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  final String? id;
  /// Current state of the Integration runtime.
  final String? integrationRuntimeState;
  final String? location;
  final String? name;
  /// Provisioning state to track the async operation status.
  final String? provisioningState;
  final SystemDataResponse? systemData;
  final Map<String, String>? tags;
  final String? type;

  /// Creates a new [GetSqlMigrationServiceResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Optional.
  /// [integrationRuntimeState] Current state of the Integration runtime.
  /// [location] Optional.
  /// [name] Optional.
  /// [provisioningState] Provisioning state to track the async operation status.
  /// [systemData] Optional.
  /// [tags] Optional.
  /// [type] Optional.
  const GetSqlMigrationServiceResult({
    this.azureApiVersion,
    this.id,
    this.integrationRuntimeState,
    this.location,
    this.name,
    this.provisioningState,
    this.systemData,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'integrationRuntimeState': ?integrationRuntimeState,
      'location': ?location,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetSqlMigrationServiceResult.fromMap(Map<String, dynamic> map) {
    return GetSqlMigrationServiceResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      integrationRuntimeState: (() { final guardedValue = map['integrationRuntimeState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
