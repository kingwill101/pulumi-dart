// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connector_properties.dart';

/// {@template pulumi_impact_connector_args_doc}
/// The set of arguments for Connector.
/// {@endtemplate}
/// {@macro pulumi_impact_connector_args_doc}
class ConnectorArgs {
  /// The name of the connector
  final pulumi.Input<String>? connectorName;
  /// The resource-specific properties for this resource.
  final pulumi.Input<ConnectorProperties>? properties;

  /// Creates a new [ConnectorArgs].
  /// [connectorName] The name of the connector
  /// [properties] The resource-specific properties for this resource.
  ConnectorArgs({
    this.connectorName,
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectorName': ?connectorName,
      'properties': ?pulumi.Input.mapOptionalInputValue<ConnectorProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
    };
  }

  factory ConnectorArgs.fromMap(Map<String, dynamic> map) {
    return ConnectorArgs(
      connectorName: (() { final guardedValue = map['connectorName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectorProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

