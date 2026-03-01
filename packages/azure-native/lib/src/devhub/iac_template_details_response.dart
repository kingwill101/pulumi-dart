// ignore_for_file: unused_element, unnecessary_cast


class IacTemplateDetailsResponse {
  /// Count of the product
  final int? count;
  /// Naming convention of this product
  final String? namingConvention;
  /// The name of the products.
  final String? productName;

  /// Creates a new [IacTemplateDetailsResponse].
  /// [count] Count of the product
  /// [namingConvention] Naming convention of this product
  /// [productName] The name of the products.
  IacTemplateDetailsResponse({
    this.count,
    this.namingConvention,
    this.productName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': ?count,
      'namingConvention': ?namingConvention,
      'productName': ?productName,
    };
  }

  factory IacTemplateDetailsResponse.fromMap(Map<String, dynamic> map) {
    return IacTemplateDetailsResponse(
      count: map['count'] == null ? null : map['count'] as int,
      namingConvention: map['namingConvention'] == null ? null : map['namingConvention'] as String,
      productName: map['productName'] == null ? null : map['productName'] as String,
    );
  }
}

