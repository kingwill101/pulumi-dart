// ignore_for_file: unused_element, unnecessary_cast

import 'azure_data_explorer_connection_properties_response.dart';
import 'system_data_response.dart';

/// Result data returned by getTimeSeriesDatabaseConnection.
class GetTimeSeriesDatabaseConnectionResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The resource identifier.
  final String? id;
  /// Extension resource name.
  final String? name;
  /// Properties of a specific time series database connection.
  final AzureDataExplorerConnectionPropertiesResponse? properties;
  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse? systemData;
  /// The resource type.
  final String? type;

  /// Creates a new [GetTimeSeriesDatabaseConnectionResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] The resource identifier.
  /// [name] Extension resource name.
  /// [properties] Properties of a specific time series database connection.
  /// [systemData] Metadata pertaining to creation and last modification of the resource.
  /// [type] The resource type.
  const GetTimeSeriesDatabaseConnectionResult({
    this.azureApiVersion,
    this.id,
    this.name,
    this.properties,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'name': ?name,
      'properties': ?properties?.toMap(),
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetTimeSeriesDatabaseConnectionResult.fromMap(Map<String, dynamic> map) {
    return GetTimeSeriesDatabaseConnectionResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return AzureDataExplorerConnectionPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
