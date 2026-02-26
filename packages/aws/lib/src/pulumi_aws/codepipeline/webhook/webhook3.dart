import 'package:pulumi/pulumi.dart';
import '../webhook_authentication_configuration/webhook_authentication_configuration.dart';
import '../webhook_filter/webhook_filter.dart';
import 'webhook_args3.dart';

/// Provides a CodePipeline Webhook.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as github from "@pulumi/github";
///
/// const bar = new aws.codepipeline.Pipeline("bar", {
/// name: "tf-test-pipeline",
/// roleArn: barAwsIamRole.arn,
/// artifactStores: [{
/// location: barAwsS3Bucket.bucket,
/// type: "S3",
/// encryptionKey: {
/// id: s3kmskey.arn,
/// type: "KMS",
/// },
/// }],
/// stages: [
/// {
/// name: "Source",
/// actions: [{
/// name: "Source",
/// category: "Source",
/// owner: "ThirdParty",
/// provider: "GitHub",
/// version: "1",
/// outputArtifacts: ["test"],
/// configuration: {
/// Owner: "my-organization",
/// Repo: "test",
/// Branch: "master",
/// },
/// }],
/// },
/// {
/// name: "Build",
/// actions: [{
/// name: "Build",
/// category: "Build",
/// owner: "AWS",
/// provider: "CodeBuild",
/// inputArtifacts: ["test"],
/// version: "1",
/// configuration: {
/// ProjectName: "test",
/// },
/// }],
/// },
/// ],
/// });
/// const webhookSecret = "super-secret";
/// const barWebhook = new aws.codepipeline.Webhook("bar", {
/// name: "test-webhook-github-bar",
/// authentication: "GITHUB_HMAC",
/// targetAction: "Source",
/// targetPipeline: bar.name,
/// authenticationConfiguration: {
/// secretToken: webhookSecret,
/// },
/// filters: [{
/// jsonPath: "$.ref",
/// matchEquals: "refs/heads/{Branch}",
/// }],
/// });
/// // Wire the CodePipeline webhook into a GitHub repository.
/// const barRepositoryWebhook = new github.RepositoryWebhook("bar", {
/// repository: repo.name,
/// name: "web",
/// configuration: [{
/// url: barWebhook.url,
/// contentType: "json",
/// insecureSsl: true,
/// secret: webhookSecret,
/// }],
/// events: ["push"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_github as github
///
/// bar = aws.codepipeline.Pipeline("bar",
/// name="tf-test-pipeline",
/// role_arn=bar_aws_iam_role["arn"],
/// artifact_stores=[{
/// "location": bar_aws_s3_bucket["bucket"],
/// "type": "S3",
/// "encryption_key": {
/// "id": s3kmskey["arn"],
/// "type": "KMS",
/// },
/// }],
/// stages=[
/// {
/// "name": "Source",
/// "actions": [{
/// "name": "Source",
/// "category": "Source",
/// "owner": "ThirdParty",
/// "provider": "GitHub",
/// "version": "1",
/// "output_artifacts": ["test"],
/// "configuration": {
/// "Owner": "my-organization",
/// "Repo": "test",
/// "Branch": "master",
/// },
/// }],
/// },
/// {
/// "name": "Build",
/// "actions": [{
/// "name": "Build",
/// "category": "Build",
/// "owner": "AWS",
/// "provider": "CodeBuild",
/// "input_artifacts": ["test"],
/// "version": "1",
/// "configuration": {
/// "ProjectName": "test",
/// },
/// }],
/// },
/// ])
/// webhook_secret = "super-secret"
/// bar_webhook = aws.codepipeline.Webhook("bar",
/// name="test-webhook-github-bar",
/// authentication="GITHUB_HMAC",
/// target_action="Source",
/// target_pipeline=bar.name,
/// authentication_configuration={
/// "secret_token": webhook_secret,
/// },
/// filters=[{
/// "json_path": "$.ref",
/// "match_equals": "refs/heads/{Branch}",
/// }])
/// # Wire the CodePipeline webhook into a GitHub repository.
/// bar_repository_webhook = github.RepositoryWebhook("bar",
/// repository=repo["name"],
/// name="web",
/// configuration=[{
/// "url": bar_webhook.url,
/// "contentType": "json",
/// "insecureSsl": True,
/// "secret": webhook_secret,
/// }],
/// events=["push"])
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
/// var bar = new Aws.CodePipeline.Pipeline("bar", new()
/// {
/// Name = "tf-test-pipeline",
/// RoleArn = barAwsIamRole.Arn,
/// ArtifactStores = new[]
/// {
/// new Aws.CodePipeline.Inputs.PipelineArtifactStoreArgs
/// {
/// Location = barAwsS3Bucket.Bucket,
/// Type = "S3",
/// EncryptionKey = new Aws.CodePipeline.Inputs.PipelineArtifactStoreEncryptionKeyArgs
/// {
/// Id = s3kmskey.Arn,
/// Type = "KMS",
/// },
/// },
/// },
/// Stages = new[]
/// {
/// new Aws.CodePipeline.Inputs.PipelineStageArgs
/// {
/// Name = "Source",
/// Actions = new[]
/// {
/// new Aws.CodePipeline.Inputs.PipelineStageActionArgs
/// {
/// Name = "Source",
/// Category = "Source",
/// Owner = "ThirdParty",
/// Provider = "GitHub",
/// Version = "1",
/// OutputArtifacts = new[]
/// {
/// "test",
/// },
/// Configuration =
/// {
/// { "Owner", "my-organization" },
/// { "Repo", "test" },
/// { "Branch", "master" },
/// },
/// },
/// },
/// },
/// new Aws.CodePipeline.Inputs.PipelineStageArgs
/// {
/// Name = "Build",
/// Actions = new[]
/// {
/// new Aws.CodePipeline.Inputs.PipelineStageActionArgs
/// {
/// Name = "Build",
/// Category = "Build",
/// Owner = "AWS",
/// Provider = "CodeBuild",
/// InputArtifacts = new[]
/// {
/// "test",
/// },
/// Version = "1",
/// Configuration =
/// {
/// { "ProjectName", "test" },
/// },
/// },
/// },
/// },
/// },
/// });
///
/// var webhookSecret = "super-secret";
///
/// var barWebhook = new Aws.CodePipeline.Webhook("bar", new()
/// {
/// Name = "test-webhook-github-bar",
/// Authentication = "GITHUB_HMAC",
/// TargetAction = "Source",
/// TargetPipeline = bar.Name,
/// AuthenticationConfiguration = new Aws.CodePipeline.Inputs.WebhookAuthenticationConfigurationArgs
/// {
/// SecretToken = webhookSecret,
/// },
/// Filters = new[]
/// {
/// new Aws.CodePipeline.Inputs.WebhookFilterArgs
/// {
/// JsonPath = "$.ref",
/// MatchEquals = "refs/heads/{Branch}",
/// },
/// },
/// });
///
/// // Wire the CodePipeline webhook into a GitHub repository.
/// var barRepositoryWebhook = new Github.RepositoryWebhook("bar", new()
/// {
/// Repository = repo.Name,
/// Name = "web",
/// Configuration = new[]
/// {
///
/// {
/// { "url", barWebhook.Url },
/// { "contentType", "json" },
/// { "insecureSsl", true },
/// { "secret", webhookSecret },
/// },
/// },
/// Events = new[]
/// {
/// "push",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/codepipeline"
/// "github.com/pulumi/pulumi-github/sdk/v6/go/github"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// bar, err := codepipeline.NewPipeline(ctx, "bar", &codepipeline.PipelineArgs{
/// Name:    pulumi.String("tf-test-pipeline"),
/// RoleArn: pulumi.Any(barAwsIamRole.Arn),
/// ArtifactStores: codepipeline.PipelineArtifactStoreArray{
/// &codepipeline.PipelineArtifactStoreArgs{
/// Location: pulumi.Any(barAwsS3Bucket.Bucket),
/// Type:     pulumi.String("S3"),
/// EncryptionKey: &codepipeline.PipelineArtifactStoreEncryptionKeyArgs{
/// Id:   pulumi.Any(s3kmskey.Arn),
/// Type: pulumi.String("KMS"),
/// },
/// },
/// },
/// Stages: codepipeline.PipelineStageArray{
/// &codepipeline.PipelineStageArgs{
/// Name: pulumi.String("Source"),
/// Actions: codepipeline.PipelineStageActionArray{
/// &codepipeline.PipelineStageActionArgs{
/// Name:     pulumi.String("Source"),
/// Category: pulumi.String("Source"),
/// Owner:    pulumi.String("ThirdParty"),
/// Provider: pulumi.String("GitHub"),
/// Version:  pulumi.String("1"),
/// OutputArtifacts: pulumi.StringArray{
/// pulumi.String("test"),
/// },
/// Configuration: pulumi.StringMap{
/// "Owner":  pulumi.String("my-organization"),
/// "Repo":   pulumi.String("test"),
/// "Branch": pulumi.String("master"),
/// },
/// },
/// },
/// },
/// &codepipeline.PipelineStageArgs{
/// Name: pulumi.String("Build"),
/// Actions: codepipeline.PipelineStageActionArray{
/// &codepipeline.PipelineStageActionArgs{
/// Name:     pulumi.String("Build"),
/// Category: pulumi.String("Build"),
/// Owner:    pulumi.String("AWS"),
/// Provider: pulumi.String("CodeBuild"),
/// InputArtifacts: pulumi.StringArray{
/// pulumi.String("test"),
/// },
/// Version: pulumi.String("1"),
/// Configuration: pulumi.StringMap{
/// "ProjectName": pulumi.String("test"),
/// },
/// },
/// },
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// webhookSecret := "super-secret"
/// barWebhook, err := codepipeline.NewWebhook(ctx, "bar", &codepipeline.WebhookArgs{
/// Name:           pulumi.String("test-webhook-github-bar"),
/// Authentication: pulumi.String("GITHUB_HMAC"),
/// TargetAction:   pulumi.String("Source"),
/// TargetPipeline: bar.Name,
/// AuthenticationConfiguration: &codepipeline.WebhookAuthenticationConfigurationArgs{
/// SecretToken: pulumi.String(webhookSecret),
/// },
/// Filters: codepipeline.WebhookFilterArray{
/// &codepipeline.WebhookFilterArgs{
/// JsonPath:    pulumi.String("$.ref"),
/// MatchEquals: pulumi.String("refs/heads/{Branch}"),
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// // Wire the CodePipeline webhook into a GitHub repository.
/// _, err = github.NewRepositoryWebhook(ctx, "bar", &github.RepositoryWebhookArgs{
/// Repository: pulumi.Any(repo.Name),
/// Name:       "web",
/// Configuration: github.RepositoryWebhookConfigurationArgs{
/// map[string]interface{}{
/// "url":         barWebhook.Url,
/// "contentType": "json",
/// "insecureSsl": true,
/// "secret":      webhookSecret,
/// },
/// },
/// Events: pulumi.StringArray{
/// pulumi.String("push"),
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
/// import com.pulumi.aws.codepipeline.Pipeline;
/// import com.pulumi.aws.codepipeline.PipelineArgs;
/// import com.pulumi.aws.codepipeline.inputs.PipelineArtifactStoreArgs;
/// import com.pulumi.aws.codepipeline.inputs.PipelineArtifactStoreEncryptionKeyArgs;
/// import com.pulumi.aws.codepipeline.inputs.PipelineStageArgs;
/// import com.pulumi.aws.codepipeline.Webhook;
/// import com.pulumi.aws.codepipeline.WebhookArgs;
/// import com.pulumi.aws.codepipeline.inputs.WebhookAuthenticationConfigurationArgs;
/// import com.pulumi.aws.codepipeline.inputs.WebhookFilterArgs;
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var bar = new Pipeline("bar", PipelineArgs.builder()
/// .name("tf-test-pipeline")
/// .roleArn(barAwsIamRole.arn())
/// .artifactStores(PipelineArtifactStoreArgs.builder()
/// .location(barAwsS3Bucket.bucket())
/// .type("S3")
/// .encryptionKey(PipelineArtifactStoreEncryptionKeyArgs.builder()
/// .id(s3kmskey.arn())
/// .type("KMS")
/// .build())
/// .build())
/// .stages(
/// PipelineStageArgs.builder()
/// .name("Source")
/// .actions(PipelineStageActionArgs.builder()
/// .name("Source")
/// .category("Source")
/// .owner("ThirdParty")
/// .provider("GitHub")
/// .version("1")
/// .outputArtifacts("test")
/// .configuration(Map.ofEntries(
/// Map.entry("Owner", "my-organization"),
/// Map.entry("Repo", "test"),
/// Map.entry("Branch", "master")
/// ))
/// .build())
/// .build(),
/// PipelineStageArgs.builder()
/// .name("Build")
/// .actions(PipelineStageActionArgs.builder()
/// .name("Build")
/// .category("Build")
/// .owner("AWS")
/// .provider("CodeBuild")
/// .inputArtifacts("test")
/// .version("1")
/// .configuration(Map.of("ProjectName", "test"))
/// .build())
/// .build())
/// .build());
///
/// final var webhookSecret = "super-secret";
///
/// var barWebhook = new Webhook("barWebhook", WebhookArgs.builder()
/// .name("test-webhook-github-bar")
/// .authentication("GITHUB_HMAC")
/// .targetAction("Source")
/// .targetPipeline(bar.name())
/// .authenticationConfiguration(WebhookAuthenticationConfigurationArgs.builder()
/// .secretToken(webhookSecret)
/// .build())
/// .filters(WebhookFilterArgs.builder()
/// .jsonPath("$.ref")
/// .matchEquals("refs/heads/{Branch}")
/// .build())
/// .build());
///
/// // Wire the CodePipeline webhook into a GitHub repository.
/// var barRepositoryWebhook = new RepositoryWebhook("barRepositoryWebhook", RepositoryWebhookArgs.builder()
/// .repository(repo.name())
/// .name("web")
/// .configuration(RepositoryWebhookConfigurationArgs.builder()
/// .url(barWebhook.url())
/// .contentType("json")
/// .insecureSsl(true)
/// .secret(webhookSecret)
/// .build())
/// .events("push")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// bar:
/// type: aws:codepipeline:Pipeline
/// properties:
/// name: tf-test-pipeline
/// roleArn: ${barAwsIamRole.arn}
/// artifactStores:
/// - location: ${barAwsS3Bucket.bucket}
/// type: S3
/// encryptionKey:
/// id: ${s3kmskey.arn}
/// type: KMS
/// stages:
/// - name: Source
/// actions:
/// - name: Source
/// category: Source
/// owner: ThirdParty
/// provider: GitHub
/// version: '1'
/// outputArtifacts:
/// - test
/// configuration:
/// Owner: my-organization
/// Repo: test
/// Branch: master
/// - name: Build
/// actions:
/// - name: Build
/// category: Build
/// owner: AWS
/// provider: CodeBuild
/// inputArtifacts:
/// - test
/// version: '1'
/// configuration:
/// ProjectName: test
/// barWebhook:
/// type: aws:codepipeline:Webhook
/// name: bar
/// properties:
/// name: test-webhook-github-bar
/// authentication: GITHUB_HMAC
/// targetAction: Source
/// targetPipeline: ${bar.name}
/// authenticationConfiguration:
/// secretToken: ${webhookSecret}
/// filters:
/// - jsonPath: $.ref
/// matchEquals: refs/heads/{Branch}
/// # Wire the CodePipeline webhook into a GitHub repository.
/// barRepositoryWebhook:
/// type: github:RepositoryWebhook
/// name: bar
/// properties:
/// repository: ${repo.name}
/// name: web
/// configuration:
/// - url: ${barWebhook.url}
/// contentType: json
/// insecureSsl: true
/// secret: ${webhookSecret}
/// events:
/// - push
/// variables:
/// webhookSecret: super-secret
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span> (String) Amazon Resource Name (ARN) of the CodePipeline webhook.
///
///
/// Using `pulumi import`, import CodePipeline Webhooks using their ARN. For example:
///
/// ```sh
/// $ pulumi import aws:codepipeline/webhook:Webhook example arn:aws:codepipeline:us-west-2:123456789012:webhook:example
/// ```
class Webhook3 extends CustomResource {
  /// The CodePipeline webhook's ARN.
  late final Output<String> arn;

  /// The type of authentication  to use. One of `IP`, `GITHUB_HMAC`, or `UNAUTHENTICATED`.
  late final Output<String> authentication;

  /// An <span pulumi-lang-nodejs="`auth`" pulumi-lang-dotnet="`Auth`" pulumi-lang-go="`auth`" pulumi-lang-python="`auth`" pulumi-lang-yaml="`auth`" pulumi-lang-java="`auth`">`auth`</span> block. Required for `IP` and `GITHUB_HMAC`. Auth blocks are documented below.
  late final Output<WebhookAuthenticationConfiguration?>
      authenticationConfiguration;

  /// One or more <span pulumi-lang-nodejs="`filter`" pulumi-lang-dotnet="`Filter`" pulumi-lang-go="`filter`" pulumi-lang-python="`filter`" pulumi-lang-yaml="`filter`" pulumi-lang-java="`filter`">`filter`</span> blocks. Filter blocks are documented below.
  late final Output<List<WebhookFilter>> filters;

  /// The name of the webhook.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The name of the action in a pipeline you want to connect to the webhook. The action must be from the source (first) stage of the pipeline.
  late final Output<String> targetAction;

  /// The name of the pipeline.
  late final Output<String> targetPipeline;

  /// The CodePipeline webhook's URL. POST events to this endpoint to trigger the target.
  late final Output<String> url;

  Webhook3(
    String name, {
    WebhookArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:codepipeline/webhook:Webhook',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.authentication = registerOutput<String>('authentication');
    this.authenticationConfiguration =
        registerOutput<WebhookAuthenticationConfiguration?>(
            'authenticationConfiguration');
    this.filters = registerOutput<List<WebhookFilter>>('filters');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.targetAction = registerOutput<String>('targetAction');
    this.targetPipeline = registerOutput<String>('targetPipeline');
    this.url = registerOutput<String>('url');
  }
}
