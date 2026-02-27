// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_contactcenterinsights_v1_phrase_match_rule_group.dart';
import 'phrase_matcher_role_match.dart';
import 'phrase_matcher_type.dart';

/// The set of arguments for PhraseMatcher.
class PhraseMatcherArgs {
  /// Applies the phrase matcher only when it is active.
  final Input<bool>? active;

  /// The human-readable name of the phrase matcher.
  final Input<String>? displayName;
  final Input<String>? location;

  /// The resource name of the phrase matcher. Format: projects/{project}/locations/{location}/phraseMatchers/{phrase_matcher}
  final Input<String>? name;

  /// A list of phase match rule groups that are included in this matcher.
  final Input<List<GoogleCloudContactcenterinsightsV1PhraseMatchRuleGroup>>?
      phraseMatchRuleGroups;
  final Input<String>? project;

  /// The role whose utterances the phrase matcher should be matched against. If the role is ROLE_UNSPECIFIED it will be matched against any utterances in the transcript.
  final Input<PhraseMatcherRoleMatch>? roleMatch;

  /// The type of this phrase matcher.
  final Input<PhraseMatcherType> type;

  /// The customized version tag to use for the phrase matcher. If not specified, it will default to `revision_id`.
  final Input<String>? versionTag;

  PhraseMatcherArgs({
    this.active,
    this.displayName,
    this.location,
    this.name,
    this.phraseMatchRuleGroups,
    this.project,
    this.roleMatch,
    required this.type,
    this.versionTag,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final activeValue = active;
    if (activeValue != null) {
      map['active'] = activeValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final phraseMatchRuleGroupsValue = phraseMatchRuleGroups;
    if (phraseMatchRuleGroupsValue != null) {
      map['phraseMatchRuleGroups'] = Input.mapOptionalInputValue<
              List<GoogleCloudContactcenterinsightsV1PhraseMatchRuleGroup>,
              List<Map<String, dynamic>>>(
          phraseMatchRuleGroupsValue,
          (value) => Input.encodeList<
              GoogleCloudContactcenterinsightsV1PhraseMatchRuleGroup,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final roleMatchValue = roleMatch;
    if (roleMatchValue != null) {
      map['roleMatch'] =
          Input.mapOptionalInputValue<PhraseMatcherRoleMatch, String>(
              roleMatchValue, (value) => value.value);
    }
    map['type'] = Input.mapInputValue<PhraseMatcherType, String>(
        type, (value) => value.value);
    final versionTagValue = versionTag;
    if (versionTagValue != null) {
      map['versionTag'] = versionTagValue;
    }
    return map;
  }

  factory PhraseMatcherArgs.fromMap(Map<String, dynamic> map) {
    return PhraseMatcherArgs(
      active: Input.asOptionalInput<bool>(map['active']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      phraseMatchRuleGroups: Input.asOptionalInput<
              List<GoogleCloudContactcenterinsightsV1PhraseMatchRuleGroup>>(
          map['phraseMatchRuleGroups']),
      project: Input.asOptionalInput<String>(map['project']),
      roleMatch:
          Input.asOptionalInput<PhraseMatcherRoleMatch>(map['roleMatch']),
      type: Input.asInput<PhraseMatcherType>(map['type']),
      versionTag: Input.asOptionalInput<String>(map['versionTag']),
    );
  }
}
