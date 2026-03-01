// ignore_for_file: unused_element, unnecessary_cast


/// Definition of ScaleDownBehaviorEnumValue
class ScaleDownBehaviorEnumValueResponse {
  /// Property value
  final String? value;

  /// Creates a new [ScaleDownBehaviorEnumValueResponse].
  /// [value] Property value
  ScaleDownBehaviorEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory ScaleDownBehaviorEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return ScaleDownBehaviorEnumValueResponse(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

