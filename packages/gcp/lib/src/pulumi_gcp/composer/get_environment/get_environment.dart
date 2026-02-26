import 'package:pulumi/pulumi.dart';
import 'get_environment_args.dart';
import 'get_environment_result.dart';

/// Provides access to Cloud Composer environment configuration in a region for a given project.
///
/// To get more information about Composer Environment, see:
///
/// * [API documentation](https://cloud.google.com/composer/docs/reference/rest/v1/projects.locations.environments)
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
/// const composerEnvEnvironment = new gcp.composer.Environment("composer_env", {name: "composer-environment"});
/// const composerEnv = gcp.composer.getEnvironment({
/// name: test.name,
/// });
/// export const debug = composerEnv.then(composerEnv => composerEnv.configs);
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// composer_env_environment = gcp.composer.Environment("composer_env", name="composer-environment")
/// composer_env = gcp.composer.get_environment(name=test["name"])
/// pulumi.export("debug", composer_env.configs)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var composerEnvEnvironment = new Gcp.Composer.Environment("composer_env", new()
/// {
/// Name = "composer-environment",
/// });
///
/// var composerEnv = Gcp.Composer.GetEnvironment.Invoke(new()
/// {
/// Name = test.Name,
/// });
///
/// return new Dictionary<string, object?>
/// {
/// ["debug"] = composerEnv.Apply(getEnvironmentResult => getEnvironmentResult.Configs),
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
/// _, err := composer.NewEnvironment(ctx, "composer_env", &composer.EnvironmentArgs{
/// Name: pulumi.String("composer-environment"),
/// })
/// if err != nil {
/// return err
/// }
/// composerEnv, err := composer.LookupEnvironment(ctx, &composer.LookupEnvironmentArgs{
/// Name: test.Name,
/// }, nil)
/// if err != nil {
/// return err
/// }
/// ctx.Export("debug", composerEnv.Configs)
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
/// import com.pulumi.gcp.composer.ComposerFunctions;
/// import com.pulumi.gcp.composer.inputs.GetEnvironmentArgs;
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
/// var composerEnvEnvironment = new Environment("composerEnvEnvironment", EnvironmentArgs.builder()
/// .name("composer-environment")
/// .build());
///
/// final var composerEnv = ComposerFunctions.getEnvironment(GetEnvironmentArgs.builder()
/// .name(test.name())
/// .build());
///
/// ctx.export("debug", composerEnv.configs());
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// composerEnvEnvironment:
/// type: gcp:composer:Environment
/// name: composer_env
/// properties:
/// name: composer-environment
/// variables:
/// composerEnv:
/// fn::invoke:
/// function: gcp:composer:getEnvironment
/// arguments:
/// name: ${test.name}
/// outputs:
/// debug: ${composerEnv.configs}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetEnvironmentResult> getEnvironment(
  GetEnvironmentArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:composer/getEnvironment:getEnvironment',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetEnvironmentResult.fromMap(result);
}
