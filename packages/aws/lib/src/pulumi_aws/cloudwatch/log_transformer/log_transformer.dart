import 'package:pulumi/pulumi.dart';
import '../log_transformer_transformer_config/log_transformer_transformer_config.dart';
import 'log_transformer_args.dart';

/// Resource for managing an AWS CloudWatch Logs Transformer.
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
/// const exampleLogGroup = new aws.cloudwatch.LogGroup("example", {name: "example"});
/// const example = new aws.cloudwatch.LogTransformer("example", {
/// transformerConfigs: [{
/// parseJsons: [{}],
/// }],
/// logGroupArn: exampleLogGroup.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_log_group = aws.cloudwatch.LogGroup("example", name="example")
/// example = aws.cloudwatch.LogTransformer("example",
/// transformer_configs=[{
/// "parse_jsons": [{}],
/// }],
/// log_group_arn=example_log_group.arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var exampleLogGroup = new Aws.CloudWatch.LogGroup("example", new()
/// {
/// Name = "example",
/// });
///
/// var example = new Aws.CloudWatch.LogTransformer("example", new()
/// {
/// TransformerConfigs = new[]
/// {
/// new Aws.CloudWatch.Inputs.LogTransformerTransformerConfigArgs
/// {
/// ParseJsons = new[]
/// {
/// null,
/// },
/// },
/// },
/// LogGroupArn = exampleLogGroup.Arn,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// exampleLogGroup, err := cloudwatch.NewLogGroup(ctx, "example", &cloudwatch.LogGroupArgs{
/// Name: pulumi.String("example"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = cloudwatch.NewLogTransformer(ctx, "example", &cloudwatch.LogTransformerArgs{
/// TransformerConfigs: cloudwatch.LogTransformerTransformerConfigArray{
/// &cloudwatch.LogTransformerTransformerConfigArgs{
/// ParseJsons: cloudwatch.LogTransformerTransformerConfigParseJsonArray{
/// &cloudwatch.LogTransformerTransformerConfigParseJsonArgs{},
/// },
/// },
/// },
/// LogGroupArn: exampleLogGroup.Arn,
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var exampleLogGroup = new LogGroup("exampleLogGroup", LogGroupArgs.builder()
/// .name("example")
/// .build());
///
/// var example = new LogTransformer("example", LogTransformerArgs.builder()
/// .transformerConfigs(LogTransformerTransformerConfigArgs.builder()
/// .parseJsons(LogTransformerTransformerConfigParseJsonArgs.builder()
/// .build())
/// .build())
/// .logGroupArn(exampleLogGroup.arn())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:cloudwatch:LogTransformer
/// properties:
/// transformerConfigs:
/// - parseJsons:
/// - {}
/// logGroupArn: ${exampleLogGroup.arn}
/// exampleLogGroup:
/// type: aws:cloudwatch:LogGroup
/// name: example
/// properties:
/// name: example
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import CloudWatch Logs Transformer using the <span pulumi-lang-nodejs="`logGroupArn`" pulumi-lang-dotnet="`LogGroupArn`" pulumi-lang-go="`logGroupArn`" pulumi-lang-python="`log_group_arn`" pulumi-lang-yaml="`logGroupArn`" pulumi-lang-java="`logGroupArn`">`log_group_arn`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:cloudwatch/logTransformer:LogTransformer example arn:aws:logs:us-west-2:123456789012:log-group:example
/// ```
class LogTransformer extends CustomResource {
  /// Log group ARN to set the transformer for.
  late final Output<String> logGroupArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Specifies the configuration of the transformer. You must include at least one configuration, and 20 at most. See <span pulumi-lang-nodejs="`transformerConfig`" pulumi-lang-dotnet="`TransformerConfig`" pulumi-lang-go="`transformerConfig`" pulumi-lang-python="`transformer_config`" pulumi-lang-yaml="`transformerConfig`" pulumi-lang-java="`transformerConfig`">`transformer_config`</span> below for details.
  late final Output<List<LogTransformerTransformerConfig>> transformerConfigs;

  LogTransformer(
    String name, {
    LogTransformerArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatch/logTransformer:LogTransformer',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.logGroupArn = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.transformerConfigs =
        Output.createUnknown<List<LogTransformerTransformerConfig>>();
  }
}
