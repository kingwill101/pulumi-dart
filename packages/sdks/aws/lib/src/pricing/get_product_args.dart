// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_product_filter.dart';

/// {@template pulumi_pricing_get_product_get_product_args_doc}
/// Arguments for getProduct.
/// {@endtemplate}
/// {@macro pulumi_pricing_get_product_get_product_args_doc}
class GetProductArgs {
  /// List of filters. Passed directly to the API (see GetProducts API reference). These filters must describe a single product, this resource will fail if more than one product is returned by the API.
  final pulumi.Input<List<GetProductFilter>> filters;
  /// Code of the service. Available service codes can be fetched using the DescribeServices pricing API call.
  final pulumi.Input<String> serviceCode;

  /// Creates a new [GetProductArgs].
  /// [filters] List of filters. Passed directly to the API (see GetProducts API reference). These filters must describe a single product, this resource will fail if more than one product is returned by the API.
  /// [serviceCode] Code of the service. Available service codes can be fetched using the DescribeServices pricing API call.
  const GetProductArgs({
    required this.filters,
    required this.serviceCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': pulumi.Input.mapInputValue<List<GetProductFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetProductFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'serviceCode': serviceCode,
    };
  }

  factory GetProductArgs.fromMap(Map<String, dynamic> map) {
    return GetProductArgs(
      filters: pulumi.Input.fromValue(pulumi.Input.decodeList<GetProductFilter>(map['filters']!, (value) => GetProductFilter.fromMap((value as Map).cast<String, dynamic>()))),
      serviceCode: pulumi.Input.fromValue(map['serviceCode'] as String),
    );
  }
}
