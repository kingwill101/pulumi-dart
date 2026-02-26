// ignore_for_file: unused_element, unnecessary_cast

class GetAmiProductCode {
  final String productCodeId;
  final String productCodeType;

  GetAmiProductCode({
    required this.productCodeId,
    required this.productCodeType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['productCodeId'] = productCodeId;
    map['productCodeType'] = productCodeType;
    return map;
  }

  factory GetAmiProductCode.fromMap(Map<String, dynamic> map) {
    return GetAmiProductCode(
      productCodeId: map['productCodeId'] as String,
      productCodeType: map['productCodeType'] as String,
    );
  }
}
