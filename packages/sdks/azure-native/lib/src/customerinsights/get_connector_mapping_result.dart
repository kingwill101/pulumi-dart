// ignore_for_file: unused_element, unnecessary_cast

import 'connector_mapping_properties_response.dart';

/// Result data returned by getConnectorMapping.
class GetConnectorMappingResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The connector mapping name
  final String? connectorMappingName;
  /// The connector name.
  final String? connectorName;
  /// Type of connector.
  final String? connectorType;
  /// The created time.
  final String? created;
  /// The DataFormat ID.
  final String? dataFormatId;
  /// The description of the connector mapping.
  final String? description;
  /// Display name for the connector mapping.
  final String? displayName;
  /// Defines which entity type the file should map to.
  final String? entityType;
  /// The mapping entity name.
  final String? entityTypeName;
  /// Resource ID.
  final String? id;
  /// The last modified time.
  final String? lastModified;
  /// The properties of the mapping.
  final ConnectorMappingPropertiesResponse? mappingProperties;
  /// Resource name.
  final String? name;
  /// The next run time based on customer's settings.
  final String? nextRunTime;
  /// The RunId.
  final String? runId;
  /// State of connector mapping.
  final String? state;
  /// The hub name.
  final String? tenantId;
  /// Resource type.
  final String? type;

  /// Creates a new [GetConnectorMappingResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [connectorMappingName] The connector mapping name
  /// [connectorName] The connector name.
  /// [connectorType] Type of connector.
  /// [created] The created time.
  /// [dataFormatId] The DataFormat ID.
  /// [description] The description of the connector mapping.
  /// [displayName] Display name for the connector mapping.
  /// [entityType] Defines which entity type the file should map to.
  /// [entityTypeName] The mapping entity name.
  /// [id] Resource ID.
  /// [lastModified] The last modified time.
  /// [mappingProperties] The properties of the mapping.
  /// [name] Resource name.
  /// [nextRunTime] The next run time based on customer's settings.
  /// [runId] The RunId.
  /// [state] State of connector mapping.
  /// [tenantId] The hub name.
  /// [type] Resource type.
  const GetConnectorMappingResult({
    this.azureApiVersion,
    this.connectorMappingName,
    this.connectorName,
    this.connectorType,
    this.created,
    this.dataFormatId,
    this.description,
    this.displayName,
    this.entityType,
    this.entityTypeName,
    this.id,
    this.lastModified,
    this.mappingProperties,
    this.name,
    this.nextRunTime,
    this.runId,
    this.state,
    this.tenantId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'connectorMappingName': ?connectorMappingName,
      'connectorName': ?connectorName,
      'connectorType': ?connectorType,
      'created': ?created,
      'dataFormatId': ?dataFormatId,
      'description': ?description,
      'displayName': ?displayName,
      'entityType': ?entityType,
      'entityTypeName': ?entityTypeName,
      'id': ?id,
      'lastModified': ?lastModified,
      'mappingProperties': ?mappingProperties?.toMap(),
      'name': ?name,
      'nextRunTime': ?nextRunTime,
      'runId': ?runId,
      'state': ?state,
      'tenantId': ?tenantId,
      'type': ?type,
    };
  }

  factory GetConnectorMappingResult.fromMap(Map<String, dynamic> map) {
    return GetConnectorMappingResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      connectorMappingName: (() { final guardedValue = map['connectorMappingName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      connectorName: (() { final guardedValue = map['connectorName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      connectorType: (() { final guardedValue = map['connectorType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      created: (() { final guardedValue = map['created']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dataFormatId: (() { final guardedValue = map['dataFormatId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      entityType: (() { final guardedValue = map['entityType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      entityTypeName: (() { final guardedValue = map['entityTypeName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastModified: (() { final guardedValue = map['lastModified']; if (guardedValue == null) return null; return guardedValue as String; })(),
      mappingProperties: (() { final guardedValue = map['mappingProperties']; if (guardedValue == null) return null; return ConnectorMappingPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nextRunTime: (() { final guardedValue = map['nextRunTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      runId: (() { final guardedValue = map['runId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
