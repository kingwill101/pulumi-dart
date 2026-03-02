// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Dapr component metadata.
class DaprMetadata {
  /// Metadata property name.
  final pulumi.Input<String>? name;
  /// Name of the Dapr Component secret from which to pull the metadata property value.
  final pulumi.Input<String>? secretRef;
  /// Metadata property value.
  final pulumi.Input<String>? value;

  /// Creates a new [DaprMetadata].
  /// [name] Metadata property name.
  /// [secretRef] Name of the Dapr Component secret from which to pull the metadata property value.
  /// [value] Metadata property value.
  DaprMetadata({
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
      name: map['name'] == null ? null : (map['name'] as String).input(),
      secretRef: map['secretRef'] == null ? null : (map['secretRef'] as String).input(),
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

