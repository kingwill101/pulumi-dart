import 'package:pulumi/pulumi.dart' as pulumi;
import '../event_source_mapping_amazon_managed_kafka_event_source_config/event_source_mapping_amazon_managed_kafka_event_source_config.dart';
import '../event_source_mapping_destination_config/event_source_mapping_destination_config.dart';
import '../event_source_mapping_document_db_event_source_config/event_source_mapping_document_db_event_source_config.dart';
import '../event_source_mapping_filter_criteria/event_source_mapping_filter_criteria.dart';
import '../event_source_mapping_metrics_config/event_source_mapping_metrics_config.dart';
import '../event_source_mapping_provisioned_poller_config/event_source_mapping_provisioned_poller_config.dart';
import '../event_source_mapping_scaling_config/event_source_mapping_scaling_config.dart';
import '../event_source_mapping_self_managed_event_source/event_source_mapping_self_managed_event_source.dart';
import '../event_source_mapping_self_managed_kafka_event_source_config/event_source_mapping_self_managed_kafka_event_source_config.dart';
import '../event_source_mapping_source_access_configuration/event_source_mapping_source_access_configuration.dart';
import 'event_source_mapping_args.dart';

/// Manages an AWS Lambda Event Source Mapping. Use this resource to connect Lambda functions to event sources like Kinesis, DynamoDB, SQS, Amazon MQ, and Managed Streaming for Apache Kafka (MSK).
///
/// For information about Lambda and how to use it, see [What is AWS Lambda?](http://docs.aws.amazon.com/lambda/latest/dg/welcome.html). For information about event source mappings, see [CreateEventSourceMapping](http://docs.aws.amazon.com/lambda/latest/dg/API_CreateEventSourceMapping.html) in the API docs.
///
/// ## Example Usage
///
/// ### DynamoDB Stream
///
///
///
/// ### Kinesis Stream
///
///
///
/// ### SQS Queue
///
///
///
/// ### SQS with Event Filtering
///
///
///
/// ### Amazon MSK
///
///
///
/// ### Self-Managed Apache Kafka
///
///
///
/// ### Amazon MQ (ActiveMQ)
///
///
///
/// ### Amazon MQ (RabbitMQ)
///
///
///
/// ### DocumentDB Change Stream
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Lambda event source mappings using the `UUID` (event source mapping identifier). For example:
///
/// ```sh
/// $ pulumi import aws:lambda/eventSourceMapping:EventSourceMapping example 12345kxodurf3443
/// ```
class EventSourceMapping extends pulumi.CustomResource {
  /// Additional configuration block for Amazon Managed Kafka sources. Incompatible with `self_managed_event_source` and `self_managed_kafka_event_source_config`. See below.
  late final pulumi
      .Output<EventSourceMappingAmazonManagedKafkaEventSourceConfig>
      amazonManagedKafkaEventSourceConfig;

  /// Event source mapping ARN.
  late final pulumi.Output<String> arn;

  /// Largest number of records that Lambda will retrieve from your event source at the time of invocation. Defaults to `100` for DynamoDB, Kinesis, MQ and MSK, `10` for SQS.
  late final pulumi.Output<int?> batchSize;

  /// Whether to split the batch in two and retry if the function returns an error. Only available for stream sources (DynamoDB and Kinesis). Defaults to `false`.
  late final pulumi.Output<bool?> bisectBatchOnFunctionError;

  /// Amazon SQS queue, Amazon SNS topic or Amazon S3 bucket (only available for Kafka sources) destination for failed records. Only available for stream sources (DynamoDB and Kinesis) and Kafka sources (Amazon MSK and Self-managed Apache Kafka). See below.
  late final pulumi.Output<EventSourceMappingDestinationConfig?>
      destinationConfig;

  /// Configuration settings for a DocumentDB event source. See below.
  late final pulumi.Output<EventSourceMappingDocumentDbEventSourceConfig?>
      documentDbEventSourceConfig;

  /// Whether the mapping is enabled. Defaults to `true`.
  late final pulumi.Output<bool?> enabled;

  /// Event source ARN - required for Kinesis stream, DynamoDB stream, SQS queue, MQ broker, MSK cluster or DocumentDB change stream. Incompatible with Self Managed Kafka source.
  late final pulumi.Output<String?> eventSourceArn;

  /// Criteria to use for [event filtering](https://docs.aws.amazon.com/lambda/latest/dg/invocation-eventfiltering.html) Kinesis stream, DynamoDB stream, SQS queue event sources. See below.
  late final pulumi.Output<EventSourceMappingFilterCriteria?> filterCriteria;

