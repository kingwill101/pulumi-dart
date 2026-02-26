import 'package:pulumi/pulumi.dart';
import 'user_workloads_secret_args.dart';

/// User workloads Secret used by Airflow tasks that run with Kubernetes Executor or KubernetesPodOperator.
/// Intended for Composer 3 Environments.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as std from "@pulumi/std";
///
/// const example = new gcp.composer.Environment("example", {
/// name: "example-environment",
/// project: "example-project",
/// region: "us-central1",
/// config: {
/// softwareConfig: {
/// imageVersion: "example-image-version",
/// },
/// },
/// });
/// const exampleUserWorkloadsSecret = new gcp.composer.UserWorkloadsSecret("example", {
/// name: "example-secret",
/// project: "example-project",
/// region: "us-central1",
/// environment: example.name,
/// data: {
/// email: std.base64encode({
/// input: "example-email",
/// }).then(invoke => invoke.result),
/// password: std.base64encode({
/// input: "example-password",
/// }).then(invoke => invoke.result),
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_std as std
///
/// example = gcp.composer.Environment("example",
/// name="example-environment",
/// project="example-project",
/// region="us-central1",
/// config={
/// "software_config": {
/// "image_version": "example-image-version",
/// },
/// })
/// example_user_workloads_secret = gcp.composer.UserWorkloadsSecret("example",
/// name="example-secret",
/// project="example-project",
/// region="us-central1",
/// environment=example.name,
/// data={
/// "email": std.base64encode(input="example-email").result,
/// "password": std.base64encode(input="example-password").result,
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Gcp.Composer.Environment("example", new()
/// {
/// Name = "example-environment",
/// Project = "example-project",
/// Region = "us-central1",
/// Config = new Gcp.Composer.Inputs.EnvironmentConfigArgs
/// {
/// SoftwareConfig = new Gcp.Composer.Inputs.EnvironmentConfigSoftwareConfigArgs
/// {
/// ImageVersion = "example-image-version",
/// },
/// },
/// });
///
/// var exampleUserWorkloadsSecret = new Gcp.Composer.UserWorkloadsSecret("example", new()
/// {
/// Name = "example-secret",
/// Project = "example-project",
/// Region = "us-central1",
/// Environment = example.Name,
/// Data =
/// {
/// { "email", Std.Base64encode.Invoke(new()
/// {
/// Input = "example-email",
/// }).Apply(invoke => invoke.Result) },
/// { "password", Std.Base64encode.Invoke(new()
/// {
/// Input = "example-password",
/// }).Apply(invoke => invoke.Result) },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/composer"
/// "github.com/pulumi/pulumi-std/sdk/go/std"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := composer.NewEnvironment(ctx, "example", &composer.EnvironmentArgs{
/// Name:    pulumi.String("example-environment"),
/// Project: pulumi.String("example-project"),
/// Region:  pulumi.String("us-central1"),
/// Config: &composer.EnvironmentConfigArgs{
/// SoftwareConfig: &composer.EnvironmentConfigSoftwareConfigArgs{
/// ImageVersion: pulumi.String("example-image-version"),
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// invokeBase64encode, err := std.Base64encode(ctx, &std.Base64encodeArgs{
/// Input: "example-email",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// invokeBase64encode1, err := std.Base64encode(ctx, &std.Base64encodeArgs{
/// Input: "example-password",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = composer.NewUserWorkloadsSecret(ctx, "example", &composer.UserWorkloadsSecretArgs{
/// Name:        pulumi.String("example-secret"),
/// Project:     pulumi.String("example-project"),
/// Region:      pulumi.String("us-central1"),
/// Environment: example.Name,
/// Data: pulumi.StringMap{
/// "email":    pulumi.String(invokeBase64encode.Result),
/// "password": pulumi.String(invokeBase64encode1.Result),
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
/// import com.pulumi.gcp.composer.Environment;
/// import com.pulumi.gcp.composer.EnvironmentArgs;
/// import com.pulumi.gcp.composer.inputs.EnvironmentConfigArgs;
/// import com.pulumi.gcp.composer.inputs.EnvironmentConfigSoftwareConfigArgs;
/// import com.pulumi.gcp.composer.UserWorkloadsSecret;
/// import com.pulumi.gcp.composer.UserWorkloadsSecretArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.Base64encodeArgs;
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
/// var example = new Environment("example", EnvironmentArgs.builder()
/// .name("example-environment")
/// .project("example-project")
/// .region("us-central1")
/// .config(EnvironmentConfigArgs.builder()
/// .softwareConfig(EnvironmentConfigSoftwareConfigArgs.builder()
/// .imageVersion("example-image-version")
/// .build())
/// .build())
/// .build());
///
/// var exampleUserWorkloadsSecret = new UserWorkloadsSecret("exampleUserWorkloadsSecret", UserWorkloadsSecretArgs.builder()
/// .name("example-secret")
/// .project("example-project")
/// .region("us-central1")
/// .environment(example.name())
/// .data(Map.ofEntries(
/// Map.entry("email", StdFunctions.base64encode(Base64encodeArgs.builder()
/// .input("example-email")
/// .build()).result()),
/// Map.entry("password", StdFunctions.base64encode(Base64encodeArgs.builder()
/// .input("example-password")
/// .build()).result())
/// ))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: gcp:composer:Environment
/// properties:
/// name: example-environment
/// project: example-project
/// region: us-central1
/// config:
/// softwareConfig:
/// imageVersion: example-image-version
/// exampleUserWorkloadsSecret:
/// type: gcp:composer:UserWorkloadsSecret
/// name: example
/// properties:
/// name: example-secret
/// project: example-project
/// region: us-central1
/// environment: ${example.name}
/// data:
/// email:
/// fn::invoke:
/// function: std:base64encode
/// arguments:
/// input: example-email
/// return: result
/// password:
/// fn::invoke:
/// function: std:base64encode
/// arguments:
/// input: example-password
/// return: result
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Secret can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{region}}/environments/{{environment}}/userWorkloadsSecrets/{{name}}`
///
/// * `{{project}}/{{region}}/{{environment}}/{{name}}`
///
/// * `{{environment}}/{{name}}`
///
/// When using the `pulumi import` command, Environment can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:composer/userWorkloadsSecret:UserWorkloadsSecret example projects/{{project}}/locations/{{region}}/environments/{{environment}}/userWorkloadsSecrets/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:composer/userWorkloadsSecret:UserWorkloadsSecret example {{project}}/{{region}}/{{environment}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:composer/userWorkloadsSecret:UserWorkloadsSecret example {{environment}}/{{name}}
/// ```
class UserWorkloadsSecret extends CustomResource {
  /// A map of the secret data.
  late final Output<Map<String, String>?> data;

  /// Environment where the Kubernetes Secret will be stored and used.
  late final Output<String> environment;

  /// Name of the Kubernetes Secret.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The location or Compute Engine region for the environment.
  late final Output<String> region;

  UserWorkloadsSecret(
    String name, {
    UserWorkloadsSecretArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:composer/userWorkloadsSecret:UserWorkloadsSecret',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.data = registerOutput<Map<String, String>?>('data');
    this.environment = registerOutput<String>('environment');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
  }
}
