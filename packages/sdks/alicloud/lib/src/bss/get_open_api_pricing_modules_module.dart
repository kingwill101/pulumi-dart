// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_open_api_pricing_modules_module_value.dart';

class GetOpenApiPricingModulesModule {
  /// Property Code.
  final pulumi.Input<String> code;
  /// A list of Price Module IDs.
  final pulumi.Input<String> id;
  /// Attribute name.
  final pulumi.Input<String> pricingModuleName;
  /// The product code.
  final pulumi.Input<String> productCode;
  /// The product type.
  final pulumi.Input<String> productType;
  /// Subscription type. Value:
  /// * Subscription: Prepaid.
  /// * PayAsYouGo: postpaid.
  final pulumi.Input<String> subscriptionType;
  /// Attribute unit.
  final pulumi.Input<String> unit;
  /// Property.
  final pulumi.Input<List<GetOpenApiPricingModulesModuleValue>> values;

  /// Creates a new [GetOpenApiPricingModulesModule].
  /// [code] Property Code.
  /// [id] A list of Price Module IDs.
  /// [pricingModuleName] Attribute name.
  /// [productCode] The product code.
  /// [productType] The product type.
  /// [subscriptionType] Subscription type. Value:
  /// [unit] Attribute unit.
  /// [values] Property.
  GetOpenApiPricingModulesModule({
    required this.code,
    required this.id,
    required this.pricingModuleName,
    required this.productCode,
    required this.productType,
    required this.subscriptionType,
    required this.unit,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'id': id,
      'pricingModuleName': pricingModuleName,
      'productCode': productCode,
      'productType': productType,
      'subscriptionType': subscriptionType,
      'unit': unit,
      'values': pulumi.Input.mapInputValue<List<GetOpenApiPricingModulesModuleValue>, List<Map<String, dynamic>>>(values, (value) => pulumi.Input.encodeList<GetOpenApiPricingModulesModuleValue, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetOpenApiPricingModulesModule.fromMap(Map<String, dynamic> map) {
    return GetOpenApiPricingModulesModule(
      code: (map['code'] as String).input(),
      id: (map['id'] as String).input(),
      pricingModuleName: (map['pricingModuleName'] as String).input(),
      productCode: (map['productCode'] as String).input(),
      productType: (map['productType'] as String).input(),
      subscriptionType: (map['subscriptionType'] as String).input(),
      unit: (map['unit'] as String).input(),
      values: (pulumi.Input.decodeList<GetOpenApiPricingModulesModuleValue>(map['values'], (value) => GetOpenApiPricingModulesModuleValue.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

