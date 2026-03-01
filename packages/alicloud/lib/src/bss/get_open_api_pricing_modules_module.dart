// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_open_api_pricing_modules_module_value.dart';

class GetOpenApiPricingModulesModule {
  /// Property Code.
  final String code;
  /// A list of Price Module IDs.
  final String id;
  /// Attribute name.
  final String pricingModuleName;
  /// The product code.
  final String productCode;
  /// The product type.
  final String productType;
  /// Subscription type. Value:
  /// * Subscription: Prepaid.
  /// * PayAsYouGo: postpaid.
  final String subscriptionType;
  /// Attribute unit.
  final String unit;
  /// Property.
  final List<GetOpenApiPricingModulesModuleValue> values;

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
      'values': pulumi.Input.encodeList<GetOpenApiPricingModulesModuleValue, Map<String, dynamic>>(values, (value) => value.toMap()),
    };
  }

  factory GetOpenApiPricingModulesModule.fromMap(Map<String, dynamic> map) {
    return GetOpenApiPricingModulesModule(
      code: map['code'] as String,
      id: map['id'] as String,
      pricingModuleName: map['pricingModuleName'] as String,
      productCode: map['productCode'] as String,
      productType: map['productType'] as String,
      subscriptionType: map['subscriptionType'] as String,
      unit: map['unit'] as String,
      values: pulumi.Input.decodeList<GetOpenApiPricingModulesModuleValue>(map['values'], (value) => GetOpenApiPricingModulesModuleValue.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

