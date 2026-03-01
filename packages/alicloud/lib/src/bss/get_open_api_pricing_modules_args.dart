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
  GetOpenApiPricingModulesArgs({
    List<String>? ids,
    String? nameRegex,
    String? outputFile,
    required String productCode,
    String? productType,
    required String subscriptionType,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      productCode = pulumi.Input.asInput<String>(productCode),
      productType = pulumi.Input.asOptionalInput<String>(productType),
      subscriptionType = pulumi.Input.asInput<String>(subscriptionType);

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
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      productCode: map['productCode'] as String,
      productType: map['productType'] == null ? null : map['productType'] as String,
      subscriptionType: map['subscriptionType'] as String,
    );
  }
}

