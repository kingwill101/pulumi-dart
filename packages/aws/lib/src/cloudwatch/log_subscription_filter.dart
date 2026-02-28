import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_subscription_filter_args.dart';

/// Provides a CloudWatch Logs subscription filter resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const testLambdafunctionLogfilter = new aws.cloudwatch.LogSubscriptionFilter("test_lambdafunction_logfilter", {
///     name: "test_lambdafunction_logfilter",
///     roleArn: iamForLambda.arn,
///     logGroup: "/aws/lambda/example_lambda_name",
///     filterPattern: "logtype test",
///     destinationArn: testLogstream.arn,
///     distribution: "Random",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test_lambdafunction_logfilter = aws.cloudwatch.LogSubscriptionFilter("test_lambdafunction_logfilter",
///     name="test_lambdafunction_logfilter",
///     role_arn=iam_for_lambda["arn"],
///     log_group="/aws/lambda/example_lambda_name",
///     filter_pattern="logtype test",
///     destination_arn=test_logstream["arn"],
///     distribution="Random")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var testLambdafunctionLogfilter = new Aws.CloudWatch.LogSubscriptionFilter("test_lambdafunction_logfilter", new()
///     {
///         Name = "test_lambdafunction_logfilter",
///         RoleArn = iamForLambda.Arn,
///         LogGroup = "/aws/lambda/example_lambda_name",
///         FilterPattern = "logtype test",
///         DestinationArn = testLogstream.Arn,
///         Distribution = "Random",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudwatch.NewLogSubscriptionFilter(ctx, "test_lambdafunction_logfilter", &cloudwatch.LogSubscriptionFilterArgs{
/// 			Name:           pulumi.String("test_lambdafunction_logfilter"),
/// 			RoleArn:        pulumi.Any(iamForLambda.Arn),
/// 			LogGroup:       pulumi.Any("/aws/lambda/example_lambda_name"),
/// 			FilterPattern:  pulumi.String("logtype test"),
/// 			DestinationArn: pulumi.Any(testLogstream.Arn),
/// 			Distribution:   pulumi.String("Random"),
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
/// import com.pulumi.aws.cloudwatch.LogSubscriptionFilter;
/// import com.pulumi.aws.cloudwatch.LogSubscriptionFilterArgs;
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
///         var testLambdafunctionLogfilter = new LogSubscriptionFilter("testLambdafunctionLogfilter", LogSubscriptionFilterArgs.builder()
///             .name("test_lambdafunction_logfilter")
///             .roleArn(iamForLambda.arn())
///             .logGroup("/aws/lambda/example_lambda_name")
///             .filterPattern("logtype test")
///             .destinationArn(testLogstream.arn())
///             .distribution("Random")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   testLambdafunctionLogfilter:
///     type: aws:cloudwatch:LogSubscriptionFilter
///     name: test_lambdafunction_logfilter
///     properties:
///       name: test_lambdafunction_logfilter
///       roleArn: ${iamForLambda.arn}
///       logGroup: /aws/lambda/example_lambda_name
///       filterPattern: logtype test
///       destinationArn: ${testLogstream.arn}
///       distribution: Random
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import CloudWatch Logs subscription filter using the log group name and subscription filter name separated by `|`. For example:
///
/// ```sh
/// $ pulumi import aws:cloudwatch/logSubscriptionFilter:LogSubscriptionFilter test_lambdafunction_logfilter "/aws/lambda/example_lambda_name|test_lambdafunction_logfilter"
/// ```
class LogSubscriptionFilter extends pulumi.CustomResource {
  /// Boolean to indicate whether to apply the subscription filter on the transformed version of the log events instead of the original ingested log events. Defaults to `false`. Valid only for log groups that have an active log transformer.
  late final pulumi.Output<bool> applyOnTransformedLogs;

  /// ARN of the destination to deliver matching log events to. Kinesis stream or Lambda function ARN.
  late final pulumi.Output<String> destinationArn;

  /// Method used to distribute log data to the destination. By default log data is grouped by log stream, but the grouping can be set to random for a more even distribution. This property is only applicable when the destination is an Amazon Kinesis stream. Valid values are "Random" and "ByLogStream".
  late final pulumi.Output<String?> distribution;

  /// List of system fields to include in the log events sent to the subscription destination. These fields provide source information for centralized log data in the forwarded payload. Valid values: `"@aws.account"`, `"@aws.region"`. To remove this argument after it has been set, specify an empty list `[]` explicitly to avoid perpetual differences.
  late final pulumi.Output<List<String>?> emitSystemFields;

  /// Valid CloudWatch Logs filter pattern for subscribing to a filtered stream of log events. Use empty string `""` to match everything. For more information, see the [Amazon CloudWatch Logs User Guide](https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/FilterAndPatternSyntax.html).
  late final pulumi.Output<String> filterPattern;

  /// Name of the log group to associate the subscription filter with.
  late final pulumi.Output<String> logGroup;

  /// Name for the subscription filter.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// ARN of an IAM role that grants CloudWatch Logs permissions to deliver ingested log events to the destination stream. You don't need to provide the ARN when you are working with a logical destination for cross-account delivery. If you use Lambda as a destination, you should skip this argument and use `aws.lambda.Permission` resource for granting access from CloudWatch logs to the destination Lambda function.
  late final pulumi.Output<String> roleArn;

  /// Creates a new [LogSubscriptionFilter].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LogSubscriptionFilter]. {@macro pulumi_cloudwatch_log_subscription_filter_log_subscription_filter_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LogSubscriptionFilter(
    String name, {
    LogSubscriptionFilterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatch/logSubscriptionFilter:LogSubscriptionFilter',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.applyOnTransformedLogs =
        registerOutput<bool>('applyOnTransformedLogs');
    this.destinationArn = registerOutput<String>('destinationArn');
    this.distribution = registerOutput<String?>('distribution');
    this.emitSystemFields = registerOutput<List<String>?>('emitSystemFields');
    this.filterPattern = registerOutput<String>('filterPattern');
    this.logGroup = registerOutput<String>('logGroup');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.roleArn = registerOutput<String>('roleArn');
  }
}
