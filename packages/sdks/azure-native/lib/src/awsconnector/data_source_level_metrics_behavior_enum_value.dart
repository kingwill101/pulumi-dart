// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of DataSourceLevelMetricsBehaviorEnumValue
class DataSourceLevelMetricsBehaviorEnumValue {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [DataSourceLevelMetricsBehaviorEnumValue].
  /// [value] Property value
  DataSourceLevelMetricsBehaviorEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory DataSourceLevelMetricsBehaviorEnumValue.fromMap(Map<String, dynamic> map) {
    return DataSourceLevelMetricsBehaviorEnumValue(
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

