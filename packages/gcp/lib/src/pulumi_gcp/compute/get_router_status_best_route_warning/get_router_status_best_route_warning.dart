// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_router_status_best_route_warning_data/get_router_status_best_route_warning_data.dart';

class GetRouterStatusBestRouteWarning {
  /// A warning code, if applicable. For example, Compute Engine returns
  /// NO_RESULTS_ON_PAGE if there are no results in the response.
  final String code;

  /// Metadata about this warning in key: value format. For example:
  /// "data": [  {  "key": "scope",  "value": "zones/us-east1-d"  }
  final List<GetRouterStatusBestRouteWarningData> datas;

  /// A human-readable description of the warning code.
  final String message;

  GetRouterStatusBestRouteWarning({
    required this.code,
    required this.datas,
    required this.message,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['code'] = code;
    map['datas'] = Input.encodeList<GetRouterStatusBestRouteWarningData,
        Map<String, dynamic>>(datas, (value) => value.toMap());
    map['message'] = message;
    return map;
  }

  factory GetRouterStatusBestRouteWarning.fromMap(Map<String, dynamic> map) {
    return GetRouterStatusBestRouteWarning(
      code: map['code'] as String,
      datas: Input.decodeList<GetRouterStatusBestRouteWarningData>(
          map['datas'],
          (value) => GetRouterStatusBestRouteWarningData.fromMap(
              (value as Map).cast<String, dynamic>())),
      message: map['message'] as String,
    );
  }
}
