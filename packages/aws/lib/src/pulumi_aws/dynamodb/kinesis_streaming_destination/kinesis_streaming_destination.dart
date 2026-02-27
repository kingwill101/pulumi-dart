import 'package:pulumi/pulumi.dart' as pulumi;
import 'kinesis_streaming_destination_args.dart';

/// Enables a [Kinesis streaming destination](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/kds.html) for data replication of a DynamoDB table.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import DynamoDB Kinesis Streaming Destinations using the `table_name` and `stream_arn` separated by `,`. For example:
///
/// ```sh
/// $ pulumi import aws:dynamodb/kinesisStreamingDestination:KinesisStreamingDestination example example,arn:aws:kinesis:us-east-1:111122223333:exampleStreamName
/// ```
class KinesisStreamingDestination extends pulumi.CustomResource {
  /// Toggle for the precision of Kinesis data stream timestamp. Valid values: `MILLISECOND` and `MICROSECOND`.
  late final pulumi.Output<String> approximateCreationDateTimePrecision;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The ARN for a Kinesis data stream. This must exist in the same account and region as the DynamoDB table.
  late final pulumi.Output<String> streamArn;

  /// The name of the DynamoDB table. There can only be one Kinesis streaming destination for a given DynamoDB table.
  late final pulumi.Output<String> tableName;

  KinesisStreamingDestination(
    String name, {
    KinesisStreamingDestinationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:dynamodb/kinesisStreamingDestination:KinesisStreamingDestination',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.approximateCreationDateTimePrecision =
        registerOutput<String>('approximateCreationDateTimePrecision');
    this.region = registerOutput<String>('region');
    this.streamArn = registerOutput<String>('streamArn');
    this.tableName = registerOutput<String>('tableName');
  }
}
