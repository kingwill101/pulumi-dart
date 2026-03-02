// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'text_match.dart';

/// Rules for detecting and blocking specific text patterns. If a file contains a text pattern that is part of the configured deny list, the file will be denied.
class TextMatchingRuleset {
  /// A list of text patterns to block, each with matching rules and case sensitivity options.
  final pulumi.Input<List<TextMatch>>? deny;

  /// Creates a new [TextMatchingRuleset].
  /// [deny] A list of text patterns to block, each with matching rules and case sensitivity options.
  TextMatchingRuleset({
    this.deny,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deny': ?pulumi.Input.mapOptionalInputValue<List<TextMatch>, List<Map<String, dynamic>>>(deny, (value) => pulumi.Input.encodeList<TextMatch, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory TextMatchingRuleset.fromMap(Map<String, dynamic> map) {
    return TextMatchingRuleset(
      deny: map['deny'] == null ? null : (pulumi.Input.decodeList<TextMatch>(map['deny']!, (value) => TextMatch.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

