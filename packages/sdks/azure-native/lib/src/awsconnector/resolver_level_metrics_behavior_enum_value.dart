// ignore_for_file: unused_element, unnecessary_cast


/// Definition of ResolverLevelMetricsBehaviorEnumValue
class ResolverLevelMetricsBehaviorEnumValue {
  /// Property value
  final String? value;

  /// Creates a new [ResolverLevelMetricsBehaviorEnumValue].
  /// [value] Property value
  ResolverLevelMetricsBehaviorEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory ResolverLevelMetricsBehaviorEnumValue.fromMap(Map<String, dynamic> map) {
    return ResolverLevelMetricsBehaviorEnumValue(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

