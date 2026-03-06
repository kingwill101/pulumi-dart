// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration options for the text matching ruleset. For example, if the configuration is to deny "hello world" for partial case-insensitive words then "chello worlds" would get detected and the resulting file would be denied.
class TextMatch {
  /// Specifies the text matching conditions based on casing. For more detail please refer to the Casing model.
  final pulumi.Input<String> caseSensitivity;
  /// Specifies the text matching condition for text comparison. For more detail please refer to the MatchType model.
  final pulumi.Input<String> matchType;
  /// The word or phrase to match against replicated content. A phrase with spaces will be considered a single substring.
  final pulumi.Input<String> text;

  /// Creates a new [TextMatch].
  /// [caseSensitivity] Specifies the text matching conditions based on casing. For more detail please refer to the Casing model.
  /// [matchType] Specifies the text matching condition for text comparison. For more detail please refer to the MatchType model.
  /// [text] The word or phrase to match against replicated content. A phrase with spaces will be considered a single substring.
  const TextMatch({
    required this.caseSensitivity,
    required this.matchType,
    required this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caseSensitivity': caseSensitivity,
      'matchType': matchType,
      'text': text,
    };
  }

  factory TextMatch.fromMap(Map<String, dynamic> map) {
    return TextMatch(
      caseSensitivity: pulumi.Input.fromValue(map['caseSensitivity'] as String),
      matchType: pulumi.Input.fromValue(map['matchType'] as String),
      text: pulumi.Input.fromValue(map['text'] as String),
    );
  }
}

