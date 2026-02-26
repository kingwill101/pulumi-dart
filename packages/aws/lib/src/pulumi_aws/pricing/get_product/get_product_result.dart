// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_product_filter/get_product_filter.dart';

/// Result data returned by getProduct.
class GetProductResult {
  final List<GetProductFilter> filters;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Set to the product returned from the API.
  final String result;
  final String serviceCode;

  GetProductResult({
    required this.filters,
    required this.id,
    required this.result,
    required this.serviceCode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['filters'] = Input.encodeList<GetProductFilter, Map<String, dynamic>>(
        filters, (value) => value.toMap());
    map['id'] = id;
    map['result'] = result;
    map['serviceCode'] = serviceCode;
    return map;
  }

  factory GetProductResult.fromMap(Map<String, dynamic> map) {
    return GetProductResult(
      filters: Input.decodeList<GetProductFilter>(
          map['filters'],
          (value) =>
              GetProductFilter.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      result: map['result'] as String,
      serviceCode: map['serviceCode'] as String,
    );
  }
}
