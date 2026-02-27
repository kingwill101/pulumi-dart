// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_warnings_item_data_item_response_compute_v1.dart';

class RouteWarningsItemResponseComputeV1 {
  /// A warning code, if applicable. For example, Compute Engine returns NO_RESULTS_ON_PAGE if there are no results in the response.
  final String code;

  /// Metadata about this warning in key: value format. For example: "data": [ { "key": "scope", "value": "zones/us-east1-d" }
  final List<RouteWarningsItemDataItemResponseComputeV1> data;

  /// A human-readable description of the warning code.
  final String message;

  RouteWarningsItemResponseComputeV1({
    required this.code,
    required this.data,
    required this.message,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['code'] = code;
    map['data'] = pulumi.Input.encodeList<
        RouteWarningsItemDataItemResponseComputeV1,
        Map<String, dynamic>>(data, (value) => value.toMap());
    map['message'] = message;
    return map;
  }

  factory RouteWarningsItemResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return RouteWarningsItemResponseComputeV1(
      code: map['code'] as String,
      data: pulumi.Input.decodeList<RouteWarningsItemDataItemResponseComputeV1>(
          map['data'],
          (value) => RouteWarningsItemDataItemResponseComputeV1.fromMap(
              (value as Map).cast<String, dynamic>())),
      message: map['message'] as String,
    );
  }
}
