// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Connector Info Base properties
class ConnectorInfoBaseResponse {
  /// Connector Class
  final pulumi.Input<String>? connectorClass;
  /// Connector Id
  final pulumi.Input<String>? connectorId;
  /// Connector Name
  final pulumi.Input<String>? connectorName;
  /// Connector Status
  final pulumi.Input<String>? connectorState;
  /// Connector Type
  final pulumi.Input<String>? connectorType;

  /// Creates a new [ConnectorInfoBaseResponse].
  /// [connectorClass] Connector Class
  /// [connectorId] Connector Id
  /// [connectorName] Connector Name
  /// [connectorState] Connector Status
  /// [connectorType] Connector Type
  ConnectorInfoBaseResponse({
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

  factory ConnectorInfoBaseResponse.fromMap(Map<String, dynamic> map) {
    return ConnectorInfoBaseResponse(
      connectorClass: map['connectorClass'] == null ? null : (map['connectorClass'] as String).input(),
      connectorId: map['connectorId'] == null ? null : (map['connectorId'] as String).input(),
      connectorName: map['connectorName'] == null ? null : (map['connectorName'] as String).input(),
      connectorState: map['connectorState'] == null ? null : (map['connectorState'] as String).input(),
      connectorType: map['connectorType'] == null ? null : (map['connectorType'] as String).input(),
    );
  }
}

