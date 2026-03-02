// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'full_text_path_response.dart';

/// Cosmos DB FullText Policy
class FullTextPolicyResponse {
  /// The default language for a full text paths.
  final pulumi.Input<String>? defaultLanguage;
  /// List of FullText Paths
  final pulumi.Input<List<FullTextPathResponse>>? fullTextPaths;

  /// Creates a new [FullTextPolicyResponse].
  /// [defaultLanguage] The default language for a full text paths.
  /// [fullTextPaths] List of FullText Paths
  FullTextPolicyResponse({
    this.defaultLanguage,
    this.fullTextPaths,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultLanguage': ?defaultLanguage,
      'fullTextPaths': ?pulumi.Input.mapOptionalInputValue<List<FullTextPathResponse>, List<Map<String, dynamic>>>(fullTextPaths, (value) => pulumi.Input.encodeList<FullTextPathResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory FullTextPolicyResponse.fromMap(Map<String, dynamic> map) {
    return FullTextPolicyResponse(
      defaultLanguage: map['defaultLanguage'] == null ? null : (map['defaultLanguage'] as String).input(),
      fullTextPaths: map['fullTextPaths'] == null ? null : (pulumi.Input.decodeList<FullTextPathResponse>(map['fullTextPaths'], (value) => FullTextPathResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

