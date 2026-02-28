// ignore_for_file: unused_element, unnecessary_cast

/// Description-tagged IP ranges for the router to advertise.
class RouterAdvertisedIpRangeComputeV1 {
  /// User-specified description for the IP range.
  final String? description;

  /// The IP range to advertise. The value must be a CIDR-formatted string.
  final String? range;

  /// Creates a new [RouterAdvertisedIpRangeComputeV1].
  /// [description] User-specified description for the IP range.
  /// [range] The IP range to advertise. The value must be a CIDR-formatted string.
  RouterAdvertisedIpRangeComputeV1({
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

  factory RouterAdvertisedIpRangeComputeV1.fromMap(Map<String, dynamic> map) {
    return RouterAdvertisedIpRangeComputeV1(
      description:
          map['description'] == null ? null : map['description'] as String,
      range: map['range'] == null ? null : map['range'] as String,
    );
  }
}
