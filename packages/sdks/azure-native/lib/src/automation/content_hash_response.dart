// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of the runbook property type.
class ContentHashResponse {
  /// Gets or sets the content hash algorithm used to hash the content.
  final pulumi.Input<String> algorithm;
  /// Gets or sets expected hash value of the content.
  final pulumi.Input<String> value;

  /// Creates a new [ContentHashResponse].
  /// [algorithm] Gets or sets the content hash algorithm used to hash the content.
  /// [value] Gets or sets expected hash value of the content.
  ContentHashResponse({
    required this.algorithm,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'algorithm': algorithm,
      'value': value,
    };
  }

  factory ContentHashResponse.fromMap(Map<String, dynamic> map) {
    return ContentHashResponse(
      algorithm: (map['algorithm'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

