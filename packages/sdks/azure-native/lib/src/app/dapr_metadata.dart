// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Dapr component metadata.
class DaprMetadata {
  /// Metadata property name.
  final pulumi.Input<String?>? name;
  /// Name of the Dapr Component secret from which to pull the metadata property value.
  final pulumi.Input<String?>? secretRef;
  /// Metadata property value.
  final pulumi.Input<String?>? value;

  /// Creates a new [DaprMetadata].
  /// [name] Metadata property name.
  /// [secretRef] Name of the Dapr Component secret from which to pull the metadata property value.
  /// [value] Metadata property value.
  const DaprMetadata({
    this.name,
    this.secretRef,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'secretRef': ?secretRef,
      'value': ?value,
    };
  }

  factory DaprMetadata.fromMap(Map<String, dynamic> map) {
    return DaprMetadata(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secretRef: (() { final guardedValue = map['secretRef']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
