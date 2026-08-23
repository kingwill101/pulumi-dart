// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectorV2Health {
  /// Status of the connector.
  final pulumi.Input<String> connectorStatus;
  /// Timestamp for the time the health status was checked.
  final pulumi.Input<String> lastCheckedAt;
  /// Message for the reason of `connectorStatus` change.
  final pulumi.Input<String> message;

  /// Creates a new [ConnectorV2Health].
  /// [connectorStatus] Status of the connector.
  /// [lastCheckedAt] Timestamp for the time the health status was checked.
  /// [message] Message for the reason of `connectorStatus` change.
  const ConnectorV2Health({
    required this.connectorStatus,
    required this.lastCheckedAt,
    required this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectorStatus': connectorStatus,
      'lastCheckedAt': lastCheckedAt,
      'message': message,
    };
  }

  factory ConnectorV2Health.fromMap(Map<String, dynamic> map) {
    return ConnectorV2Health(
      connectorStatus: pulumi.Input.fromValue(map['connectorStatus'] as String),
      lastCheckedAt: pulumi.Input.fromValue(map['lastCheckedAt'] as String),
      message: pulumi.Input.fromValue(map['message'] as String),
    );
  }
}
