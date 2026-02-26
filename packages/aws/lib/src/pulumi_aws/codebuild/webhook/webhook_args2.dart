// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../webhook_filter_group/webhook_filter_group.dart';
import '../webhook_pull_request_build_policy/webhook_pull_request_build_policy.dart';
import '../webhook_scope_configuration/webhook_scope_configuration.dart';

/// The set of arguments for Webhook.
class WebhookArgs2 {
  /// A regular expression used to determine which branches get built. Default is all branches are built. We recommend using <span pulumi-lang-nodejs="`filterGroup`" pulumi-lang-dotnet="`FilterGroup`" pulumi-lang-go="`filterGroup`" pulumi-lang-python="`filter_group`" pulumi-lang-yaml="`filterGroup`" pulumi-lang-java="`filterGroup`">`filter_group`</span> over <span pulumi-lang-nodejs="`branchFilter`" pulumi-lang-dotnet="`BranchFilter`" pulumi-lang-go="`branchFilter`" pulumi-lang-python="`branch_filter`" pulumi-lang-yaml="`branchFilter`" pulumi-lang-java="`branchFilter`">`branch_filter`</span>.
  final Input<String>? branchFilter;

  /// The type of build this webhook will trigger. Valid values for this parameter are: `BUILD`, `BUILD_BATCH`.
  final Input<String>? buildType;

  /// Information about the webhook's trigger. See<span pulumi-lang-nodejs=" filterGroup " pulumi-lang-dotnet=" FilterGroup " pulumi-lang-go=" filterGroup " pulumi-lang-python=" filter_group " pulumi-lang-yaml=" filterGroup " pulumi-lang-java=" filterGroup "> filter_group </span>for details.
  final Input<List<WebhookFilterGroup>>? filterGroups;

  /// If true, CodeBuild doesn't create a webhook in GitHub and instead returns <span pulumi-lang-nodejs="`payloadUrl`" pulumi-lang-dotnet="`PayloadUrl`" pulumi-lang-go="`payloadUrl`" pulumi-lang-python="`payload_url`" pulumi-lang-yaml="`payloadUrl`" pulumi-lang-java="`payloadUrl`">`payload_url`</span> and <span pulumi-lang-nodejs="`secret`" pulumi-lang-dotnet="`Secret`" pulumi-lang-go="`secret`" pulumi-lang-python="`secret`" pulumi-lang-yaml="`secret`" pulumi-lang-java="`secret`">`secret`</span> values for the webhook. The <span pulumi-lang-nodejs="`payloadUrl`" pulumi-lang-dotnet="`PayloadUrl`" pulumi-lang-go="`payloadUrl`" pulumi-lang-python="`payload_url`" pulumi-lang-yaml="`payloadUrl`" pulumi-lang-java="`payloadUrl`">`payload_url`</span> and <span pulumi-lang-nodejs="`secret`" pulumi-lang-dotnet="`Secret`" pulumi-lang-go="`secret`" pulumi-lang-python="`secret`" pulumi-lang-yaml="`secret`" pulumi-lang-java="`secret`">`secret`</span> values in the output can be used to manually create a webhook within GitHub.
  final Input<bool>? manualCreation;

  /// The name of the build project.
  final Input<String> projectName;

  /// Defines comment-based approval requirements for triggering builds on pull requests. See<span pulumi-lang-nodejs=" pullRequestBuildPolicy " pulumi-lang-dotnet=" PullRequestBuildPolicy " pulumi-lang-go=" pullRequestBuildPolicy " pulumi-lang-python=" pull_request_build_policy " pulumi-lang-yaml=" pullRequestBuildPolicy " pulumi-lang-java=" pullRequestBuildPolicy "> pull_request_build_policy </span>for details.
  final Input<WebhookPullRequestBuildPolicy>? pullRequestBuildPolicy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Scope configuration for global or organization webhooks. See<span pulumi-lang-nodejs=" scopeConfiguration " pulumi-lang-dotnet=" ScopeConfiguration " pulumi-lang-go=" scopeConfiguration " pulumi-lang-python=" scope_configuration " pulumi-lang-yaml=" scopeConfiguration " pulumi-lang-java=" scopeConfiguration "> scope_configuration </span>for details.
  final Input<WebhookScopeConfiguration>? scopeConfiguration;

  WebhookArgs2({
    this.branchFilter,
    this.buildType,
    this.filterGroups,
    this.manualCreation,
    required this.projectName,
    this.pullRequestBuildPolicy,
    this.region,
    this.scopeConfiguration,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final branchFilterValue = branchFilter;
    if (branchFilterValue != null) {
      map['branchFilter'] = branchFilterValue;
    }
    final buildTypeValue = buildType;
    if (buildTypeValue != null) {
      map['buildType'] = buildTypeValue;
    }
    final filterGroupsValue = filterGroups;
    if (filterGroupsValue != null) {
      map['filterGroups'] = Input.mapOptionalInputValue<
              List<WebhookFilterGroup>, List<Map<String, dynamic>>>(
          filterGroupsValue,
          (value) => Input.encodeList<WebhookFilterGroup, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final manualCreationValue = manualCreation;
    if (manualCreationValue != null) {
      map['manualCreation'] = manualCreationValue;
    }
    map['projectName'] = projectName;
    final pullRequestBuildPolicyValue = pullRequestBuildPolicy;
    if (pullRequestBuildPolicyValue != null) {
      map['pullRequestBuildPolicy'] = Input.mapOptionalInputValue<
              WebhookPullRequestBuildPolicy, Map<String, dynamic>>(
          pullRequestBuildPolicyValue, (value) => value.toMap());
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final scopeConfigurationValue = scopeConfiguration;
    if (scopeConfigurationValue != null) {
      map['scopeConfiguration'] = Input.mapOptionalInputValue<
              WebhookScopeConfiguration, Map<String, dynamic>>(
          scopeConfigurationValue, (value) => value.toMap());
    }
    return map;
  }

  factory WebhookArgs2.fromMap(Map<String, dynamic> map) {
    return WebhookArgs2(
      branchFilter: Input.asOptionalInput<String>(map['branchFilter']),
      buildType: Input.asOptionalInput<String>(map['buildType']),
      filterGroups:
          Input.asOptionalInput<List<WebhookFilterGroup>>(map['filterGroups']),
      manualCreation: Input.asOptionalInput<bool>(map['manualCreation']),
      projectName: Input.asInput<String>(map['projectName']),
      pullRequestBuildPolicy:
          Input.asOptionalInput<WebhookPullRequestBuildPolicy>(
              map['pullRequestBuildPolicy']),
      region: Input.asOptionalInput<String>(map['region']),
      scopeConfiguration: Input.asOptionalInput<WebhookScopeConfiguration>(
          map['scopeConfiguration']),
    );
  }
}
