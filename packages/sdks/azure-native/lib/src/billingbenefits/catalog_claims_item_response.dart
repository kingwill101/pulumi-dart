// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Catalog claim for a discount.
class CatalogClaimsItemResponse {
  final pulumi.Input<String>? catalogClaimsItemType;
  final pulumi.Input<String>? value;

  /// Creates a new [CatalogClaimsItemResponse].
  /// [catalogClaimsItemType] Optional.
  /// [value] Optional.
  const CatalogClaimsItemResponse({
    this.catalogClaimsItemType,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogClaimsItemType': ?catalogClaimsItemType,
      'value': ?value,
    };
  }

  factory CatalogClaimsItemResponse.fromMap(Map<String, dynamic> map) {
    return CatalogClaimsItemResponse(
      catalogClaimsItemType: (() { final guardedValue = map['catalogClaimsItemType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
