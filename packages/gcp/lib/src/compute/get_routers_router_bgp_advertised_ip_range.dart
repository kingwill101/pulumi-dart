// ignore_for_file: unused_element, unnecessary_cast

class GetRoutersRouterBgpAdvertisedIpRange {
  final String description;
  final String range;

  /// Creates a new [GetRoutersRouterBgpAdvertisedIpRange].
  /// [description] Required.
  /// [range] Required.
  GetRoutersRouterBgpAdvertisedIpRange({
    required this.description,
    required this.range,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['description'] = description;
    map['range'] = range;
    return map;
  }

  factory GetRoutersRouterBgpAdvertisedIpRange.fromMap(
      Map<String, dynamic> map) {
    return GetRoutersRouterBgpAdvertisedIpRange(
      description: map['description'] as String,
      range: map['range'] as String,
    );
  }
}
