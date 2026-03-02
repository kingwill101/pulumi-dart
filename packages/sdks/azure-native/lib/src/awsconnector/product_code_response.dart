// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'product_code_values_enum_value_response.dart';

/// Definition of ProductCode
class ProductCodeResponse {
  /// <p>The product code.</p>
  final pulumi.Input<String>? productCodeId;
  /// <p>The type of product code.</p>
  final pulumi.Input<ProductCodeValuesEnumValueResponse>? productCodeType;

  /// Creates a new [ProductCodeResponse].
  /// [productCodeId] <p>The product code.</p>
  /// [productCodeType] <p>The type of product code.</p>
  ProductCodeResponse({
    this.productCodeId,
    this.productCodeType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'productCodeId': ?productCodeId,
      'productCodeType': ?pulumi.Input.mapOptionalInputValue<ProductCodeValuesEnumValueResponse, Map<String, dynamic>>(productCodeType, (value) => value.toMap()),
    };
  }

  factory ProductCodeResponse.fromMap(Map<String, dynamic> map) {
    return ProductCodeResponse(
      productCodeId: map['productCodeId'] == null ? null : (map['productCodeId']! as String).input(),
      productCodeType: map['productCodeType'] == null ? null : (ProductCodeValuesEnumValueResponse.fromMap((map['productCodeType']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

