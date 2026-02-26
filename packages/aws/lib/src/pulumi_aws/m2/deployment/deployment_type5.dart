import 'package:pulumi/pulumi.dart';
import '../deployment_timeouts/deployment_timeouts2.dart';
import 'deployment_args5.dart';

/// Resource for managing an [AWS Mainframe Modernization Deployment.](https://docs.aws.amazon.com/m2/latest/userguide/applications-m2-deploy.html)
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.m2.Deployment("test", {
/// environmentId: "01234567890abcdef012345678",
/// applicationId: "34567890abcdef012345678012",
/// applicationVersion: 1,
/// start: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.m2.Deployment("test",
/// environment_id="01234567890abcdef012345678",
/// application_id="34567890abcdef012345678012",
/// application_version=1,
/// start=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var test = new Aws.M2.Deployment("test", new()
/// {
/// EnvironmentId = "01234567890abcdef012345678",
/// ApplicationId = "34567890abcdef012345678012",
/// ApplicationVersion = 1,
/// Start = true,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/m2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := m2.NewDeployment(ctx, "test", &m2.DeploymentArgs{
/// EnvironmentId:      pulumi.String("01234567890abcdef012345678"),
/// ApplicationId:      pulumi.String("34567890abcdef012345678012"),
/// ApplicationVersion: pulumi.Int(1),
/// Start:              pulumi.Bool(true),
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
/// import com.pulumi.aws.m2.Deployment;
/// import com.pulumi.aws.m2.DeploymentArgs;
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
/// var test = new Deployment("test", DeploymentArgs.builder()
/// .environmentId("01234567890abcdef012345678")
/// .applicationId("34567890abcdef012345678012")
/// .applicationVersion(1)
/// .start(true)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// test:
/// type: aws:m2:Deployment
/// properties:
/// environmentId: 01234567890abcdef012345678
/// applicationId: 34567890abcdef012345678012
/// applicationVersion: 1
/// start: true
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Mainframe Modernization Deployment using the `APPLICATION-ID,DEPLOYMENT-ID`. For example:
///
/// ```sh
/// $ pulumi import aws:m2/deployment:Deployment example APPLICATION-ID,DEPLOYMENT-ID
/// ```
class DeploymentType5 extends CustomResource {
  /// Application to deploy.
  late final Output<String> applicationId;

  /// Version to application to deploy
  late final Output<int> applicationVersion;
  late final Output<String> deploymentId;

  /// Environment to deploy application to.
  late final Output<String> environmentId;
  late final Output<bool?> forceStop;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Start the application once deployed.
  late final Output<bool> start;
  late final Output<DeploymentTimeouts2?> timeouts;

  DeploymentType5(
    String name, {
    DeploymentArgs5? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:m2/deployment:Deployment',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.applicationId = registerOutput<String>('applicationId');
    this.applicationVersion = registerOutput<int>('applicationVersion');
    this.deploymentId = registerOutput<String>('deploymentId');
    this.environmentId = registerOutput<String>('environmentId');
    this.forceStop = registerOutput<bool?>('forceStop');
    this.region = registerOutput<String>('region');
    this.start = registerOutput<bool>('start');
    this.timeouts = registerOutput<DeploymentTimeouts2?>('timeouts');
  }
}
