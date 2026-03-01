// ignore_for_file: unused_element, unnecessary_cast


/// Definition of MitigationInEffectEnumEnumValue
class MitigationInEffectEnumEnumValueResponse {
  /// Property value
  final String? value;

  /// Creates a new [MitigationInEffectEnumEnumValueResponse].
  /// [value] Property value
  MitigationInEffectEnumEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory MitigationInEffectEnumEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return MitigationInEffectEnumEnumValueResponse(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

