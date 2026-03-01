// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_source_mapping_amazon_managed_kafka_event_source_config.dart';
import 'event_source_mapping_destination_config.dart';
import 'event_source_mapping_document_db_event_source_config.dart';
import 'event_source_mapping_filter_criteria.dart';
import 'event_source_mapping_metrics_config.dart';
import 'event_source_mapping_provisioned_poller_config.dart';
import 'event_source_mapping_scaling_config.dart';
import 'event_source_mapping_self_managed_event_source.dart';
import 'event_source_mapping_self_managed_kafka_event_source_config.dart';
import 'event_source_mapping_source_access_configuration.dart';

/// {@template pulumi_lambda_event_source_mapping_event_source_mapping_args_doc}
/// The set of arguments for EventSourceMapping.
/// {@endtemplate}
/// {@macro pulumi_lambda_event_source_mapping_event_source_mapping_args_doc}
class EventSourceMappingArgs {
  /// Additional configuration block for Amazon Managed Kafka sources. Incompatible with `self_managed_event_source` and `self_managed_kafka_event_source_config`. See below.
  final pulumi.Input<EventSourceMappingAmazonManagedKafkaEventSourceConfig>?
  amazonManagedKafkaEventSourceConfig;

  /// Largest number of records that Lambda will retrieve from your event source at the time of invocation. Defaults to `100` for DynamoDB, Kinesis, MQ and MSK, `10` for SQS.
  final pulumi.Input<int>? batchSize;

  /// Whether to split the batch in two and retry if the function returns an error. Only available for stream sources (DynamoDB and Kinesis). Defaults to `false`.
  final pulumi.Input<bool>? bisectBatchOnFunctionError;

  /// Amazon SQS queue, Amazon SNS topic or Amazon S3 bucket (only available for Kafka sources) destination for failed records. Only available for stream sources (DynamoDB and Kinesis) and Kafka sources (Amazon MSK and Self-managed Apache Kafka). See below.
  final pulumi.Input<EventSourceMappingDestinationConfig>? destinationConfig;

  /// Configuration settings for a DocumentDB event source. See below.
  final pulumi.Input<EventSourceMappingDocumentDbEventSourceConfig>?
  documentDbEventSourceConfig;

  /// Whether the mapping is enabled. Defaults to `true`.
  final pulumi.Input<bool>? enabled;

  /// Event source ARN - required for Kinesis stream, DynamoDB stream, SQS queue, MQ broker, MSK cluster or DocumentDB change stream. Incompatible with Self Managed Kafka source.
  final pulumi.Input<String>? eventSourceArn;

  /// Criteria to use for [event filtering](https://docs.aws.amazon.com/lambda/latest/dg/invocation-eventfiltering.html) Kinesis stream, DynamoDB stream, SQS queue event sources. See below.
  final pulumi.Input<EventSourceMappingFilterCriteria>? filterCriteria;

  /// Name or ARN of the Lambda function that will be subscribing to events.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> functionName;

  /// List of current response type enums applied to the event source mapping for [AWS Lambda checkpointing](https://docs.aws.amazon.com/lambda/latest/dg/with-ddb.html#services-ddb-batchfailurereporting). Only available for SQS and stream sources (DynamoDB and Kinesis). Valid values: `ReportBatchItemFailures`.
  final pulumi.Input<List<String>>? functionResponseTypes;

  /// ARN of the Key Management Service (KMS) customer managed key that Lambda uses to encrypt your function's filter criteria.
  final pulumi.Input<String>? kmsKeyArn;

  /// Maximum amount of time to gather records before invoking the function, in seconds (between 0 and 300). Records will continue to buffer until either `maximum_batching_window_in_seconds` expires or `batch_size` has been met. For streaming event sources, defaults to as soon as records are available in the stream. Only available for stream sources (DynamoDB and Kinesis) and SQS standard queues.
  final pulumi.Input<int>? maximumBatchingWindowInSeconds;

  /// Maximum age of a record that Lambda sends to a function for processing. Only available for stream sources (DynamoDB and Kinesis). Must be either -1 (forever, and the default value) or between 60 and 604800 (inclusive).
  final pulumi.Input<int>? maximumRecordAgeInSeconds;

  /// Maximum number of times to retry when the function returns an error. Only available for stream sources (DynamoDB and Kinesis). Minimum and default of -1 (forever), maximum of 10000.
  final pulumi.Input<int>? maximumRetryAttempts;

