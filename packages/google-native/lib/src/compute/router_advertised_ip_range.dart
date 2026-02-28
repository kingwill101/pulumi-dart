// ignore_for_file: unused_element, unnecessary_cast

/// Description-tagged IP ranges for the router to advertise.
class RouterAdvertisedIpRange {
  /// User-specified description for the IP range.
  final String? description;

  /// The IP range to advertise. The value must be a CIDR-formatted string.
  final String? range;

  /// Creates a new [RouterAdvertisedIpRange].
  /// [description] User-specified description for the IP range.
  /// [range] The IP range to advertise. The value must be a CIDR-formatted string.
  RouterAdvertisedIpRange({
    this.description,
    this.range,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final rangeValue = range;
    if (rangeValue != null) {
      map['range'] = rangeValue;
    }
    return map;
  }

  factory RouterAdvertisedIpRange.fromMap(Map<String, dynamic> map) {
    return RouterAdvertisedIpRange(
      description:
          map['description'] == null ? null : map['description'] as String,
      range: map['range'] == null ? null : map['range'] as String,
    );
  }
}
