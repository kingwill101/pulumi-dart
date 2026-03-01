// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_contactcenterinsights_v1_phrase_match_rule_group.dart';
import 'phrase_matcher_role_match.dart';
import 'phrase_matcher_type.dart';

/// {@template pulumi_contactcenterinsights_v1_phrase_matcher_args_doc}
/// The set of arguments for PhraseMatcher.
/// {@endtemplate}
/// {@macro pulumi_contactcenterinsights_v1_phrase_matcher_args_doc}
class PhraseMatcherArgs {
  /// Applies the phrase matcher only when it is active.
  final pulumi.Input<bool>? active;

  /// The human-readable name of the phrase matcher.
  final pulumi.Input<String>? displayName;
  final pulumi.Input<String>? location;

  /// The resource name of the phrase matcher. Format: projects/{project}/locations/{location}/phraseMatchers/{phrase_matcher}
  final pulumi.Input<String>? name;

  /// A list of phase match rule groups that are included in this matcher.
  final pulumi.Input<
    List<GoogleCloudContactcenterinsightsV1PhraseMatchRuleGroup>
  >?
  phraseMatchRuleGroups;
  final pulumi.Input<String>? project;

  /// The role whose utterances the phrase matcher should be matched against. If the role is ROLE_UNSPECIFIED it will be matched against any utterances in the transcript.
  final pulumi.Input<PhraseMatcherRoleMatch>? roleMatch;

  /// The type of this phrase matcher.
  final pulumi.Input<PhraseMatcherType> type;

  /// The customized version tag to use for the phrase matcher. If not specified, it will default to `revision_id`.
  final pulumi.Input<String>? versionTag;

  /// Creates a new [PhraseMatcherArgs].
  /// [active] Applies the phrase matcher only when it is active.
  /// [displayName] The human-readable name of the phrase matcher.
  /// [location] Optional.
  /// [name] The resource name of the phrase matcher. Format: projects/{project}/locations/{location}/phraseMatchers/{phrase_matcher}
  /// [phraseMatchRuleGroups] A list of phase match rule groups that are included in this matcher.
  /// [project] Optional.
  /// [roleMatch] The role whose utterances the phrase matcher should be matched against. If the role is ROLE_UNSPECIFIED it will be matched against any utterances in the transcript.
  /// [type] The type of this phrase matcher.
  /// [versionTag] The customized version tag to use for the phrase matcher. If not specified, it will default to `revision_id`.
  PhraseMatcherArgs({
    bool? active,
    String? displayName,
    String? location,
    String? name,
    List<GoogleCloudContactcenterinsightsV1PhraseMatchRuleGroup>?
    phraseMatchRuleGroups,
    String? project,
    PhraseMatcherRoleMatch? roleMatch,
    required PhraseMatcherType type,
    String? versionTag,
  }) : active = pulumi.Input.asOptionalInput<bool>(active),
       displayName = pulumi.Input.asOptionalInput<String>(displayName),
       location = pulumi.Input.asOptionalInput<String>(location),
       name = pulumi.Input.asOptionalInput<String>(name),
       phraseMatchRuleGroups =
           pulumi.Input.asOptionalInput<
             List<GoogleCloudContactcenterinsightsV1PhraseMatchRuleGroup>
           >(phraseMatchRuleGroups),
       project = pulumi.Input.asOptionalInput<String>(project),
       roleMatch = pulumi.Input.asOptionalInput<PhraseMatcherRoleMatch>(
         roleMatch,
       ),
       type = pulumi.Input.asInput<PhraseMatcherType>(type),
       versionTag = pulumi.Input.asOptionalInput<String>(versionTag);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'active': ?active,
      'displayName': ?displayName,
      'location': ?location,
      'name': ?name,
      'phraseMatchRuleGroups':
          ?pulumi.Input.mapOptionalInputValue<
            List<GoogleCloudContactcenterinsightsV1PhraseMatchRuleGroup>,
            List<Map<String, dynamic>>
          >(
            phraseMatchRuleGroups,
            (value) =>
                pulumi.Input.encodeList<
                  GoogleCloudContactcenterinsightsV1PhraseMatchRuleGroup,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'project': ?project,
      'roleMatch':
          ?pulumi.Input.mapOptionalInputValue<PhraseMatcherRoleMatch, String>(
            roleMatch,
            (value) => value.value,
          ),
      'type': pulumi.Input.mapInputValue<PhraseMatcherType, String>(
        type,
        (value) => value.value,
      ),
      'versionTag': ?versionTag,
    };
  }

  factory PhraseMatcherArgs.fromMap(Map<String, dynamic> map) {
    return PhraseMatcherArgs(
      active: map['active'] == null ? null : map['active'] as bool,
      displayName: map['displayName'] == null
          ? null
          : map['displayName'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      phraseMatchRuleGroups: map['phraseMatchRuleGroups'] == null
          ? null
          : pulumi.Input.decodeList<
              GoogleCloudContactcenterinsightsV1PhraseMatchRuleGroup
            >(
              map['phraseMatchRuleGroups'],
              (value) =>
                  GoogleCloudContactcenterinsightsV1PhraseMatchRuleGroup.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      project: map['project'] == null ? null : map['project'] as String,
      roleMatch: map['roleMatch'] == null
          ? null
          : PhraseMatcherRoleMatch.fromValue(map['roleMatch'] as String),
      type: PhraseMatcherType.fromValue(map['type'] as String),
      versionTag: map['versionTag'] == null
          ? null
          : map['versionTag'] as String,
    );
  }
}
