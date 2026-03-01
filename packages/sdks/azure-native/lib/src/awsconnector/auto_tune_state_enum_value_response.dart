// ignore_for_file: unused_element, unnecessary_cast


/// Definition of AutoTuneStateEnumValue
class AutoTuneStateEnumValueResponse {
  /// Property value
  final String? value;

  /// Creates a new [AutoTuneStateEnumValueResponse].
  /// [value] Property value
  AutoTuneStateEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory AutoTuneStateEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return AutoTuneStateEnumValueResponse(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

