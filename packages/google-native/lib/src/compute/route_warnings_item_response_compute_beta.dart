// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_warnings_item_data_item_response_compute_beta.dart';

class RouteWarningsItemResponseComputeBeta {
  /// A warning code, if applicable. For example, Compute Engine returns NO_RESULTS_ON_PAGE if there are no results in the response.
  final String code;
  /// Metadata about this warning in key: value format. For example: "data": [ { "key": "scope", "value": "zones/us-east1-d" }
  final List<RouteWarningsItemDataItemResponseComputeBeta> data;
  /// A human-readable description of the warning code.
  final String message;

  /// Creates a new [RouteWarningsItemResponseComputeBeta].
  /// [code] A warning code, if applicable. For example, Compute Engine returns NO_RESULTS_ON_PAGE if there are no results in the response.
  /// [data] Metadata about this warning in key: value format. For example: "data": [ { "key": "scope", "value": "zones/us-east1-d" }
  /// [message] A human-readable description of the warning code.
  RouteWarningsItemResponseComputeBeta({
    required this.code,
    required this.data,
    required this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'data': pulumi.Input.encodeList<RouteWarningsItemDataItemResponseComputeBeta, Map<String, dynamic>>(data, (value) => value.toMap()),
      'message': message,
    };
  }

  factory RouteWarningsItemResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return RouteWarningsItemResponseComputeBeta(
      code: map['code'] as String,
      data: pulumi.Input.decodeList<RouteWarningsItemDataItemResponseComputeBeta>(map['data'], (value) => RouteWarningsItemDataItemResponseComputeBeta.fromMap((value as Map).cast<String, dynamic>())),
      message: map['message'] as String,
    );
  }
}

