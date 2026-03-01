// ignore_for_file: unused_element, unnecessary_cast


/// Definition of ArtifactPackagingEnumValue
class ArtifactPackagingEnumValue {
  /// Property value
  final String? value;

  /// Creates a new [ArtifactPackagingEnumValue].
  /// [value] Property value
  ArtifactPackagingEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory ArtifactPackagingEnumValue.fromMap(Map<String, dynamic> map) {
    return ArtifactPackagingEnumValue(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

