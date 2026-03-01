// ignore_for_file: unused_element, unnecessary_cast


/// Definition of MaximumExecutionFrequencyEnumValue
class MaximumExecutionFrequencyEnumValueResponse {
  /// Property value
  final String? value;

  /// Creates a new [MaximumExecutionFrequencyEnumValueResponse].
  /// [value] Property value
  MaximumExecutionFrequencyEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory MaximumExecutionFrequencyEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return MaximumExecutionFrequencyEnumValueResponse(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

