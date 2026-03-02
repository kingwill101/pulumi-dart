// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'product_code_values_enum_value.dart';

/// Definition of ProductCode
class ProductCode {
  /// <p>The product code.</p>
  final pulumi.Input<String>? productCodeId;
  /// <p>The type of product code.</p>
  final pulumi.Input<ProductCodeValuesEnumValue>? productCodeType;

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
      'productCodeType': ?pulumi.Input.mapOptionalInputValue<ProductCodeValuesEnumValue, Map<String, dynamic>>(productCodeType, (value) => value.toMap()),
    };
  }

  factory ProductCode.fromMap(Map<String, dynamic> map) {
    return ProductCode(
      productCodeId: map['productCodeId'] == null ? null : (map['productCodeId'] as String).input(),
      productCodeType: map['productCodeType'] == null ? null : (ProductCodeValuesEnumValue.fromMap((map['productCodeType'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

