// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Catalog claim for a discount.
class CatalogClaimsItemResponse {
  final pulumi.Input<String>? catalogClaimsItemType;
  final pulumi.Input<String>? value;

  /// Creates a new [CatalogClaimsItemResponse].
  /// [catalogClaimsItemType] Optional.
  /// [value] Optional.
  CatalogClaimsItemResponse({
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
      catalogClaimsItemType: map['catalogClaimsItemType'] == null ? null : (map['catalogClaimsItemType']! as String).input(),
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

