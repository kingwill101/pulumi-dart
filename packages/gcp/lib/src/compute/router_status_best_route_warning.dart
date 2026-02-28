// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'router_status_best_route_warning_data.dart';

class RouterStatusBestRouteWarning {
  /// A warning code, if applicable. For example, Compute Engine returns
  /// NO_RESULTS_ON_PAGE if there are no results in the response.
  final String code;
  /// Metadata about this warning in key: value format. For example:
  /// "data": [  {  "key": "scope",  "value": "zones/us-east1-d"  }
  final List<RouterStatusBestRouteWarningData> datas;
  /// A human-readable description of the warning code.
  final String message;

  /// Creates a new [RouterStatusBestRouteWarning].
  /// [code] A warning code, if applicable. For example, Compute Engine returns
  /// [datas] Metadata about this warning in key: value format. For example:
  /// [message] A human-readable description of the warning code.
  RouterStatusBestRouteWarning({
    required this.code,
    required this.datas,
    required this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'datas': pulumi.Input.encodeList<RouterStatusBestRouteWarningData, Map<String, dynamic>>(datas, (value) => value.toMap()),
      'message': message,
    };
  }

  factory RouterStatusBestRouteWarning.fromMap(Map<String, dynamic> map) {
    return RouterStatusBestRouteWarning(
      code: map['code'] as String,
      datas: pulumi.Input.decodeList<RouterStatusBestRouteWarningData>(map['datas'], (value) => RouterStatusBestRouteWarningData.fromMap((value as Map).cast<String, dynamic>())),
      message: map['message'] as String,
    );
  }
}

