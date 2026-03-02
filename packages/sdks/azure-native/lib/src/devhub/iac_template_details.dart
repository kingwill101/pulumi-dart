// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class IacTemplateDetails {
  /// Count of the product
  final pulumi.Input<int>? count;
  /// Naming convention of this product
  final pulumi.Input<String>? namingConvention;
  /// The name of the products.
  final pulumi.Input<String>? productName;

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
      count: map['count'] == null ? null : (map['count'] as int).input(),
      namingConvention: map['namingConvention'] == null ? null : (map['namingConvention'] as String).input(),
      productName: map['productName'] == null ? null : (map['productName'] as String).input(),
    );
  }
}

