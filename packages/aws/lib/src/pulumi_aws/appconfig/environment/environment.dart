import 'package:pulumi/pulumi.dart';
import '../environment_monitor/environment_monitor.dart';
import 'environment_args.dart';

/// Provides an AppConfig Environment resource for an <span pulumi-lang-nodejs="`aws.appconfig.Application`" pulumi-lang-dotnet="`aws.appconfig.Application`" pulumi-lang-go="`appconfig.Application`" pulumi-lang-python="`appconfig.Application`" pulumi-lang-yaml="`aws.appconfig.Application`" pulumi-lang-java="`aws.appconfig.Application`">`aws.appconfig.Application`</span> resource. One or more environments can be defined for an application.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const exampleApplication = new aws.appconfig.Application("example", {
/// name: "example-application-tf",
/// description: "Example AppConfig Application",
/// tags: {
/// Type: "AppConfig Application",
/// },
/// });
/// const example = new aws.appconfig.Environment("example", {
/// name: "example-environment-tf",
/// description: "Example AppConfig Environment",
/// applicationId: exampleApplication.id,
/// monitors: [{
/// alarmArn: exampleAwsCloudwatchMetricAlarm.arn,
/// alarmRoleArn: exampleAwsIamRole.arn,
/// }],
/// tags: {
/// Type: "AppConfig Environment",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_application = aws.appconfig.Application("example",
/// name="example-application-tf",
/// description="Example AppConfig Application",
/// tags={
/// "Type": "AppConfig Application",
/// })
/// example = aws.appconfig.Environment("example",
/// name="example-environment-tf",
/// description="Example AppConfig Environment",
/// application_id=example_application.id,
/// monitors=[{
/// "alarm_arn": example_aws_cloudwatch_metric_alarm["arn"],
/// "alarm_role_arn": example_aws_iam_role["arn"],
/// }],
/// tags={
/// "Type": "AppConfig Environment",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var exampleApplication = new Aws.AppConfig.Application("example", new()
/// {
/// Name = "example-application-tf",
/// Description = "Example AppConfig Application",
/// Tags =
/// {
/// { "Type", "AppConfig Application" },
/// },
/// });
///
/// var example = new Aws.AppConfig.Environment("example", new()
/// {
/// Name = "example-environment-tf",
/// Description = "Example AppConfig Environment",
/// ApplicationId = exampleApplication.Id,
/// Monitors = new[]
/// {
/// new Aws.AppConfig.Inputs.EnvironmentMonitorArgs
/// {
/// AlarmArn = exampleAwsCloudwatchMetricAlarm.Arn,
/// AlarmRoleArn = exampleAwsIamRole.Arn,
/// },
/// },
/// Tags =
/// {
/// { "Type", "AppConfig Environment" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/appconfig"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// exampleApplication, err := appconfig.NewApplication(ctx, "example", &appconfig.ApplicationArgs{
/// Name:        pulumi.String("example-application-tf"),
/// Description: pulumi.String("Example AppConfig Application"),
/// Tags: pulumi.StringMap{
/// "Type": pulumi.String("AppConfig Application"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = appconfig.NewEnvironment(ctx, "example", &appconfig.EnvironmentArgs{
/// Name:          pulumi.String("example-environment-tf"),
/// Description:   pulumi.String("Example AppConfig Environment"),
/// ApplicationId: exampleApplication.ID(),
/// Monitors: appconfig.EnvironmentMonitorArray{
/// &appconfig.EnvironmentMonitorArgs{
/// AlarmArn:     pulumi.Any(exampleAwsCloudwatchMetricAlarm.Arn),
/// AlarmRoleArn: pulumi.Any(exampleAwsIamRole.Arn),
/// },
/// },
/// Tags: pulumi.StringMap{
/// "Type": pulumi.String("AppConfig Environment"),
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
/// import com.pulumi.aws.appconfig.Application;
/// import com.pulumi.aws.appconfig.ApplicationArgs;
/// import com.pulumi.aws.appconfig.Environment;
/// import com.pulumi.aws.appconfig.EnvironmentArgs;
/// import com.pulumi.aws.appconfig.inputs.EnvironmentMonitorArgs;
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
/// var exampleApplication = new Application("exampleApplication", ApplicationArgs.builder()
/// .name("example-application-tf")
/// .description("Example AppConfig Application")
/// .tags(Map.of("Type", "AppConfig Application"))
/// .build());
///
/// var example = new Environment("example", EnvironmentArgs.builder()
/// .name("example-environment-tf")
/// .description("Example AppConfig Environment")
/// .applicationId(exampleApplication.id())
/// .monitors(EnvironmentMonitorArgs.builder()
/// .alarmArn(exampleAwsCloudwatchMetricAlarm.arn())
/// .alarmRoleArn(exampleAwsIamRole.arn())
/// .build())
/// .tags(Map.of("Type", "AppConfig Environment"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:appconfig:Environment
/// properties:
/// name: example-environment-tf
/// description: Example AppConfig Environment
/// applicationId: ${exampleApplication.id}
/// monitors:
/// - alarmArn: ${exampleAwsCloudwatchMetricAlarm.arn}
/// alarmRoleArn: ${exampleAwsIamRole.arn}
/// tags:
/// Type: AppConfig Environment
/// exampleApplication:
/// type: aws:appconfig:Application
/// name: example
/// properties:
/// name: example-application-tf
/// description: Example AppConfig Application
/// tags:
/// Type: AppConfig Application
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import AppConfig Environments using the environment ID and application ID separated by a colon (`:`). For example:
///
/// ```sh
/// $ pulumi import aws:appconfig/environment:Environment example 71abcde:11xxxxx
/// ```
class Environment extends CustomResource {
  /// AppConfig application ID. Must be between 4 and 7 characters in length.
  late final Output<String> applicationId;

  /// ARN of the AppConfig Environment.
  late final Output<String> arn;

  /// Description of the environment. Can be at most 1024 characters.
  late final Output<String> description;

  /// AppConfig environment ID.
  late final Output<String> environmentId;

  /// Set of Amazon CloudWatch alarms to monitor during the deployment process. Maximum of 5. See Monitor below for more details.
  late final Output<List<EnvironmentMonitor>?> monitors;

  /// Name for the environment. Must be between 1 and 64 characters in length.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// State of the environment. Possible values are `READY_FOR_DEPLOYMENT`, `DEPLOYING`, `ROLLING_BACK`
  /// or `ROLLED_BACK`.
  late final Output<String> state;

  /// Map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  Environment(
    String name, {
    EnvironmentArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:appconfig/environment:Environment',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.applicationId = Output.createUnknown<String>();
    this.arn = Output.createUnknown<String>();
    this.description = Output.createUnknown<String>();
    this.environmentId = Output.createUnknown<String>();
    this.monitors = Output.createUnknown<List<EnvironmentMonitor>?>();
    this.name = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.state = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
  }
}
