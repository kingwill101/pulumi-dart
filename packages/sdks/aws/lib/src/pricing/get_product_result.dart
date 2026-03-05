// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_product_filter.dart';

/// Result data returned by getProduct.
class GetProductResult {
  final List<GetProductFilter> filters;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Set to the product returned from the API.
  final String result;
  final String serviceCode;

  /// Creates a new [GetProductResult].
  /// [filters] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [result] Set to the product returned from the API.
  /// [serviceCode] Required.
  GetProductResult({
    required this.filters,
    required this.id,
    required this.result,
    required this.serviceCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters':
          pulumi.Input.encodeList<GetProductFilter, Map<String, dynamic>>(
            filters,
            (value) => value.toMap(),
          ),
      'id': id,
      'result': result,
      'serviceCode': serviceCode,
    };
  }

  factory GetProductResult.fromMap(Map<String, dynamic> map) {
    return GetProductResult(
      filters: pulumi.Input.decodeList<GetProductFilter>(
        map['filters']!,
        (value) =>
            GetProductFilter.fromMap((value as Map).cast<String, dynamic>()),
      ),
      id: map['id'] as String,
      result: map['result'] as String,
      serviceCode: map['serviceCode'] as String,
    );
  }
}
