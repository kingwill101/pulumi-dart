// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getConnector.
class GetConnectorResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// ID of the connector.
  final int? connectorId;
  /// Name of the connector.
  final String? connectorName;
  /// The connector properties.
  final Map<String, dynamic>? connectorProperties;
  /// Type of connector.
  final String? connectorType;
  /// The created time.
  final String? created;
  /// Description of the connector.
  final String? description;
  /// Display name of the connector.
  final String? displayName;
  /// Resource ID.
  final String? id;
  /// If this is an internal connector.
  final bool? isInternal;
  /// The last modified time.
  final String? lastModified;
  /// Resource name.
  final String? name;
  /// State of connector.
  final String? state;
  /// The hub name.
  final String? tenantId;
  /// Resource type.
  final String? type;

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
    this.azureApiVersion,
    this.connectorId,
    this.connectorName,
    this.connectorProperties,
    this.connectorType,
    this.created,
    this.description,
    this.displayName,
    this.id,
    this.isInternal,
    this.lastModified,
    this.name,
    this.state,
    this.tenantId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'connectorId': ?connectorId,
      'connectorName': ?connectorName,
      'connectorProperties': ?connectorProperties,
      'connectorType': ?connectorType,
      'created': ?created,
      'description': ?description,
      'displayName': ?displayName,
      'id': ?id,
      'isInternal': ?isInternal,
      'lastModified': ?lastModified,
      'name': ?name,
      'state': ?state,
      'tenantId': ?tenantId,
      'type': ?type,
    };
  }

  factory GetConnectorResult.fromMap(Map<String, dynamic> map) {
    return GetConnectorResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      connectorId: (() { final guardedValue = map['connectorId']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      connectorName: (() { final guardedValue = map['connectorName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      connectorProperties: (() { final guardedValue = map['connectorProperties']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, dynamic>(); })(),
      connectorType: (() { final guardedValue = map['connectorType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      created: (() { final guardedValue = map['created']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      isInternal: (() { final guardedValue = map['isInternal']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      lastModified: (() { final guardedValue = map['lastModified']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
