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
  /// A regular expression used to determine which branches get built. Default is all branches are built. We recommend using `filterGroup` over `branchFilter`.
  final pulumi.Input<String>? branchFilter;
  /// The type of build this webhook will trigger. Valid values for this parameter are: `BUILD`, `BUILD_BATCH`.
  final pulumi.Input<String>? buildType;
  /// Information about the webhook's trigger. See filterGroup for details.
  final pulumi.Input<List<WebhookFilterGroup>>? filterGroups;
  /// If true, CodeBuild doesn't create a webhook in GitHub and instead returns `payloadUrl` and `secret` values for the webhook. The `payloadUrl` and `secret` values in the output can be used to manually create a webhook within GitHub.
  final pulumi.Input<bool>? manualCreation;
  /// The name of the build project.
  final pulumi.Input<String> projectName;
  /// Defines comment-based approval requirements for triggering builds on pull requests. See pullRequestBuildPolicy for details.
  final pulumi.Input<WebhookPullRequestBuildPolicy>? pullRequestBuildPolicy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Scope configuration for global or organization webhooks. See scopeConfiguration for details.
  final pulumi.Input<WebhookScopeConfiguration>? scopeConfiguration;

  /// Creates a new [WebhookArgs].
  /// [branchFilter] A regular expression used to determine which branches get built. Default is all branches are built. We recommend using `filterGroup` over `branchFilter`.
  /// [buildType] The type of build this webhook will trigger. Valid values for this parameter are: `BUILD`, `BUILD_BATCH`.
  /// [filterGroups] Information about the webhook's trigger. See filterGroup for details.
  /// [manualCreation] If true, CodeBuild doesn't create a webhook in GitHub and instead returns `payloadUrl` and `secret` values for the webhook. The `payloadUrl` and `secret` values in the output can be used to manually create a webhook within GitHub.
  /// [projectName] The name of the build project.
  /// [pullRequestBuildPolicy] Defines comment-based approval requirements for triggering builds on pull requests. See pullRequestBuildPolicy for details.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [scopeConfiguration] Scope configuration for global or organization webhooks. See scopeConfiguration for details.
  const WebhookArgs({
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
      branchFilter: (() { final guardedValue = map['branchFilter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      buildType: (() { final guardedValue = map['buildType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filterGroups: (() { final guardedValue = map['filterGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WebhookFilterGroup>(guardedValue, (value) => WebhookFilterGroup.fromMap((value as Map).cast<String, dynamic>()))); })(),
      manualCreation: (() { final guardedValue = map['manualCreation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      projectName: pulumi.Input.fromValue(map['projectName'] as String),
      pullRequestBuildPolicy: (() { final guardedValue = map['pullRequestBuildPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebhookPullRequestBuildPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scopeConfiguration: (() { final guardedValue = map['scopeConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebhookScopeConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
