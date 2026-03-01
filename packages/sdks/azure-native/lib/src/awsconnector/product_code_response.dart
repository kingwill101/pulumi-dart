// ignore_for_file: unused_element, unnecessary_cast

import 'product_code_values_enum_value_response.dart';

/// Definition of ProductCode
class ProductCodeResponse {
  /// <p>The product code.</p>
  final String? productCodeId;
  /// <p>The type of product code.</p>
  final ProductCodeValuesEnumValueResponse? productCodeType;

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
      'productCodeType': ?productCodeType == null ? null : productCodeType!.toMap(),
    };
  }

  factory ProductCodeResponse.fromMap(Map<String, dynamic> map) {
    return ProductCodeResponse(
      productCodeId: map['productCodeId'] == null ? null : map['productCodeId'] as String,
      productCodeType: map['productCodeType'] == null ? null : ProductCodeValuesEnumValueResponse.fromMap((map['productCodeType'] as Map).cast<String, dynamic>()),
    );
  }
}

