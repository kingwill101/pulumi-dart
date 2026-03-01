import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_transformer_args.dart';
import 'log_transformer_state.dart';
import 'log_transformer_transformer_config.dart';

/// Resource for managing an AWS CloudWatch Logs Transformer.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const exampleLogGroup = new aws.cloudwatch.LogGroup("example", {name: "example"});
/// const example = new aws.cloudwatch.LogTransformer("example", {
///     transformerConfigs: [{
///         parseJsons: [{}],
///     }],
///     logGroupArn: exampleLogGroup.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_log_group = aws.cloudwatch.LogGroup("example", name="example")
/// example = aws.cloudwatch.LogTransformer("example",
///     transformer_configs=[{
///         "parse_jsons": [{}],
///     }],
///     log_group_arn=example_log_group.arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleLogGroup = new Aws.CloudWatch.LogGroup("example", new()
///     {
///         Name = "example",
///     });
///
///     var example = new Aws.CloudWatch.LogTransformer("example", new()
///     {
///         TransformerConfigs = new[]
///         {
///             new Aws.CloudWatch.Inputs.LogTransformerTransformerConfigArgs
///             {
///                 ParseJsons = new[]
///                 {
///                     null,
///                 },
///             },
///         },
///         LogGroupArn = exampleLogGroup.Arn,
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
/// 		exampleLogGroup, err := cloudwatch.NewLogGroup(ctx, "example", &cloudwatch.LogGroupArgs{
/// 			Name: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudwatch.NewLogTransformer(ctx, "example", &cloudwatch.LogTransformerArgs{
/// 			TransformerConfigs: cloudwatch.LogTransformerTransformerConfigArray{
/// 				&cloudwatch.LogTransformerTransformerConfigArgs{
/// 					ParseJsons: cloudwatch.LogTransformerTransformerConfigParseJsonArray{
/// 						&cloudwatch.LogTransformerTransformerConfigParseJsonArgs{},
/// 					},
/// 				},
/// 			},
/// 			LogGroupArn: exampleLogGroup.Arn,
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
/// import com.pulumi.aws.cloudwatch.LogGroup;
/// import com.pulumi.aws.cloudwatch.LogGroupArgs;
/// import com.pulumi.aws.cloudwatch.LogTransformer;
/// import com.pulumi.aws.cloudwatch.LogTransformerArgs;
/// import com.pulumi.aws.cloudwatch.inputs.LogTransformerTransformerConfigArgs;
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
///         var exampleLogGroup = new LogGroup("exampleLogGroup", LogGroupArgs.builder()
///             .name("example")
///             .build());
///
///         var example = new LogTransformer("example", LogTransformerArgs.builder()
///             .transformerConfigs(LogTransformerTransformerConfigArgs.builder()
///                 .parseJsons(LogTransformerTransformerConfigParseJsonArgs.builder()
///                     .build())
///                 .build())
///             .logGroupArn(exampleLogGroup.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:cloudwatch:LogTransformer
///     properties:
///       transformerConfigs:
///         - parseJsons:
///             - {}
///       logGroupArn: ${exampleLogGroup.arn}
///   exampleLogGroup:
///     type: aws:cloudwatch:LogGroup
///     name: example
///     properties:
///       name: example
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import CloudWatch Logs Transformer using the `log_group_arn`. For example:
///
/// ```sh
/// $ pulumi import aws:cloudwatch/logTransformer:LogTransformer example arn:aws:logs:us-west-2:123456789012:log-group:example
/// ```
class LogTransformer extends pulumi.CustomResource {
  /// Log group ARN to set the transformer for.
  late final pulumi.Output<String> logGroupArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Specifies the configuration of the transformer. You must include at least one configuration, and 20 at most. See `transformer_config` below for details.
  late final pulumi.Output<List<LogTransformerTransformerConfig>> transformerConfigs;

  /// Creates a new [LogTransformer].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LogTransformer]. {@macro pulumi_cloudwatch_log_transformer_log_transformer_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LogTransformer(
    String name, {
    LogTransformerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatch/logTransformer:LogTransformer',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.logGroupArn = registerOutput<String>('logGroupArn');
    this.region = registerOutput<String>('region');
    this.transformerConfigs = registerOutput<List<LogTransformerTransformerConfig>>('transformerConfigs');
  }

  /// Gets an existing [LogTransformer] resource's state with the given [name] and [id].
  static LogTransformer get(
    String name,
    pulumi.Input<String> id, {
    LogTransformerState? state,
  }) {
    return LogTransformer._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  LogTransformer._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatch/logTransformer:LogTransformer',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.logGroupArn = registerOutput<String>('logGroupArn');
    this.region = registerOutput<String>('region');
    this.transformerConfigs = registerOutput<List<LogTransformerTransformerConfig>>('transformerConfigs');
  }
}
