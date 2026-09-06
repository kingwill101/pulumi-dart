// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration options for the text matching ruleset. For example, if the configuration is to deny "hello world" for partial case-insensitive words then "chello worlds" would get detected and the resulting file would be denied.
class TextMatchResponse {
  /// Specifies the text matching conditions based on casing. For more detail please refer to the Casing model.
  final pulumi.Input<String> caseSensitivity;
  /// Specifies the text matching condition for text comparison. For more detail please refer to the MatchType model.
  final pulumi.Input<String> matchType;
  /// The word or phrase to match against replicated content. A phrase with spaces will be considered a single substring.
  final pulumi.Input<String> text;

  /// Creates a new [TextMatchResponse].
  /// [caseSensitivity] Specifies the text matching conditions based on casing. For more detail please refer to the Casing model.
  /// [matchType] Specifies the text matching condition for text comparison. For more detail please refer to the MatchType model.
  /// [text] The word or phrase to match against replicated content. A phrase with spaces will be considered a single substring.
  TextMatchResponse({
    pulumi.Input<String>? caseSensitivity,
    pulumi.Input<String>? matchType,
    required this.text,
  }) : caseSensitivity = caseSensitivity ?? pulumi.Input.fromValue('Insensitive'), matchType = matchType ?? pulumi.Input.fromValue('Partial');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caseSensitivity': caseSensitivity,
      'matchType': matchType,
      'text': text,
    };
  }

  factory TextMatchResponse.fromMap(Map<String, dynamic> map) {
    return TextMatchResponse(
      caseSensitivity: pulumi.Input.fromValue(map['caseSensitivity'] as String),
      matchType: pulumi.Input.fromValue(map['matchType'] as String),
      text: pulumi.Input.fromValue(map['text'] as String),
    );
  }
}
