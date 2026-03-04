// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of the runbook property type.
class ContentHash {
  /// Gets or sets the content hash algorithm used to hash the content.
  final pulumi.Input<String> algorithm;

  /// Gets or sets expected hash value of the content.
  final pulumi.Input<String> value;

  /// Creates a new [ContentHash].
  /// [algorithm] Gets or sets the content hash algorithm used to hash the content.
  /// [value] Gets or sets expected hash value of the content.
  ContentHash({required this.algorithm, required this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'algorithm': algorithm, 'value': value};
  }

  factory ContentHash.fromMap(Map<String, dynamic> map) {
    return ContentHash(
      algorithm: pulumi.Input.fromValue(map['algorithm'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
