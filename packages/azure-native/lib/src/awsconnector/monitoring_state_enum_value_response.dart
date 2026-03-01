// ignore_for_file: unused_element, unnecessary_cast


/// Definition of MonitoringStateEnumValue
class MonitoringStateEnumValueResponse {
  /// Property value
  final String? value;

  /// Creates a new [MonitoringStateEnumValueResponse].
  /// [value] Property value
  MonitoringStateEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory MonitoringStateEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return MonitoringStateEnumValueResponse(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

