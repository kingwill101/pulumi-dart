// ignore_for_file: unused_element, unnecessary_cast

import 'connector_mapping_properties_response.dart';

/// Result data returned by getConnectorMapping.
class GetConnectorMappingResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The connector mapping name
  final String connectorMappingName;
  /// The connector name.
  final String connectorName;
  /// Type of connector.
  final String? connectorType;
  /// The created time.
  final String created;
  /// The DataFormat ID.
  final String dataFormatId;
  /// The description of the connector mapping.
  final String? description;
  /// Display name for the connector mapping.
  final String? displayName;
  /// Defines which entity type the file should map to.
  final String entityType;
  /// The mapping entity name.
  final String entityTypeName;
  /// Resource ID.
  final String id;
  /// The last modified time.
  final String lastModified;
  /// The properties of the mapping.
  final ConnectorMappingPropertiesResponse mappingProperties;
  /// Resource name.
  final String name;
  /// The next run time based on customer's settings.
  final String nextRunTime;
  /// The RunId.
  final String runId;
  /// State of connector mapping.
  final String state;
  /// The hub name.
  final String tenantId;
  /// Resource type.
  final String type;

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
    required this.azureApiVersion,
    required this.connectorMappingName,
    required this.connectorName,
    this.connectorType,
    required this.created,
    required this.dataFormatId,
    this.description,
    this.displayName,
    required this.entityType,
    required this.entityTypeName,
    required this.id,
    required this.lastModified,
    required this.mappingProperties,
    required this.name,
    required this.nextRunTime,
    required this.runId,
    required this.state,
    required this.tenantId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'connectorMappingName': connectorMappingName,
      'connectorName': connectorName,
      'connectorType': ?connectorType,
      'created': created,
      'dataFormatId': dataFormatId,
      'description': ?description,
      'displayName': ?displayName,
      'entityType': entityType,
      'entityTypeName': entityTypeName,
      'id': id,
      'lastModified': lastModified,
      'mappingProperties': mappingProperties.toMap(),
      'name': name,
      'nextRunTime': nextRunTime,
      'runId': runId,
      'state': state,
      'tenantId': tenantId,
      'type': type,
    };
  }

  factory GetConnectorMappingResult.fromMap(Map<String, dynamic> map) {
    return GetConnectorMappingResult(
      azureApiVersion: map['azureApiVersion'] as String,
      connectorMappingName: map['connectorMappingName'] as String,
      connectorName: map['connectorName'] as String,
      connectorType: (() { final guardedValue = map['connectorType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      created: map['created'] as String,
      dataFormatId: map['dataFormatId'] as String,
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      entityType: map['entityType'] as String,
      entityTypeName: map['entityTypeName'] as String,
      id: map['id'] as String,
      lastModified: map['lastModified'] as String,
      mappingProperties: ConnectorMappingPropertiesResponse.fromMap((map['mappingProperties']! as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      nextRunTime: map['nextRunTime'] as String,
      runId: map['runId'] as String,
      state: map['state'] as String,
      tenantId: map['tenantId'] as String,
      type: map['type'] as String,
    );
  }
}

