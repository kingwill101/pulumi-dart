// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTransitRouterVpcAttachmentsAttachmentZoneMapping {
  /// The ID of the vSwitch.
  final pulumi.Input<String> vswitchId;
  /// The ID of the zone.
  final pulumi.Input<String> zoneId;

  /// Creates a new [GetTransitRouterVpcAttachmentsAttachmentZoneMapping].
  /// [vswitchId] The ID of the vSwitch.
  /// [zoneId] The ID of the zone.
  GetTransitRouterVpcAttachmentsAttachmentZoneMapping({
    required this.vswitchId,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vswitchId': vswitchId,
      'zoneId': zoneId,
    };
  }

  factory GetTransitRouterVpcAttachmentsAttachmentZoneMapping.fromMap(Map<String, dynamic> map) {
    return GetTransitRouterVpcAttachmentsAttachmentZoneMapping(
      vswitchId: (map['vswitchId'] as String).input(),
      zoneId: (map['zoneId'] as String).input(),
    );
  }
}

