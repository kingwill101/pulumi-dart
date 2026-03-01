// ignore_for_file: unused_element, unnecessary_cast


class ImageDefinitionBuildTaskResponseParameters {
  final String key;
  final String value;

  /// Creates a new [ImageDefinitionBuildTaskResponseParameters].
  /// [key] Required.
  /// [value] Required.
  ImageDefinitionBuildTaskResponseParameters({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory ImageDefinitionBuildTaskResponseParameters.fromMap(Map<String, dynamic> map) {
    return ImageDefinitionBuildTaskResponseParameters(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}

