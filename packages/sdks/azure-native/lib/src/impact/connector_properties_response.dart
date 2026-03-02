// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Details of the Connector.
class ConnectorPropertiesResponse {
  /// unique id of the connector.
  final pulumi.Input<String> connectorId;
  /// connector type
  final pulumi.Input<String> connectorType;
  /// last run time stamp of this connector in UTC time zone
  final pulumi.Input<String> lastRunTimeStamp;
  /// Resource provisioning state.
  final pulumi.Input<String> provisioningState;
  /// tenant id of this connector
  final pulumi.Input<String> tenantId;

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
      connectorId: (map['connectorId'] as String).input(),
      connectorType: (map['connectorType'] as String).input(),
      lastRunTimeStamp: (map['lastRunTimeStamp'] as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      tenantId: (map['tenantId'] as String).input(),
    );
  }
}

