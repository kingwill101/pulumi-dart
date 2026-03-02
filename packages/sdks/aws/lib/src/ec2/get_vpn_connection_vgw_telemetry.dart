// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVpnConnectionVgwTelemetry {
  final pulumi.Input<int> acceptedRouteCount;
  final pulumi.Input<String> lastStatusChange;
  final pulumi.Input<String> outsideIpAddress;
  final pulumi.Input<String> status;
  final pulumi.Input<String> statusMessage;

  /// Creates a new [GetVpnConnectionVgwTelemetry].
  /// [acceptedRouteCount] Required.
  /// [lastStatusChange] Required.
  /// [outsideIpAddress] Required.
  /// [status] Required.
  /// [statusMessage] Required.
  GetVpnConnectionVgwTelemetry({
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

  factory GetVpnConnectionVgwTelemetry.fromMap(Map<String, dynamic> map) {
    return GetVpnConnectionVgwTelemetry(
      acceptedRouteCount: (map['acceptedRouteCount'] as int).input(),
      lastStatusChange: (map['lastStatusChange'] as String).input(),
      outsideIpAddress: (map['outsideIpAddress'] as String).input(),
      status: (map['status'] as String).input(),
      statusMessage: (map['statusMessage'] as String).input(),
    );
  }
}

