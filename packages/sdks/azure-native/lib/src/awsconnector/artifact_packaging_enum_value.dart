// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ArtifactPackagingEnumValue
class ArtifactPackagingEnumValue {
  /// Property value
  final pulumi.Input<String>? value;

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
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

