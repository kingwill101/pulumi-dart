// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class IacTemplateDetailsResponse {
  /// Count of the product
  final pulumi.Input<int>? count;

  /// Naming convention of this product
  final pulumi.Input<String>? namingConvention;

  /// The name of the products.
  final pulumi.Input<String>? productName;

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
      count: (() {
        final guardedValue = map['count'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      namingConvention: (() {
        final guardedValue = map['namingConvention'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      productName: (() {
        final guardedValue = map['productName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
