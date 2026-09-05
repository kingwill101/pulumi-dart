// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetConnectionVgwTelemetry {
  final pulumi.Input<int> acceptedRouteCount;
  final pulumi.Input<String> lastStatusChange;
  final pulumi.Input<String> outsideIpAddress;
  final pulumi.Input<String> status;
  final pulumi.Input<String> statusMessage;

  /// Creates a new [GetConnectionVgwTelemetry].
  /// [acceptedRouteCount] Required.
  /// [lastStatusChange] Required.
  /// [outsideIpAddress] Required.
  /// [status] Required.
  /// [statusMessage] Required.
  const GetConnectionVgwTelemetry({
    required this.acceptedRouteCount,
    required this.lastStatusChange,
    required this.outsideIpAddress,
    required this.status,
    required this.statusMessage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceptedRouteCount': acceptedRouteCount,
      'lastStatusChange': lastStatusChange,
      'outsideIpAddress': outsideIpAddress,
      'status': status,
      'statusMessage': statusMessage,
    };
  }

  factory GetConnectionVgwTelemetry.fromMap(Map<String, dynamic> map) {
    return GetConnectionVgwTelemetry(
      acceptedRouteCount: pulumi.Input.fromValue((map['acceptedRouteCount'] as num).toInt()),
      lastStatusChange: pulumi.Input.fromValue(map['lastStatusChange'] as String),
      outsideIpAddress: pulumi.Input.fromValue(map['outsideIpAddress'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      statusMessage: pulumi.Input.fromValue(map['statusMessage'] as String),
    );
  }
}
