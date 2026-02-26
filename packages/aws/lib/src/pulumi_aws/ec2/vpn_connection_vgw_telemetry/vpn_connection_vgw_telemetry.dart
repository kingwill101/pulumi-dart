// ignore_for_file: unused_element, unnecessary_cast

class VpnConnectionVgwTelemetry {
  /// The number of accepted routes.
  final int? acceptedRouteCount;

  /// The Amazon Resource Name (ARN) of the VPN tunnel endpoint certificate.
  final String? certificateArn;

  /// The date and time of the last change in status.
  final String? lastStatusChange;

  /// The Internet-routable IP address of the virtual private gateway's outside interface.
  final String? outsideIpAddress;

  /// The status of the VPN tunnel.
  final String? status;

  /// If an error occurs, a description of the error.
  final String? statusMessage;

  VpnConnectionVgwTelemetry({
    this.acceptedRouteCount,
    this.certificateArn,
    this.lastStatusChange,
    this.outsideIpAddress,
    this.status,
    this.statusMessage,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final acceptedRouteCountValue = acceptedRouteCount;
    if (acceptedRouteCountValue != null) {
      map['acceptedRouteCount'] = acceptedRouteCountValue;
    }
    final certificateArnValue = certificateArn;
    if (certificateArnValue != null) {
      map['certificateArn'] = certificateArnValue;
    }
    final lastStatusChangeValue = lastStatusChange;
    if (lastStatusChangeValue != null) {
      map['lastStatusChange'] = lastStatusChangeValue;
    }
    final outsideIpAddressValue = outsideIpAddress;
    if (outsideIpAddressValue != null) {
      map['outsideIpAddress'] = outsideIpAddressValue;
    }
    final statusValue = status;
    if (statusValue != null) {
      map['status'] = statusValue;
    }
    final statusMessageValue = statusMessage;
    if (statusMessageValue != null) {
      map['statusMessage'] = statusMessageValue;
    }
    return map;
  }

  factory VpnConnectionVgwTelemetry.fromMap(Map<String, dynamic> map) {
    return VpnConnectionVgwTelemetry(
      acceptedRouteCount: map['acceptedRouteCount'] == null
          ? null
          : map['acceptedRouteCount'] as int,
      certificateArn: map['certificateArn'] == null
          ? null
          : map['certificateArn'] as String,
      lastStatusChange: map['lastStatusChange'] == null
          ? null
          : map['lastStatusChange'] as String,
      outsideIpAddress: map['outsideIpAddress'] == null
          ? null
          : map['outsideIpAddress'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      statusMessage:
          map['statusMessage'] == null ? null : map['statusMessage'] as String,
    );
  }
}
