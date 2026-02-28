// ignore_for_file: unused_element, unnecessary_cast

class RouterBgpAdvertisedIpRange {
  /// User-specified description for the IP range.
  ///
  /// <a name="nested_md5_authentication_keys"></a>The `md5_authentication_keys` block supports:
  final String? description;

  /// The IP range to advertise. The value must be a
  /// CIDR-formatted string.
  final String range;

  /// Creates a new [RouterBgpAdvertisedIpRange].
  /// [description] User-specified description for the IP range.
  /// [range] The IP range to advertise. The value must be a
  RouterBgpAdvertisedIpRange({
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

  factory RouterBgpAdvertisedIpRange.fromMap(Map<String, dynamic> map) {
    return RouterBgpAdvertisedIpRange(
      description:
          map['description'] == null ? null : map['description'] as String,
      range: map['range'] as String,
    );
  }
}
