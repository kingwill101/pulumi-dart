// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Connector Info Base properties
class ConnectorInfoBase {
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
      connectorClass: (() { final guardedValue = map['connectorClass']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      connectorId: (() { final guardedValue = map['connectorId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      connectorName: (() { final guardedValue = map['connectorName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      connectorState: (() { final guardedValue = map['connectorState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      connectorType: (() { final guardedValue = map['connectorType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

