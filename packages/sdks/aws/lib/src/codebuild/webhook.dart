import 'package:pulumi/pulumi.dart' as pulumi;
import 'webhook_args.dart';
import 'webhook_filter_group.dart';
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
/// &gt; **Note:** Further managing the automatically created Bitbucket/GitHub webhook with the `bitbucketHook`/`githubRepositoryWebhook` resource is only possible with importing that resource after creation of the `aws.codebuild.Webhook` resource. The CodeBuild API does not ever provide the `secret` attribute for the `aws.codebuild.Webhook` resource in this scenario.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.codebuild.Webhook("example", {
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
///     projectName: exampleAwsCodebuildProject.name,
///     buildType: "BUILD",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.codebuild.Webhook("example",
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
///     }],
///     project_name=example_aws_codebuild_project["name"],
///     build_type="BUILD")
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
///         ProjectName = exampleAwsCodebuildProject.Name,
///         BuildType = "BUILD",
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
/// 			ProjectName: pulumi.Any(exampleAwsCodebuildProject.Name),
/// 			BuildType:   pulumi.String("BUILD"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_codebuild_webhook" "example" {
///   filter_groups {
///     filters {
///       type    = "EVENT"
///       pattern = "PUSH"
///     }
///     filters {
///       type    = "BASE_REF"
///       pattern = "master"
///     }
///   }
///   project_name = exampleAwsCodebuildProject.name
///   build_type   = "BUILD"
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
/// import com.pulumi.aws.codebuild.inputs.WebhookFilterGroupFilterArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///             .projectName(exampleAwsCodebuildProject.name())
///             .buildType("BUILD")
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
///       filterGroups:
///         - filters:
///             - type: EVENT
///               pattern: PUSH
///             - type: BASE_REF
///               pattern: master
///       projectName: ${exampleAwsCodebuildProject.name}
///       buildType: BUILD
/// ```
///
///
/// ### GitHub Enterprise
///
/// When working with [GitHub Enterprise](https://enterprise.github.com/) source CodeBuild webhooks, the GHE repository webhook must be separately managed (e.g., manually or with the `githubRepositoryWebhook` resource).
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
///     configuration: [{
///         url: example.payloadUrl,
///         secret: example.secret,
///         contentType: "json",
///         insecureSsl: false,
///     }],
///     active: true,
///     events: ["push"],
///     name: "example",
///     repository: exampleGithubRepository.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_github as github
///
/// example = aws.codebuild.Webhook("example", project_name=example_aws_codebuild_project["name"])
/// example_repository_webhook = github.RepositoryWebhook("example",
///     configuration=[{
///         "url": example.payload_url,
///         "secret": example.secret,
///         "contentType": "json",
///         "insecureSsl": False,
///     }],
///     active=True,
///     events=["push"],
///     name="example",
///     repository=example_github_repository["name"])
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
///         Active = true,
///         Events = new[]
///         {
///             "push",
///         },
///         Name = "example",
///         Repository = exampleGithubRepository.Name,
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
/// 			Configuration: github.RepositoryWebhookConfigurationArgs{
/// 				map[string]interface{}{
/// 					"url":         example.PayloadUrl,
/// 					"secret":      example.Secret,
/// 					"contentType": "json",
/// 					"insecureSsl": false,
/// 				},
/// 			},
/// 			Active: pulumi.Bool(true),
/// 			Events: pulumi.StringArray{
/// 				pulumi.String("push"),
/// 			},
/// 			Name:       "example",
/// 			Repository: pulumi.Any(exampleGithubRepository.Name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///     github = {
///       source = "pulumi/github"
///     }
///   }
/// }
///
/// resource "aws_codebuild_webhook" "example" {
///   project_name = exampleAwsCodebuildProject.name
/// }
/// resource "github_repositorywebhook" "example" {
///   configuration = [{
///     "url"         = aws_codebuild_webhook.example.payload_url
///     "secret"      = aws_codebuild_webhook.example.secret
///     "contentType" = "json"
///     "insecureSsl" = false
///   }]
///   active     = true
///   events     = ["push"]
///   name       = "example"
///   repository = exampleGithubRepository.name
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
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///             .configuration(com.pulumi.github.inputs.RepositoryWebhookConfigurationArgs.builder()
///                 .url(example.payloadUrl())
///                 .secret(example.secret())
///                 .contentType("json")
///                 .insecureSsl(false)
///                 .build())
///             .active(true)
///             .events("push")
///             .name("example")
///             .repository(exampleGithubRepository.name())
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
///       configuration:
///         - url: ${example.payloadUrl}
///           secret: ${example.secret}
///           contentType: json
///           insecureSsl: false
///       active: true
///       events:
///         - push
///       name: example
///       repository: ${exampleGithubRepository.name}
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
///     filterGroups: [{
///         filters: [{
///             type: "EVENT",
///             pattern: "WORKFLOW_JOB_QUEUED",
///         }],
///     }],
///     projectName: exampleAwsCodebuildProject.name,
///     buildType: "BUILD",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.codebuild.Webhook("example",
///     filter_groups=[{
///         "filters": [{
///             "type": "EVENT",
///             "pattern": "WORKFLOW_JOB_QUEUED",
///         }],
///     }],
///     project_name=example_aws_codebuild_project["name"],
///     build_type="BUILD")
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
///         ProjectName = exampleAwsCodebuildProject.Name,
///         BuildType = "BUILD",
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
/// 			ProjectName: pulumi.Any(exampleAwsCodebuildProject.Name),
/// 			BuildType:   pulumi.String("BUILD"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_codebuild_webhook" "example" {
///   filter_groups {
///     filters {
///       type    = "EVENT"
///       pattern = "WORKFLOW_JOB_QUEUED"
///     }
///   }
///   project_name = exampleAwsCodebuildProject.name
///   build_type   = "BUILD"
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
/// import com.pulumi.aws.codebuild.inputs.WebhookFilterGroupFilterArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///             .filterGroups(WebhookFilterGroupArgs.builder()
///                 .filters(WebhookFilterGroupFilterArgs.builder()
///                     .type("EVENT")
///                     .pattern("WORKFLOW_JOB_QUEUED")
///                     .build())
///                 .build())
///             .projectName(exampleAwsCodebuildProject.name())
///             .buildType("BUILD")
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
///       filterGroups:
///         - filters:
///             - type: EVENT
///               pattern: WORKFLOW_JOB_QUEUED
///       projectName: ${exampleAwsCodebuildProject.name}
///       buildType: BUILD
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
  /// A regular expression used to determine which branches get built. Default is all branches are built. We recommend using `filterGroup` over `branchFilter`.
  late final pulumi.Output<String?> branchFilter;
  /// The type of build this webhook will trigger. Valid values for this parameter are: `BUILD`, `BUILD_BATCH`.
  late final pulumi.Output<String?> buildType;
  /// Information about the webhook's trigger. See filterGroup for details.
  late final pulumi.Output<List<WebhookFilterGroup>?> filterGroups;
  /// If true, CodeBuild doesn't create a webhook in GitHub and instead returns `payloadUrl` and `secret` values for the webhook. The `payloadUrl` and `secret` values in the output can be used to manually create a webhook within GitHub.
  late final pulumi.Output<bool?> manualCreation;
  /// The CodeBuild endpoint where webhook events are sent.
  late final pulumi.Output<String> payloadUrl;
  /// The name of the build project.
  late final pulumi.Output<String> projectName;
  /// Defines comment-based approval requirements for triggering builds on pull requests. See pullRequestBuildPolicy for details.
  late final pulumi.Output<WebhookPullRequestBuildPolicy> pullRequestBuildPolicy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Scope configuration for global or organization webhooks. See scopeConfiguration for details.
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
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
          additionalSecretOutputs: const ['secret'],
        ) {
    branchFilter = registerOutput<String?>('branchFilter');
    buildType = registerOutput<String?>('buildType');
    filterGroups = registerOutput<List<WebhookFilterGroup>?>('filterGroups', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WebhookFilterGroup>(guardedValue, (value) => WebhookFilterGroup.fromMap((value as Map).cast<String, dynamic>())); });
    manualCreation = registerOutput<bool?>('manualCreation');
    payloadUrl = registerOutput<String>('payloadUrl');
    projectName = registerOutput<String>('projectName');
    pullRequestBuildPolicy = registerOutput<WebhookPullRequestBuildPolicy>('pullRequestBuildPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WebhookPullRequestBuildPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    scopeConfiguration = registerOutput<WebhookScopeConfiguration?>('scopeConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WebhookScopeConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    secret = registerOutput<String>('secret', isSecret: true);
    url = registerOutput<String>('url');
  }

  /// Gets an existing [Webhook] resource's state with the given [name] and [id].
  static Webhook get(
    String name,
    pulumi.Input<String> id, {
    WebhookState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Webhook._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
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
    filterGroups = registerOutput<List<WebhookFilterGroup>?>('filterGroups', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WebhookFilterGroup>(guardedValue, (value) => WebhookFilterGroup.fromMap((value as Map).cast<String, dynamic>())); });
    manualCreation = registerOutput<bool?>('manualCreation');
    payloadUrl = registerOutput<String>('payloadUrl');
    projectName = registerOutput<String>('projectName');
    pullRequestBuildPolicy = registerOutput<WebhookPullRequestBuildPolicy>('pullRequestBuildPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WebhookPullRequestBuildPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    scopeConfiguration = registerOutput<WebhookScopeConfiguration?>('scopeConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WebhookScopeConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    secret = registerOutput<String>('secret', isSecret: true);
    url = registerOutput<String>('url');
  }

  /// Creates a typed reference to an existing [Webhook] resource.
  Webhook.reference(String urn)
    : super(
        'aws:codebuild/webhook:Webhook',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['secret'],
        isResourceReference: true,
      ) {
    branchFilter = registerOutput<String?>('branchFilter');
    buildType = registerOutput<String?>('buildType');
    filterGroups = registerOutput<List<WebhookFilterGroup>?>('filterGroups', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WebhookFilterGroup>(guardedValue, (value) => WebhookFilterGroup.fromMap((value as Map).cast<String, dynamic>())); });
    manualCreation = registerOutput<bool?>('manualCreation');
    payloadUrl = registerOutput<String>('payloadUrl');
    projectName = registerOutput<String>('projectName');
    pullRequestBuildPolicy = registerOutput<WebhookPullRequestBuildPolicy>('pullRequestBuildPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WebhookPullRequestBuildPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    scopeConfiguration = registerOutput<WebhookScopeConfiguration?>('scopeConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WebhookScopeConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    secret = registerOutput<String>('secret', isSecret: true);
    url = registerOutput<String>('url');
  }
}
