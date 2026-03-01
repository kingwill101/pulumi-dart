// ignore_for_file: unused_element, unnecessary_cast


/// Definition of OperationLevelMetricsConfigEnumValue
class OperationLevelMetricsConfigEnumValue {
  /// Property value
  final String? value;

  /// Creates a new [OperationLevelMetricsConfigEnumValue].
  /// [value] Property value
  OperationLevelMetricsConfigEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory OperationLevelMetricsConfigEnumValue.fromMap(Map<String, dynamic> map) {
    return OperationLevelMetricsConfigEnumValue(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

