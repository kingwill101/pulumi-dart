// ignore_for_file: unused_element, unnecessary_cast


/// Definition of MitigationInEffectEnumEnumValue
class MitigationInEffectEnumEnumValue {
  /// Property value
  final String? value;

  /// Creates a new [MitigationInEffectEnumEnumValue].
  /// [value] Property value
  MitigationInEffectEnumEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory MitigationInEffectEnumEnumValue.fromMap(Map<String, dynamic> map) {
    return MitigationInEffectEnumEnumValue(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

