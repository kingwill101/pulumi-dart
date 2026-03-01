// ignore_for_file: unused_element, unnecessary_cast


/// Details of the Connector.
class ConnectorProperties {
  /// connector type
  final String connectorType;

  /// Creates a new [ConnectorProperties].
  /// [connectorType] connector type
  ConnectorProperties({
    required this.connectorType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectorType': connectorType,
    };
  }

  factory ConnectorProperties.fromMap(Map<String, dynamic> map) {
    return ConnectorProperties(
      connectorType: map['connectorType'] as String,
    );
  }
}