  /// CloudWatch metrics configuration of the event source. Only available for stream sources (DynamoDB and Kinesis) and SQS queues. See below.
  final pulumi.Input<EventSourceMappingMetricsConfig>? metricsConfig;

  /// Number of batches to process from each shard concurrently. Only available for stream sources (DynamoDB and Kinesis). Minimum and default of 1, maximum of 10.
  final pulumi.Input<int>? parallelizationFactor;

  /// Event poller configuration for the event source. Only valid for Amazon MSK or self-managed Apache Kafka sources. See below.
  final pulumi.Input<EventSourceMappingProvisionedPollerConfig>?
  provisionedPollerConfig;

  /// Name of the Amazon MQ broker destination queue to consume. Only available for MQ sources. The list must contain exactly one queue name.
  final pulumi.Input<String>? queues;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Scaling configuration of the event source. Only available for SQS queues. See below.
  final pulumi.Input<EventSourceMappingScalingConfig>? scalingConfig;

  /// For Self Managed Kafka sources, the location of the self managed cluster. If set, configuration must also include `source_access_configuration`. See below.
  final pulumi.Input<EventSourceMappingSelfManagedEventSource>?
  selfManagedEventSource;

  /// Additional configuration block for Self Managed Kafka sources. Incompatible with `event_source_arn` and `amazon_managed_kafka_event_source_config`. See below.
  final pulumi.Input<EventSourceMappingSelfManagedKafkaEventSourceConfig>?
  selfManagedKafkaEventSourceConfig;

  /// For Self Managed Kafka sources, the access configuration for the source. If set, configuration must also include `self_managed_event_source`. See below.
  final pulumi.Input<List<EventSourceMappingSourceAccessConfiguration>>?
  sourceAccessConfigurations;

  /// Position in the stream where AWS Lambda should start reading. Must be one of `AT_TIMESTAMP` (Kinesis only), `LATEST` or `TRIM_HORIZON` if getting events from Kinesis, DynamoDB, MSK or Self Managed Apache Kafka. Must not be provided if getting events from SQS. More information about these positions can be found in the [AWS DynamoDB Streams API Reference](https://docs.aws.amazon.com/amazondynamodb/latest/APIReference/API_streams_GetShardIterator.html) and [AWS Kinesis API Reference](https://docs.aws.amazon.com/kinesis/latest/APIReference/API_GetShardIterator.html#Kinesis-GetShardIterator-request-ShardIteratorType).
  final pulumi.Input<String>? startingPosition;

  /// Timestamp in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) of the data record which to start reading when using `starting_position` set to `AT_TIMESTAMP`. If a record with this exact timestamp does not exist, the next later record is chosen. If the timestamp is older than the current trim horizon, the oldest available record is chosen.
  final pulumi.Input<String>? startingPositionTimestamp;

  /// Map of tags to assign to the object. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Name of the Kafka topics. Only available for MSK sources. A single topic name must be specified.
  final pulumi.Input<List<String>>? topics;

  /// Duration in seconds of a processing window for [AWS Lambda streaming analytics](https://docs.aws.amazon.com/lambda/latest/dg/with-kinesis.html#services-kinesis-windows). The range is between 1 second up to 900 seconds. Only available for stream sources (DynamoDB and Kinesis).
  final pulumi.Input<int>? tumblingWindowInSeconds;

