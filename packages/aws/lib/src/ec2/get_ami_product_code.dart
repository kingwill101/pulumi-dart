// ignore_for_file: unused_element, unnecessary_cast

class GetAmiProductCode {
  final String productCodeId;
  final String productCodeType;

  /// Creates a new [GetAmiProductCode].
  /// [productCodeId] Required.
  /// [productCodeType] Required.
  GetAmiProductCode({
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
      productCodeId: map['productCodeId'] as String,
      productCodeType: map['productCodeType'] as String,
    );
  }
}
