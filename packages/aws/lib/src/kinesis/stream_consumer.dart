import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_consumer_args.dart';

/// Provides a resource to manage a Kinesis Stream Consumer.
///
/// > **Note:** You can register up to 20 consumers per stream. A given consumer can only be registered with one stream at a time.
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
/// const example = new aws.kinesis.Stream("example", {
///     name: "example-stream",
///     shardCount: 1,
/// });
/// const exampleStreamConsumer = new aws.kinesis.StreamConsumer("example", {
///     name: "example-consumer",
///     streamArn: example.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.kinesis.Stream("example",
///     name="example-stream",
///     shard_count=1)
/// example_stream_consumer = aws.kinesis.StreamConsumer("example",
///     name="example-consumer",
///     stream_arn=example.arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Kinesis.Stream("example", new()
///     {
///         Name = "example-stream",
///         ShardCount = 1,
///     });
///
///     var exampleStreamConsumer = new Aws.Kinesis.StreamConsumer("example", new()
///     {
///         Name = "example-consumer",
///         StreamArn = example.Arn,
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
/// 		example, err := kinesis.NewStream(ctx, "example", &kinesis.StreamArgs{
/// 			Name:       pulumi.String("example-stream"),
/// 			ShardCount: pulumi.Int(1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = kinesis.NewStreamConsumer(ctx, "example", &kinesis.StreamConsumerArgs{
/// 			Name:      pulumi.String("example-consumer"),
/// 			StreamArn: example.Arn,
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
/// import com.pulumi.aws.kinesis.Stream;
/// import com.pulumi.aws.kinesis.StreamArgs;
/// import com.pulumi.aws.kinesis.StreamConsumer;
/// import com.pulumi.aws.kinesis.StreamConsumerArgs;
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
///         var example = new Stream("example", StreamArgs.builder()
///             .name("example-stream")
///             .shardCount(1)
///             .build());
///
///         var exampleStreamConsumer = new StreamConsumer("exampleStreamConsumer", StreamConsumerArgs.builder()
///             .name("example-consumer")
///             .streamArn(example.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:kinesis:Stream
///     properties:
///       name: example-stream
///       shardCount: 1
///   exampleStreamConsumer:
///     type: aws:kinesis:StreamConsumer
///     name: example
///     properties:
///       name: example-consumer
///       streamArn: ${example.arn}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Kinesis Stream Consumers using the Amazon Resource Name (ARN). For example:
///
/// ```sh
/// $ pulumi import aws:kinesis/streamConsumer:StreamConsumer example arn:aws:kinesis:us-west-2:123456789012:stream/example/consumer/example:1616044553
/// ```
///
/// [1]: https://docs.aws.amazon.com/streams/latest/dev/enhanced-consumers.html
class StreamConsumer extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) of the stream consumer.
  late final pulumi.Output<String> arn;
  /// Approximate timestamp in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) of when the stream consumer was created.
  late final pulumi.Output<String> creationTimestamp;
  /// Name of the stream consumer.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Amazon Resource Name (ARN) of the data stream the consumer is registered with.
  late final pulumi.Output<String> streamArn;
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [StreamConsumer].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [StreamConsumer]. {@macro pulumi_kinesis_stream_consumer_stream_consumer_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  StreamConsumer(
    String name, {
    StreamConsumerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:kinesis/streamConsumer:StreamConsumer',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.streamArn = registerOutput<String>('streamArn');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
