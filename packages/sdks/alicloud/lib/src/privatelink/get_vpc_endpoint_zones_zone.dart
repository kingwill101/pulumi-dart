// ignore_for_file: unused_element, unnecessary_cast


class GetVpcEndpointZonesZone {
  /// Terminal node network card.
  final String eniId;
  /// IP address of the terminal node network card.
  final String eniIp;
  /// The ID of the Vpc Endpoint Zone.
  final String id;
  /// The Status of Vpc Endpoint Zone. Valid Values: `Connected`, `Connecting`, `Creating`, `Deleted`, `Deleting`, `Disconnected`, `Disconnecting` and `Wait`.
  final String status;
  /// The vSwitch id.
  final String vswitchId;
  /// The Zone Domain.
  final String zoneDomain;
  /// The Zone Id.
  final String zoneId;

  /// Creates a new [GetVpcEndpointZonesZone].
  /// [eniId] Terminal node network card.
  /// [eniIp] IP address of the terminal node network card.
  /// [id] The ID of the Vpc Endpoint Zone.
  /// [status] The Status of Vpc Endpoint Zone. Valid Values: `Connected`, `Connecting`, `Creating`, `Deleted`, `Deleting`, `Disconnected`, `Disconnecting` and `Wait`.
  /// [vswitchId] The vSwitch id.
  /// [zoneDomain] The Zone Domain.
  /// [zoneId] The Zone Id.
  GetVpcEndpointZonesZone({
    required this.eniId,
    required this.eniIp,
    required this.id,
    required this.status,
    required this.vswitchId,
    required this.zoneDomain,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eniId': eniId,
      'eniIp': eniIp,
      'id': id,
      'status': status,
      'vswitchId': vswitchId,
      'zoneDomain': zoneDomain,
      'zoneId': zoneId,
    };
  }

  factory GetVpcEndpointZonesZone.fromMap(Map<String, dynamic> map) {
    return GetVpcEndpointZonesZone(
      eniId: map['eniId'] as String,
      eniIp: map['eniIp'] as String,
      id: map['id'] as String,
      status: map['status'] as String,
      vswitchId: map['vswitchId'] as String,
      zoneDomain: map['zoneDomain'] as String,
      zoneId: map['zoneId'] as String,
    );
  }
}

