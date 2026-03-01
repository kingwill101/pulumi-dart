// ignore_for_file: unused_element, unnecessary_cast


class IacTemplateDetails {
  /// Count of the product
  final int? count;
  /// Naming convention of this product
  final String? namingConvention;
  /// The name of the products.
  final String? productName;

  /// Creates a new [IacTemplateDetails].
  /// [count] Count of the product
  /// [namingConvention] Naming convention of this product
  /// [productName] The name of the products.
  IacTemplateDetails({
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

  factory IacTemplateDetails.fromMap(Map<String, dynamic> map) {
    return IacTemplateDetails(
      count: map['count'] == null ? null : map['count'] as int,
      namingConvention: map['namingConvention'] == null ? null : map['namingConvention'] as String,
      productName: map['productName'] == null ? null : map['productName'] as String,
    );
  }
}