  /// Creates a new [EventSourceMappingArgs].
  /// [amazonManagedKafkaEventSourceConfig] Additional configuration block for Amazon Managed Kafka sources. Incompatible with `self_managed_event_source` and `self_managed_kafka_event_source_config`. See below.
  /// [batchSize] Largest number of records that Lambda will retrieve from your event source at the time of invocation. Defaults to `100` for DynamoDB, Kinesis, MQ and MSK, `10` for SQS.
  /// [bisectBatchOnFunctionError] Whether to split the batch in two and retry if the function returns an error. Only available for stream sources (DynamoDB and Kinesis). Defaults to `false`.
  /// [destinationConfig] Amazon SQS queue, Amazon SNS topic or Amazon S3 bucket (only available for Kafka sources) destination for failed records. Only available for stream sources (DynamoDB and Kinesis) and Kafka sources (Amazon MSK and Self-managed Apache Kafka). See below.
  /// [documentDbEventSourceConfig] Configuration settings for a DocumentDB event source. See below.
  /// [enabled] Whether the mapping is enabled. Defaults to `true`.
  /// [eventSourceArn] Event source ARN - required for Kinesis stream, DynamoDB stream, SQS queue, MQ broker, MSK cluster or DocumentDB change stream. Incompatible with Self Managed Kafka source.
  /// [filterCriteria] Criteria to use for [event filtering](https://docs.aws.amazon.com/lambda/latest/dg/invocation-eventfiltering.html) Kinesis stream, DynamoDB stream, SQS queue event sources. See below.
  /// [functionName] Name or ARN of the Lambda function that will be subscribing to events.
  /// [functionResponseTypes] List of current response type enums applied to the event source mapping for [AWS Lambda checkpointing](https://docs.aws.amazon.com/lambda/latest/dg/with-ddb.html#services-ddb-batchfailurereporting). Only available for SQS and stream sources (DynamoDB and Kinesis). Valid values: `ReportBatchItemFailures`.
  /// [kmsKeyArn] ARN of the Key Management Service (KMS) customer managed key that Lambda uses to encrypt your function's filter criteria.
  /// [maximumBatchingWindowInSeconds] Maximum amount of time to gather records before invoking the function, in seconds (between 0 and 300). Records will continue to buffer until either `maximum_batching_window_in_seconds` expires or `batch_size` has been met. For streaming event sources, defaults to as soon as records are available in the stream. Only available for stream sources (DynamoDB and Kinesis) and SQS standard queues.
  /// [maximumRecordAgeInSeconds] Maximum age of a record that Lambda sends to a function for processing. Only available for stream sources (DynamoDB and Kinesis). Must be either -1 (forever, and the default value) or between 60 and 604800 (inclusive).
  /// [maximumRetryAttempts] Maximum number of times to retry when the function returns an error. Only available for stream sources (DynamoDB and Kinesis). Minimum and default of -1 (forever), maximum of 10000.
  /// [metricsConfig] CloudWatch metrics configuration of the event source. Only available for stream sources (DynamoDB and Kinesis) and SQS queues. See below.
  /// [parallelizationFactor] Number of batches to process from each shard concurrently. Only available for stream sources (DynamoDB and Kinesis). Minimum and default of 1, maximum of 10.
  /// [provisionedPollerConfig] Event poller configuration for the event source. Only valid for Amazon MSK or self-managed Apache Kafka sources. See below.
  /// [queues] Name of the Amazon MQ broker destination queue to consume. Only available for MQ sources. The list must contain exactly one queue name.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [scalingConfig] Scaling configuration of the event source. Only available for SQS queues. See below.
  /// [selfManagedEventSource] For Self Managed Kafka sources, the location of the self managed cluster. If set, configuration must also include `source_access_configuration`. See below.
  /// [selfManagedKafkaEventSourceConfig] Additional configuration block for Self Managed Kafka sources. Incompatible with `event_source_arn` and `amazon_managed_kafka_event_source_config`. See below.
  /// [sourceAccessConfigurations] For Self Managed Kafka sources, the access configuration for the source. If set, configuration must also include `self_managed_event_source`. See below.
  /// [startingPosition] Position in the stream where AWS Lambda should start reading. Must be one of `AT_TIMESTAMP` (Kinesis only), `LATEST` or `TRIM_HORIZON` if getting events from Kinesis, DynamoDB, MSK or Self Managed Apache Kafka. Must not be provided if getting events from SQS. More information about these positions can be found in the [AWS DynamoDB Streams API Reference](https://docs.aws.amazon.com/amazondynamodb/latest/APIReference/API_streams_GetShardIterator.html) and [AWS Kinesis API Reference](https://docs.aws.amazon.com/kinesis/latest/APIReference/API_GetShardIterator.html#Kinesis-GetShardIterator-request-ShardIteratorType).
  /// [startingPositionTimestamp] Timestamp in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) of the data record which to start reading when using `starting_position` set to `AT_TIMESTAMP`. If a record with this exact timestamp does not exist, the next later record is chosen. If the timestamp is older than the current trim horizon, the oldest available record is chosen.
  /// [tags] Map of tags to assign to the object. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [topics] Name of the Kafka topics. Only available for MSK sources. A single topic name must be specified.
  /// [tumblingWindowInSeconds] Duration in seconds of a processing window for [AWS Lambda streaming analytics](https://docs.aws.amazon.com/lambda/latest/dg/with-kinesis.html#services-kinesis-windows). The range is between 1 second up to 900 seconds. Only available for stream sources (DynamoDB and Kinesis).
  EventSourceMappingArgs({
    EventSourceMappingAmazonManagedKafkaEventSourceConfig?
    amazonManagedKafkaEventSourceConfig,
    int? batchSize,
    bool? bisectBatchOnFunctionError,
    EventSourceMappingDestinationConfig? destinationConfig,
    EventSourceMappingDocumentDbEventSourceConfig? documentDbEventSourceConfig,
    bool? enabled,
    String? eventSourceArn,
    EventSourceMappingFilterCriteria? filterCriteria,
    required String functionName,
    List<String>? functionResponseTypes,
    String? kmsKeyArn,
    int? maximumBatchingWindowInSeconds,
    int? maximumRecordAgeInSeconds,
    int? maximumRetryAttempts,
    EventSourceMappingMetricsConfig? metricsConfig,
    int? parallelizationFactor,
    EventSourceMappingProvisionedPollerConfig? provisionedPollerConfig,
    String? queues,
    String? region,
    EventSourceMappingScalingConfig? scalingConfig,
    EventSourceMappingSelfManagedEventSource? selfManagedEventSource,
    EventSourceMappingSelfManagedKafkaEventSourceConfig?
    selfManagedKafkaEventSourceConfig,
    List<EventSourceMappingSourceAccessConfiguration>?
    sourceAccessConfigurations,
    String? startingPosition,
    String? startingPositionTimestamp,
    Map<String, String>? tags,
    List<String>? topics,
    int? tumblingWindowInSeconds,
  }) : amazonManagedKafkaEventSourceConfig =
           pulumi.Input.asOptionalInput<
             EventSourceMappingAmazonManagedKafkaEventSourceConfig
           >(amazonManagedKafkaEventSourceConfig),
       batchSize = pulumi.Input.asOptionalInput<int>(batchSize),
       bisectBatchOnFunctionError = pulumi.Input.asOptionalInput<bool>(
         bisectBatchOnFunctionError,
       ),
       destinationConfig =
           pulumi.Input.asOptionalInput<EventSourceMappingDestinationConfig>(
             destinationConfig,
           ),
       documentDbEventSourceConfig =
           pulumi.Input.asOptionalInput<
             EventSourceMappingDocumentDbEventSourceConfig
           >(documentDbEventSourceConfig),
       enabled = pulumi.Input.asOptionalInput<bool>(enabled),
       eventSourceArn = pulumi.Input.asOptionalInput<String>(eventSourceArn),
       filterCriteria =
           pulumi.Input.asOptionalInput<EventSourceMappingFilterCriteria>(
             filterCriteria,
           ),
       functionName = pulumi.Input.asInput<String>(functionName),
       functionResponseTypes = pulumi.Input.asOptionalInput<List<String>>(
         functionResponseTypes,
       ),
       kmsKeyArn = pulumi.Input.asOptionalInput<String>(kmsKeyArn),
       maximumBatchingWindowInSeconds = pulumi.Input.asOptionalInput<int>(
         maximumBatchingWindowInSeconds,
       ),
       maximumRecordAgeInSeconds = pulumi.Input.asOptionalInput<int>(
         maximumRecordAgeInSeconds,
       ),
       maximumRetryAttempts = pulumi.Input.asOptionalInput<int>(
         maximumRetryAttempts,
       ),
       metricsConfig =
           pulumi.Input.asOptionalInput<EventSourceMappingMetricsConfig>(
             metricsConfig,
           ),
       parallelizationFactor = pulumi.Input.asOptionalInput<int>(
         parallelizationFactor,
       ),
       provisionedPollerConfig =
           pulumi.Input.asOptionalInput<
             EventSourceMappingProvisionedPollerConfig
           >(provisionedPollerConfig),
       queues = pulumi.Input.asOptionalInput<String>(queues),
       region = pulumi.Input.asOptionalInput<String>(region),
       scalingConfig =
           pulumi.Input.asOptionalInput<EventSourceMappingScalingConfig>(
             scalingConfig,
           ),
       selfManagedEventSource =
           pulumi.Input.asOptionalInput<
             EventSourceMappingSelfManagedEventSource
           >(selfManagedEventSource),
       selfManagedKafkaEventSourceConfig =
           pulumi.Input.asOptionalInput<
             EventSourceMappingSelfManagedKafkaEventSourceConfig
           >(selfManagedKafkaEventSourceConfig),
       sourceAccessConfigurations =
           pulumi.Input.asOptionalInput<
             List<EventSourceMappingSourceAccessConfiguration>
           >(sourceAccessConfigurations),
       startingPosition = pulumi.Input.asOptionalInput<String>(
         startingPosition,
       ),
       startingPositionTimestamp = pulumi.Input.asOptionalInput<String>(
         startingPositionTimestamp,
       ),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
       topics = pulumi.Input.asOptionalInput<List<String>>(topics),
       tumblingWindowInSeconds = pulumi.Input.asOptionalInput<int>(
         tumblingWindowInSeconds,
       );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amazonManagedKafkaEventSourceConfig':
          ?pulumi.Input.mapOptionalInputValue<
            EventSourceMappingAmazonManagedKafkaEventSourceConfig,
            Map<String, dynamic>
          >(amazonManagedKafkaEventSourceConfig, (value) => value.toMap()),
      'batchSize': ?batchSize,
      'bisectBatchOnFunctionError': ?bisectBatchOnFunctionError,
      'destinationConfig':
          ?pulumi.Input.mapOptionalInputValue<
            EventSourceMappingDestinationConfig,
            Map<String, dynamic>
          >(destinationConfig, (value) => value.toMap()),
      'documentDbEventSourceConfig':
          ?pulumi.Input.mapOptionalInputValue<
            EventSourceMappingDocumentDbEventSourceConfig,
            Map<String, dynamic>
          >(documentDbEventSourceConfig, (value) => value.toMap()),
      'enabled': ?enabled,
      'eventSourceArn': ?eventSourceArn,
      'filterCriteria':
          ?pulumi.Input.mapOptionalInputValue<
            EventSourceMappingFilterCriteria,
            Map<String, dynamic>
          >(filterCriteria, (value) => value.toMap()),
      'functionName': functionName,
      'functionResponseTypes': ?functionResponseTypes,
      'kmsKeyArn': ?kmsKeyArn,
      'maximumBatchingWindowInSeconds': ?maximumBatchingWindowInSeconds,
      'maximumRecordAgeInSeconds': ?maximumRecordAgeInSeconds,
      'maximumRetryAttempts': ?maximumRetryAttempts,
      'metricsConfig':
          ?pulumi.Input.mapOptionalInputValue<
            EventSourceMappingMetricsConfig,
            Map<String, dynamic>
          >(metricsConfig, (value) => value.toMap()),
      'parallelizationFactor': ?parallelizationFactor,
      'provisionedPollerConfig':
          ?pulumi.Input.mapOptionalInputValue<
            EventSourceMappingProvisionedPollerConfig,
            Map<String, dynamic>
          >(provisionedPollerConfig, (value) => value.toMap()),
      'queues': ?queues,
      'region': ?region,
      'scalingConfig':
          ?pulumi.Input.mapOptionalInputValue<
            EventSourceMappingScalingConfig,
            Map<String, dynamic>
          >(scalingConfig, (value) => value.toMap()),
      'selfManagedEventSource':
          ?pulumi.Input.mapOptionalInputValue<
            EventSourceMappingSelfManagedEventSource,
            Map<String, dynamic>
          >(selfManagedEventSource, (value) => value.toMap()),
      'selfManagedKafkaEventSourceConfig':
          ?pulumi.Input.mapOptionalInputValue<
            EventSourceMappingSelfManagedKafkaEventSourceConfig,
            Map<String, dynamic>
          >(selfManagedKafkaEventSourceConfig, (value) => value.toMap()),
      'sourceAccessConfigurations':
          ?pulumi.Input.mapOptionalInputValue<
            List<EventSourceMappingSourceAccessConfiguration>,
            List<Map<String, dynamic>>
          >(
            sourceAccessConfigurations,
            (value) =>
                pulumi.Input.encodeList<
                  EventSourceMappingSourceAccessConfiguration,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'startingPosition': ?startingPosition,
      'startingPositionTimestamp': ?startingPositionTimestamp,
      'tags': ?tags,
      'topics': ?topics,
      'tumblingWindowInSeconds': ?tumblingWindowInSeconds,
    };
  }

  factory EventSourceMappingArgs.fromMap(Map<String, dynamic> map) {
    return EventSourceMappingArgs(
      amazonManagedKafkaEventSourceConfig:
          map['amazonManagedKafkaEventSourceConfig'] == null
          ? null
          : EventSourceMappingAmazonManagedKafkaEventSourceConfig.fromMap(
              (map['amazonManagedKafkaEventSourceConfig'] as Map)
                  .cast<String, dynamic>(),
            ),
      batchSize: map['batchSize'] == null ? null : map['batchSize'] as int,
      bisectBatchOnFunctionError: map['bisectBatchOnFunctionError'] == null
          ? null
          : map['bisectBatchOnFunctionError'] as bool,
      destinationConfig: map['destinationConfig'] == null
          ? null
          : EventSourceMappingDestinationConfig.fromMap(
              (map['destinationConfig'] as Map).cast<String, dynamic>(),
            ),
      documentDbEventSourceConfig: map['documentDbEventSourceConfig'] == null
          ? null
          : EventSourceMappingDocumentDbEventSourceConfig.fromMap(
              (map['documentDbEventSourceConfig'] as Map)
                  .cast<String, dynamic>(),
            ),
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      eventSourceArn: map['eventSourceArn'] == null
          ? null
          : map['eventSourceArn'] as String,
      filterCriteria: map['filterCriteria'] == null
          ? null
          : EventSourceMappingFilterCriteria.fromMap(
              (map['filterCriteria'] as Map).cast<String, dynamic>(),
            ),
      functionName: map['functionName'] as String,
      functionResponseTypes: map['functionResponseTypes'] == null
          ? null
          : (map['functionResponseTypes'] as List).cast<String>(),
      kmsKeyArn: map['kmsKeyArn'] == null ? null : map['kmsKeyArn'] as String,
      maximumBatchingWindowInSeconds:
          map['maximumBatchingWindowInSeconds'] == null
          ? null
          : map['maximumBatchingWindowInSeconds'] as int,
      maximumRecordAgeInSeconds: map['maximumRecordAgeInSeconds'] == null
          ? null
          : map['maximumRecordAgeInSeconds'] as int,
      maximumRetryAttempts: map['maximumRetryAttempts'] == null
          ? null
          : map['maximumRetryAttempts'] as int,
      metricsConfig: map['metricsConfig'] == null
          ? null
          : EventSourceMappingMetricsConfig.fromMap(
              (map['metricsConfig'] as Map).cast<String, dynamic>(),
            ),
      parallelizationFactor: map['parallelizationFactor'] == null
          ? null
          : map['parallelizationFactor'] as int,
      provisionedPollerConfig: map['provisionedPollerConfig'] == null
          ? null
          : EventSourceMappingProvisionedPollerConfig.fromMap(
              (map['provisionedPollerConfig'] as Map).cast<String, dynamic>(),
            ),
      queues: map['queues'] == null ? null : map['queues'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      scalingConfig: map['scalingConfig'] == null
          ? null
          : EventSourceMappingScalingConfig.fromMap(
              (map['scalingConfig'] as Map).cast<String, dynamic>(),
            ),
      selfManagedEventSource: map['selfManagedEventSource'] == null
          ? null
          : EventSourceMappingSelfManagedEventSource.fromMap(
              (map['selfManagedEventSource'] as Map).cast<String, dynamic>(),
            ),
      selfManagedKafkaEventSourceConfig:
          map['selfManagedKafkaEventSourceConfig'] == null
          ? null
          : EventSourceMappingSelfManagedKafkaEventSourceConfig.fromMap(
              (map['selfManagedKafkaEventSourceConfig'] as Map)
                  .cast<String, dynamic>(),
            ),
      sourceAccessConfigurations: map['sourceAccessConfigurations'] == null
          ? null
          : pulumi
                .Input.decodeList<EventSourceMappingSourceAccessConfiguration>(
              map['sourceAccessConfigurations'],
              (value) => EventSourceMappingSourceAccessConfiguration.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      startingPosition: map['startingPosition'] == null
          ? null
          : map['startingPosition'] as String,
      startingPositionTimestamp: map['startingPositionTimestamp'] == null
          ? null
          : map['startingPositionTimestamp'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      topics: map['topics'] == null
          ? null
          : (map['topics'] as List).cast<String>(),
      tumblingWindowInSeconds: map['tumblingWindowInSeconds'] == null
          ? null
          : map['tumblingWindowInSeconds'] as int,
    );
  }
}
