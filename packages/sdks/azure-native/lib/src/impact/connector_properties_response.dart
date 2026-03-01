// ignore_for_file: unused_element, unnecessary_cast


/// Details of the Connector.
class ConnectorPropertiesResponse {
  /// unique id of the connector.
  final String connectorId;
  /// connector type
  final String connectorType;
  /// last run time stamp of this connector in UTC time zone
  final String lastRunTimeStamp;
  /// Resource provisioning state.
  final String provisioningState;
  /// tenant id of this connector
  final String tenantId;

  /// Creates a new [ConnectorPropertiesResponse].
  /// [connectorId] unique id of the connector.
  /// [connectorType] connector type
  /// [lastRunTimeStamp] last run time stamp of this connector in UTC time zone
  /// [provisioningState] Resource provisioning state.
  /// [tenantId] tenant id of this connector
  ConnectorPropertiesResponse({
    required this.connectorId,
    required this.connectorType,
    required this.lastRunTimeStamp,
    required this.provisioningState,
    required this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectorId': connectorId,
      'connectorType': connectorType,
      'lastRunTimeStamp': lastRunTimeStamp,
      'provisioningState': provisioningState,
      'tenantId': tenantId,
    };
  }

  factory ConnectorPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ConnectorPropertiesResponse(
      connectorId: map['connectorId'] as String,
      connectorType: map['connectorType'] as String,
      lastRunTimeStamp: map['lastRunTimeStamp'] as String,
      provisioningState: map['provisioningState'] as String,
      tenantId: map['tenantId'] as String,
    );
  }
}

