// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents the full text path specification.
class FullTextPath {
  /// The language of the full text field in the document.
  final pulumi.Input<String>? language;
  /// The path to the full text field in the document.
  final pulumi.Input<String> path;

  /// Creates a new [FullTextPath].
  /// [language] The language of the full text field in the document.
  /// [path] The path to the full text field in the document.
  const FullTextPath({
    this.language,
    required this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'language': ?language,
      'path': path,
    };
  }

  factory FullTextPath.fromMap(Map<String, dynamic> map) {
    return FullTextPath(
      language: (() { final guardedValue = map['language']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      path: pulumi.Input.fromValue(map['path'] as String),
    );
  }
}

