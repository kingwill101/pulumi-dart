// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_contactcenterinsights_v1_phrase_match_rule.dart';
import 'google_cloud_contactcenterinsights_v1_phrase_match_rule_group_type.dart';

/// A message representing a rule in the phrase matcher.
class GoogleCloudContactcenterinsightsV1PhraseMatchRuleGroup {
  /// A list of phrase match rules that are included in this group.
  final List<GoogleCloudContactcenterinsightsV1PhraseMatchRule>?
  phraseMatchRules;

  /// The type of this phrase match rule group.
  final GoogleCloudContactcenterinsightsV1PhraseMatchRuleGroupType type;

  /// Creates a new [GoogleCloudContactcenterinsightsV1PhraseMatchRuleGroup].
  /// [phraseMatchRules] A list of phrase match rules that are included in this group.
  /// [type] The type of this phrase match rule group.
  GoogleCloudContactcenterinsightsV1PhraseMatchRuleGroup({
    this.phraseMatchRules,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'phraseMatchRules': ?phraseMatchRules == null
          ? null
          : pulumi.Input.encodeList<
              GoogleCloudContactcenterinsightsV1PhraseMatchRule,
              Map<String, dynamic>
            >(phraseMatchRules!, (value) => value.toMap()),
      'type': type.value,
    };
  }

  factory GoogleCloudContactcenterinsightsV1PhraseMatchRuleGroup.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudContactcenterinsightsV1PhraseMatchRuleGroup(
      phraseMatchRules: map['phraseMatchRules'] == null
          ? null
          : pulumi.Input.decodeList<
              GoogleCloudContactcenterinsightsV1PhraseMatchRule
            >(
              map['phraseMatchRules'],
              (value) =>
                  GoogleCloudContactcenterinsightsV1PhraseMatchRule.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      type:
          GoogleCloudContactcenterinsightsV1PhraseMatchRuleGroupType.fromValue(
            map['type'] as String,
          ),
    );
  }
}
