// ignore_for_file: unused_element, unnecessary_cast


/// Definition of ResolverLevelMetricsBehaviorEnumValue
class ResolverLevelMetricsBehaviorEnumValueResponse {
  /// Property value
  final String? value;

  /// Creates a new [ResolverLevelMetricsBehaviorEnumValueResponse].
  /// [value] Property value
  ResolverLevelMetricsBehaviorEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory ResolverLevelMetricsBehaviorEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return ResolverLevelMetricsBehaviorEnumValueResponse(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

