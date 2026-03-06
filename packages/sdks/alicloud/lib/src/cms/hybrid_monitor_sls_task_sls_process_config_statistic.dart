// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HybridMonitorSlsTaskSlsProcessConfigStatistic {
  /// The alias of the extended field that specifies the result of basic operations that are performed on aggregation results.
  final pulumi.Input<String>? alias;
  /// The function that is used to aggregate log data within a statistical period. Valid values: `count`, `sum`, `avg`, `max`, `min`, `value`, `countps`, `sumps`, `distinct`, `distribution`, `percentile`.
  final pulumi.Input<String>? function;
  /// The value of the function that is used to aggregate logs imported from Log Service.
  /// - If you set the `function` parameter to `distribution`, this parameter specifies the lower limit of the statistical interval. For example, if you want to calculate the number of HTTP requests whose status code is 2XX, set this parameter to 200.
  /// - If you set the `function` parameter to `percentile`, this parameter specifies the percentile at which the expected value is. For example, 0.5 specifies P50.
  final pulumi.Input<String>? parameterOne;
  /// The value of the function that is used to aggregate logs imported from Log Service. **Note:** This parameter is required only if the `function` parameter is set to `distribution`. This parameter specifies the upper limit of the statistical interval.
  final pulumi.Input<String>? parameterTwo;
  /// The name of the key that is used to filter logs imported from Log Service.
  final pulumi.Input<String>? slsKeyName;

  /// Creates a new [HybridMonitorSlsTaskSlsProcessConfigStatistic].
  /// [alias] The alias of the extended field that specifies the result of basic operations that are performed on aggregation results.
  /// [function] The function that is used to aggregate log data within a statistical period. Valid values: `count`, `sum`, `avg`, `max`, `min`, `value`, `countps`, `sumps`, `distinct`, `distribution`, `percentile`.
  /// [parameterOne] The value of the function that is used to aggregate logs imported from Log Service.
  /// [parameterTwo] The value of the function that is used to aggregate logs imported from Log Service. **Note:** This parameter is required only if the `function` parameter is set to `distribution`. This parameter specifies the upper limit of the statistical interval.
  /// [slsKeyName] The name of the key that is used to filter logs imported from Log Service.
  const HybridMonitorSlsTaskSlsProcessConfigStatistic({
    this.alias,
    this.function,
    this.parameterOne,
    this.parameterTwo,
    this.slsKeyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alias': ?alias,
      'function': ?function,
      'parameterOne': ?parameterOne,
      'parameterTwo': ?parameterTwo,
      'slsKeyName': ?slsKeyName,
    };
  }

  factory HybridMonitorSlsTaskSlsProcessConfigStatistic.fromMap(Map<String, dynamic> map) {
    return HybridMonitorSlsTaskSlsProcessConfigStatistic(
      alias: (() { final guardedValue = map['alias']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      function: (() { final guardedValue = map['function']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameterOne: (() { final guardedValue = map['parameterOne']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameterTwo: (() { final guardedValue = map['parameterTwo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      slsKeyName: (() { final guardedValue = map['slsKeyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

