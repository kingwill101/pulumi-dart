// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_warning_data.dart';

class RouteWarning {
  /// (Output)
  /// A warning code, if applicable. For example, Compute Engine returns
  /// NO_RESULTS_ON_PAGE if there are no results in the response.
  final String? code;

  /// (Output)
  /// Metadata about this warning in key: value format. For example:
  /// "data":   {  "key": "scope",  "value": "zones/us-east1-d"  }
  /// Structure is [documented below.
  final List<RouteWarningData>? datas;

  /// (Output)
  /// A human-readable description of the warning code.
  final String? message;

  /// Creates a new [RouteWarning].
  /// [code] (Output)
  /// [datas] (Output)
  /// [message] (Output)
  RouteWarning({
    this.code,
    this.datas,
    this.message,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final codeValue = code;
    if (codeValue != null) {
      map['code'] = codeValue;
    }
    final datasValue = datas;
    if (datasValue != null) {
      map['datas'] =
          pulumi.Input.encodeList<RouteWarningData, Map<String, dynamic>>(
              datasValue, (value) => value.toMap());
    }
    final messageValue = message;
    if (messageValue != null) {
      map['message'] = messageValue;
    }
    return map;
  }

  factory RouteWarning.fromMap(Map<String, dynamic> map) {
    return RouteWarning(
      code: map['code'] == null ? null : map['code'] as String,
      datas: map['datas'] == null
          ? null
          : pulumi.Input.decodeList<RouteWarningData>(
              map['datas'],
              (value) => RouteWarningData.fromMap(
                  (value as Map).cast<String, dynamic>())),
      message: map['message'] == null ? null : map['message'] as String,
    );
  }
}
