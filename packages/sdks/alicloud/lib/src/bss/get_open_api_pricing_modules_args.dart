// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_bss_get_open_api_pricing_modules_get_open_api_pricing_modules_args_doc}
/// Arguments for getOpenApiPricingModules.
/// {@endtemplate}
/// {@macro pulumi_bss_get_open_api_pricing_modules_get_open_api_pricing_modules_args_doc}
class GetOpenApiPricingModulesArgs {
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Property name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The product code.
  final pulumi.Input<String> productCode;
  /// The product type.
  final pulumi.Input<String>? productType;
  /// Subscription type. Value:
  /// * Subscription: Prepaid.
  /// * PayAsYouGo: postpaid.
  final pulumi.Input<String> subscriptionType;

  /// Creates a new [GetOpenApiPricingModulesArgs].
  /// [ids] Optional.
  /// [nameRegex] A regex string to filter results by Property name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [productCode] The product code.
  /// [productType] The product type.
  /// [subscriptionType] Subscription type. Value:
  const GetOpenApiPricingModulesArgs({
    this.ids,
    this.nameRegex,
    this.outputFile,
    required this.productCode,
    this.productType,
    required this.subscriptionType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'productCode': productCode,
      'productType': ?productType,
      'subscriptionType': subscriptionType,
    };
  }

  factory GetOpenApiPricingModulesArgs.fromMap(Map<String, dynamic> map) {
    return GetOpenApiPricingModulesArgs(
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      productCode: pulumi.Input.fromValue(map['productCode'] as String),
      productType: (() { final guardedValue = map['productType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subscriptionType: pulumi.Input.fromValue(map['subscriptionType'] as String),
    );
  }
}

