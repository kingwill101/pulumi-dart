// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of DataSourceLevelMetricsBehaviorEnumValue
class DataSourceLevelMetricsBehaviorEnumValue {
  /// Property value
  final pulumi.Input<dynamic>? value;

  /// Creates a new [DataSourceLevelMetricsBehaviorEnumValue].
  /// [value] Property value
  const DataSourceLevelMetricsBehaviorEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory DataSourceLevelMetricsBehaviorEnumValue.fromMap(Map<String, dynamic> map) {
    return DataSourceLevelMetricsBehaviorEnumValue(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
