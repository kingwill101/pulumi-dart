// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetConnectionVgwTelemetry {
  /// Number of accepted routes.
  final pulumi.Input<int> acceptedRouteCount;
  /// Date and time of the last change in status.
  final pulumi.Input<String> lastStatusChange;
  /// IP address of the virtual private gateway tunnel endpoint.
  final pulumi.Input<String> outsideIpAddress;
  /// Status of the VPN tunnel.
  final pulumi.Input<String> status;
  /// Information about the status change.
  final pulumi.Input<String> statusMessage;

  /// Creates a new [GetConnectionVgwTelemetry].
  /// [acceptedRouteCount] Number of accepted routes.
  /// [lastStatusChange] Date and time of the last change in status.
  /// [outsideIpAddress] IP address of the virtual private gateway tunnel endpoint.
  /// [status] Status of the VPN tunnel.
  /// [statusMessage] Information about the status change.
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
      acceptedRouteCount: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['acceptedRouteCount'])),
      lastStatusChange: pulumi.Input.fromValue(map['lastStatusChange'] as String),
      outsideIpAddress: pulumi.Input.fromValue(map['outsideIpAddress'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      statusMessage: pulumi.Input.fromValue(map['statusMessage'] as String),
    );
  }
}
