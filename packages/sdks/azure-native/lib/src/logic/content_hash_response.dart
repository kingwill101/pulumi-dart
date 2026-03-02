// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The content hash.
class ContentHashResponse {
  /// The algorithm of the content hash.
  final pulumi.Input<String>? algorithm;
  /// The value of the content hash.
  final pulumi.Input<String>? value;

  /// Creates a new [ContentHashResponse].
  /// [algorithm] The algorithm of the content hash.
  /// [value] The value of the content hash.
  ContentHashResponse({
    this.algorithm,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'algorithm': ?algorithm,
      'value': ?value,
    };
  }

  factory ContentHashResponse.fromMap(Map<String, dynamic> map) {
    return ContentHashResponse(
      algorithm: map['algorithm'] == null ? null : (map['algorithm']! as String).input(),
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

