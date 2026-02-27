import 'package:pulumi/pulumi.dart' as pulumi;
import '../webhook_filter_group/webhook_filter_group.dart';
import '../webhook_pull_request_build_policy/webhook_pull_request_build_policy.dart';
import '../webhook_scope_configuration/webhook_scope_configuration.dart';
import 'webhook_codebuild_args.dart';

/// Manages a CodeBuild webhook, which is an endpoint accepted by the CodeBuild service to trigger builds from source code repositories. Depending on the source type of the CodeBuild project, the CodeBuild service may also automatically create and delete the actual repository webhook as well.
///
/// ## Example Usage
///
/// ### Bitbucket and GitHub
///
/// When working with [Bitbucket](https://bitbucket.org) and [GitHub](https://github.com) source CodeBuild webhooks, the CodeBuild service will automatically create (on `aws.codebuild.Webhook` resource creation) and delete (on `aws.codebuild.Webhook` resource deletion) the Bitbucket/GitHub repository webhook using its granted OAuth permissions. This behavior cannot be controlled by this provider.
///
/// > **Note:** The AWS account that this provider uses to create this resource *must* have authorized CodeBuild to access Bitbucket/GitHub's OAuth API in each applicable region. This is a manual step that must be done *before* creating webhooks with this resource. If OAuth is not configured, AWS will return an error similar to `ResourceNotFoundException: Could not find access token for server type github`. More information can be found in the CodeBuild User Guide for [Bitbucket](https://docs.aws.amazon.com/codebuild/latest/userguide/sample-bitbucket-pull-request.html) and [GitHub](https://docs.aws.amazon.com/codebuild/latest/userguide/sample-github-pull-request.html).
///
/// > **Note:** Further managing the automatically created Bitbucket/GitHub webhook with the `bitbucket_hook`/`github_repository_webhook` resource is only possible with importing that resource after creation of the `aws.codebuild.Webhook` resource. The CodeBuild API does not ever provide the `secret` attribute for the `aws.codebuild.Webhook` resource in this scenario.
///
///
///
/// ### GitHub Enterprise
///
/// When working with [GitHub Enterprise](https://enterprise.github.com/) source CodeBuild webhooks, the GHE repository webhook must be separately managed (e.g., manually or with the `github_repository_webhook` resource).
///
/// More information creating webhooks with GitHub Enterprise can be found in the [CodeBuild User Guide](https://docs.aws.amazon.com/codebuild/latest/userguide/sample-github-enterprise.html).
///
///
///
/// ### For CodeBuild Runner Project
///
/// To create a CodeBuild project as a Runner Project, the following `aws.codebuild.Webhook` resource is required for the project.
/// See thr [AWS Documentation](https://docs.aws.amazon.com/codebuild/latest/userguide/action-runner.html) for more information about CodeBuild Runner Projects.
///
///
///
/// ## Import
///
/// Using `pulumi import`, import CodeBuild Webhooks using the CodeBuild Project name. For example:
///
/// ```sh
/// $ pulumi import aws:codebuild/webhook:Webhook example MyProjectName
/// ```
class WebhookCodebuild extends pulumi.CustomResource {
  /// A regular expression used to determine which branches get built. Default is all branches are built. We recommend using `filter_group` over `branch_filter`.
  late final pulumi.Output<String?> branchFilter;

  /// The type of build this webhook will trigger. Valid values for this parameter are: `BUILD`, `BUILD_BATCH`.
  late final pulumi.Output<String?> buildType;

  /// Information about the webhook's trigger. See filter_group for details.
  late final pulumi.Output<List<WebhookFilterGroup>?> filterGroups;

  /// If true, CodeBuild doesn't create a webhook in GitHub and instead returns `payload_url` and `secret` values for the webhook. The `payload_url` and `secret` values in the output can be used to manually create a webhook within GitHub.
  late final pulumi.Output<bool?> manualCreation;

  /// The CodeBuild endpoint where webhook events are sent.
  late final pulumi.Output<String> payloadUrl;

  /// The name of the build project.
  late final pulumi.Output<String> projectName;

  /// Defines comment-based approval requirements for triggering builds on pull requests. See pull_request_build_policy for details.
  late final pulumi.Output<WebhookPullRequestBuildPolicy>
      pullRequestBuildPolicy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Scope configuration for global or organization webhooks. See scope_configuration for details.
  late final pulumi.Output<WebhookScopeConfiguration?> scopeConfiguration;

  /// The secret token of the associated repository. Not returned by the CodeBuild API for all source types.
  late final pulumi.Output<String> secret;

  /// The URL to the webhook.
  late final pulumi.Output<String> url;

  WebhookCodebuild(
    String name, {
    WebhookCodebuildArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:codebuild/webhook:Webhook',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.branchFilter = registerOutput<String?>('branchFilter');
    this.buildType = registerOutput<String?>('buildType');
    this.filterGroups =
        registerOutput<List<WebhookFilterGroup>?>('filterGroups');
    this.manualCreation = registerOutput<bool?>('manualCreation');
    this.payloadUrl = registerOutput<String>('payloadUrl');
    this.projectName = registerOutput<String>('projectName');
    this.pullRequestBuildPolicy =
        registerOutput<WebhookPullRequestBuildPolicy>('pullRequestBuildPolicy');
    this.region = registerOutput<String>('region');
    this.scopeConfiguration =
        registerOutput<WebhookScopeConfiguration?>('scopeConfiguration');
    this.secret = registerOutput<String>('secret');
    this.url = registerOutput<String>('url');
  }
}