  /// ARN of the Lambda function the event source mapping is sending events to. (Note: this is a computed value that differs from `function_name` above.)
  late final pulumi.Output<String> functionArn;

  /// Name or ARN of the Lambda function that will be subscribing to events.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> functionName;

  /// List of current response type enums applied to the event source mapping for [AWS Lambda checkpointing](https://docs.aws.amazon.com/lambda/latest/dg/with-ddb.html#services-ddb-batchfailurereporting). Only available for SQS and stream sources (DynamoDB and Kinesis). Valid values: `ReportBatchItemFailures`.
  late final pulumi.Output<List<String>?> functionResponseTypes;

  /// ARN of the Key Management Service (KMS) customer managed key that Lambda uses to encrypt your function's filter criteria.
  late final pulumi.Output<String?> kmsKeyArn;

  /// Date this resource was last modified.
  late final pulumi.Output<String> lastModified;

  /// Result of the last AWS Lambda invocation of your Lambda function.
  late final pulumi.Output<String> lastProcessingResult;

  /// Maximum amount of time to gather records before invoking the function, in seconds (between 0 and 300). Records will continue to buffer until either `maximum_batching_window_in_seconds` expires or `batch_size` has been met. For streaming event sources, defaults to as soon as records are available in the stream. Only available for stream sources (DynamoDB and Kinesis) and SQS standard queues.
  late final pulumi.Output<int?> maximumBatchingWindowInSeconds;

  /// Maximum age of a record that Lambda sends to a function for processing. Only available for stream sources (DynamoDB and Kinesis). Must be either -1 (forever, and the default value) or between 60 and 604800 (inclusive).
  late final pulumi.Output<int> maximumRecordAgeInSeconds;

  /// Maximum number of times to retry when the function returns an error. Only available for stream sources (DynamoDB and Kinesis). Minimum and default of -1 (forever), maximum of 10000.
  late final pulumi.Output<int> maximumRetryAttempts;

  /// CloudWatch metrics configuration of the event source. Only available for stream sources (DynamoDB and Kinesis) and SQS queues. See below.
  late final pulumi.Output<EventSourceMappingMetricsConfig?> metricsConfig;

  /// Number of batches to process from each shard concurrently. Only available for stream sources (DynamoDB and Kinesis). Minimum and default of 1, maximum of 10.
  late final pulumi.Output<int> parallelizationFactor;

  /// Event poller configuration for the event source. Only valid for Amazon MSK or self-managed Apache Kafka sources. See below.
  late final pulumi.Output<EventSourceMappingProvisionedPollerConfig?>
      provisionedPollerConfig;

  /// Name of the Amazon MQ broker destination queue to consume. Only available for MQ sources. The list must contain exactly one queue name.
  late final pulumi.Output<String?> queues;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Scaling configuration of the event source. Only available for SQS queues. See below.
  late final pulumi.Output<EventSourceMappingScalingConfig?> scalingConfig;

  /// For Self Managed Kafka sources, the location of the self managed cluster. If set, configuration must also include `source_access_configuration`. See below.
  late final pulumi.Output<EventSourceMappingSelfManagedEventSource?>
      selfManagedEventSource;

  /// Additional configuration block for Self Managed Kafka sources. Incompatible with `event_source_arn` and `amazon_managed_kafka_event_source_config`. See below.
  late final pulumi.Output<EventSourceMappingSelfManagedKafkaEventSourceConfig>
      selfManagedKafkaEventSourceConfig;

  /// For Self Managed Kafka sources, the access configuration for the source. If set, configuration must also include `self_managed_event_source`. See below.
  late final pulumi.Output<List<EventSourceMappingSourceAccessConfiguration>?>
      sourceAccessConfigurations;

  /// Position in the stream where AWS Lambda should start reading. Must be one of `AT_TIMESTAMP` (Kinesis only), `LATEST` or `TRIM_HORIZON` if getting events from Kinesis, DynamoDB, MSK or Self Managed Apache Kafka. Must not be provided if getting events from SQS. More information about these positions can be found in the [AWS DynamoDB Streams API Reference](https://docs.aws.amazon.com/amazondynamodb/latest/APIReference/API_streams_GetShardIterator.html) and [AWS Kinesis API Reference](https://docs.aws.amazon.com/kinesis/latest/APIReference/API_GetShardIterator.html#Kinesis-GetShardIterator-request-ShardIteratorType).
  late final pulumi.Output<String?> startingPosition;

