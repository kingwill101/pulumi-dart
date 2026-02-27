// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_warnings_item_data_item_response.dart';

class RouteWarningsItemResponse {
  /// A warning code, if applicable. For example, Compute Engine returns NO_RESULTS_ON_PAGE if there are no results in the response.
  final String code;

  /// Metadata about this warning in key: value format. For example: "data": [ { "key": "scope", "value": "zones/us-east1-d" }
  final List<RouteWarningsItemDataItemResponse> data;

  /// A human-readable description of the warning code.
  final String message;

  RouteWarningsItemResponse({
    required this.code,
    required this.data,
    required this.message,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['code'] = code;
    map['data'] = pulumi.Input.encodeList<RouteWarningsItemDataItemResponse,
        Map<String, dynamic>>(data, (value) => value.toMap());
    map['message'] = message;
    return map;
  }

  factory RouteWarningsItemResponse.fromMap(Map<String, dynamic> map) {
    return RouteWarningsItemResponse(
      code: map['code'] as String,
      data: pulumi.Input.decodeList<RouteWarningsItemDataItemResponse>(
          map['data'],
          (value) => RouteWarningsItemDataItemResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      message: map['message'] as String,
    );
  }
}
