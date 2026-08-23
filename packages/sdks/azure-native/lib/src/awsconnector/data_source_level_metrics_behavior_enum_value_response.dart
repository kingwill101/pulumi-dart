// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of DataSourceLevelMetricsBehaviorEnumValue
class DataSourceLevelMetricsBehaviorEnumValueResponse {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [DataSourceLevelMetricsBehaviorEnumValueResponse].
  /// [value] Property value
  const DataSourceLevelMetricsBehaviorEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory DataSourceLevelMetricsBehaviorEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return DataSourceLevelMetricsBehaviorEnumValueResponse(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
