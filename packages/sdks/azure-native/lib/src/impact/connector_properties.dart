// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Details of the Connector.
class ConnectorProperties {
  /// connector type
  final pulumi.Input<String> connectorType;

  /// Creates a new [ConnectorProperties].
  /// [connectorType] connector type
  const ConnectorProperties({
    required this.connectorType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectorType': connectorType,
    };
  }

  factory ConnectorProperties.fromMap(Map<String, dynamic> map) {
    return ConnectorProperties(
      connectorType: pulumi.Input.fromValue(map['connectorType'] as String),
    );
  }
}
