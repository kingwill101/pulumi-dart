// ignore_for_file: unused_element, unnecessary_cast


class GetTransitRouterVpcAttachmentsAttachmentZoneMapping {
  /// The ID of the vSwitch.
  final String vswitchId;
  /// The ID of the zone.
  final String zoneId;

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
      vswitchId: map['vswitchId'] as String,
      zoneId: map['zoneId'] as String,
    );
  }
}

