// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Catalog claim for a discount.
class CatalogClaimsItem {
  final pulumi.Input<String?>? catalogClaimsItemType;
  final pulumi.Input<String?>? value;

  /// Creates a new [CatalogClaimsItem].
  /// [catalogClaimsItemType] Optional.
  /// [value] Optional.
  const CatalogClaimsItem({
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
      catalogClaimsItemType: (() { final guardedValue = map['catalogClaimsItemType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
