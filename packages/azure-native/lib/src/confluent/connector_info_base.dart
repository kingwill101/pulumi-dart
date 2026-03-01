// ignore_for_file: unused_element, unnecessary_cast


/// Connector Info Base properties
class ConnectorInfoBase {
  /// Connector Class
  final String? connectorClass;
  /// Connector Id
  final String? connectorId;
  /// Connector Name
  final String? connectorName;
  /// Connector Status
  final String? connectorState;
  /// Connector Type
  final String? connectorType;

  /// Creates a new [ConnectorInfoBase].
  /// [connectorClass] Connector Class
  /// [connectorId] Connector Id
  /// [connectorName] Connector Name
  /// [connectorState] Connector Status
  /// [connectorType] Connector Type
  ConnectorInfoBase({
    this.connectorClass,
    this.connectorId,
    this.connectorName,
    this.connectorState,
    this.connectorType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectorClass': ?connectorClass,
      'connectorId': ?connectorId,
      'connectorName': ?connectorName,
      'connectorState': ?connectorState,
      'connectorType': ?connectorType,
    };
  }

  factory ConnectorInfoBase.fromMap(Map<String, dynamic> map) {
    return ConnectorInfoBase(
      connectorClass: map['connectorClass'] == null ? null : map['connectorClass'] as String,
      connectorId: map['connectorId'] == null ? null : map['connectorId'] as String,
      connectorName: map['connectorName'] == null ? null : map['connectorName'] as String,
      connectorState: map['connectorState'] == null ? null : map['connectorState'] as String,
      connectorType: map['connectorType'] == null ? null : map['connectorType'] as String,
    );
  }
}

