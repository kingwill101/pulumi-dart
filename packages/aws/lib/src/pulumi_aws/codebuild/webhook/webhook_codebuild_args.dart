// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../webhook_filter_group/webhook_filter_group.dart';
import '../webhook_pull_request_build_policy/webhook_pull_request_build_policy.dart';
import '../webhook_scope_configuration/webhook_scope_configuration.dart';

/// The set of arguments for Webhook.
class WebhookCodebuildArgs {
  /// A regular expression used to determine which branches get built. Default is all branches are built. We recommend using `filter_group` over `branch_filter`.
  final pulumi.Input<String>? branchFilter;

  /// The type of build this webhook will trigger. Valid values for this parameter are: `BUILD`, `BUILD_BATCH`.
  final pulumi.Input<String>? buildType;

  /// Information about the webhook's trigger. See filter_group for details.
  final pulumi.Input<List<WebhookFilterGroup>>? filterGroups;

  /// If true, CodeBuild doesn't create a webhook in GitHub and instead returns `payload_url` and `secret` values for the webhook. The `payload_url` and `secret` values in the output can be used to manually create a webhook within GitHub.
  final pulumi.Input<bool>? manualCreation;

  /// The name of the build project.
  final pulumi.Input<String> projectName;

  /// Defines comment-based approval requirements for triggering builds on pull requests. See pull_request_build_policy for details.
  final pulumi.Input<WebhookPullRequestBuildPolicy>? pullRequestBuildPolicy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Scope configuration for global or organization webhooks. See scope_configuration for details.
  final pulumi.Input<WebhookScopeConfiguration>? scopeConfiguration;

  WebhookCodebuildArgs({
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
      map['filterGroups'] = pulumi.Input.mapOptionalInputValue<
              List<WebhookFilterGroup>, List<Map<String, dynamic>>>(
          filterGroupsValue,
          (value) =>
              pulumi.Input.encodeList<WebhookFilterGroup, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final manualCreationValue = manualCreation;
    if (manualCreationValue != null) {
      map['manualCreation'] = manualCreationValue;
    }
    map['projectName'] = projectName;
    final pullRequestBuildPolicyValue = pullRequestBuildPolicy;
    if (pullRequestBuildPolicyValue != null) {
      map['pullRequestBuildPolicy'] = pulumi.Input.mapOptionalInputValue<
              WebhookPullRequestBuildPolicy, Map<String, dynamic>>(
          pullRequestBuildPolicyValue, (value) => value.toMap());
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final scopeConfigurationValue = scopeConfiguration;
    if (scopeConfigurationValue != null) {
      map['scopeConfiguration'] = pulumi.Input.mapOptionalInputValue<
              WebhookScopeConfiguration, Map<String, dynamic>>(
          scopeConfigurationValue, (value) => value.toMap());
    }
    return map;
  }

  factory WebhookCodebuildArgs.fromMap(Map<String, dynamic> map) {
    return WebhookCodebuildArgs(
      branchFilter: pulumi.Input.asOptionalInput<String>(map['branchFilter']),
      buildType: pulumi.Input.asOptionalInput<String>(map['buildType']),
      filterGroups: pulumi.Input.asOptionalInput<List<WebhookFilterGroup>>(
          map['filterGroups']),
      manualCreation: pulumi.Input.asOptionalInput<bool>(map['manualCreation']),
      projectName: pulumi.Input.asInput<String>(map['projectName']),
      pullRequestBuildPolicy:
          pulumi.Input.asOptionalInput<WebhookPullRequestBuildPolicy>(
              map['pullRequestBuildPolicy']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      scopeConfiguration:
          pulumi.Input.asOptionalInput<WebhookScopeConfiguration>(
              map['scopeConfiguration']),
    );
  }
}
