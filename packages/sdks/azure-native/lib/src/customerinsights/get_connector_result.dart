// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getConnector.
class GetConnectorResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// ID of the connector.
  final int connectorId;
  /// Name of the connector.
  final String? connectorName;
  /// The connector properties.
  final Map<String, dynamic> connectorProperties;
  /// Type of connector.
  final String connectorType;
  /// The created time.
  final String created;
  /// Description of the connector.
  final String? description;
  /// Display name of the connector.
  final String? displayName;
  /// Resource ID.
  final String id;
  /// If this is an internal connector.
  final bool? isInternal;
  /// The last modified time.
  final String lastModified;
  /// Resource name.
  final String name;
  /// State of connector.
  final String state;
  /// The hub name.
  final String tenantId;
  /// Resource type.
  final String type;

  /// Creates a new [GetConnectorResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [connectorId] ID of the connector.
  /// [connectorName] Name of the connector.
  /// [connectorProperties] The connector properties.
  /// [connectorType] Type of connector.
  /// [created] The created time.
  /// [description] Description of the connector.
  /// [displayName] Display name of the connector.
  /// [id] Resource ID.
  /// [isInternal] If this is an internal connector.
  /// [lastModified] The last modified time.
  /// [name] Resource name.
  /// [state] State of connector.
  /// [tenantId] The hub name.
  /// [type] Resource type.
  const GetConnectorResult({
    required this.azureApiVersion,
    required this.connectorId,
    this.connectorName,
    required this.connectorProperties,
    required this.connectorType,
    required this.created,
    this.description,
    this.displayName,
    required this.id,
    this.isInternal,
    required this.lastModified,
    required this.name,
    required this.state,
    required this.tenantId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'connectorId': connectorId,
      'connectorName': ?connectorName,
      'connectorProperties': connectorProperties,
      'connectorType': connectorType,
      'created': created,
      'description': ?description,
      'displayName': ?displayName,
      'id': id,
      'isInternal': ?isInternal,
      'lastModified': lastModified,
      'name': name,
      'state': state,
      'tenantId': tenantId,
      'type': type,
    };
  }

  factory GetConnectorResult.fromMap(Map<String, dynamic> map) {
    return GetConnectorResult(
      azureApiVersion: map['azureApiVersion'] as String,
      connectorId: map['connectorId'] as int,
      connectorName: (() { final guardedValue = map['connectorName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      connectorProperties: (map['connectorProperties'] as Map).cast<String, dynamic>(),
      connectorType: map['connectorType'] as String,
      created: map['created'] as String,
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      isInternal: (() { final guardedValue = map['isInternal']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      lastModified: map['lastModified'] as String,
      name: map['name'] as String,
      state: map['state'] as String,
      tenantId: map['tenantId'] as String,
      type: map['type'] as String,
    );
  }
}

