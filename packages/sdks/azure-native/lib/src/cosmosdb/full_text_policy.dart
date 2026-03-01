// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'full_text_path.dart';

/// Cosmos DB FullText Policy
class FullTextPolicy {
  /// The default language for a full text paths.
  final String? defaultLanguage;
  /// List of FullText Paths
  final List<FullTextPath>? fullTextPaths;

  /// Creates a new [FullTextPolicy].
  /// [defaultLanguage] The default language for a full text paths.
  /// [fullTextPaths] List of FullText Paths
  FullTextPolicy({
    this.defaultLanguage,
    this.fullTextPaths,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultLanguage': ?defaultLanguage,
      'fullTextPaths': ?fullTextPaths == null ? null : pulumi.Input.encodeList<FullTextPath, Map<String, dynamic>>(fullTextPaths!, (value) => value.toMap()),
    };
  }

  factory FullTextPolicy.fromMap(Map<String, dynamic> map) {
    return FullTextPolicy(
      defaultLanguage: map['defaultLanguage'] == null ? null : map['defaultLanguage'] as String,
      fullTextPaths: map['fullTextPaths'] == null ? null : pulumi.Input.decodeList<FullTextPath>(map['fullTextPaths'], (value) => FullTextPath.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

