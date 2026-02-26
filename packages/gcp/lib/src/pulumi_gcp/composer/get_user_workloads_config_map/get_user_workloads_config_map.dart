import 'package:pulumi/pulumi.dart';
import 'get_user_workloads_config_map_args.dart';
import 'get_user_workloads_config_map_result.dart';

/// Provides access to Kubernetes ConfigMap configuration for a given project, region and Composer Environment.
///
/// To get more information about Composer User Workloads Config Map, see:
///
/// * [API documentation](https://cloud.google.com/composer/docs/reference/rest/v1/projects.locations.environments.userWorkloadsConfigMaps)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/composer/docs/concepts/overview)
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const exampleEnvironment = new gcp.composer.Environment("example", {
/// name: "example-environment",
/// config: {
/// softwareConfig: {
/// imageVersion: "composer-3-airflow-2",
/// },
/// },
/// });
/// const exampleUserWorkloadsConfigMap = new gcp.composer.UserWorkloadsConfigMap("example", {
/// environment: exampleEnvironment.name,
/// name: "example-config-map",
/// data: {
/// db_host: "dbhost:5432",
/// api_host: "apihost:443",
/// },
/// });
/// const example = exampleEnvironment.name.apply(name => gcp.composer.getUserWorkloadsConfigMapOutput({
/// environment: name,
/// name: googleComposerUserWorkloadsConfigMap.example.name,
/// }));
/// export const debug = example;
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example_environment = gcp.composer.Environment("example",
/// name="example-environment",
/// config={
/// "software_config": {
/// "image_version": "composer-3-airflow-2",
/// },
/// })
/// example_user_workloads_config_map = gcp.composer.UserWorkloadsConfigMap("example",
/// environment=example_environment.name,
/// name="example-config-map",
/// data={
/// "db_host": "dbhost:5432",
/// "api_host": "apihost:443",
/// })
/// example = example_environment.name.apply(lambda name: gcp.composer.get_user_workloads_config_map_output(environment=name,
/// name=google_composer_user_workloads_config_map["example"]["name"]))
/// pulumi.export("debug", example)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
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
/// var exampleUserWorkloadsConfigMap = new Gcp.Composer.UserWorkloadsConfigMap("example", new()
/// {
/// Environment = exampleEnvironment.Name,
/// Name = "example-config-map",
/// Data =
/// {
/// { "db_host", "dbhost:5432" },
/// { "api_host", "apihost:443" },
/// },
/// });
///
/// var example = Gcp.Composer.GetUserWorkloadsConfigMap.Invoke(new()
/// {
/// Environment = exampleEnvironment.Name,
/// Name = googleComposerUserWorkloadsConfigMap.Example.Name,
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
/// _, err = composer.NewUserWorkloadsConfigMap(ctx, "example", &composer.UserWorkloadsConfigMapArgs{
/// Environment: exampleEnvironment.Name,
/// Name:        pulumi.String("example-config-map"),
/// Data: pulumi.StringMap{
/// "db_host":  pulumi.String("dbhost:5432"),
/// "api_host": pulumi.String("apihost:443"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// example := exampleEnvironment.Name.ApplyT(func(name string) (composer.GetUserWorkloadsConfigMapResult, error) {
/// return composer.GetUserWorkloadsConfigMapResult(interface{}(composer.LookupUserWorkloadsConfigMap(ctx, &composer.LookupUserWorkloadsConfigMapArgs{
/// Environment: name,
/// Name:        googleComposerUserWorkloadsConfigMap.Example.Name,
/// }, nil))), nil
/// }).(composer.GetUserWorkloadsConfigMapResultOutput)
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
/// import com.pulumi.gcp.composer.UserWorkloadsConfigMap;
/// import com.pulumi.gcp.composer.UserWorkloadsConfigMapArgs;
/// import com.pulumi.gcp.composer.ComposerFunctions;
/// import com.pulumi.gcp.composer.inputs.GetUserWorkloadsConfigMapArgs;
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
/// var exampleUserWorkloadsConfigMap = new UserWorkloadsConfigMap("exampleUserWorkloadsConfigMap", UserWorkloadsConfigMapArgs.builder()
/// .environment(exampleEnvironment.name())
/// .name("example-config-map")
/// .data(Map.ofEntries(
/// Map.entry("db_host", "dbhost:5432"),
/// Map.entry("api_host", "apihost:443")
/// ))
/// .build());
///
/// final var example = exampleEnvironment.name().applyValue(_name -> ComposerFunctions.getUserWorkloadsConfigMap(GetUserWorkloadsConfigMapArgs.builder()
/// .environment(_name)
/// .name(googleComposerUserWorkloadsConfigMap.example().name())
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
/// exampleUserWorkloadsConfigMap:
/// type: gcp:composer:UserWorkloadsConfigMap
/// name: example
/// properties:
/// environment: ${exampleEnvironment.name}
/// name: example-config-map
/// data:
/// db_host: dbhost:5432
/// api_host: apihost:443
/// variables:
/// example:
/// fn::invoke:
/// function: gcp:composer:getUserWorkloadsConfigMap
/// arguments:
/// environment: ${exampleEnvironment.name}
/// name: ${googleComposerUserWorkloadsConfigMap.example.name}
/// outputs:
/// debug: ${example}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetUserWorkloadsConfigMapResult> getUserWorkloadsConfigMap(
  GetUserWorkloadsConfigMapArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:composer/getUserWorkloadsConfigMap:getUserWorkloadsConfigMap',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetUserWorkloadsConfigMapResult.fromMap(result);
}
