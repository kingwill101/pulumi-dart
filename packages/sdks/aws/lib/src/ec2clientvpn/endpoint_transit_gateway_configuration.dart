// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EndpointTransitGatewayConfiguration {
  /// List of availability zone IDs in which the transit gateway is present. Conflicts with `availabilityZones`.
  final pulumi.Input<List<String>?>? availabilityZoneIds;
  /// List of availability zones in which the transit gateway is present. Conflicts with `availabilityZoneIds`.
  final pulumi.Input<List<String>?>? availabilityZones;
  /// ID of the Transit Gateway attachment.
  final pulumi.Input<String?>? transitGatewayAttachmentId;
  /// ID of the Transit Gateway to which the Client VPN endpoint is associated.
  final pulumi.Input<String?>? transitGatewayId;

  /// Creates a new [EndpointTransitGatewayConfiguration].
  /// [availabilityZoneIds] List of availability zone IDs in which the transit gateway is present. Conflicts with `availabilityZones`.
  /// [availabilityZones] List of availability zones in which the transit gateway is present. Conflicts with `availabilityZoneIds`.
  /// [transitGatewayAttachmentId] ID of the Transit Gateway attachment.
  /// [transitGatewayId] ID of the Transit Gateway to which the Client VPN endpoint is associated.
  const EndpointTransitGatewayConfiguration({
    this.availabilityZoneIds,
    this.availabilityZones,
    this.transitGatewayAttachmentId,
    this.transitGatewayId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZoneIds': ?availabilityZoneIds,
      'availabilityZones': ?availabilityZones,
      'transitGatewayAttachmentId': ?transitGatewayAttachmentId,
      'transitGatewayId': ?transitGatewayId,
    };
  }

  factory EndpointTransitGatewayConfiguration.fromMap(Map<String, dynamic> map) {
    return EndpointTransitGatewayConfiguration(
      availabilityZoneIds: (() { final guardedValue = map['availabilityZoneIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      availabilityZones: (() { final guardedValue = map['availabilityZones']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      transitGatewayAttachmentId: (() { final guardedValue = map['transitGatewayAttachmentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transitGatewayId: (() { final guardedValue = map['transitGatewayId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
