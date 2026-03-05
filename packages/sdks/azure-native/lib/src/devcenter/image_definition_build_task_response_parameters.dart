// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ImageDefinitionBuildTaskResponseParameters {
  final pulumi.Input<String> key;
  final pulumi.Input<String> value;

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
      key: pulumi.Input.fromValue(map['key'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

