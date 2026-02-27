import 'package:pulumi/pulumi.dart' as pulumi;
import '../event_bus_dead_letter_config/event_bus_dead_letter_config.dart';
import '../event_bus_log_config/event_bus_log_config.dart';
import 'event_bus_args.dart';

/// Provides an EventBridge event bus resource.
///
/// > **Note:** EventBridge was formerly known as CloudWatch Events. The functionality is identical.
///
/// ## Example Usage
///
/// ### Basic Usages
///
///
///
///
///
/// ### Logging to CloudWatch Logs, S3, and Data Firehose
///
/// See [Configuring logs for Amazon EventBridge event buses](https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-event-bus-logs.html) for more details.
///
/// #### Required Resources
///
/// * EventBridge Event Bus with `log_config` configured
/// * Log destinations:
///
/// * CloudWatch Logs log group
/// * S3 bucket
/// * Data Firehose delivery stream
///
/// * Resource-based policy or tagging for the service-linked role:
///
/// * CloudWatch Logs log group - `aws.cloudwatch.LogResourcePolicy` to allow `delivery.logs.amazonaws.com` to put logs into the log group
/// * S3 bucket - `aws.s3.BucketPolicy` to allow `delivery.logs.amazonaws.com` to put logs into the bucket
/// * Data Firehose delivery stream - tagging the delivery stream with `LogDeliveryEnabled = "true"` to allow the service-linked role `AWSServiceRoleForLogDelivery` to deliver logs
///
/// * CloudWatch Logs Delivery:
///
/// * `aws.cloudwatch.LogDeliverySource` for each log type (INFO, ERROR, TRACE)
/// * `aws.cloudwatch.LogDeliveryDestination` for the log destination (S3 bucket, CloudWatch Logs log group, or Data Firehose delivery stream)
/// * `aws.cloudwatch.LogDelivery` to link each log type’s delivery source to the delivery destination
///
/// ### Example Usage
///
/// The following example demonstrates how to set up logging for an EventBridge event bus to all three destinations: CloudWatch Logs, S3, and Data Firehose.
///
///
///
/// ## Import
///
/// Using `pulumi import`, import EventBridge event buses using the name of the event bus (which can also be a partner event source name). For example:
///
/// ```sh
/// $ pulumi import aws:cloudwatch/eventBus:EventBus messenger chat-messages
/// ```
class EventBus extends pulumi.CustomResource {
  /// ARN of the event bus.
  late final pulumi.Output<String> arn;

  /// Configuration details of the Amazon SQS queue for EventBridge to use as a dead-letter queue (DLQ). This block supports the following arguments:
  late final pulumi.Output<EventBusDeadLetterConfig?> deadLetterConfig;

  /// Event bus description.
  late final pulumi.Output<String?> description;

  /// Partner event source that the new event bus will be matched with. Must match `name`.
  late final pulumi.Output<String?> eventSourceName;

  /// Identifier of the AWS KMS customer managed key for EventBridge to use, if you choose to use a customer managed key to encrypt events on this event bus. The identifier can be the key Amazon Resource Name (ARN), KeyId, key alias, or key alias ARN.
  late final pulumi.Output<String?> kmsKeyIdentifier;

  /// Block for logging configuration settings for the event bus.
  late final pulumi.Output<EventBusLogConfig?> logConfig;

  /// Name of the new event bus. The names of custom event buses can't contain the / character. To create a partner event bus, ensure that the `name` matches the `event_source_name`.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  EventBus(
    String name, {
    EventBusArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatch/eventBus:EventBus',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.deadLetterConfig =
        registerOutput<EventBusDeadLetterConfig?>('deadLetterConfig');
    this.description = registerOutput<String?>('description');
    this.eventSourceName = registerOutput<String?>('eventSourceName');
    this.kmsKeyIdentifier = registerOutput<String?>('kmsKeyIdentifier');
    this.logConfig = registerOutput<EventBusLogConfig?>('logConfig');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