  /// Timestamp in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) of the data record which to start reading when using `starting_position` set to `AT_TIMESTAMP`. If a record with this exact timestamp does not exist, the next later record is chosen. If the timestamp is older than the current trim horizon, the oldest available record is chosen.
  late final pulumi.Output<String?> startingPositionTimestamp;

  /// State of the event source mapping.
  late final pulumi.Output<String> state;

  /// Reason the event source mapping is in its current state.
  late final pulumi.Output<String> stateTransitionReason;

  /// Map of tags to assign to the object. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Name of the Kafka topics. Only available for MSK sources. A single topic name must be specified.
  late final pulumi.Output<List<String>?> topics;

  /// Duration in seconds of a processing window for [AWS Lambda streaming analytics](https://docs.aws.amazon.com/lambda/latest/dg/with-kinesis.html#services-kinesis-windows). The range is between 1 second up to 900 seconds. Only available for stream sources (DynamoDB and Kinesis).
  late final pulumi.Output<int?> tumblingWindowInSeconds;

  /// UUID of the created event source mapping.
  late final pulumi.Output<String> uuid;

  EventSourceMapping(
    String name, {
    EventSourceMappingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lambda/eventSourceMapping:EventSourceMapping',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.amazonManagedKafkaEventSourceConfig =
        registerOutput<EventSourceMappingAmazonManagedKafkaEventSourceConfig>(
            'amazonManagedKafkaEventSourceConfig');
    this.arn = registerOutput<String>('arn');
    this.batchSize = registerOutput<int?>('batchSize');
    this.bisectBatchOnFunctionError =
        registerOutput<bool?>('bisectBatchOnFunctionError');
    this.destinationConfig =
        registerOutput<EventSourceMappingDestinationConfig?>(
            'destinationConfig');
    this.documentDbEventSourceConfig =
        registerOutput<EventSourceMappingDocumentDbEventSourceConfig?>(
            'documentDbEventSourceConfig');
    this.enabled = registerOutput<bool?>('enabled');
    this.eventSourceArn = registerOutput<String?>('eventSourceArn');
    this.filterCriteria =
        registerOutput<EventSourceMappingFilterCriteria?>('filterCriteria');
    this.functionArn = registerOutput<String>('functionArn');
    this.functionName = registerOutput<String>('functionName');
    this.functionResponseTypes =
        registerOutput<List<String>?>('functionResponseTypes');
    this.kmsKeyArn = registerOutput<String?>('kmsKeyArn');
    this.lastModified = registerOutput<String>('lastModified');
    this.lastProcessingResult = registerOutput<String>('lastProcessingResult');
    this.maximumBatchingWindowInSeconds =
        registerOutput<int?>('maximumBatchingWindowInSeconds');
    this.maximumRecordAgeInSeconds =
        registerOutput<int>('maximumRecordAgeInSeconds');
    this.maximumRetryAttempts = registerOutput<int>('maximumRetryAttempts');
    this.metricsConfig =
        registerOutput<EventSourceMappingMetricsConfig?>('metricsConfig');
    this.parallelizationFactor = registerOutput<int>('parallelizationFactor');
    this.provisionedPollerConfig =
        registerOutput<EventSourceMappingProvisionedPollerConfig?>(
            'provisionedPollerConfig');
    this.queues = registerOutput<String?>('queues');
    this.region = registerOutput<String>('region');
    this.scalingConfig =
        registerOutput<EventSourceMappingScalingConfig?>('scalingConfig');
    this.selfManagedEventSource =
        registerOutput<EventSourceMappingSelfManagedEventSource?>(
            'selfManagedEventSource');
    this.selfManagedKafkaEventSourceConfig =
        registerOutput<EventSourceMappingSelfManagedKafkaEventSourceConfig>(
            'selfManagedKafkaEventSourceConfig');
    this.sourceAccessConfigurations =
        registerOutput<List<EventSourceMappingSourceAccessConfiguration>?>(
            'sourceAccessConfigurations');
    this.startingPosition = registerOutput<String?>('startingPosition');
    this.startingPositionTimestamp =
        registerOutput<String?>('startingPositionTimestamp');
    this.state = registerOutput<String>('state');
    this.stateTransitionReason =
        registerOutput<String>('stateTransitionReason');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.topics = registerOutput<List<String>?>('topics');
    this.tumblingWindowInSeconds =
        registerOutput<int?>('tumblingWindowInSeconds');
    this.uuid = registerOutput<String>('uuid');
  }
}
