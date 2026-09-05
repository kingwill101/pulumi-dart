// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_product_filter.dart';

/// Result data returned by getProduct.
class GetProductResult {
  final List<GetProductFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Set to the product returned from the API.
  final String? result;
  final String? serviceCode;

  /// Creates a new [GetProductResult].
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [result] Set to the product returned from the API.
  /// [serviceCode] Optional.
  const GetProductResult({
    this.filters,
    this.id,
    this.result,
    this.serviceCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetProductFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'result': ?result,
      'serviceCode': ?serviceCode,
    };
  }

  factory GetProductResult.fromMap(Map<String, dynamic> map) {
    return GetProductResult(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetProductFilter>(guardedValue, (value) => GetProductFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      result: (() { final guardedValue = map['result']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceCode: (() { final guardedValue = map['serviceCode']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
