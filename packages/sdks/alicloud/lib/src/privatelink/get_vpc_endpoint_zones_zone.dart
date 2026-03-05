// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVpcEndpointZonesZone {
  /// Terminal node network card.
  final pulumi.Input<String> eniId;
  /// IP address of the terminal node network card.
  final pulumi.Input<String> eniIp;
  /// The ID of the Vpc Endpoint Zone.
  final pulumi.Input<String> id;
  /// The Status of Vpc Endpoint Zone. Valid Values: `Connected`, `Connecting`, `Creating`, `Deleted`, `Deleting`, `Disconnected`, `Disconnecting` and `Wait`.
  final pulumi.Input<String> status;
  /// The vSwitch id.
  final pulumi.Input<String> vswitchId;
  /// The Zone Domain.
  final pulumi.Input<String> zoneDomain;
  /// The Zone Id.
  final pulumi.Input<String> zoneId;

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
      eniId: pulumi.Input.fromValue(map['eniId'] as String),
      eniIp: pulumi.Input.fromValue(map['eniIp'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      vswitchId: pulumi.Input.fromValue(map['vswitchId'] as String),
      zoneDomain: pulumi.Input.fromValue(map['zoneDomain'] as String),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}

