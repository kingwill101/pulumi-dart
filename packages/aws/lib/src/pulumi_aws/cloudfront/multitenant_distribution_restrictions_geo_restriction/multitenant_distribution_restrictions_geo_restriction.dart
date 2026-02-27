// ignore_for_file: unused_element, unnecessary_cast

class MultitenantDistributionRestrictionsGeoRestriction {
  /// List of ISO 3166-1-alpha-2 country codes for which you want CloudFront either to distribute your content (`whitelist`) or not distribute your content (`blacklist`). Required when `restriction_type` is `whitelist` or `blacklist`.
  final List<String>? items;

  /// Method to restrict distribution of your content by country. Valid values are `none`, `whitelist`, and `blacklist`.
  final String restrictionType;

  MultitenantDistributionRestrictionsGeoRestriction({
    this.items,
    required this.restrictionType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final itemsValue = items;
    if (itemsValue != null) {
      map['items'] = itemsValue;
    }
    map['restrictionType'] = restrictionType;
    return map;
  }

  factory MultitenantDistributionRestrictionsGeoRestriction.fromMap(
      Map<String, dynamic> map) {
    return MultitenantDistributionRestrictionsGeoRestriction(
      items:
          map['items'] == null ? null : (map['items'] as List).cast<String>(),
      restrictionType: map['restrictionType'] as String,
    );
  }
}
