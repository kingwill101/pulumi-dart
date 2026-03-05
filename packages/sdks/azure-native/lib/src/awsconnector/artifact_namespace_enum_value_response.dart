// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ArtifactNamespaceEnumValue
class ArtifactNamespaceEnumValueResponse {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [ArtifactNamespaceEnumValueResponse].
  /// [value] Property value
  ArtifactNamespaceEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory ArtifactNamespaceEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return ArtifactNamespaceEnumValueResponse(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

