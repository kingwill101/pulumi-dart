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
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    required pulumi.Output<String> productCode,
    pulumi.Output<String>? productType,
    required pulumi.Output<String> subscriptionType,
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
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      productCode: pulumi.Output.create<String>(map['productCode'] as String),
      productType: map['productType'] == null ? null : pulumi.Output.create<String>(map['productType'] as String),
      subscriptionType: pulumi.Output.create<String>(map['subscriptionType'] as String),
    );
  }
}

