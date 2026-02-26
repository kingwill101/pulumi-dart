// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_product_filter/get_product_filter.dart';

/// Arguments for getProduct.
class GetProductArgs {
  /// List of filters. Passed directly to the API (see GetProducts API reference). These filters must describe a single product, this resource will fail if more than one product is returned by the API.
  final Input<List<GetProductFilter>> filters;

  /// Code of the service. Available service codes can be fetched using the DescribeServices pricing API call.
  final Input<String> serviceCode;

  GetProductArgs({
    required this.filters,
    required this.serviceCode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['filters'] =
        Input.mapInputValue<List<GetProductFilter>, List<Map<String, dynamic>>>(
            filters,
            (value) => Input.encodeList<GetProductFilter, Map<String, dynamic>>(
                value, (value) => value.toMap()));
    map['serviceCode'] = serviceCode;
    return map;
  }

  factory GetProductArgs.fromMap(Map<String, dynamic> map) {
    return GetProductArgs(
      filters: Input.asInput<List<GetProductFilter>>(map['filters']),
      serviceCode: Input.asInput<String>(map['serviceCode']),
    );
  }
}
