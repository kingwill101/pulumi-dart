// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_v1_get_api_product_args_doc}
/// Arguments for getApiProduct.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_get_api_product_args_doc}
class GetApiProductArgs {
  final pulumi.Input<String> apiproductId;
  final pulumi.Input<String> organizationId;

  /// Creates a new [GetApiProductArgs].
  /// [apiproductId] Required.
  /// [organizationId] Required.
  GetApiProductArgs({
    required String apiproductId,
    required String organizationId,
  })  : apiproductId = pulumi.Input.asInput<String>(apiproductId),
        organizationId = pulumi.Input.asInput<String>(organizationId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['apiproductId'] = apiproductId;
    map['organizationId'] = organizationId;
    return map;
  }

  factory GetApiProductArgs.fromMap(Map<String, dynamic> map) {
    return GetApiProductArgs(
      apiproductId: map['apiproductId'] as String,
      organizationId: map['organizationId'] as String,
    );
  }
}
