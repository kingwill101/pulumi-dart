import 'package:pulumi/pulumi.dart';
import 'logging_options_args.dart';

/// Provides a resource to manage [default logging options](https://docs.aws.amazon.com/iot/latest/developerguide/configure-logging.html#configure-logging-console).
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.iot.LoggingOptions("example", {
/// defaultLogLevel: "WARN",
/// roleArn: exampleAwsIamRole.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.iot.LoggingOptions("example",
/// default_log_level="WARN",
/// role_arn=example_aws_iam_role["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Iot.LoggingOptions("example", new()
/// {
/// DefaultLogLevel = "WARN",
/// RoleArn = exampleAwsIamRole.Arn,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iot"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := iot.NewLoggingOptions(ctx, "example", &iot.LoggingOptionsArgs{
/// DefaultLogLevel: pulumi.String("WARN"),
/// RoleArn:         pulumi.Any(exampleAwsIamRole.Arn),
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
/// import com.pulumi.aws.iot.LoggingOptions;
/// import com.pulumi.aws.iot.LoggingOptionsArgs;
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
/// var example = new LoggingOptions("example", LoggingOptionsArgs.builder()
/// .defaultLogLevel("WARN")
/// .roleArn(exampleAwsIamRole.arn())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:iot:LoggingOptions
/// properties:
/// defaultLogLevel: WARN
/// roleArn: ${exampleAwsIamRole.arn}
/// ```
/// <!--End PulumiCodeChooser -->
class LoggingOptions extends CustomResource {
  /// The default logging level. Valid Values: `"DEBUG"`, `"INFO"`, `"ERROR"`, `"WARN"`, `"DISABLED"`.
  late final Output<String> defaultLogLevel;

  /// If <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> all logs are disabled. The default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  late final Output<bool?> disableAllLogs;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The ARN of the role that allows IoT to write to Cloudwatch logs.
  late final Output<String> roleArn;

  LoggingOptions(
    String name, {
    LoggingOptionsArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:iot/loggingOptions:LoggingOptions',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.defaultLogLevel = Output.createUnknown<String>();
    this.disableAllLogs = Output.createUnknown<bool?>();
    this.region = Output.createUnknown<String>();
    this.roleArn = Output.createUnknown<String>();
  }
}
