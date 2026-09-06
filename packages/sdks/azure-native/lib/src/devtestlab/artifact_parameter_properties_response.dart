// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of an artifact parameter.
class ArtifactParameterPropertiesResponse {
  /// The name of the artifact parameter.
  final pulumi.Input<String?>? name;
  /// The value of the artifact parameter.
  final pulumi.Input<String?>? value;

  /// Creates a new [ArtifactParameterPropertiesResponse].
  /// [name] The name of the artifact parameter.
  /// [value] The value of the artifact parameter.
  const ArtifactParameterPropertiesResponse({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value,
    };
  }

  factory ArtifactParameterPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ArtifactParameterPropertiesResponse(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
