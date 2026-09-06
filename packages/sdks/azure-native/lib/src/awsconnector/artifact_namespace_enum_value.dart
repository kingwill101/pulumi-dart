// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ArtifactNamespaceEnumValue
class ArtifactNamespaceEnumValue {
  /// Property value
  final pulumi.Input<dynamic>? value;

  /// Creates a new [ArtifactNamespaceEnumValue].
  /// [value] Property value
  const ArtifactNamespaceEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory ArtifactNamespaceEnumValue.fromMap(Map<String, dynamic> map) {
    return ArtifactNamespaceEnumValue(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
