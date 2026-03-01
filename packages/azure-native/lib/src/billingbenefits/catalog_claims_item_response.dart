// ignore_for_file: unused_element, unnecessary_cast


/// Catalog claim for a discount.
class CatalogClaimsItemResponse {
  final String? catalogClaimsItemType;
  final String? value;

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
      catalogClaimsItemType: map['catalogClaimsItemType'] == null ? null : map['catalogClaimsItemType'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

