// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VpnConnectionVgwTelemetry {
  /// The number of accepted routes.
  final pulumi.Input<int>? acceptedRouteCount;
  /// The Amazon Resource Name (ARN) of the VPN tunnel endpoint certificate.
  final pulumi.Input<String>? certificateArn;
  /// The date and time of the last change in status.
  final pulumi.Input<String>? lastStatusChange;
  /// The Internet-routable IP address of the virtual private gateway's outside interface.
  final pulumi.Input<String>? outsideIpAddress;
  /// The status of the VPN tunnel.
  final pulumi.Input<String>? status;
  /// If an error occurs, a description of the error.
  final pulumi.Input<String>? statusMessage;

  /// Creates a new [VpnConnectionVgwTelemetry].
  /// [acceptedRouteCount] The number of accepted routes.
  /// [certificateArn] The Amazon Resource Name (ARN) of the VPN tunnel endpoint certificate.
  /// [lastStatusChange] The date and time of the last change in status.
  /// [outsideIpAddress] The Internet-routable IP address of the virtual private gateway's outside interface.
  /// [status] The status of the VPN tunnel.
  /// [statusMessage] If an error occurs, a description of the error.
  VpnConnectionVgwTelemetry({
    this.acceptedRouteCount,
    this.certificateArn,
    this.lastStatusChange,
    this.outsideIpAddress,
    this.status,
    this.statusMessage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceptedRouteCount': ?acceptedRouteCount,
      'certificateArn': ?certificateArn,
      'lastStatusChange': ?lastStatusChange,
      'outsideIpAddress': ?outsideIpAddress,
      'status': ?status,
      'statusMessage': ?statusMessage,
    };
  }

  factory VpnConnectionVgwTelemetry.fromMap(Map<String, dynamic> map) {
    return VpnConnectionVgwTelemetry(
      acceptedRouteCount: map['acceptedRouteCount'] == null ? null : (map['acceptedRouteCount'] as int).input(),
      certificateArn: map['certificateArn'] == null ? null : (map['certificateArn'] as String).input(),
      lastStatusChange: map['lastStatusChange'] == null ? null : (map['lastStatusChange'] as String).input(),
      outsideIpAddress: map['outsideIpAddress'] == null ? null : (map['outsideIpAddress'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      statusMessage: map['statusMessage'] == null ? null : (map['statusMessage'] as String).input(),
    );
  }
}

