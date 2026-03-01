import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_firehose_delivery_stream_args.dart';
import 'get_firehose_delivery_stream_result.dart';
import 'get_stream_args.dart';
import 'get_stream_consumer_args.dart';
import 'get_stream_consumer_result.dart';
import 'get_stream_result.dart';

/// Use this data source to get information about a Kinesis Firehose Delivery Stream for use in other resources.
///
/// For more details, see the [Amazon Kinesis Firehose Documentation](https://aws.amazon.com/documentation/firehose/).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const stream = aws.kinesis.getFirehoseDeliveryStream({
///     name: "stream-name",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// stream = aws.kinesis.get_firehose_delivery_stream(name="stream-name")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var stream = Aws.Kinesis.GetFirehoseDeliveryStream.Invoke(new()
///     {
///         Name = "stream-name",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kinesis"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := kinesis.LookupFirehoseDeliveryStream(ctx, &kinesis.LookupFirehoseDeliveryStreamArgs{
/// 			Name: "stream-name",
/// 		}, nil)
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
/// import com.pulumi.aws.kinesis.KinesisFunctions;
/// import com.pulumi.aws.kinesis.inputs.GetFirehoseDeliveryStreamArgs;
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
///         final var stream = KinesisFunctions.getFirehoseDeliveryStream(GetFirehoseDeliveryStreamArgs.builder()
///             .name("stream-name")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   stream:
///     fn::invoke:
///       function: aws:kinesis:getFirehoseDeliveryStream
///       arguments:
///         name: stream-name
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_kinesis_get_firehose_delivery_stream_get_firehose_delivery_stream_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFirehoseDeliveryStreamResult> getFirehoseDeliveryStream(
  GetFirehoseDeliveryStreamArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:kinesis/getFirehoseDeliveryStream:getFirehoseDeliveryStream',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFirehoseDeliveryStreamResult.fromMap(result);
}

/// Use this data source to get information about a Kinesis Stream for use in other
/// resources.
///
/// For more details, see the [Amazon Kinesis Documentation](https://aws.amazon.com/documentation/kinesis/).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const stream = aws.kinesis.getStream({
///     name: "stream-name",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// stream = aws.kinesis.get_stream(name="stream-name")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var stream = Aws.Kinesis.GetStream.Invoke(new()
///     {
///         Name = "stream-name",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kinesis"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := kinesis.LookupStream(ctx, &kinesis.LookupStreamArgs{
/// 			Name: "stream-name",
/// 		}, nil)
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
/// import com.pulumi.aws.kinesis.KinesisFunctions;
/// import com.pulumi.aws.kinesis.inputs.GetStreamArgs;
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
///         final var stream = KinesisFunctions.getStream(GetStreamArgs.builder()
///             .name("stream-name")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   stream:
///     fn::invoke:
///       function: aws:kinesis:getStream
///       arguments:
///         name: stream-name
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_kinesis_get_stream_get_stream_args_doc}
/// [options] Invoke options controlling this call.
Future<GetStreamResult> getStream(
  GetStreamArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:kinesis/getStream:getStream',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetStreamResult.fromMap(result);
}

/// Provides details about a Kinesis Stream Consumer.
///
/// For more details, see the [Amazon Kinesis Stream Consumer Documentation](https://docs.aws.amazon.com/streams/latest/dev/enhanced-consumers.html).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.kinesis.getStreamConsumer({
///     name: "example-consumer",
///     streamArn: exampleAwsKinesisStream.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.kinesis.get_stream_consumer(name="example-consumer",
///     stream_arn=example_aws_kinesis_stream["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Kinesis.GetStreamConsumer.Invoke(new()
///     {
///         Name = "example-consumer",
///         StreamArn = exampleAwsKinesisStream.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kinesis"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := kinesis.LookupStreamConsumer(ctx, &kinesis.LookupStreamConsumerArgs{
/// 			Name:      pulumi.StringRef("example-consumer"),
/// 			StreamArn: exampleAwsKinesisStream.Arn,
/// 		}, nil)
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var example = KinesisFunctions.getStreamConsumer(GetStreamConsumerArgs.builder()
///             .name("example-consumer")
///             .streamArn(exampleAwsKinesisStream.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:kinesis:getStreamConsumer
///       arguments:
///         name: example-consumer
///         streamArn: ${exampleAwsKinesisStream.arn}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_kinesis_get_stream_consumer_get_stream_consumer_args_doc}
/// [options] Invoke options controlling this call.
Future<GetStreamConsumerResult> getStreamConsumer(
  GetStreamConsumerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:kinesis/getStreamConsumer:getStreamConsumer',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetStreamConsumerResult.fromMap(result);
}
