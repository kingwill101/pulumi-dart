import 'package:pulumi/pulumi.dart';
import '../repository_release_config_code_compilation_config/repository_release_config_code_compilation_config.dart';
import '../repository_release_config_recent_scheduled_release_record/repository_release_config_recent_scheduled_release_record.dart';
import 'repository_release_config_args.dart';

/// A resource represents a Dataform release configuration
///
/// To get more information about RepositoryReleaseConfig, see:
///
/// * [API documentation](https://cloud.google.com/dataform/reference/rest/v1beta1/projects.locations.repositories.releaseConfigs)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/dataform/docs/release-configurations)
///
/// ## Example Usage
///
/// ### Dataform Repository Release Config
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const gitRepository = new gcp.sourcerepo.Repository("git_repository", {name: "my/repository"});
/// const secret = new gcp.secretmanager.Secret("secret", {
/// secretId: "my_secret",
/// replication: {
/// auto: {},
/// },
/// });
/// const secretVersion = new gcp.secretmanager.SecretVersion("secret_version", {
/// secret: secret.id,
/// secretData: "secret-data",
/// });
/// const repository = new gcp.dataform.Repository("repository", {
/// name: "dataform_repository",
/// region: "us-central1",
/// gitRemoteSettings: {
/// url: gitRepository.url,
/// defaultBranch: "main",
/// authenticationTokenSecretVersion: secretVersion.id,
/// },
/// workspaceCompilationOverrides: {
/// defaultDatabase: "database",
/// schemaSuffix: "_suffix",
/// tablePrefix: "prefix_",
/// },
/// });
/// const release = new gcp.dataform.RepositoryReleaseConfig("release", {
/// project: repository.project,
/// region: repository.region,
/// repository: repository.name,
/// name: "my_release",
/// gitCommitish: "main",
/// cronSchedule: "0 7 * * *",
/// timeZone: "America/New_York",
/// codeCompilationConfig: {
/// defaultDatabase: "gcp-example-project",
/// defaultSchema: "example-dataset",
/// defaultLocation: "us-central1",
/// assertionSchema: "example-assertion-dataset",
/// databaseSuffix: "",
/// schemaSuffix: "",
/// tablePrefix: "",
/// vars: {
/// var1: "value",
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// git_repository = gcp.sourcerepo.Repository("git_repository", name="my/repository")
/// secret = gcp.secretmanager.Secret("secret",
/// secret_id="my_secret",
/// replication={
/// "auto": {},
/// })
/// secret_version = gcp.secretmanager.SecretVersion("secret_version",
/// secret=secret.id,
/// secret_data="secret-data")
/// repository = gcp.dataform.Repository("repository",
/// name="dataform_repository",
/// region="us-central1",
/// git_remote_settings={
/// "url": git_repository.url,
/// "default_branch": "main",
/// "authentication_token_secret_version": secret_version.id,
/// },
/// workspace_compilation_overrides={
/// "default_database": "database",
/// "schema_suffix": "_suffix",
/// "table_prefix": "prefix_",
/// })
/// release = gcp.dataform.RepositoryReleaseConfig("release",
/// project=repository.project,
/// region=repository.region,
/// repository=repository.name,
/// name="my_release",
/// git_commitish="main",
/// cron_schedule="0 7 * * *",
/// time_zone="America/New_York",
/// code_compilation_config={
/// "default_database": "gcp-example-project",
/// "default_schema": "example-dataset",
/// "default_location": "us-central1",
/// "assertion_schema": "example-assertion-dataset",
/// "database_suffix": "",
/// "schema_suffix": "",
/// "table_prefix": "",
/// "vars": {
/// "var1": "value",
/// },
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var gitRepository = new Gcp.SourceRepo.Repository("git_repository", new()
/// {
/// Name = "my/repository",
/// });
///
/// var secret = new Gcp.SecretManager.Secret("secret", new()
/// {
/// SecretId = "my_secret",
/// Replication = new Gcp.SecretManager.Inputs.SecretReplicationArgs
/// {
/// Auto = null,
/// },
/// });
///
/// var secretVersion = new Gcp.SecretManager.SecretVersion("secret_version", new()
/// {
/// Secret = secret.Id,
/// SecretData = "secret-data",
/// });
///
/// var repository = new Gcp.Dataform.Repository("repository", new()
/// {
/// Name = "dataform_repository",
/// Region = "us-central1",
/// GitRemoteSettings = new Gcp.Dataform.Inputs.RepositoryGitRemoteSettingsArgs
/// {
/// Url = gitRepository.Url,
/// DefaultBranch = "main",
/// AuthenticationTokenSecretVersion = secretVersion.Id,
/// },
/// WorkspaceCompilationOverrides = new Gcp.Dataform.Inputs.RepositoryWorkspaceCompilationOverridesArgs
/// {
/// DefaultDatabase = "database",
/// SchemaSuffix = "_suffix",
/// TablePrefix = "prefix_",
/// },
/// });
///
/// var release = new Gcp.Dataform.RepositoryReleaseConfig("release", new()
/// {
/// Project = repository.Project,
/// Region = repository.Region,
/// Repository = repository.Name,
/// Name = "my_release",
/// GitCommitish = "main",
/// CronSchedule = "0 7 * * *",
/// TimeZone = "America/New_York",
/// CodeCompilationConfig = new Gcp.Dataform.Inputs.RepositoryReleaseConfigCodeCompilationConfigArgs
/// {
/// DefaultDatabase = "gcp-example-project",
/// DefaultSchema = "example-dataset",
/// DefaultLocation = "us-central1",
/// AssertionSchema = "example-assertion-dataset",
/// DatabaseSuffix = "",
/// SchemaSuffix = "",
/// TablePrefix = "",
/// Vars =
/// {
/// { "var1", "value" },
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataform"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/secretmanager"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/sourcerepo"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// gitRepository, err := sourcerepo.NewRepository(ctx, "git_repository", &sourcerepo.RepositoryArgs{
/// Name: pulumi.String("my/repository"),
/// })
/// if err != nil {
/// return err
/// }
/// secret, err := secretmanager.NewSecret(ctx, "secret", &secretmanager.SecretArgs{
/// SecretId: pulumi.String("my_secret"),
/// Replication: &secretmanager.SecretReplicationArgs{
/// Auto: &secretmanager.SecretReplicationAutoArgs{},
/// },
/// })
/// if err != nil {
/// return err
/// }
/// secretVersion, err := secretmanager.NewSecretVersion(ctx, "secret_version", &secretmanager.SecretVersionArgs{
/// Secret:     secret.ID(),
/// SecretData: pulumi.String("secret-data"),
/// })
/// if err != nil {
/// return err
/// }
/// repository, err := dataform.NewRepository(ctx, "repository", &dataform.RepositoryArgs{
/// Name:   pulumi.String("dataform_repository"),
/// Region: pulumi.String("us-central1"),
/// GitRemoteSettings: &dataform.RepositoryGitRemoteSettingsArgs{
/// Url:                              gitRepository.Url,
/// DefaultBranch:                    pulumi.String("main"),
/// AuthenticationTokenSecretVersion: secretVersion.ID(),
/// },
/// WorkspaceCompilationOverrides: &dataform.RepositoryWorkspaceCompilationOverridesArgs{
/// DefaultDatabase: pulumi.String("database"),
/// SchemaSuffix:    pulumi.String("_suffix"),
/// TablePrefix:     pulumi.String("prefix_"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = dataform.NewRepositoryReleaseConfig(ctx, "release", &dataform.RepositoryReleaseConfigArgs{
/// Project:      repository.Project,
/// Region:       repository.Region,
/// Repository:   repository.Name,
/// Name:         pulumi.String("my_release"),
/// GitCommitish: pulumi.String("main"),
/// CronSchedule: pulumi.String("0 7 * * *"),
/// TimeZone:     pulumi.String("America/New_York"),
/// CodeCompilationConfig: &dataform.RepositoryReleaseConfigCodeCompilationConfigArgs{
/// DefaultDatabase: pulumi.String("gcp-example-project"),
/// DefaultSchema:   pulumi.String("example-dataset"),
/// DefaultLocation: pulumi.String("us-central1"),
/// AssertionSchema: pulumi.String("example-assertion-dataset"),
/// DatabaseSuffix:  pulumi.String(""),
/// SchemaSuffix:    pulumi.String(""),
/// TablePrefix:     pulumi.String(""),
/// Vars: pulumi.StringMap{
/// "var1": pulumi.String("value"),
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var gitRepository = new com.pulumi.gcp.sourcerepo.Repository("gitRepository", com.pulumi.gcp.sourcerepo.RepositoryArgs.builder()
/// .name("my/repository")
/// .build());
///
/// var secret = new Secret("secret", SecretArgs.builder()
/// .secretId("my_secret")
/// .replication(SecretReplicationArgs.builder()
/// .auto(SecretReplicationAutoArgs.builder()
/// .build())
/// .build())
/// .build());
///
/// var secretVersion = new SecretVersion("secretVersion", SecretVersionArgs.builder()
/// .secret(secret.id())
/// .secretData("secret-data")
/// .build());
///
/// var repository = new com.pulumi.gcp.dataform.Repository("repository", com.pulumi.gcp.dataform.RepositoryArgs.builder()
/// .name("dataform_repository")
/// .region("us-central1")
/// .gitRemoteSettings(RepositoryGitRemoteSettingsArgs.builder()
/// .url(gitRepository.url())
/// .defaultBranch("main")
/// .authenticationTokenSecretVersion(secretVersion.id())
/// .build())
/// .workspaceCompilationOverrides(RepositoryWorkspaceCompilationOverridesArgs.builder()
/// .defaultDatabase("database")
/// .schemaSuffix("_suffix")
/// .tablePrefix("prefix_")
/// .build())
/// .build());
///
/// var release = new RepositoryReleaseConfig("release", RepositoryReleaseConfigArgs.builder()
/// .project(repository.project())
/// .region(repository.region())
/// .repository(repository.name())
/// .name("my_release")
/// .gitCommitish("main")
/// .cronSchedule("0 7 * * *")
/// .timeZone("America/New_York")
/// .codeCompilationConfig(RepositoryReleaseConfigCodeCompilationConfigArgs.builder()
/// .defaultDatabase("gcp-example-project")
/// .defaultSchema("example-dataset")
/// .defaultLocation("us-central1")
/// .assertionSchema("example-assertion-dataset")
/// .databaseSuffix("")
/// .schemaSuffix("")
/// .tablePrefix("")
/// .vars(Map.of("var1", "value"))
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// gitRepository:
/// type: gcp:sourcerepo:Repository
/// name: git_repository
/// properties:
/// name: my/repository
/// secret:
/// type: gcp:secretmanager:Secret
/// properties:
/// secretId: my_secret
/// replication:
/// auto: {}
/// secretVersion:
/// type: gcp:secretmanager:SecretVersion
/// name: secret_version
/// properties:
/// secret: ${secret.id}
/// secretData: secret-data
/// repository:
/// type: gcp:dataform:Repository
/// properties:
/// name: dataform_repository
/// region: us-central1
/// gitRemoteSettings:
/// url: ${gitRepository.url}
/// defaultBranch: main
/// authenticationTokenSecretVersion: ${secretVersion.id}
/// workspaceCompilationOverrides:
/// defaultDatabase: database
/// schemaSuffix: _suffix
/// tablePrefix: prefix_
/// release:
/// type: gcp:dataform:RepositoryReleaseConfig
/// properties:
/// project: ${repository.project}
/// region: ${repository.region}
/// repository: ${repository.name}
/// name: my_release
/// gitCommitish: main
/// cronSchedule: 0 7 * * *
/// timeZone: America/New_York
/// codeCompilationConfig:
/// defaultDatabase: gcp-example-project
/// defaultSchema: example-dataset
/// defaultLocation: us-central1
/// assertionSchema: example-assertion-dataset
/// databaseSuffix: ""
/// schemaSuffix: ""
/// tablePrefix: ""
/// vars:
/// var1: value
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// RepositoryReleaseConfig can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{region}}/repositories/{{repository}}/releaseConfigs/{{name}}`
///
/// * `{{project}}/{{region}}/{{repository}}/{{name}}`
///
/// * `{{region}}/{{repository}}/{{name}}`
///
/// * `{{repository}}/{{name}}`
///
/// When using the `pulumi import` command, RepositoryReleaseConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:dataform/repositoryReleaseConfig:RepositoryReleaseConfig default projects/{{project}}/locations/{{region}}/repositories/{{repository}}/releaseConfigs/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataform/repositoryReleaseConfig:RepositoryReleaseConfig default {{project}}/{{region}}/{{repository}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataform/repositoryReleaseConfig:RepositoryReleaseConfig default {{region}}/{{repository}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataform/repositoryReleaseConfig:RepositoryReleaseConfig default {{repository}}/{{name}}
/// ```
class RepositoryReleaseConfig extends CustomResource {
  /// Optional. If set, fields of codeCompilationConfig override the default compilation settings that are specified in dataform.json.
  /// Structure is documented below.
  late final Output<RepositoryReleaseConfigCodeCompilationConfig?>
      codeCompilationConfig;

  /// Optional. Optional schedule (in cron format) for automatic creation of compilation results.
  late final Output<String?> cronSchedule;

  /// Git commit/tag/branch name at which the repository should be compiled. Must exist in the remote repository.
  late final Output<String> gitCommitish;

  /// The release's name.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// Records of the 10 most recent scheduled release attempts, ordered in in descending order of releaseTime. Updated whenever automatic creation of a compilation result is triggered by cronSchedule.
  /// Structure is documented below.
  late final Output<List<RepositoryReleaseConfigRecentScheduledReleaseRecord>>
      recentScheduledReleaseRecords;

  /// A reference to the region
  late final Output<String?> region;

  /// A reference to the Dataform repository
  late final Output<String?> repository;

  /// Optional. Specifies the time zone to be used when interpreting cronSchedule. Must be a time zone name from the time zone database (https://en.wikipedia.org/wiki/List_of_tz_database_time_zones). If left unspecified, the default is UTC.
  late final Output<String?> timeZone;

  RepositoryReleaseConfig(
    String name, {
    RepositoryReleaseConfigArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:dataform/repositoryReleaseConfig:RepositoryReleaseConfig',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.codeCompilationConfig =
        Output.createUnknown<RepositoryReleaseConfigCodeCompilationConfig?>();
    this.cronSchedule = Output.createUnknown<String?>();
    this.gitCommitish = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.recentScheduledReleaseRecords = Output.createUnknown<
        List<RepositoryReleaseConfigRecentScheduledReleaseRecord>>();
    this.region = Output.createUnknown<String?>();
    this.repository = Output.createUnknown<String?>();
    this.timeZone = Output.createUnknown<String?>();
  }
}
