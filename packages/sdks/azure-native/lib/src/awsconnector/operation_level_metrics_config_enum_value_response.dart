// ignore_for_file: unused_element, unnecessary_cast


/// Definition of OperationLevelMetricsConfigEnumValue
class OperationLevelMetricsConfigEnumValueResponse {
  /// Property value
  final String? value;

  /// Creates a new [OperationLevelMetricsConfigEnumValueResponse].
  /// [value] Property value
  OperationLevelMetricsConfigEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory OperationLevelMetricsConfigEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return OperationLevelMetricsConfigEnumValueResponse(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

