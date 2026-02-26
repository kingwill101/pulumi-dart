// ignore_for_file: unused_element, unnecessary_cast

class RouterPeerAdvertisedIpRange {
  /// User-specified description for the IP range.
  final String? description;

  /// The IP range to advertise. The value must be a
  /// CIDR-formatted string.
  final String range;

  RouterPeerAdvertisedIpRange({
    this.description,
    required this.range,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['range'] = range;
    return map;
  }

  factory RouterPeerAdvertisedIpRange.fromMap(Map<String, dynamic> map) {
    return RouterPeerAdvertisedIpRange(
      description:
          map['description'] == null ? null : map['description'] as String,
      range: map['range'] as String,
    );
  }
}
