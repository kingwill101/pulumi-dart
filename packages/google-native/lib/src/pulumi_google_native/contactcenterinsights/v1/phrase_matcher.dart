import 'package:pulumi/pulumi.dart';
import 'google_cloud_contactcenterinsights_v1_phrase_match_rule_group_response.dart';
import 'phrase_matcher_args.dart';

/// Creates a phrase matcher.
class PhraseMatcher extends CustomResource {
  /// The most recent time at which the activation status was updated.
  late final Output<String> activationUpdateTime;

  /// Applies the phrase matcher only when it is active.
  late final Output<bool> active;

  /// The human-readable name of the phrase matcher.
  late final Output<String> displayName;
  late final Output<String> location;

  /// The resource name of the phrase matcher. Format: projects/{project}/locations/{location}/phraseMatchers/{phrase_matcher}
  late final Output<String> name;

  /// A list of phase match rule groups that are included in this matcher.
  late final Output<
          List<GoogleCloudContactcenterinsightsV1PhraseMatchRuleGroupResponse>>
      phraseMatchRuleGroups;
  late final Output<String> project;

  /// The timestamp of when the revision was created. It is also the create time when a new matcher is added.
  late final Output<String> revisionCreateTime;

  /// Immutable. The revision ID of the phrase matcher. A new revision is committed whenever the matcher is changed, except when it is activated or deactivated. A server generated random ID will be used. Example: locations/global/phraseMatchers/my-first-matcher@1234567
  late final Output<String> revisionId;

  /// The role whose utterances the phrase matcher should be matched against. If the role is ROLE_UNSPECIFIED it will be matched against any utterances in the transcript.
  late final Output<String> roleMatch;

  /// The type of this phrase matcher.
  late final Output<String> type;

  /// The most recent time at which the phrase matcher was updated.
  late final Output<String> updateTime;

  /// The customized version tag to use for the phrase matcher. If not specified, it will default to `revision_id`.
  late final Output<String> versionTag;

  PhraseMatcher(
    String name, {
    PhraseMatcherArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:contactcenterinsights/v1:PhraseMatcher',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.activationUpdateTime = registerOutput<String>('activationUpdateTime');
    this.active = registerOutput<bool>('active');
    this.displayName = registerOutput<String>('displayName');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.phraseMatchRuleGroups = registerOutput<
            List<
                GoogleCloudContactcenterinsightsV1PhraseMatchRuleGroupResponse>>(
        'phraseMatchRuleGroups');
    this.project = registerOutput<String>('project');
    this.revisionCreateTime = registerOutput<String>('revisionCreateTime');
    this.revisionId = registerOutput<String>('revisionId');
    this.roleMatch = registerOutput<String>('roleMatch');
    this.type = registerOutput<String>('type');
    this.updateTime = registerOutput<String>('updateTime');
    this.versionTag = registerOutput<String>('versionTag');
  }
}
