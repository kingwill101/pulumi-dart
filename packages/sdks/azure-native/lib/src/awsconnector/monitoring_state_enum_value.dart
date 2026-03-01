// ignore_for_file: unused_element, unnecessary_cast


/// Definition of MonitoringStateEnumValue
class MonitoringStateEnumValue {
  /// Property value
  final String? value;

  /// Creates a new [MonitoringStateEnumValue].
  /// [value] Property value
  MonitoringStateEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory MonitoringStateEnumValue.fromMap(Map<String, dynamic> map) {
    return MonitoringStateEnumValue(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

