// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPricesPriceModuleDetail {
  /// Preferential price.
  final pulumi.Input<double> costAfterDiscount;
  /// Discount.
  final pulumi.Input<double> invoiceDiscount;
  /// Valuation Module Identification.
  final pulumi.Input<String> moduleCode;
  /// Pricing Module Name.
  final pulumi.Input<String> moduleName;
  /// Original Price.
  final pulumi.Input<double> originalCost;
  /// Price Type.
  final pulumi.Input<String> priceType;

  /// Creates a new [GetPricesPriceModuleDetail].
  /// [costAfterDiscount] Preferential price.
  /// [invoiceDiscount] Discount.
  /// [moduleCode] Valuation Module Identification.
  /// [moduleName] Pricing Module Name.
  /// [originalCost] Original Price.
  /// [priceType] Price Type.
  const GetPricesPriceModuleDetail({
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
      costAfterDiscount: pulumi.Input.fromValue(map['costAfterDiscount'] as double),
      invoiceDiscount: pulumi.Input.fromValue(map['invoiceDiscount'] as double),
      moduleCode: pulumi.Input.fromValue(map['moduleCode'] as String),
      moduleName: pulumi.Input.fromValue(map['moduleName'] as String),
      originalCost: pulumi.Input.fromValue(map['originalCost'] as double),
      priceType: pulumi.Input.fromValue(map['priceType'] as String),
    );
  }
}

