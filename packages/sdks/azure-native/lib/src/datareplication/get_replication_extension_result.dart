// ignore_for_file: unused_element, unnecessary_cast

import 'replication_extension_model_properties_response.dart';
import 'replication_extension_model_response_system_data.dart';

/// Result data returned by getReplicationExtension.
class GetReplicationExtensionResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Gets or sets the Id of the resource.
  final String? id;
  /// Gets or sets the name of the resource.
  final String? name;
  /// Replication extension model properties.
  final ReplicationExtensionModelPropertiesResponse? properties;
  final ReplicationExtensionModelResponseSystemData? systemData;
  /// Gets or sets the type of the resource.
  final String? type;

  /// Creates a new [GetReplicationExtensionResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Gets or sets the Id of the resource.
  /// [name] Gets or sets the name of the resource.
  /// [properties] Replication extension model properties.
  /// [systemData] Optional.
  /// [type] Gets or sets the type of the resource.
  const GetReplicationExtensionResult({
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

  factory GetReplicationExtensionResult.fromMap(Map<String, dynamic> map) {
    return GetReplicationExtensionResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return ReplicationExtensionModelPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return ReplicationExtensionModelResponseSystemData.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
