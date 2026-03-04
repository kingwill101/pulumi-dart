import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_args.dart';
import 'deployment_state.dart';
import 'deployment_timeouts.dart';

/// Manages an App Runner Deployment Operation.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.apprunner.Deployment("example", {serviceArn: exampleAwsApprunnerService.arn});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.apprunner.Deployment("example", service_arn=example_aws_apprunner_service["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.AppRunner.Deployment("example", new()
///     {
///         ServiceArn = exampleAwsApprunnerService.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/apprunner"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := apprunner.NewDeployment(ctx, "example", &apprunner.DeploymentArgs{
/// 			ServiceArn: pulumi.Any(exampleAwsApprunnerService.Arn),
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
/// import com.pulumi.aws.apprunner.Deployment;
/// import com.pulumi.aws.apprunner.DeploymentArgs;
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
///         var example = new Deployment("example", DeploymentArgs.builder()
///             .serviceArn(exampleAwsApprunnerService.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:apprunner:Deployment
///     properties:
///       serviceArn: ${exampleAwsApprunnerService.arn}
/// ```
class DeploymentType extends pulumi.CustomResource {
  /// The unique ID of the operation associated with deployment.
  late final pulumi.Output<String> operationId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The Amazon Resource Name (ARN) of the App Runner service to start the deployment for.
  late final pulumi.Output<String> serviceArn;

  /// The current status of the App Runner service deployment.
  late final pulumi.Output<String> status;
  late final pulumi.Output<DeploymentTimeouts?> timeouts;

  /// Creates a new [DeploymentType].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DeploymentType]. {@macro pulumi_apprunner_deployment_deployment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DeploymentType(
    String name, {
    DeploymentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:apprunner/deployment:Deployment',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    operationId = registerOutput<String>('operationId');
    region = registerOutput<String>('region');
    serviceArn = registerOutput<String>('serviceArn');
    status = registerOutput<String>('status');
    timeouts = registerOutput<DeploymentTimeouts?>('timeouts');
  }

  /// Gets an existing [DeploymentType] resource's state with the given [name] and [id].
  static DeploymentType get(
    String name,
    pulumi.Input<String> id, {
    DeploymentState? state,
  }) {
    return DeploymentType._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DeploymentType._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:apprunner/deployment:Deployment',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    operationId = registerOutput<String>('operationId');
    region = registerOutput<String>('region');
    serviceArn = registerOutput<String>('serviceArn');
    status = registerOutput<String>('status');
    timeouts = registerOutput<DeploymentTimeouts?>('timeouts');
  }
}
