import 'package:pulumi/pulumi.dart';
import 'get_stream_consumer_args.dart';
import 'get_stream_consumer_result.dart';

/// Provides details about a Kinesis Stream Consumer.
///
/// For more details, see the [Amazon Kinesis Stream Consumer Documentation](https://docs.aws.amazon.com/streams/latest/dev/enhanced-consumers.html).
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.kinesis.getStreamConsumer({
/// name: "example-consumer",
/// streamArn: exampleAwsKinesisStream.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.kinesis.get_stream_consumer(name="example-consumer",
/// stream_arn=example_aws_kinesis_stream["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Kinesis.GetStreamConsumer.Invoke(new()
/// {
/// Name = "example-consumer",
/// StreamArn = exampleAwsKinesisStream.Arn,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kinesis"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := kinesis.LookupStreamConsumer(ctx, &kinesis.LookupStreamConsumerArgs{
/// Name:      pulumi.StringRef("example-consumer"),
/// StreamArn: exampleAwsKinesisStream.Arn,
/// }, nil)
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
/// import com.pulumi.aws.kinesis.KinesisFunctions;
/// import com.pulumi.aws.kinesis.inputs.GetStreamConsumerArgs;
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
/// final var example = KinesisFunctions.getStreamConsumer(GetStreamConsumerArgs.builder()
/// .name("example-consumer")
/// .streamArn(exampleAwsKinesisStream.arn())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:kinesis:getStreamConsumer
/// arguments:
/// name: example-consumer
/// streamArn: ${exampleAwsKinesisStream.arn}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetStreamConsumerResult> getStreamConsumer(
  GetStreamConsumerArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:kinesis/getStreamConsumer:getStreamConsumer',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetStreamConsumerResult.fromMap(result);
}
