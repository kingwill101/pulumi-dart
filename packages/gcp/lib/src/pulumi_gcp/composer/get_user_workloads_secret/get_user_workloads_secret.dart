import 'package:pulumi/pulumi.dart';
import 'get_user_workloads_secret_args.dart';
import 'get_user_workloads_secret_result.dart';

/// Provides access to Kubernetes Secret configuration for a given project, region and Composer Environment.
///
/// To get more information about Composer User Workloads Secrets, see:
///
/// * [API documentation](https://cloud.google.com/composer/docs/reference/rest/v1/projects.locations.environments.userWorkloadsSecrets)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/artifact-registry/docs/overview)
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as std from "@pulumi/std";
///
/// const exampleEnvironment = new gcp.composer.Environment("example", {
/// name: "example-environment",
/// config: {
/// softwareConfig: {
/// imageVersion: "composer-3-airflow-2",
/// },
/// },
/// });
/// const exampleUserWorkloadsSecret = new gcp.composer.UserWorkloadsSecret("example", {
/// environment: exampleEnvironment.name,
/// name: "example-secret",
/// data: {
/// username: std.base64encode({
/// input: "username",
/// }).then(invoke => invoke.result),
/// password: std.base64encode({
/// input: "password",
/// }).then(invoke => invoke.result),
/// },
/// });
/// const example = exampleEnvironment.name.apply(name => gcp.composer.getUserWorkloadsSecretOutput({
/// environment: name,
/// name: googleComposerUserWorkloadsSecret.example.name,
/// }));
/// export const debug = example;
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_std as std
///
/// example_environment = gcp.composer.Environment("example",
/// name="example-environment",
/// config={
/// "software_config": {
/// "image_version": "composer-3-airflow-2",
/// },
/// })
/// example_user_workloads_secret = gcp.composer.UserWorkloadsSecret("example",
/// environment=example_environment.name,
/// name="example-secret",
/// data={
/// "username": std.base64encode(input="username").result,
/// "password": std.base64encode(input="password").result,
/// })
/// example = example_environment.name.apply(lambda name: gcp.composer.get_user_workloads_secret_output(environment=name,
/// name=google_composer_user_workloads_secret["example"]["name"]))
/// pulumi.export("debug", example)
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
/// var exampleEnvironment = new Gcp.Composer.Environment("example", new()
/// {
/// Name = "example-environment",
/// Config = new Gcp.Composer.Inputs.EnvironmentConfigArgs
/// {
/// SoftwareConfig = new Gcp.Composer.Inputs.EnvironmentConfigSoftwareConfigArgs
/// {
/// ImageVersion = "composer-3-airflow-2",
/// },
/// },
/// });
///
/// var exampleUserWorkloadsSecret = new Gcp.Composer.UserWorkloadsSecret("example", new()
/// {
/// Environment = exampleEnvironment.Name,
/// Name = "example-secret",
/// Data =
/// {
/// { "username", Std.Base64encode.Invoke(new()
/// {
/// Input = "username",
/// }).Apply(invoke => invoke.Result) },
/// { "password", Std.Base64encode.Invoke(new()
/// {
/// Input = "password",
/// }).Apply(invoke => invoke.Result) },
/// },
/// });
///
/// var example = Gcp.Composer.GetUserWorkloadsSecret.Invoke(new()
/// {
/// Environment = exampleEnvironment.Name,
/// Name = googleComposerUserWorkloadsSecret.Example.Name,
/// });
///
/// return new Dictionary<string, object?>
/// {
/// ["debug"] = example,
/// };
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
/// exampleEnvironment, err := composer.NewEnvironment(ctx, "example", &composer.EnvironmentArgs{
/// Name: pulumi.String("example-environment"),
/// Config: &composer.EnvironmentConfigArgs{
/// SoftwareConfig: &composer.EnvironmentConfigSoftwareConfigArgs{
/// ImageVersion: pulumi.String("composer-3-airflow-2"),
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// invokeBase64encode, err := std.Base64encode(ctx, &std.Base64encodeArgs{
/// Input: "username",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// invokeBase64encode1, err := std.Base64encode(ctx, &std.Base64encodeArgs{
/// Input: "password",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = composer.NewUserWorkloadsSecret(ctx, "example", &composer.UserWorkloadsSecretArgs{
/// Environment: exampleEnvironment.Name,
/// Name:        pulumi.String("example-secret"),
/// Data: pulumi.StringMap{
/// "username": pulumi.String(invokeBase64encode.Result),
/// "password": pulumi.String(invokeBase64encode1.Result),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// example := exampleEnvironment.Name.ApplyT(func(name string) (composer.GetUserWorkloadsSecretResult, error) {
/// return composer.GetUserWorkloadsSecretResult(interface{}(composer.LookupUserWorkloadsSecret(ctx, &composer.LookupUserWorkloadsSecretArgs{
/// Environment: name,
/// Name:        googleComposerUserWorkloadsSecret.Example.Name,
/// }, nil))), nil
/// }).(composer.GetUserWorkloadsSecretResultOutput)
/// ctx.Export("debug", example)
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
/// import com.pulumi.gcp.composer.ComposerFunctions;
/// import com.pulumi.gcp.composer.inputs.GetUserWorkloadsSecretArgs;
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
/// var exampleEnvironment = new Environment("exampleEnvironment", EnvironmentArgs.builder()
/// .name("example-environment")
/// .config(EnvironmentConfigArgs.builder()
/// .softwareConfig(EnvironmentConfigSoftwareConfigArgs.builder()
/// .imageVersion("composer-3-airflow-2")
/// .build())
/// .build())
/// .build());
///
/// var exampleUserWorkloadsSecret = new UserWorkloadsSecret("exampleUserWorkloadsSecret", UserWorkloadsSecretArgs.builder()
/// .environment(exampleEnvironment.name())
/// .name("example-secret")
/// .data(Map.ofEntries(
/// Map.entry("username", StdFunctions.base64encode(Base64encodeArgs.builder()
/// .input("username")
/// .build()).result()),
/// Map.entry("password", StdFunctions.base64encode(Base64encodeArgs.builder()
/// .input("password")
/// .build()).result())
/// ))
/// .build());
///
/// final var example = exampleEnvironment.name().applyValue(_name -> ComposerFunctions.getUserWorkloadsSecret(GetUserWorkloadsSecretArgs.builder()
/// .environment(_name)
/// .name(googleComposerUserWorkloadsSecret.example().name())
/// .build()));
///
/// ctx.export("debug", example);
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// exampleEnvironment:
/// type: gcp:composer:Environment
/// name: example
/// properties:
/// name: example-environment
/// config:
/// softwareConfig:
/// imageVersion: composer-3-airflow-2
/// exampleUserWorkloadsSecret:
/// type: gcp:composer:UserWorkloadsSecret
/// name: example
/// properties:
/// environment: ${exampleEnvironment.name}
/// name: example-secret
/// data:
/// username:
/// fn::invoke:
/// function: std:base64encode
/// arguments:
/// input: username
/// return: result
/// password:
/// fn::invoke:
/// function: std:base64encode
/// arguments:
/// input: password
/// return: result
/// variables:
/// example:
/// fn::invoke:
/// function: gcp:composer:getUserWorkloadsSecret
/// arguments:
/// environment: ${exampleEnvironment.name}
/// name: ${googleComposerUserWorkloadsSecret.example.name}
/// outputs:
/// debug: ${example}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetUserWorkloadsSecretResult> getUserWorkloadsSecret(
  GetUserWorkloadsSecretArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:composer/getUserWorkloadsSecret:getUserWorkloadsSecret',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetUserWorkloadsSecretResult.fromMap(result);
}
