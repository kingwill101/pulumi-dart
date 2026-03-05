import 'package:pulumi/pulumi.dart' as pulumi;
import 'webhook_args.dart';
import 'webhook_pull_request_build_policy.dart';
import 'webhook_scope_configuration.dart';
import 'webhook_state.dart';

/// Manages a CodeBuild webhook, which is an endpoint accepted by the CodeBuild service to trigger builds from source code repositories. Depending on the source type of the CodeBuild project, the CodeBuild service may also automatically create and delete the actual repository webhook as well.
///
/// ## Example Usage
///
/// ### Bitbucket and GitHub
///
/// When working with [Bitbucket](https://bitbucket.org) and [GitHub](https://github.com) source CodeBuild webhooks, the CodeBuild service will automatically create (on `aws.codebuild.Webhook` resource creation) and delete (on `aws.codebuild.Webhook` resource deletion) the Bitbucket/GitHub repository webhook using its granted OAuth permissions. This behavior cannot be controlled by this provider.
///
/// &gt; **Note:** The AWS account that this provider uses to create this resource *must* have authorized CodeBuild to access Bitbucket/GitHub's OAuth API in each applicable region. This is a manual step that must be done *before* creating webhooks with this resource. If OAuth is not configured, AWS will return an error similar to `ResourceNotFoundException: Could not find access token for server type github`. More information can be found in the CodeBuild User Guide for [Bitbucket](https://docs.aws.amazon.com/codebuild/latest/userguide/sample-bitbucket-pull-request.html) and [GitHub](https://docs.aws.amazon.com/codebuild/latest/userguide/sample-github-pull-request.html).
///
/// &gt; **Note:** Further managing the automatically created Bitbucket/GitHub webhook with the `bitbucket_hook`/`github_repository_webhook` resource is only possible with importing that resource after creation of the `aws.codebuild.Webhook` resource. The CodeBuild API does not ever provide the `secret` attribute for the `aws.codebuild.Webhook` resource in this scenario.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.codebuild.Webhook("example", {
///     projectName: exampleAwsCodebuildProject.name,
///     buildType: "BUILD",
///     filterGroups: [{
///         filters: [
///             {
///                 type: "EVENT",
///                 pattern: "PUSH",
///             },
///             {
///                 type: "BASE_REF",
///                 pattern: "master",
///             },
///         ],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.codebuild.Webhook("example",
///     project_name=example_aws_codebuild_project["name"],
///     build_type="BUILD",
///     filter_groups=[{
///         "filters": [
///             {
///                 "type": "EVENT",
///                 "pattern": "PUSH",
///             },
///             {
///                 "type": "BASE_REF",
///                 "pattern": "master",
///             },
///         ],
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.CodeBuild.Webhook("example", new()
///     {
///         ProjectName = exampleAwsCodebuildProject.Name,
///         BuildType = "BUILD",
///         FilterGroups = new[]
///         {
///             new Aws.CodeBuild.Inputs.WebhookFilterGroupArgs
///             {
///                 Filters = new[]
///                 {
///                     new Aws.CodeBuild.Inputs.WebhookFilterGroupFilterArgs
///                     {
///                         Type = "EVENT",
///                         Pattern = "PUSH",
///                     },
///                     new Aws.CodeBuild.Inputs.WebhookFilterGroupFilterArgs
///                     {
///                         Type = "BASE_REF",
///                         Pattern = "master",
///                     },
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/codebuild"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := codebuild.NewWebhook(ctx, "example", &codebuild.WebhookArgs{
/// 			ProjectName: pulumi.Any(exampleAwsCodebuildProject.Name),
/// 			BuildType:   pulumi.String("BUILD"),
/// 			FilterGroups: codebuild.WebhookFilterGroupArray{
/// 				&codebuild.WebhookFilterGroupArgs{
/// 					Filters: codebuild.WebhookFilterGroupFilterArray{
/// 						&codebuild.WebhookFilterGroupFilterArgs{
/// 							Type:    pulumi.String("EVENT"),
/// 							Pattern: pulumi.String("PUSH"),
/// 						},
/// 						&codebuild.WebhookFilterGroupFilterArgs{
/// 							Type:    pulumi.String("BASE_REF"),
/// 							Pattern: pulumi.String("master"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.codebuild.Webhook;
/// import com.pulumi.aws.codebuild.WebhookArgs;
/// import com.pulumi.aws.codebuild.inputs.WebhookFilterGroupArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new Webhook("example", WebhookArgs.builder()
///             .projectName(exampleAwsCodebuildProject.name())
///             .buildType("BUILD")
///             .filterGroups(WebhookFilterGroupArgs.builder()
///                 .filters(
///                     WebhookFilterGroupFilterArgs.builder()
///                         .type("EVENT")
///                         .pattern("PUSH")
///                         .build(),
///                     WebhookFilterGroupFilterArgs.builder()
///                         .type("BASE_REF")
///                         .pattern("master")
///                         .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:codebuild:Webhook
///     properties:
///       projectName: ${exampleAwsCodebuildProject.name}
///       buildType: BUILD
///       filterGroups:
///         - filters:
///             - type: EVENT
///               pattern: PUSH
///             - type: BASE_REF
///               pattern: master
/// ```
///
///
/// ### GitHub Enterprise
///
/// When working with [GitHub Enterprise](https://enterprise.github.com/) source CodeBuild webhooks, the GHE repository webhook must be separately managed (e.g., manually or with the `github_repository_webhook` resource).
///
/// More information creating webhooks with GitHub Enterprise can be found in the [CodeBuild User Guide](https://docs.aws.amazon.com/codebuild/latest/userguide/sample-github-enterprise.html).
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as github from "@pulumi/github";
///
/// const example = new aws.codebuild.Webhook("example", {projectName: exampleAwsCodebuildProject.name});
/// const exampleRepositoryWebhook = new github.RepositoryWebhook("example", {
///     active: true,
///     events: ["push"],
///     name: "example",
///     repository: exampleGithubRepository.name,
///     configuration: [{
///         url: example.payloadUrl,
///         secret: example.secret,
///         contentType: "json",
///         insecureSsl: false,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_github as github
///
/// example = aws.codebuild.Webhook("example", project_name=example_aws_codebuild_project["name"])
/// example_repository_webhook = github.RepositoryWebhook("example",
///     active=True,
///     events=["push"],
///     name="example",
///     repository=example_github_repository["name"],
///     configuration=[{
///         "url": example.payload_url,
///         "secret": example.secret,
///         "contentType": "json",
///         "insecureSsl": False,
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
/// using Github = Pulumi.Github;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.CodeBuild.Webhook("example", new()
///     {
///         ProjectName = exampleAwsCodebuildProject.Name,
///     });
///
///     var exampleRepositoryWebhook = new Github.RepositoryWebhook("example", new()
///     {
///         Active = true,
///         Events = new[]
///         {
///             "push",
///         },
///         Name = "example",
///         Repository = exampleGithubRepository.Name,
///         Configuration = new[]
///         {
///
///             {
///                 { "url", example.PayloadUrl },
///                 { "secret", example.Secret },
///                 { "contentType", "json" },
///                 { "insecureSsl", false },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/codebuild"
/// 	"github.com/pulumi/pulumi-github/sdk/v6/go/github"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := codebuild.NewWebhook(ctx, "example", &codebuild.WebhookArgs{
/// 			ProjectName: pulumi.Any(exampleAwsCodebuildProject.Name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = github.NewRepositoryWebhook(ctx, "example", &github.RepositoryWebhookArgs{
/// 			Active: pulumi.Bool(true),
/// 			Events: pulumi.StringArray{
/// 				pulumi.String("push"),
/// 			},
/// 			Name:       "example",
/// 			Repository: pulumi.Any(exampleGithubRepository.Name),
/// 			Configuration: github.RepositoryWebhookConfigurationArgs{
/// 				map[string]interface{}{
/// 					"url":         example.PayloadUrl,
/// 					"secret":      example.Secret,
/// 					"contentType": "json",
/// 					"insecureSsl": false,
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.codebuild.Webhook;
/// import com.pulumi.aws.codebuild.WebhookArgs;
/// import com.pulumi.github.RepositoryWebhook;
/// import com.pulumi.github.RepositoryWebhookArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new Webhook("example", WebhookArgs.builder()
///             .projectName(exampleAwsCodebuildProject.name())
///             .build());
///
///         var exampleRepositoryWebhook = new RepositoryWebhook("exampleRepositoryWebhook", RepositoryWebhookArgs.builder()
///             .active(true)
///             .events("push")
///             .name("example")
///             .repository(exampleGithubRepository.name())
///             .configuration(RepositoryWebhookConfigurationArgs.builder()
///                 .url(example.payloadUrl())
///                 .secret(example.secret())
///                 .contentType("json")
///                 .insecureSsl(false)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:codebuild:Webhook
///     properties:
///       projectName: ${exampleAwsCodebuildProject.name}
///   exampleRepositoryWebhook:
///     type: github:RepositoryWebhook
///     name: example
///     properties:
///       active: true
///       events:
///         - push
///       name: example
///       repository: ${exampleGithubRepository.name}
///       configuration:
///         - url: ${example.payloadUrl}
///           secret: ${example.secret}
///           contentType: json
///           insecureSsl: false
/// ```
///
///
/// ### For CodeBuild Runner Project
///
/// To create a CodeBuild project as a Runner Project, the following `aws.codebuild.Webhook` resource is required for the project.
/// See thr [AWS Documentation](https://docs.aws.amazon.com/codebuild/latest/userguide/action-runner.html) for more information about CodeBuild Runner Projects.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.codebuild.Webhook("example", {
///     projectName: exampleAwsCodebuildProject.name,
///     buildType: "BUILD",
///     filterGroups: [{
///         filters: [{
///             type: "EVENT",
///             pattern: "WORKFLOW_JOB_QUEUED",
///         }],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.codebuild.Webhook("example",
///     project_name=example_aws_codebuild_project["name"],
///     build_type="BUILD",
///     filter_groups=[{
///         "filters": [{
///             "type": "EVENT",
///             "pattern": "WORKFLOW_JOB_QUEUED",
///         }],
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.CodeBuild.Webhook("example", new()
///     {
///         ProjectName = exampleAwsCodebuildProject.Name,
///         BuildType = "BUILD",
///         FilterGroups = new[]
///         {
///             new Aws.CodeBuild.Inputs.WebhookFilterGroupArgs
///             {
///                 Filters = new[]
///                 {
///                     new Aws.CodeBuild.Inputs.WebhookFilterGroupFilterArgs
///                     {
///                         Type = "EVENT",
///                         Pattern = "WORKFLOW_JOB_QUEUED",
///                     },
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/codebuild"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := codebuild.NewWebhook(ctx, "example", &codebuild.WebhookArgs{
/// 			ProjectName: pulumi.Any(exampleAwsCodebuildProject.Name),
/// 			BuildType:   pulumi.String("BUILD"),
/// 			FilterGroups: codebuild.WebhookFilterGroupArray{
/// 				&codebuild.WebhookFilterGroupArgs{
/// 					Filters: codebuild.WebhookFilterGroupFilterArray{
/// 						&codebuild.WebhookFilterGroupFilterArgs{
/// 							Type:    pulumi.String("EVENT"),
/// 							Pattern: pulumi.String("WORKFLOW_JOB_QUEUED"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.codebuild.Webhook;
/// import com.pulumi.aws.codebuild.WebhookArgs;
/// import com.pulumi.aws.codebuild.inputs.WebhookFilterGroupArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new Webhook("example", WebhookArgs.builder()
///             .projectName(exampleAwsCodebuildProject.name())
///             .buildType("BUILD")
///             .filterGroups(WebhookFilterGroupArgs.builder()
///                 .filters(WebhookFilterGroupFilterArgs.builder()
///                     .type("EVENT")
///                     .pattern("WORKFLOW_JOB_QUEUED")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:codebuild:Webhook
///     properties:
///       projectName: ${exampleAwsCodebuildProject.name}
///       buildType: BUILD
///       filterGroups:
///         - filters:
///             - type: EVENT
///               pattern: WORKFLOW_JOB_QUEUED
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import CodeBuild Webhooks using the CodeBuild Project name. For example:
///
/// ```sh
/// $ pulumi import aws:codebuild/webhook:Webhook example MyProjectName
/// ```
class Webhook extends pulumi.CustomResource {
  /// A regular expression used to determine which branches get built. Default is all branches are built. We recommend using `filter_group` over `branch_filter`.
  late final pulumi.Output<String?> branchFilter;
  /// The type of build this webhook will trigger. Valid values for this parameter are: `BUILD`, `BUILD_BATCH`.
  late final pulumi.Output<String?> buildType;
  /// Information about the webhook's trigger. See filter_group for details.
  late final pulumi.Output<List<Map<String, dynamic>>?> filterGroups;
  /// If true, CodeBuild doesn't create a webhook in GitHub and instead returns `payload_url` and `secret` values for the webhook. The `payload_url` and `secret` values in the output can be used to manually create a webhook within GitHub.
  late final pulumi.Output<bool?> manualCreation;
  /// The CodeBuild endpoint where webhook events are sent.
  late final pulumi.Output<String> payloadUrl;
  /// The name of the build project.
  late final pulumi.Output<String> projectName;
  /// Defines comment-based approval requirements for triggering builds on pull requests. See pull_request_build_policy for details.
  late final pulumi.Output<WebhookPullRequestBuildPolicy> pullRequestBuildPolicy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Scope configuration for global or organization webhooks. See scope_configuration for details.
  late final pulumi.Output<WebhookScopeConfiguration?> scopeConfiguration;
  /// The secret token of the associated repository. Not returned by the CodeBuild API for all source types.
  late final pulumi.Output<String> secret;
  /// The URL to the webhook.
  late final pulumi.Output<String> url;

  /// Creates a new [Webhook].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Webhook]. {@macro pulumi_codebuild_webhook_webhook_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Webhook(
    String name, {
    WebhookArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:codebuild/webhook:Webhook',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    branchFilter = registerOutput<String?>('branchFilter');
    buildType = registerOutput<String?>('buildType');
    filterGroups = registerOutput<List<Map<String, dynamic>>?>('filterGroups');
    manualCreation = registerOutput<bool?>('manualCreation');
    payloadUrl = registerOutput<String>('payloadUrl');
    projectName = registerOutput<String>('projectName');
    pullRequestBuildPolicy = registerOutput<WebhookPullRequestBuildPolicy>('pullRequestBuildPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WebhookPullRequestBuildPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    scopeConfiguration = registerOutput<WebhookScopeConfiguration?>('scopeConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WebhookScopeConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    secret = registerOutput<String>('secret');
    url = registerOutput<String>('url');
  }

  /// Gets an existing [Webhook] resource's state with the given [name] and [id].
  static Webhook get(
    String name,
    pulumi.Input<String> id, {
    WebhookState? state,
  }) {
    return Webhook._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Webhook._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:codebuild/webhook:Webhook',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    branchFilter = registerOutput<String?>('branchFilter');
    buildType = registerOutput<String?>('buildType');
    filterGroups = registerOutput<List<Map<String, dynamic>>?>('filterGroups');
    manualCreation = registerOutput<bool?>('manualCreation');
    payloadUrl = registerOutput<String>('payloadUrl');
    projectName = registerOutput<String>('projectName');
    pullRequestBuildPolicy = registerOutput<WebhookPullRequestBuildPolicy>('pullRequestBuildPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WebhookPullRequestBuildPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    scopeConfiguration = registerOutput<WebhookScopeConfiguration?>('scopeConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WebhookScopeConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    secret = registerOutput<String>('secret');
    url = registerOutput<String>('url');
  }
}
