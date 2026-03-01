// ignore_for_file: unused_element, unnecessary_cast


/// Definition of ScaleDownBehaviorEnumValue
class ScaleDownBehaviorEnumValue {
  /// Property value
  final String? value;

  /// Creates a new [ScaleDownBehaviorEnumValue].
  /// [value] Property value
  ScaleDownBehaviorEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory ScaleDownBehaviorEnumValue.fromMap(Map<String, dynamic> map) {
    return ScaleDownBehaviorEnumValue(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

