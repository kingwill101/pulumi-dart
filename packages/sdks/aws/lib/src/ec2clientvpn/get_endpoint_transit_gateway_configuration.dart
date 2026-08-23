// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEndpointTransitGatewayConfiguration {
  final pulumi.Input<List<String>> availabilityZoneIds;
  final pulumi.Input<List<String>> availabilityZones;
  final pulumi.Input<String> transitGatewayAttachmentId;
  final pulumi.Input<String> transitGatewayId;

  /// Creates a new [GetEndpointTransitGatewayConfiguration].
  /// [availabilityZoneIds] Required.
  /// [availabilityZones] Required.
  /// [transitGatewayAttachmentId] Required.
  /// [transitGatewayId] Required.
  const GetEndpointTransitGatewayConfiguration({
    required this.availabilityZoneIds,
    required this.availabilityZones,
    required this.transitGatewayAttachmentId,
    required this.transitGatewayId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZoneIds': availabilityZoneIds,
      'availabilityZones': availabilityZones,
      'transitGatewayAttachmentId': transitGatewayAttachmentId,
      'transitGatewayId': transitGatewayId,
    };
  }

  factory GetEndpointTransitGatewayConfiguration.fromMap(Map<String, dynamic> map) {
    return GetEndpointTransitGatewayConfiguration(
      availabilityZoneIds: pulumi.Input.fromValue((map['availabilityZoneIds'] as List).cast<String>()),
      availabilityZones: pulumi.Input.fromValue((map['availabilityZones'] as List).cast<String>()),
      transitGatewayAttachmentId: pulumi.Input.fromValue(map['transitGatewayAttachmentId'] as String),
      transitGatewayId: pulumi.Input.fromValue(map['transitGatewayId'] as String),
    );
  }
}
