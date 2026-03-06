// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'product_code_values_enum_value.dart';

/// Definition of ProductCode
class ProductCode {
  /// &lt;p&gt;The product code.&lt;/p&gt;
  final pulumi.Input<String>? productCodeId;
  /// &lt;p&gt;The type of product code.&lt;/p&gt;
  final pulumi.Input<ProductCodeValuesEnumValue>? productCodeType;

  /// Creates a new [ProductCode].
  /// [productCodeId] &lt;p&gt;The product code.&lt;/p&gt;
  /// [productCodeType] &lt;p&gt;The type of product code.&lt;/p&gt;
  const ProductCode({
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
      productCodeId: (() { final guardedValue = map['productCodeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      productCodeType: (() { final guardedValue = map['productCodeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProductCodeValuesEnumValue.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

