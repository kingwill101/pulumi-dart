// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'webhook_filter_group.dart';
import 'webhook_pull_request_build_policy.dart';
import 'webhook_scope_configuration.dart';

/// Input properties used for looking up and filtering Webhook resources.
class WebhookState {
  /// A regular expression used to determine which branches get built. Default is all branches are built. We recommend using `filter_group` over `branch_filter`.
  final pulumi.Input<String>? branchFilter;
  /// The type of build this webhook will trigger. Valid values for this parameter are: `BUILD`, `BUILD_BATCH`.
  final pulumi.Input<String>? buildType;
  /// Information about the webhook's trigger. See filter_group for details.
  final pulumi.Input<List<WebhookFilterGroup>>? filterGroups;
  /// If true, CodeBuild doesn't create a webhook in GitHub and instead returns `payload_url` and `secret` values for the webhook. The `payload_url` and `secret` values in the output can be used to manually create a webhook within GitHub.
  final pulumi.Input<bool>? manualCreation;
  /// The CodeBuild endpoint where webhook events are sent.
  final pulumi.Input<String>? payloadUrl;
  /// The name of the build project.
  final pulumi.Input<String>? projectName;
  /// Defines comment-based approval requirements for triggering builds on pull requests. See pull_request_build_policy for details.
  final pulumi.Input<WebhookPullRequestBuildPolicy>? pullRequestBuildPolicy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Scope configuration for global or organization webhooks. See scope_configuration for details.
  final pulumi.Input<WebhookScopeConfiguration>? scopeConfiguration;
  /// The secret token of the associated repository. Not returned by the CodeBuild API for all source types.
  final pulumi.Input<String>? secret;
  /// The URL to the webhook.
  final pulumi.Input<String>? url;

  /// Creates a new [WebhookState].
  /// [branchFilter] A regular expression used to determine which branches get built. Default is all branches are built. We recommend using `filter_group` over `branch_filter`.
  /// [buildType] The type of build this webhook will trigger. Valid values for this parameter are: `BUILD`, `BUILD_BATCH`.
  /// [filterGroups] Information about the webhook's trigger. See filter_group for details.
  /// [manualCreation] If true, CodeBuild doesn't create a webhook in GitHub and instead returns `payload_url` and `secret` values for the webhook. The `payload_url` and `secret` values in the output can be used to manually create a webhook within GitHub.
  /// [payloadUrl] The CodeBuild endpoint where webhook events are sent.
  /// [projectName] The name of the build project.
  /// [pullRequestBuildPolicy] Defines comment-based approval requirements for triggering builds on pull requests. See pull_request_build_policy for details.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [scopeConfiguration] Scope configuration for global or organization webhooks. See scope_configuration for details.
  /// [secret] The secret token of the associated repository. Not returned by the CodeBuild API for all source types.
  /// [url] The URL to the webhook.
  WebhookState({
    pulumi.Output<String>? branchFilter,
    pulumi.Output<String>? buildType,
    pulumi.Output<List<WebhookFilterGroup>>? filterGroups,
    pulumi.Output<bool>? manualCreation,
    pulumi.Output<String>? payloadUrl,
    pulumi.Output<String>? projectName,
    pulumi.Output<WebhookPullRequestBuildPolicy>? pullRequestBuildPolicy,
    pulumi.Output<String>? region,
    pulumi.Output<WebhookScopeConfiguration>? scopeConfiguration,
    pulumi.Output<String>? secret,
    pulumi.Output<String>? url,
  }) :
      branchFilter = pulumi.Input.asOptionalInput<String>(branchFilter),
      buildType = pulumi.Input.asOptionalInput<String>(buildType),
      filterGroups = pulumi.Input.asOptionalInput<List<WebhookFilterGroup>>(filterGroups),
      manualCreation = pulumi.Input.asOptionalInput<bool>(manualCreation),
      payloadUrl = pulumi.Input.asOptionalInput<String>(payloadUrl),
      projectName = pulumi.Input.asOptionalInput<String>(projectName),
      pullRequestBuildPolicy = pulumi.Input.asOptionalInput<WebhookPullRequestBuildPolicy>(pullRequestBuildPolicy),
      region = pulumi.Input.asOptionalInput<String>(region),
      scopeConfiguration = pulumi.Input.asOptionalInput<WebhookScopeConfiguration>(scopeConfiguration),
      secret = pulumi.Input.asOptionalInput<String>(secret),
      url = pulumi.Input.asOptionalInput<String>(url);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'branchFilter': ?branchFilter,
      'buildType': ?buildType,
      'filterGroups': ?pulumi.Input.mapOptionalInputValue<List<WebhookFilterGroup>, List<Map<String, dynamic>>>(filterGroups, (value) => pulumi.Input.encodeList<WebhookFilterGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
      'manualCreation': ?manualCreation,
      'payloadUrl': ?payloadUrl,
      'projectName': ?projectName,
      'pullRequestBuildPolicy': ?pulumi.Input.mapOptionalInputValue<WebhookPullRequestBuildPolicy, Map<String, dynamic>>(pullRequestBuildPolicy, (value) => value.toMap()),
      'region': ?region,
      'scopeConfiguration': ?pulumi.Input.mapOptionalInputValue<WebhookScopeConfiguration, Map<String, dynamic>>(scopeConfiguration, (value) => value.toMap()),
      'secret': ?secret,
      'url': ?url,
    };
  }

  factory WebhookState.fromMap(Map<String, dynamic> map) {
    return WebhookState(
      branchFilter: map['branchFilter'] == null ? null : pulumi.Output.create<String>(map['branchFilter'] as String),
      buildType: map['buildType'] == null ? null : pulumi.Output.create<String>(map['buildType'] as String),
      filterGroups: map['filterGroups'] == null ? null : pulumi.Output.create<List<WebhookFilterGroup>>(pulumi.Input.decodeList<WebhookFilterGroup>(map['filterGroups'], (value) => WebhookFilterGroup.fromMap((value as Map).cast<String, dynamic>()))),
      manualCreation: map['manualCreation'] == null ? null : pulumi.Output.create<bool>(map['manualCreation'] as bool),
      payloadUrl: map['payloadUrl'] == null ? null : pulumi.Output.create<String>(map['payloadUrl'] as String),
      projectName: map['projectName'] == null ? null : pulumi.Output.create<String>(map['projectName'] as String),
      pullRequestBuildPolicy: map['pullRequestBuildPolicy'] == null ? null : pulumi.Output.create<WebhookPullRequestBuildPolicy>(WebhookPullRequestBuildPolicy.fromMap((map['pullRequestBuildPolicy'] as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      scopeConfiguration: map['scopeConfiguration'] == null ? null : pulumi.Output.create<WebhookScopeConfiguration>(WebhookScopeConfiguration.fromMap((map['scopeConfiguration'] as Map).cast<String, dynamic>())),
      secret: map['secret'] == null ? null : pulumi.Output.create<String>(map['secret'] as String),
      url: map['url'] == null ? null : pulumi.Output.create<String>(map['url'] as String),
    );
  }
}

