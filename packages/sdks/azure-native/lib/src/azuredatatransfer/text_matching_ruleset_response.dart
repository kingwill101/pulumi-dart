// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'text_match_response.dart';

/// Rules for detecting and blocking specific text patterns. If a file contains a text pattern that is part of the configured deny list, the file will be denied.
class TextMatchingRulesetResponse {
  /// A list of text patterns to block, each with matching rules and case sensitivity options.
  final pulumi.Input<List<TextMatchResponse>>? deny;

  /// Creates a new [TextMatchingRulesetResponse].
  /// [deny] A list of text patterns to block, each with matching rules and case sensitivity options.
  TextMatchingRulesetResponse({
    this.deny,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deny': ?pulumi.Input.mapOptionalInputValue<List<TextMatchResponse>, List<Map<String, dynamic>>>(deny, (value) => pulumi.Input.encodeList<TextMatchResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory TextMatchingRulesetResponse.fromMap(Map<String, dynamic> map) {
    return TextMatchingRulesetResponse(
      deny: map['deny'] == null ? null : (pulumi.Input.decodeList<TextMatchResponse>(map['deny']!, (value) => TextMatchResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

