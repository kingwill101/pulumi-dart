// ignore_for_file: unused_element, unnecessary_cast

class GetVpnConnectionVgwTelemetry {
  final int acceptedRouteCount;
  final String lastStatusChange;
  final String outsideIpAddress;
  final String status;
  final String statusMessage;

  GetVpnConnectionVgwTelemetry({
    required this.acceptedRouteCount,
    required this.lastStatusChange,
    required this.outsideIpAddress,
    required this.status,
    required this.statusMessage,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['acceptedRouteCount'] = acceptedRouteCount;
    map['lastStatusChange'] = lastStatusChange;
    map['outsideIpAddress'] = outsideIpAddress;
    map['status'] = status;
    map['statusMessage'] = statusMessage;
    return map;
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
