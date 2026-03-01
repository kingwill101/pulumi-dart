// ignore_for_file: unused_element, unnecessary_cast


class GetPricesPriceModuleDetail {
  /// Preferential price.
  final double costAfterDiscount;
  /// Discount.
  final double invoiceDiscount;
  /// Valuation Module Identification.
  final String moduleCode;
  /// Pricing Module Name.
  final String moduleName;
  /// Original Price.
  final double originalCost;
  /// Price Type.
  final String priceType;

  /// Creates a new [GetPricesPriceModuleDetail].
  /// [costAfterDiscount] Preferential price.
  /// [invoiceDiscount] Discount.
  /// [moduleCode] Valuation Module Identification.
  /// [moduleName] Pricing Module Name.
  /// [originalCost] Original Price.
  /// [priceType] Price Type.
  GetPricesPriceModuleDetail({
    required this.costAfterDiscount,
    required this.invoiceDiscount,
    required this.moduleCode,
    required this.moduleName,
    required this.originalCost,
    required this.priceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'costAfterDiscount': costAfterDiscount,
      'invoiceDiscount': invoiceDiscount,
      'moduleCode': moduleCode,
      'moduleName': moduleName,
      'originalCost': originalCost,
      'priceType': priceType,
    };
  }

  factory GetPricesPriceModuleDetail.fromMap(Map<String, dynamic> map) {
    return GetPricesPriceModuleDetail(
      costAfterDiscount: map['costAfterDiscount'] as double,
      invoiceDiscount: map['invoiceDiscount'] as double,
      moduleCode: map['moduleCode'] as String,
      moduleName: map['moduleName'] as String,
      originalCost: map['originalCost'] as double,
      priceType: map['priceType'] as String,
    );
  }
}

