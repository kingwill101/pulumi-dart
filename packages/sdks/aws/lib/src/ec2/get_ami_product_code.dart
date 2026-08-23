// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAmiProductCode {
  /// The product code.
  final pulumi.Input<String> productCodeId;
  /// The type of product code.
  final pulumi.Input<String> productCodeType;

  /// Creates a new [GetAmiProductCode].
  /// [productCodeId] The product code.
  /// [productCodeType] The type of product code.
  const GetAmiProductCode({
    required this.productCodeId,
    required this.productCodeType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'productCodeId': productCodeId,
      'productCodeType': productCodeType,
    };
  }

  factory GetAmiProductCode.fromMap(Map<String, dynamic> map) {
    return GetAmiProductCode(
      productCodeId: pulumi.Input.fromValue(map['productCodeId'] as String),
      productCodeType: pulumi.Input.fromValue(map['productCodeType'] as String),
    );
  }
}
