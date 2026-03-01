import 'package:pulumi/pulumi.dart' as pulumi;
import 'backend_environment_args.dart';

/// Provides an Amplify Backend Environment resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.amplify.App("example", {name: "example"});
/// const exampleBackendEnvironment = new aws.amplify.BackendEnvironment("example", {
///     appId: example.id,
///     environmentName: "example",
///     deploymentArtifacts: "app-example-deployment",
///     stackName: "amplify-app-example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.amplify.App("example", name="example")
/// example_backend_environment = aws.amplify.BackendEnvironment("example",
///     app_id=example.id,
///     environment_name="example",
///     deployment_artifacts="app-example-deployment",
///     stack_name="amplify-app-example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Amplify.App("example", new()
///     {
///         Name = "example",
///     });
///
///     var exampleBackendEnvironment = new Aws.Amplify.BackendEnvironment("example", new()
///     {
///         AppId = example.Id,
///         EnvironmentName = "example",
///         DeploymentArtifacts = "app-example-deployment",
///         StackName = "amplify-app-example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/amplify"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := amplify.NewApp(ctx, "example", &amplify.AppArgs{
/// 			Name: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = amplify.NewBackendEnvironment(ctx, "example", &amplify.BackendEnvironmentArgs{
/// 			AppId:               example.ID(),
/// 			EnvironmentName:     pulumi.String("example"),
/// 			DeploymentArtifacts: pulumi.String("app-example-deployment"),
/// 			StackName:           pulumi.String("amplify-app-example"),
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
/// import com.pulumi.aws.amplify.App;
/// import com.pulumi.aws.amplify.AppArgs;
/// import com.pulumi.aws.amplify.BackendEnvironment;
/// import com.pulumi.aws.amplify.BackendEnvironmentArgs;
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
///         var example = new App("example", AppArgs.builder()
///             .name("example")
///             .build());
///
///         var exampleBackendEnvironment = new BackendEnvironment("exampleBackendEnvironment", BackendEnvironmentArgs.builder()
///             .appId(example.id())
///             .environmentName("example")
///             .deploymentArtifacts("app-example-deployment")
///             .stackName("amplify-app-example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:amplify:App
///     properties:
///       name: example
///   exampleBackendEnvironment:
///     type: aws:amplify:BackendEnvironment
///     name: example
///     properties:
///       appId: ${example.id}
///       environmentName: example
///       deploymentArtifacts: app-example-deployment
///       stackName: amplify-app-example
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Amplify backend environment using `app_id` and `environment_name`. For example:
///
/// ```sh
/// $ pulumi import aws:amplify/backendEnvironment:BackendEnvironment example d2ypk4k47z8u6/example
/// ```
class BackendEnvironment extends pulumi.CustomResource {
  /// Unique ID for an Amplify app.
  late final pulumi.Output<String> appId;

  /// ARN for a backend environment that is part of an Amplify app.
  late final pulumi.Output<String> arn;

  /// Name of deployment artifacts.
  late final pulumi.Output<String> deploymentArtifacts;

  /// Name for the backend environment.
  late final pulumi.Output<String> environmentName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// AWS CloudFormation stack name of a backend environment.
  late final pulumi.Output<String> stackName;

  /// Creates a new [BackendEnvironment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BackendEnvironment]. {@macro pulumi_amplify_backend_environment_backend_environment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BackendEnvironment(
    String name, {
    BackendEnvironmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:amplify/backendEnvironment:BackendEnvironment',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.appId = registerOutput<String>('appId');
    this.arn = registerOutput<String>('arn');
    this.deploymentArtifacts = registerOutput<String>('deploymentArtifacts');
    this.environmentName = registerOutput<String>('environmentName');
    this.region = registerOutput<String>('region');
    this.stackName = registerOutput<String>('stackName');
  }
}
