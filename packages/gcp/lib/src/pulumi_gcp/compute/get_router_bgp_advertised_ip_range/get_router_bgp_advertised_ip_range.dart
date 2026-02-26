// ignore_for_file: unused_element, unnecessary_cast

class GetRouterBgpAdvertisedIpRange {
  /// User-specified description for the IP range.
  final String description;

  /// The IP range to advertise. The value must be a
  /// CIDR-formatted string.
  final String range;

  GetRouterBgpAdvertisedIpRange({
    required this.description,
    required this.range,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['description'] = description;
    map['range'] = range;
    return map;
  }

  factory GetRouterBgpAdvertisedIpRange.fromMap(Map<String, dynamic> map) {
    return GetRouterBgpAdvertisedIpRange(
      description: map['description'] as String,
      range: map['range'] as String,
    );
  }
}
