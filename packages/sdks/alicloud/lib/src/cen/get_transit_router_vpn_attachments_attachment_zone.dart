// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTransitRouterVpnAttachmentsAttachmentZone {
  /// The zone ID of the read-only instance.
  final pulumi.Input<String> zoneId;

  /// Creates a new [GetTransitRouterVpnAttachmentsAttachmentZone].
  /// [zoneId] The zone ID of the read-only instance.
  GetTransitRouterVpnAttachmentsAttachmentZone({
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'zoneId': zoneId,
    };
  }

  factory GetTransitRouterVpnAttachmentsAttachmentZone.fromMap(Map<String, dynamic> map) {
    return GetTransitRouterVpnAttachmentsAttachmentZone(
      zoneId: (map['zoneId'] as String).input(),
    );
  }
}

