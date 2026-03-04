// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_open_api_pricing_modules_module.dart';

/// Result data returned by getOpenApiPricingModules.
class GetOpenApiPricingModulesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;

  /// A list of Pricing Module Entries. Each element contains the following attributes:
  final List<GetOpenApiPricingModulesModule> modules;
  final String? nameRegex;

  /// A list of name of Pricing Modules.
  final List<String> names;
  final String? outputFile;
  final String productCode;
  final String? productType;
  final String subscriptionType;

  /// Creates a new [GetOpenApiPricingModulesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [modules] A list of Pricing Module Entries. Each element contains the following attributes:
  /// [nameRegex] Optional.
  /// [names] A list of name of Pricing Modules.
  /// [outputFile] Optional.
  /// [productCode] Required.
  /// [productType] Optional.
  /// [subscriptionType] Required.
  GetOpenApiPricingModulesResult({
    required this.id,
    required this.ids,
    required this.modules,
    this.nameRegex,
    required this.names,
    this.outputFile,
    required this.productCode,
    this.productType,
    required this.subscriptionType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'modules':
          pulumi.Input.encodeList<
            GetOpenApiPricingModulesModule,
            Map<String, dynamic>
          >(modules, (value) => value.toMap()),
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'productCode': productCode,
      'productType': ?productType,
      'subscriptionType': subscriptionType,
    };
  }

  factory GetOpenApiPricingModulesResult.fromMap(Map<String, dynamic> map) {
    return GetOpenApiPricingModulesResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      modules: pulumi.Input.decodeList<GetOpenApiPricingModulesModule>(
        map['modules']!,
        (value) => GetOpenApiPricingModulesModule.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      productCode: map['productCode'] as String,
      productType: (() {
        final guardedValue = map['productType'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      subscriptionType: map['subscriptionType'] as String,
    );
  }
}
