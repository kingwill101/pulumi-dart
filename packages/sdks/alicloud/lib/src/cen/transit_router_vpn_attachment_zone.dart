// ignore_for_file: unused_element, unnecessary_cast


class TransitRouterVpnAttachmentZone {
  /// The zone ID of the read-only instance.
  /// You can call the [ListTransitRouterAvailableResource](https://www.alibabacloud.com/help/en/doc-detail/261356.html) operation to query the most recent zone list.
  final String zoneId;

  /// Creates a new [TransitRouterVpnAttachmentZone].
  /// [zoneId] The zone ID of the read-only instance.
  TransitRouterVpnAttachmentZone({
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'zoneId': zoneId,
    };
  }

  factory TransitRouterVpnAttachmentZone.fromMap(Map<String, dynamic> map) {
    return TransitRouterVpnAttachmentZone(
      zoneId: map['zoneId'] as String,
    );
  }
}

