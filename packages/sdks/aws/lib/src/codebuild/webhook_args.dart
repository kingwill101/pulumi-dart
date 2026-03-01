// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'webhook_filter_group.dart';
import 'webhook_pull_request_build_policy.dart';
import 'webhook_scope_configuration.dart';

/// {@template pulumi_codebuild_webhook_webhook_args_doc}
/// The set of arguments for Webhook.
/// {@endtemplate}
/// {@macro pulumi_codebuild_webhook_webhook_args_doc}
class WebhookArgs {
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

  /// Creates a new [WebhookArgs].
  /// [branchFilter] A regular expression used to determine which branches get built. Default is all branches are built. We recommend using `filter_group` over `branch_filter`.
  /// [buildType] The type of build this webhook will trigger. Valid values for this parameter are: `BUILD`, `BUILD_BATCH`.
  /// [filterGroups] Information about the webhook's trigger. See filter_group for details.
  /// [manualCreation] If true, CodeBuild doesn't create a webhook in GitHub and instead returns `payload_url` and `secret` values for the webhook. The `payload_url` and `secret` values in the output can be used to manually create a webhook within GitHub.
  /// [projectName] The name of the build project.
  /// [pullRequestBuildPolicy] Defines comment-based approval requirements for triggering builds on pull requests. See pull_request_build_policy for details.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [scopeConfiguration] Scope configuration for global or organization webhooks. See scope_configuration for details.
  WebhookArgs({
    pulumi.Output<String>? branchFilter,
    pulumi.Output<String>? buildType,
    pulumi.Output<List<WebhookFilterGroup>>? filterGroups,
    pulumi.Output<bool>? manualCreation,
    required pulumi.Output<String> projectName,
    pulumi.Output<WebhookPullRequestBuildPolicy>? pullRequestBuildPolicy,
    pulumi.Output<String>? region,
    pulumi.Output<WebhookScopeConfiguration>? scopeConfiguration,
  }) :
      branchFilter = pulumi.Input.asOptionalInput<String>(branchFilter),
      buildType = pulumi.Input.asOptionalInput<String>(buildType),
      filterGroups = pulumi.Input.asOptionalInput<List<WebhookFilterGroup>>(filterGroups),
      manualCreation = pulumi.Input.asOptionalInput<bool>(manualCreation),
      projectName = pulumi.Input.asInput<String>(projectName),
      pullRequestBuildPolicy = pulumi.Input.asOptionalInput<WebhookPullRequestBuildPolicy>(pullRequestBuildPolicy),
      region = pulumi.Input.asOptionalInput<String>(region),
      scopeConfiguration = pulumi.Input.asOptionalInput<WebhookScopeConfiguration>(scopeConfiguration);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'branchFilter': ?branchFilter,
      'buildType': ?buildType,
      'filterGroups': ?pulumi.Input.mapOptionalInputValue<List<WebhookFilterGroup>, List<Map<String, dynamic>>>(filterGroups, (value) => pulumi.Input.encodeList<WebhookFilterGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
      'manualCreation': ?manualCreation,
      'projectName': projectName,
      'pullRequestBuildPolicy': ?pulumi.Input.mapOptionalInputValue<WebhookPullRequestBuildPolicy, Map<String, dynamic>>(pullRequestBuildPolicy, (value) => value.toMap()),
      'region': ?region,
      'scopeConfiguration': ?pulumi.Input.mapOptionalInputValue<WebhookScopeConfiguration, Map<String, dynamic>>(scopeConfiguration, (value) => value.toMap()),
    };
  }

  factory WebhookArgs.fromMap(Map<String, dynamic> map) {
    return WebhookArgs(
      branchFilter: map['branchFilter'] == null ? null : pulumi.Output.create<String>(map['branchFilter'] as String),
      buildType: map['buildType'] == null ? null : pulumi.Output.create<String>(map['buildType'] as String),
      filterGroups: map['filterGroups'] == null ? null : pulumi.Output.create<List<WebhookFilterGroup>>(pulumi.Input.decodeList<WebhookFilterGroup>(map['filterGroups'], (value) => WebhookFilterGroup.fromMap((value as Map).cast<String, dynamic>()))),
      manualCreation: map['manualCreation'] == null ? null : pulumi.Output.create<bool>(map['manualCreation'] as bool),
      projectName: pulumi.Output.create<String>(map['projectName'] as String),
      pullRequestBuildPolicy: map['pullRequestBuildPolicy'] == null ? null : pulumi.Output.create<WebhookPullRequestBuildPolicy>(WebhookPullRequestBuildPolicy.fromMap((map['pullRequestBuildPolicy'] as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      scopeConfiguration: map['scopeConfiguration'] == null ? null : pulumi.Output.create<WebhookScopeConfiguration>(WebhookScopeConfiguration.fromMap((map['scopeConfiguration'] as Map).cast<String, dynamic>())),
    );
  }
}

