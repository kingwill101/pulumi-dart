// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MultitenantDistributionRestrictionsGeoRestriction {
  /// List of ISO 3166-1-alpha-2 country codes for which you want CloudFront either to distribute your content (`whitelist`) or not distribute your content (`blacklist`). Required when `restriction_type` is `whitelist` or `blacklist`.
  final pulumi.Input<List<String>>? items;
  /// Method to restrict distribution of your content by country. Valid values are `none`, `whitelist`, and `blacklist`.
  final pulumi.Input<String> restrictionType;

  /// Creates a new [MultitenantDistributionRestrictionsGeoRestriction].
  /// [items] List of ISO 3166-1-alpha-2 country codes for which you want CloudFront either to distribute your content (`whitelist`) or not distribute your content (`blacklist`). Required when `restriction_type` is `whitelist` or `blacklist`.
  /// [restrictionType] Method to restrict distribution of your content by country. Valid values are `none`, `whitelist`, and `blacklist`.
  const MultitenantDistributionRestrictionsGeoRestriction({
    this.items,
    required this.restrictionType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'items': ?items,
      'restrictionType': restrictionType,
    };
  }

  factory MultitenantDistributionRestrictionsGeoRestriction.fromMap(Map<String, dynamic> map) {
    return MultitenantDistributionRestrictionsGeoRestriction(
      items: (() { final guardedValue = map['items']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      restrictionType: pulumi.Input.fromValue(map['restrictionType'] as String),
    );
  }
}

