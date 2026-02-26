// ignore_for_file: unused_element, unnecessary_cast

/// Description-tagged IP ranges for the router to advertise.
class RouterAdvertisedIpRangeResponse2 {
  /// User-specified description for the IP range.
  final String description;

  /// The IP range to advertise. The value must be a CIDR-formatted string.
  final String range;

  RouterAdvertisedIpRangeResponse2({
    required this.description,
    required this.range,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['description'] = description;
    map['range'] = range;
    return map;
  }

  factory RouterAdvertisedIpRangeResponse2.fromMap(Map<String, dynamic> map) {
    return RouterAdvertisedIpRangeResponse2(
      description: map['description'] as String,
      range: map['range'] as String,
    );
  }
}
