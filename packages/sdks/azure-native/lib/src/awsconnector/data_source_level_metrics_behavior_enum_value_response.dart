// ignore_for_file: unused_element, unnecessary_cast


/// Definition of DataSourceLevelMetricsBehaviorEnumValue
class DataSourceLevelMetricsBehaviorEnumValueResponse {
  /// Property value
  final String? value;

  /// Creates a new [DataSourceLevelMetricsBehaviorEnumValueResponse].
  /// [value] Property value
  DataSourceLevelMetricsBehaviorEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory DataSourceLevelMetricsBehaviorEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return DataSourceLevelMetricsBehaviorEnumValueResponse(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

