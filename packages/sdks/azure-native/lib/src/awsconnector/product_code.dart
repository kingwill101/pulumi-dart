// ignore_for_file: unused_element, unnecessary_cast

import 'product_code_values_enum_value.dart';

/// Definition of ProductCode
class ProductCode {
  /// <p>The product code.</p>
  final String? productCodeId;
  /// <p>The type of product code.</p>
  final ProductCodeValuesEnumValue? productCodeType;

  /// Creates a new [ProductCode].
  /// [productCodeId] <p>The product code.</p>
  /// [productCodeType] <p>The type of product code.</p>
  ProductCode({
    this.productCodeId,
    this.productCodeType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'productCodeId': ?productCodeId,
      'productCodeType': ?productCodeType == null ? null : productCodeType!.toMap(),
    };
  }

  factory ProductCode.fromMap(Map<String, dynamic> map) {
    return ProductCode(
      productCodeId: map['productCodeId'] == null ? null : map['productCodeId'] as String,
      productCodeType: map['productCodeType'] == null ? null : ProductCodeValuesEnumValue.fromMap((map['productCodeType'] as Map).cast<String, dynamic>()),
    );
  }
}

