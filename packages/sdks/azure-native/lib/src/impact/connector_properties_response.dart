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
  const ConnectorPropertiesResponse({
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
      connectorId: pulumi.Input.fromValue(map['connectorId'] as String),
      connectorType: pulumi.Input.fromValue(map['connectorType'] as String),
      lastRunTimeStamp: pulumi.Input.fromValue(map['lastRunTimeStamp'] as String),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      tenantId: pulumi.Input.fromValue(map['tenantId'] as String),
    );
  }
}

