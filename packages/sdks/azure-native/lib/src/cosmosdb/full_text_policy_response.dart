// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'full_text_path_response.dart';

/// Cosmos DB FullText Policy
class FullTextPolicyResponse {
  /// The default language for a full text paths.
  final pulumi.Input<String?>? defaultLanguage;
  /// List of FullText Paths
  final pulumi.Input<List<FullTextPathResponse>?>? fullTextPaths;

  /// Creates a new [FullTextPolicyResponse].
  /// [defaultLanguage] The default language for a full text paths.
  /// [fullTextPaths] List of FullText Paths
  const FullTextPolicyResponse({
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
      defaultLanguage: (() { final guardedValue = map['defaultLanguage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fullTextPaths: (() { final guardedValue = map['fullTextPaths']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FullTextPathResponse>(guardedValue, (value) => FullTextPathResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
