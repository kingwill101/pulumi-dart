// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_router_status_best_routes_for_router_warning_data/get_router_status_best_routes_for_router_warning_data.dart';

class GetRouterStatusBestRoutesForRouterWarning {
  /// A warning code, if applicable. For example, Compute Engine returns
  /// NO_RESULTS_ON_PAGE if there are no results in the response.
  final String code;

  /// Metadata about this warning in key: value format. For example:
  /// "data": [  {  "key": "scope",  "value": "zones/us-east1-d"  }
  final List<GetRouterStatusBestRoutesForRouterWarningData> datas;

  /// A human-readable description of the warning code.
  final String message;

  GetRouterStatusBestRoutesForRouterWarning({
    required this.code,
    required this.datas,
    required this.message,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['code'] = code;
    map['datas'] = pulumi.Input.encodeList<
        GetRouterStatusBestRoutesForRouterWarningData,
        Map<String, dynamic>>(datas, (value) => value.toMap());
    map['message'] = message;
    return map;
  }

  factory GetRouterStatusBestRoutesForRouterWarning.fromMap(
      Map<String, dynamic> map) {
    return GetRouterStatusBestRoutesForRouterWarning(
      code: map['code'] as String,
      datas: pulumi.Input.decodeList<
              GetRouterStatusBestRoutesForRouterWarningData>(
          map['datas'],
          (value) => GetRouterStatusBestRoutesForRouterWarningData.fromMap(
              (value as Map).cast<String, dynamic>())),
      message: map['message'] as String,
    );
  }
}
