// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'full_text_path.dart';

/// Cosmos DB FullText Policy
class FullTextPolicy {
  /// The default language for a full text paths.
  final pulumi.Input<String>? defaultLanguage;
  /// List of FullText Paths
  final pulumi.Input<List<FullTextPath>>? fullTextPaths;

  /// Creates a new [FullTextPolicy].
  /// [defaultLanguage] The default language for a full text paths.
  /// [fullTextPaths] List of FullText Paths
  const FullTextPolicy({
    this.defaultLanguage,
    this.fullTextPaths,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultLanguage': ?defaultLanguage,
      'fullTextPaths': ?pulumi.Input.mapOptionalInputValue<List<FullTextPath>, List<Map<String, dynamic>>>(fullTextPaths, (value) => pulumi.Input.encodeList<FullTextPath, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory FullTextPolicy.fromMap(Map<String, dynamic> map) {
    return FullTextPolicy(
      defaultLanguage: (() { final guardedValue = map['defaultLanguage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fullTextPaths: (() { final guardedValue = map['fullTextPaths']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FullTextPath>(guardedValue, (value) => FullTextPath.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
