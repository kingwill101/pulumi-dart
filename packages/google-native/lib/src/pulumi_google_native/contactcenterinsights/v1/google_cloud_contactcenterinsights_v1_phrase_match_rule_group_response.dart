// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_contactcenterinsights_v1_phrase_match_rule_response.dart';

/// A message representing a rule in the phrase matcher.
class GoogleCloudContactcenterinsightsV1PhraseMatchRuleGroupResponse {
  /// A list of phrase match rules that are included in this group.
  final List<GoogleCloudContactcenterinsightsV1PhraseMatchRuleResponse>
      phraseMatchRules;

  /// The type of this phrase match rule group.
  final String type;

  GoogleCloudContactcenterinsightsV1PhraseMatchRuleGroupResponse({
    required this.phraseMatchRules,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['phraseMatchRules'] = Input.encodeList<
        GoogleCloudContactcenterinsightsV1PhraseMatchRuleResponse,
        Map<String, dynamic>>(phraseMatchRules, (value) => value.toMap());
    map['type'] = type;
    return map;
  }

  factory GoogleCloudContactcenterinsightsV1PhraseMatchRuleGroupResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudContactcenterinsightsV1PhraseMatchRuleGroupResponse(
      phraseMatchRules: Input.decodeList<
              GoogleCloudContactcenterinsightsV1PhraseMatchRuleResponse>(
          map['phraseMatchRules'],
          (value) =>
              GoogleCloudContactcenterinsightsV1PhraseMatchRuleResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
    );
  }
}
