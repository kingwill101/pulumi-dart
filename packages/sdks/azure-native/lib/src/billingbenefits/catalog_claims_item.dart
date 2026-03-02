// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Catalog claim for a discount.
class CatalogClaimsItem {
  final pulumi.Input<String>? catalogClaimsItemType;
  final pulumi.Input<String>? value;

  /// Creates a new [CatalogClaimsItem].
  /// [catalogClaimsItemType] Optional.
  /// [value] Optional.
  CatalogClaimsItem({
    this.catalogClaimsItemType,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogClaimsItemType': ?catalogClaimsItemType,
      'value': ?value,
    };
  }

  factory CatalogClaimsItem.fromMap(Map<String, dynamic> map) {
    return CatalogClaimsItem(
      catalogClaimsItemType: map['catalogClaimsItemType'] == null ? null : (map['catalogClaimsItemType'] as String).input(),
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

