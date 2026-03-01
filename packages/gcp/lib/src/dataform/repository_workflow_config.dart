import 'package:pulumi/pulumi.dart' as pulumi;
import 'repository_workflow_config_args.dart';
import 'repository_workflow_config_invocation_config.dart';
import 'repository_workflow_config_recent_scheduled_execution_record.dart';

/// A resource represents a Dataform workflow configuration
///
/// To get more information about RepositoryWorkflowConfig, see:
///
/// * [API documentation](https://cloud.google.com/dataform/reference/rest/v1beta1/projects.locations.repositories.workflowConfigs)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/dataform/docs/workflow-configurations)
///
/// ## Example Usage
///
/// ### Dataform Repository Workflow Config
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const gitRepository = new gcp.sourcerepo.Repository("git_repository", {name: "my/repository"});
/// const secret = new gcp.secretmanager.Secret("secret", {
///     secretId: "my_secret",
///     replication: {
///         auto: {},
///     },
/// });
/// const secretVersion = new gcp.secretmanager.SecretVersion("secret_version", {
///     secret: secret.id,
///     secretData: "secret-data",
/// });
/// const repository = new gcp.dataform.Repository("repository", {
///     name: "dataform_repository",
///     region: "us-central1",
///     gitRemoteSettings: {
///         url: gitRepository.url,
///         defaultBranch: "main",
///         authenticationTokenSecretVersion: secretVersion.id,
///     },
///     workspaceCompilationOverrides: {
///         defaultDatabase: "database",
///         schemaSuffix: "_suffix",
///         tablePrefix: "prefix_",
///     },
/// });
/// const releaseConfig = new gcp.dataform.RepositoryReleaseConfig("release_config", {
///     project: repository.project,
///     region: repository.region,
///     repository: repository.name,
///     name: "my_release",
///     gitCommitish: "main",
///     cronSchedule: "0 7 * * *",
///     timeZone: "America/New_York",
///     codeCompilationConfig: {
///         defaultDatabase: "gcp-example-project",
///         defaultSchema: "example-dataset",
///         defaultLocation: "us-central1",
///         assertionSchema: "example-assertion-dataset",
///         databaseSuffix: "",
///         schemaSuffix: "",
///         tablePrefix: "",
///         vars: {
///             var1: "value",
///         },
///     },
/// });
/// const dataformSa = new gcp.serviceaccount.Account("dataform_sa", {
///     accountId: "dataform-sa",
///     displayName: "Dataform Service Account",
/// });
/// const workflow = new gcp.dataform.RepositoryWorkflowConfig("workflow", {
///     project: repository.project,
///     region: repository.region,
///     repository: repository.name,
///     name: "my_workflow",
///     releaseConfig: releaseConfig.id,
///     invocationConfig: {
///         includedTargets: [
///             {
///                 database: "gcp-example-project",
///                 schema: "example-dataset",
///                 name: "target_1",
///             },
///             {
///                 database: "gcp-example-project",
///                 schema: "example-dataset",
///                 name: "target_2",
///             },
///         ],
///         includedTags: ["tag_1"],
///         transitiveDependenciesIncluded: true,
///         transitiveDependentsIncluded: true,
///         fullyRefreshIncrementalTablesEnabled: false,
///         serviceAccount: dataformSa.email,
///     },
///     cronSchedule: "0 7 * * *",
///     timeZone: "America/New_York",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// git_repository = gcp.sourcerepo.Repository("git_repository", name="my/repository")
/// secret = gcp.secretmanager.Secret("secret",
///     secret_id="my_secret",
///     replication={
///         "auto": {},
///     })
/// secret_version = gcp.secretmanager.SecretVersion("secret_version",
///     secret=secret.id,
///     secret_data="secret-data")
/// repository = gcp.dataform.Repository("repository",
///     name="dataform_repository",
///     region="us-central1",
///     git_remote_settings={
///         "url": git_repository.url,
///         "default_branch": "main",
///         "authentication_token_secret_version": secret_version.id,
///     },
///     workspace_compilation_overrides={
///         "default_database": "database",
///         "schema_suffix": "_suffix",
///         "table_prefix": "prefix_",
///     })
/// release_config = gcp.dataform.RepositoryReleaseConfig("release_config",
///     project=repository.project,
///     region=repository.region,
///     repository=repository.name,
///     name="my_release",
///     git_commitish="main",
///     cron_schedule="0 7 * * *",
///     time_zone="America/New_York",
///     code_compilation_config={
///         "default_database": "gcp-example-project",
///         "default_schema": "example-dataset",
///         "default_location": "us-central1",
///         "assertion_schema": "example-assertion-dataset",
///         "database_suffix": "",
///         "schema_suffix": "",
///         "table_prefix": "",
///         "vars": {
///             "var1": "value",
///         },
///     })
/// dataform_sa = gcp.serviceaccount.Account("dataform_sa",
///     account_id="dataform-sa",
///     display_name="Dataform Service Account")
/// workflow = gcp.dataform.RepositoryWorkflowConfig("workflow",
///     project=repository.project,
///     region=repository.region,
///     repository=repository.name,
///     name="my_workflow",
///     release_config=release_config.id,
///     invocation_config={
///         "included_targets": [
///             {
///                 "database": "gcp-example-project",
///                 "schema": "example-dataset",
///                 "name": "target_1",
///             },
///             {
///                 "database": "gcp-example-project",
///                 "schema": "example-dataset",
///                 "name": "target_2",
///             },
///         ],
///         "included_tags": ["tag_1"],
///         "transitive_dependencies_included": True,
///         "transitive_dependents_included": True,
///         "fully_refresh_incremental_tables_enabled": False,
///         "service_account": dataform_sa.email,
///     },
///     cron_schedule="0 7 * * *",
///     time_zone="America/New_York")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var gitRepository = new Gcp.SourceRepo.Repository("git_repository", new()
///     {
///         Name = "my/repository",
///     });
///
///     var secret = new Gcp.SecretManager.Secret("secret", new()
///     {
///         SecretId = "my_secret",
///         Replication = new Gcp.SecretManager.Inputs.SecretReplicationArgs
///         {
///             Auto = null,
///         },
///     });
///
///     var secretVersion = new Gcp.SecretManager.SecretVersion("secret_version", new()
///     {
///         Secret = secret.Id,
///         SecretData = "secret-data",
///     });
///
///     var repository = new Gcp.Dataform.Repository("repository", new()
///     {
///         Name = "dataform_repository",
///         Region = "us-central1",
///         GitRemoteSettings = new Gcp.Dataform.Inputs.RepositoryGitRemoteSettingsArgs
///         {
///             Url = gitRepository.Url,
///             DefaultBranch = "main",
///             AuthenticationTokenSecretVersion = secretVersion.Id,
///         },
///         WorkspaceCompilationOverrides = new Gcp.Dataform.Inputs.RepositoryWorkspaceCompilationOverridesArgs
///         {
///             DefaultDatabase = "database",
///             SchemaSuffix = "_suffix",
///             TablePrefix = "prefix_",
///         },
///     });
///
///     var releaseConfig = new Gcp.Dataform.RepositoryReleaseConfig("release_config", new()
///     {
///         Project = repository.Project,
///         Region = repository.Region,
///         Repository = repository.Name,
///         Name = "my_release",
///         GitCommitish = "main",
///         CronSchedule = "0 7 * * *",
///         TimeZone = "America/New_York",
///         CodeCompilationConfig = new Gcp.Dataform.Inputs.RepositoryReleaseConfigCodeCompilationConfigArgs
///         {
///             DefaultDatabase = "gcp-example-project",
///             DefaultSchema = "example-dataset",
///             DefaultLocation = "us-central1",
///             AssertionSchema = "example-assertion-dataset",
///             DatabaseSuffix = "",
///             SchemaSuffix = "",
///             TablePrefix = "",
///             Vars =
///             {
///                 { "var1", "value" },
///             },
///         },
///     });
///
///     var dataformSa = new Gcp.ServiceAccount.Account("dataform_sa", new()
///     {
///         AccountId = "dataform-sa",
///         DisplayName = "Dataform Service Account",
///     });
///
///     var workflow = new Gcp.Dataform.RepositoryWorkflowConfig("workflow", new()
///     {
///         Project = repository.Project,
///         Region = repository.Region,
///         Repository = repository.Name,
///         Name = "my_workflow",
///         ReleaseConfig = releaseConfig.Id,
///         InvocationConfig = new Gcp.Dataform.Inputs.RepositoryWorkflowConfigInvocationConfigArgs
///         {
///             IncludedTargets = new[]
///             {
///                 new Gcp.Dataform.Inputs.RepositoryWorkflowConfigInvocationConfigIncludedTargetArgs
///                 {
///                     Database = "gcp-example-project",
///                     Schema = "example-dataset",
///                     Name = "target_1",
///                 },
///                 new Gcp.Dataform.Inputs.RepositoryWorkflowConfigInvocationConfigIncludedTargetArgs
///                 {
///                     Database = "gcp-example-project",
///                     Schema = "example-dataset",
///                     Name = "target_2",
///                 },
///             },
///             IncludedTags = new[]
///             {
///                 "tag_1",
///             },
///             TransitiveDependenciesIncluded = true,
///             TransitiveDependentsIncluded = true,
///             FullyRefreshIncrementalTablesEnabled = false,
///             ServiceAccount = dataformSa.Email,
///         },
///         CronSchedule = "0 7 * * *",
///         TimeZone = "America/New_York",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataform"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/secretmanager"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/sourcerepo"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		gitRepository, err := sourcerepo.NewRepository(ctx, "git_repository", &sourcerepo.RepositoryArgs{
/// 			Name: pulumi.String("my/repository"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		secret, err := secretmanager.NewSecret(ctx, "secret", &secretmanager.SecretArgs{
/// 			SecretId: pulumi.String("my_secret"),
/// 			Replication: &secretmanager.SecretReplicationArgs{
/// 				Auto: &secretmanager.SecretReplicationAutoArgs{},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		secretVersion, err := secretmanager.NewSecretVersion(ctx, "secret_version", &secretmanager.SecretVersionArgs{
/// 			Secret:     secret.ID(),
/// 			SecretData: pulumi.String("secret-data"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		repository, err := dataform.NewRepository(ctx, "repository", &dataform.RepositoryArgs{
/// 			Name:   pulumi.String("dataform_repository"),
/// 			Region: pulumi.String("us-central1"),
/// 			GitRemoteSettings: &dataform.RepositoryGitRemoteSettingsArgs{
/// 				Url:                              gitRepository.Url,
/// 				DefaultBranch:                    pulumi.String("main"),
/// 				AuthenticationTokenSecretVersion: secretVersion.ID(),
/// 			},
/// 			WorkspaceCompilationOverrides: &dataform.RepositoryWorkspaceCompilationOverridesArgs{
/// 				DefaultDatabase: pulumi.String("database"),
/// 				SchemaSuffix:    pulumi.String("_suffix"),
/// 				TablePrefix:     pulumi.String("prefix_"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		releaseConfig, err := dataform.NewRepositoryReleaseConfig(ctx, "release_config", &dataform.RepositoryReleaseConfigArgs{
/// 			Project:      repository.Project,
/// 			Region:       repository.Region,
/// 			Repository:   repository.Name,
/// 			Name:         pulumi.String("my_release"),
/// 			GitCommitish: pulumi.String("main"),
/// 			CronSchedule: pulumi.String("0 7 * * *"),
/// 			TimeZone:     pulumi.String("America/New_York"),
/// 			CodeCompilationConfig: &dataform.RepositoryReleaseConfigCodeCompilationConfigArgs{
/// 				DefaultDatabase: pulumi.String("gcp-example-project"),
/// 				DefaultSchema:   pulumi.String("example-dataset"),
/// 				DefaultLocation: pulumi.String("us-central1"),
/// 				AssertionSchema: pulumi.String("example-assertion-dataset"),
/// 				DatabaseSuffix:  pulumi.String(""),
/// 				SchemaSuffix:    pulumi.String(""),
/// 				TablePrefix:     pulumi.String(""),
/// 				Vars: pulumi.StringMap{
/// 					"var1": pulumi.String("value"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		dataformSa, err := serviceaccount.NewAccount(ctx, "dataform_sa", &serviceaccount.AccountArgs{
/// 			AccountId:   pulumi.String("dataform-sa"),
/// 			DisplayName: pulumi.String("Dataform Service Account"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dataform.NewRepositoryWorkflowConfig(ctx, "workflow", &dataform.RepositoryWorkflowConfigArgs{
/// 			Project:       repository.Project,
/// 			Region:        repository.Region,
/// 			Repository:    repository.Name,
/// 			Name:          pulumi.String("my_workflow"),
/// 			ReleaseConfig: releaseConfig.ID(),
/// 			InvocationConfig: &dataform.RepositoryWorkflowConfigInvocationConfigArgs{
/// 				IncludedTargets: dataform.RepositoryWorkflowConfigInvocationConfigIncludedTargetArray{
/// 					&dataform.RepositoryWorkflowConfigInvocationConfigIncludedTargetArgs{
/// 						Database: pulumi.String("gcp-example-project"),
/// 						Schema:   pulumi.String("example-dataset"),
/// 						Name:     pulumi.String("target_1"),
/// 					},
/// 					&dataform.RepositoryWorkflowConfigInvocationConfigIncludedTargetArgs{
/// 						Database: pulumi.String("gcp-example-project"),
/// 						Schema:   pulumi.String("example-dataset"),
/// 						Name:     pulumi.String("target_2"),
/// 					},
/// 				},
/// 				IncludedTags: pulumi.StringArray{
/// 					pulumi.String("tag_1"),
/// 				},
/// 				TransitiveDependenciesIncluded:       pulumi.Bool(true),
/// 				TransitiveDependentsIncluded:         pulumi.Bool(true),
/// 				FullyRefreshIncrementalTablesEnabled: pulumi.Bool(false),
/// 				ServiceAccount:                       dataformSa.Email,
/// 			},
/// 			CronSchedule: pulumi.String("0 7 * * *"),
/// 			TimeZone:     pulumi.String("America/New_York"),
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
/// import com.pulumi.gcp.secretmanager.Secret;
/// import com.pulumi.gcp.secretmanager.SecretArgs;
/// import com.pulumi.gcp.secretmanager.inputs.SecretReplicationArgs;
/// import com.pulumi.gcp.secretmanager.inputs.SecretReplicationAutoArgs;
/// import com.pulumi.gcp.secretmanager.SecretVersion;
/// import com.pulumi.gcp.secretmanager.SecretVersionArgs;
/// import com.pulumi.gcp.dataform.inputs.RepositoryGitRemoteSettingsArgs;
/// import com.pulumi.gcp.dataform.inputs.RepositoryWorkspaceCompilationOverridesArgs;
/// import com.pulumi.gcp.dataform.RepositoryReleaseConfig;
/// import com.pulumi.gcp.dataform.RepositoryReleaseConfigArgs;
/// import com.pulumi.gcp.dataform.inputs.RepositoryReleaseConfigCodeCompilationConfigArgs;
/// import com.pulumi.gcp.serviceaccount.Account;
/// import com.pulumi.gcp.serviceaccount.AccountArgs;
/// import com.pulumi.gcp.dataform.RepositoryWorkflowConfig;
/// import com.pulumi.gcp.dataform.RepositoryWorkflowConfigArgs;
/// import com.pulumi.gcp.dataform.inputs.RepositoryWorkflowConfigInvocationConfigArgs;
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
///         var gitRepository = new com.pulumi.gcp.sourcerepo.Repository("gitRepository", com.pulumi.gcp.sourcerepo.RepositoryArgs.builder()
///             .name("my/repository")
///             .build());
///
///         var secret = new Secret("secret", SecretArgs.builder()
///             .secretId("my_secret")
///             .replication(SecretReplicationArgs.builder()
///                 .auto(SecretReplicationAutoArgs.builder()
///                     .build())
///                 .build())
///             .build());
///
///         var secretVersion = new SecretVersion("secretVersion", SecretVersionArgs.builder()
///             .secret(secret.id())
///             .secretData("secret-data")
///             .build());
///
///         var repository = new com.pulumi.gcp.dataform.Repository("repository", com.pulumi.gcp.dataform.RepositoryArgs.builder()
///             .name("dataform_repository")
///             .region("us-central1")
///             .gitRemoteSettings(RepositoryGitRemoteSettingsArgs.builder()
///                 .url(gitRepository.url())
///                 .defaultBranch("main")
///                 .authenticationTokenSecretVersion(secretVersion.id())
///                 .build())
///             .workspaceCompilationOverrides(RepositoryWorkspaceCompilationOverridesArgs.builder()
///                 .defaultDatabase("database")
///                 .schemaSuffix("_suffix")
///                 .tablePrefix("prefix_")
///                 .build())
///             .build());
///
///         var releaseConfig = new RepositoryReleaseConfig("releaseConfig", RepositoryReleaseConfigArgs.builder()
///             .project(repository.project())
///             .region(repository.region())
///             .repository(repository.name())
///             .name("my_release")
///             .gitCommitish("main")
///             .cronSchedule("0 7 * * *")
///             .timeZone("America/New_York")
///             .codeCompilationConfig(RepositoryReleaseConfigCodeCompilationConfigArgs.builder()
///                 .defaultDatabase("gcp-example-project")
///                 .defaultSchema("example-dataset")
///                 .defaultLocation("us-central1")
///                 .assertionSchema("example-assertion-dataset")
///                 .databaseSuffix("")
///                 .schemaSuffix("")
///                 .tablePrefix("")
///                 .vars(Map.of("var1", "value"))
///                 .build())
///             .build());
///
///         var dataformSa = new Account("dataformSa", AccountArgs.builder()
///             .accountId("dataform-sa")
///             .displayName("Dataform Service Account")
///             .build());
///
///         var workflow = new RepositoryWorkflowConfig("workflow", RepositoryWorkflowConfigArgs.builder()
///             .project(repository.project())
///             .region(repository.region())
///             .repository(repository.name())
///             .name("my_workflow")
///             .releaseConfig(releaseConfig.id())
///             .invocationConfig(RepositoryWorkflowConfigInvocationConfigArgs.builder()
///                 .includedTargets(
///                     RepositoryWorkflowConfigInvocationConfigIncludedTargetArgs.builder()
///                         .database("gcp-example-project")
///                         .schema("example-dataset")
///                         .name("target_1")
///                         .build(),
///                     RepositoryWorkflowConfigInvocationConfigIncludedTargetArgs.builder()
///                         .database("gcp-example-project")
///                         .schema("example-dataset")
///                         .name("target_2")
///                         .build())
///                 .includedTags("tag_1")
///                 .transitiveDependenciesIncluded(true)
///                 .transitiveDependentsIncluded(true)
///                 .fullyRefreshIncrementalTablesEnabled(false)
///                 .serviceAccount(dataformSa.email())
///                 .build())
///             .cronSchedule("0 7 * * *")
///             .timeZone("America/New_York")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   gitRepository:
///     type: gcp:sourcerepo:Repository
///     name: git_repository
///     properties:
///       name: my/repository
///   secret:
///     type: gcp:secretmanager:Secret
///     properties:
///       secretId: my_secret
///       replication:
///         auto: {}
///   secretVersion:
///     type: gcp:secretmanager:SecretVersion
///     name: secret_version
///     properties:
///       secret: ${secret.id}
///       secretData: secret-data
///   repository:
///     type: gcp:dataform:Repository
///     properties:
///       name: dataform_repository
///       region: us-central1
///       gitRemoteSettings:
///         url: ${gitRepository.url}
///         defaultBranch: main
///         authenticationTokenSecretVersion: ${secretVersion.id}
///       workspaceCompilationOverrides:
///         defaultDatabase: database
///         schemaSuffix: _suffix
///         tablePrefix: prefix_
///   releaseConfig:
///     type: gcp:dataform:RepositoryReleaseConfig
///     name: release_config
///     properties:
///       project: ${repository.project}
///       region: ${repository.region}
///       repository: ${repository.name}
///       name: my_release
///       gitCommitish: main
///       cronSchedule: 0 7 * * *
///       timeZone: America/New_York
///       codeCompilationConfig:
///         defaultDatabase: gcp-example-project
///         defaultSchema: example-dataset
///         defaultLocation: us-central1
///         assertionSchema: example-assertion-dataset
///         databaseSuffix: ""
///         schemaSuffix: ""
///         tablePrefix: ""
///         vars:
///           var1: value
///   dataformSa:
///     type: gcp:serviceaccount:Account
///     name: dataform_sa
///     properties:
///       accountId: dataform-sa
///       displayName: Dataform Service Account
///   workflow:
///     type: gcp:dataform:RepositoryWorkflowConfig
///     properties:
///       project: ${repository.project}
///       region: ${repository.region}
///       repository: ${repository.name}
///       name: my_workflow
///       releaseConfig: ${releaseConfig.id}
///       invocationConfig:
///         includedTargets:
///           - database: gcp-example-project
///             schema: example-dataset
///             name: target_1
///           - database: gcp-example-project
///             schema: example-dataset
///             name: target_2
///         includedTags:
///           - tag_1
///         transitiveDependenciesIncluded: true
///         transitiveDependentsIncluded: true
///         fullyRefreshIncrementalTablesEnabled: false
///         serviceAccount: ${dataformSa.email}
///       cronSchedule: 0 7 * * *
///       timeZone: America/New_York
/// ```
///
///
/// ## Import
///
/// RepositoryWorkflowConfig can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{region}}/repositories/{{repository}}/workflowConfigs/{{name}}`
///
/// * `{{project}}/{{region}}/{{repository}}/{{name}}`
///
/// * `{{region}}/{{repository}}/{{name}}`
///
/// * `{{repository}}/{{name}}`
///
/// When using the `pulumi import` command, RepositoryWorkflowConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:dataform/repositoryWorkflowConfig:RepositoryWorkflowConfig default projects/{{project}}/locations/{{region}}/repositories/{{repository}}/workflowConfigs/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataform/repositoryWorkflowConfig:RepositoryWorkflowConfig default {{project}}/{{region}}/{{repository}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataform/repositoryWorkflowConfig:RepositoryWorkflowConfig default {{region}}/{{repository}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataform/repositoryWorkflowConfig:RepositoryWorkflowConfig default {{repository}}/{{name}}
/// ```
class RepositoryWorkflowConfig extends pulumi.CustomResource {
  /// Optional. Optional schedule (in cron format) for automatic creation of compilation results.
  late final pulumi.Output<String?> cronSchedule;
  /// Optional. If left unset, a default InvocationConfig will be used.
  /// Structure is documented below.
  late final pulumi.Output<RepositoryWorkflowConfigInvocationConfig?> invocationConfig;
  /// The workflow's name.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Records of the 10 most recent scheduled execution attempts, ordered in in descending order of executionTime. Updated whenever automatic creation of a workflow invocation is triggered by cronSchedule.
  /// Structure is documented below.
  late final pulumi.Output<List<RepositoryWorkflowConfigRecentScheduledExecutionRecord>> recentScheduledExecutionRecords;
  /// A reference to the region
  late final pulumi.Output<String?> region;
  /// The name of the release config whose releaseCompilationResult should be executed. Must be in the format projects/*/locations/*/repositories/*/releaseConfigs/*.
  late final pulumi.Output<String> releaseConfig;
  /// A reference to the Dataform repository
  late final pulumi.Output<String?> repository;
  /// Optional. Specifies the time zone to be used when interpreting cronSchedule. Must be a time zone name from the time zone database (https://en.wikipedia.org/wiki/List_of_tz_database_time_zones). If left unspecified, the default is UTC.
  late final pulumi.Output<String?> timeZone;

  /// Creates a new [RepositoryWorkflowConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RepositoryWorkflowConfig]. {@macro pulumi_dataform_repository_workflow_config_repository_workflow_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RepositoryWorkflowConfig(
    String name, {
    RepositoryWorkflowConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataform/repositoryWorkflowConfig:RepositoryWorkflowConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.cronSchedule = registerOutput<String?>('cronSchedule');
    this.invocationConfig = registerOutput<RepositoryWorkflowConfigInvocationConfig?>('invocationConfig');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.recentScheduledExecutionRecords = registerOutput<List<RepositoryWorkflowConfigRecentScheduledExecutionRecord>>('recentScheduledExecutionRecords');
    this.region = registerOutput<String?>('region');
    this.releaseConfig = registerOutput<String>('releaseConfig');
    this.repository = registerOutput<String?>('repository');
    this.timeZone = registerOutput<String?>('timeZone');
  }
}
