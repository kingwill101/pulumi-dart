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
