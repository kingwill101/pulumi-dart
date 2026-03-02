// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ArtifactsTypeEnumValue
class ArtifactsTypeEnumValue {
  /// Property value
  final pulumi.Input<String>? value;

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
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

