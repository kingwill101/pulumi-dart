// ignore_for_file: unused_element, unnecessary_cast

class GetVpnConnectionVgwTelemetry {
  final int acceptedRouteCount;
  final String lastStatusChange;
  final String outsideIpAddress;
  final String status;
  final String statusMessage;

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
      acceptedRouteCount: map['acceptedRouteCount'] as int,
      lastStatusChange: map['lastStatusChange'] as String,
      outsideIpAddress: map['outsideIpAddress'] as String,
      status: map['status'] as String,
      statusMessage: map['statusMessage'] as String,
    );
  }
}
