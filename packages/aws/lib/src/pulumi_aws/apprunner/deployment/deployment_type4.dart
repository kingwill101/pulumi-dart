import 'package:pulumi/pulumi.dart';
import '../deployment_timeouts/deployment_timeouts.dart';
import 'deployment_args4.dart';

/// Manages an App Runner Deployment Operation.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
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
/// var example = new Aws.AppRunner.Deployment("example", new()
/// {
/// ServiceArn = exampleAwsApprunnerService.Arn,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/apprunner"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := apprunner.NewDeployment(ctx, "example", &apprunner.DeploymentArgs{
/// ServiceArn: pulumi.Any(exampleAwsApprunnerService.Arn),
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new Deployment("example", DeploymentArgs.builder()
/// .serviceArn(exampleAwsApprunnerService.arn())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:apprunner:Deployment
/// properties:
/// serviceArn: ${exampleAwsApprunnerService.arn}
/// ```
/// <!--End PulumiCodeChooser -->
class DeploymentType4 extends CustomResource {
  /// The unique ID of the operation associated with deployment.
  late final Output<String> operationId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The Amazon Resource Name (ARN) of the App Runner service to start the deployment for.
  late final Output<String> serviceArn;

  /// The current status of the App Runner service deployment.
  late final Output<String> status;
  late final Output<DeploymentTimeouts?> timeouts;

  DeploymentType4(
    String name, {
    DeploymentArgs4? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:apprunner/deployment:Deployment',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.operationId = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.serviceArn = Output.createUnknown<String>();
    this.status = Output.createUnknown<String>();
    this.timeouts = Output.createUnknown<DeploymentTimeouts?>();
  }
}
