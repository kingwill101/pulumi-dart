// ignore_for_file: unused_element, unnecessary_cast


/// Definition of ArtifactsTypeEnumValue
class ArtifactsTypeEnumValue {
  /// Property value
  final String? value;

  /// Creates a new [ArtifactsTypeEnumValue].
  /// [value] Property value
  ArtifactsTypeEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory ArtifactsTypeEnumValue.fromMap(Map<String, dynamic> map) {
    return ArtifactsTypeEnumValue(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

