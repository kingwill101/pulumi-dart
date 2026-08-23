import 'package:pulumi/pulumi.dart' as pulumi;
import 'logging_options_args.dart';
import 'logging_options_state.dart';

/// Provides a resource to manage [default logging options](https://docs.aws.amazon.com/iot/latest/developerguide/configure-logging.html#configure-logging-console).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.iot.LoggingOptions("example", {
///     defaultLogLevel: "WARN",
///     roleArn: exampleAwsIamRole.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.iot.LoggingOptions("example",
///     default_log_level="WARN",
///     role_arn=example_aws_iam_role["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Iot.LoggingOptions("example", new()
///     {
///         DefaultLogLevel = "WARN",
///         RoleArn = exampleAwsIamRole.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iot"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iot.NewLoggingOptions(ctx, "example", &iot.LoggingOptionsArgs{
/// 			DefaultLogLevel: pulumi.String("WARN"),
/// 			RoleArn:         pulumi.Any(exampleAwsIamRole.Arn),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_iot_loggingoptions" "example" {
///   default_log_level = "WARN"
///   role_arn          = exampleAwsIamRole.arn
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
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var example = new LoggingOptions("example", LoggingOptionsArgs.builder()
///             .defaultLogLevel("WARN")
///             .roleArn(exampleAwsIamRole.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:iot:LoggingOptions
///     properties:
///       defaultLogLevel: WARN
///       roleArn: ${exampleAwsIamRole.arn}
/// ```
class LoggingOptions extends pulumi.CustomResource {
  /// The default logging level. Valid Values: `"DEBUG"`, `"INFO"`, `"ERROR"`, `"WARN"`, `"DISABLED"`.
  late final pulumi.Output<String> defaultLogLevel;
  /// If `true` all logs are disabled. The default is `false`.
  late final pulumi.Output<bool?> disableAllLogs;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The ARN of the role that allows IoT to write to Cloudwatch logs.
  late final pulumi.Output<String> roleArn;

  /// Creates a new [LoggingOptions].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LoggingOptions]. {@macro pulumi_iot_logging_options_logging_options_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LoggingOptions(
    String name, {
    LoggingOptionsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:iot/loggingOptions:LoggingOptions',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    defaultLogLevel = registerOutput<String>('defaultLogLevel');
    disableAllLogs = registerOutput<bool?>('disableAllLogs');
    region = registerOutput<String>('region');
    roleArn = registerOutput<String>('roleArn');
  }

  /// Gets an existing [LoggingOptions] resource's state with the given [name] and [id].
  static LoggingOptions get(
    String name,
    pulumi.Input<String> id, {
    LoggingOptionsState? state,
  }) {
    return LoggingOptions._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  LoggingOptions._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:iot/loggingOptions:LoggingOptions',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    defaultLogLevel = registerOutput<String>('defaultLogLevel');
    disableAllLogs = registerOutput<bool?>('disableAllLogs');
    region = registerOutput<String>('region');
    roleArn = registerOutput<String>('roleArn');
  }
}
