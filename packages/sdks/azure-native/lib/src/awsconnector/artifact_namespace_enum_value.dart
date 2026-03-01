// ignore_for_file: unused_element, unnecessary_cast


/// Definition of ArtifactNamespaceEnumValue
class ArtifactNamespaceEnumValue {
  /// Property value
  final String? value;

  /// Creates a new [ArtifactNamespaceEnumValue].
  /// [value] Property value
  ArtifactNamespaceEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory ArtifactNamespaceEnumValue.fromMap(Map<String, dynamic> map) {
    return ArtifactNamespaceEnumValue(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

