// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
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

/// The set of arguments for EventSourceMapping.
class EventSourceMappingArgs {
  /// Additional configuration block for Amazon Managed Kafka sources. Incompatible with <span pulumi-lang-nodejs="`selfManagedEventSource`" pulumi-lang-dotnet="`SelfManagedEventSource`" pulumi-lang-go="`selfManagedEventSource`" pulumi-lang-python="`self_managed_event_source`" pulumi-lang-yaml="`selfManagedEventSource`" pulumi-lang-java="`selfManagedEventSource`">`self_managed_event_source`</span> and <span pulumi-lang-nodejs="`selfManagedKafkaEventSourceConfig`" pulumi-lang-dotnet="`SelfManagedKafkaEventSourceConfig`" pulumi-lang-go="`selfManagedKafkaEventSourceConfig`" pulumi-lang-python="`self_managed_kafka_event_source_config`" pulumi-lang-yaml="`selfManagedKafkaEventSourceConfig`" pulumi-lang-java="`selfManagedKafkaEventSourceConfig`">`self_managed_kafka_event_source_config`</span>. See below.
  final Input<EventSourceMappingAmazonManagedKafkaEventSourceConfig>?
      amazonManagedKafkaEventSourceConfig;

  /// Largest number of records that Lambda will retrieve from your event source at the time of invocation. Defaults to <span pulumi-lang-nodejs="`100`" pulumi-lang-dotnet="`100`" pulumi-lang-go="`100`" pulumi-lang-python="`100`" pulumi-lang-yaml="`100`" pulumi-lang-java="`100`">`100`</span> for DynamoDB, Kinesis, MQ and MSK, <span pulumi-lang-nodejs="`10`" pulumi-lang-dotnet="`10`" pulumi-lang-go="`10`" pulumi-lang-python="`10`" pulumi-lang-yaml="`10`" pulumi-lang-java="`10`">`10`</span> for SQS.
  final Input<int>? batchSize;

  /// Whether to split the batch in two and retry if the function returns an error. Only available for stream sources (DynamoDB and Kinesis). Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? bisectBatchOnFunctionError;

  /// Amazon SQS queue, Amazon SNS topic or Amazon S3 bucket (only available for Kafka sources) destination for failed records. Only available for stream sources (DynamoDB and Kinesis) and Kafka sources (Amazon MSK and Self-managed Apache Kafka). See below.
  final Input<EventSourceMappingDestinationConfig>? destinationConfig;

  /// Configuration settings for a DocumentDB event source. See below.
  final Input<EventSourceMappingDocumentDbEventSourceConfig>?
      documentDbEventSourceConfig;

  /// Whether the mapping is enabled. Defaults to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  final Input<bool>? enabled;

  /// Event source ARN - required for Kinesis stream, DynamoDB stream, SQS queue, MQ broker, MSK cluster or DocumentDB change stream. Incompatible with Self Managed Kafka source.
  final Input<String>? eventSourceArn;

  /// Criteria to use for [event filtering](https://docs.aws.amazon.com/lambda/latest/dg/invocation-eventfiltering.html) Kinesis stream, DynamoDB stream, SQS queue event sources. See below.
  final Input<EventSourceMappingFilterCriteria>? filterCriteria;

  /// Name or ARN of the Lambda function that will be subscribing to events.
  ///
  /// The following arguments are optional:
  final Input<String> functionName;

  /// List of current response type enums applied to the event source mapping for [AWS Lambda checkpointing](https://docs.aws.amazon.com/lambda/latest/dg/with-ddb.html#services-ddb-batchfailurereporting). Only available for SQS and stream sources (DynamoDB and Kinesis). Valid values: `ReportBatchItemFailures`.
  final Input<List<String>>? functionResponseTypes;

  /// ARN of the Key Management Service (KMS) customer managed key that Lambda uses to encrypt your function's filter criteria.
  final Input<String>? kmsKeyArn;

  /// Maximum amount of time to gather records before invoking the function, in seconds (between 0 and 300). Records will continue to buffer until either <span pulumi-lang-nodejs="`maximumBatchingWindowInSeconds`" pulumi-lang-dotnet="`MaximumBatchingWindowInSeconds`" pulumi-lang-go="`maximumBatchingWindowInSeconds`" pulumi-lang-python="`maximum_batching_window_in_seconds`" pulumi-lang-yaml="`maximumBatchingWindowInSeconds`" pulumi-lang-java="`maximumBatchingWindowInSeconds`">`maximum_batching_window_in_seconds`</span> expires or <span pulumi-lang-nodejs="`batchSize`" pulumi-lang-dotnet="`BatchSize`" pulumi-lang-go="`batchSize`" pulumi-lang-python="`batch_size`" pulumi-lang-yaml="`batchSize`" pulumi-lang-java="`batchSize`">`batch_size`</span> has been met. For streaming event sources, defaults to as soon as records are available in the stream. Only available for stream sources (DynamoDB and Kinesis) and SQS standard queues.
  final Input<int>? maximumBatchingWindowInSeconds;

  /// Maximum age of a record that Lambda sends to a function for processing. Only available for stream sources (DynamoDB and Kinesis). Must be either -1 (forever, and the default value) or between 60 and 604800 (inclusive).
  final Input<int>? maximumRecordAgeInSeconds;

  /// Maximum number of times to retry when the function returns an error. Only available for stream sources (DynamoDB and Kinesis). Minimum and default of -1 (forever), maximum of 10000.
  final Input<int>? maximumRetryAttempts;

  /// CloudWatch metrics configuration of the event source. Only available for stream sources (DynamoDB and Kinesis) and SQS queues. See below.
  final Input<EventSourceMappingMetricsConfig>? metricsConfig;

  /// Number of batches to process from each shard concurrently. Only available for stream sources (DynamoDB and Kinesis). Minimum and default of 1, maximum of 10.
  final Input<int>? parallelizationFactor;

  /// Event poller configuration for the event source. Only valid for Amazon MSK or self-managed Apache Kafka sources. See below.
  final Input<EventSourceMappingProvisionedPollerConfig>?
      provisionedPollerConfig;

  /// Name of the Amazon MQ broker destination queue to consume. Only available for MQ sources. The list must contain exactly one queue name.
  final Input<String>? queues;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Scaling configuration of the event source. Only available for SQS queues. See below.
  final Input<EventSourceMappingScalingConfig>? scalingConfig;

  /// For Self Managed Kafka sources, the location of the self managed cluster. If set, configuration must also include <span pulumi-lang-nodejs="`sourceAccessConfiguration`" pulumi-lang-dotnet="`SourceAccessConfiguration`" pulumi-lang-go="`sourceAccessConfiguration`" pulumi-lang-python="`source_access_configuration`" pulumi-lang-yaml="`sourceAccessConfiguration`" pulumi-lang-java="`sourceAccessConfiguration`">`source_access_configuration`</span>. See below.
  final Input<EventSourceMappingSelfManagedEventSource>? selfManagedEventSource;

  /// Additional configuration block for Self Managed Kafka sources. Incompatible with <span pulumi-lang-nodejs="`eventSourceArn`" pulumi-lang-dotnet="`EventSourceArn`" pulumi-lang-go="`eventSourceArn`" pulumi-lang-python="`event_source_arn`" pulumi-lang-yaml="`eventSourceArn`" pulumi-lang-java="`eventSourceArn`">`event_source_arn`</span> and <span pulumi-lang-nodejs="`amazonManagedKafkaEventSourceConfig`" pulumi-lang-dotnet="`AmazonManagedKafkaEventSourceConfig`" pulumi-lang-go="`amazonManagedKafkaEventSourceConfig`" pulumi-lang-python="`amazon_managed_kafka_event_source_config`" pulumi-lang-yaml="`amazonManagedKafkaEventSourceConfig`" pulumi-lang-java="`amazonManagedKafkaEventSourceConfig`">`amazon_managed_kafka_event_source_config`</span>. See below.
  final Input<EventSourceMappingSelfManagedKafkaEventSourceConfig>?
      selfManagedKafkaEventSourceConfig;

  /// For Self Managed Kafka sources, the access configuration for the source. If set, configuration must also include <span pulumi-lang-nodejs="`selfManagedEventSource`" pulumi-lang-dotnet="`SelfManagedEventSource`" pulumi-lang-go="`selfManagedEventSource`" pulumi-lang-python="`self_managed_event_source`" pulumi-lang-yaml="`selfManagedEventSource`" pulumi-lang-java="`selfManagedEventSource`">`self_managed_event_source`</span>. See below.
  final Input<List<EventSourceMappingSourceAccessConfiguration>>?
      sourceAccessConfigurations;

  /// Position in the stream where AWS Lambda should start reading. Must be one of `AT_TIMESTAMP` (Kinesis only), `LATEST` or `TRIM_HORIZON` if getting events from Kinesis, DynamoDB, MSK or Self Managed Apache Kafka. Must not be provided if getting events from SQS. More information about these positions can be found in the [AWS DynamoDB Streams API Reference](https://docs.aws.amazon.com/amazondynamodb/latest/APIReference/API_streams_GetShardIterator.html) and [AWS Kinesis API Reference](https://docs.aws.amazon.com/kinesis/latest/APIReference/API_GetShardIterator.html#Kinesis-GetShardIterator-request-ShardIteratorType).
  final Input<String>? startingPosition;

  /// Timestamp in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) of the data record which to start reading when using <span pulumi-lang-nodejs="`startingPosition`" pulumi-lang-dotnet="`StartingPosition`" pulumi-lang-go="`startingPosition`" pulumi-lang-python="`starting_position`" pulumi-lang-yaml="`startingPosition`" pulumi-lang-java="`startingPosition`">`starting_position`</span> set to `AT_TIMESTAMP`. If a record with this exact timestamp does not exist, the next later record is chosen. If the timestamp is older than the current trim horizon, the oldest available record is chosen.
  final Input<String>? startingPositionTimestamp;

  /// Map of tags to assign to the object. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// Name of the Kafka topics. Only available for MSK sources. A single topic name must be specified.
  final Input<List<String>>? topics;

  /// Duration in seconds of a processing window for [AWS Lambda streaming analytics](https://docs.aws.amazon.com/lambda/latest/dg/with-kinesis.html#services-kinesis-windows). The range is between 1 second up to 900 seconds. Only available for stream sources (DynamoDB and Kinesis).
  final Input<int>? tumblingWindowInSeconds;

  EventSourceMappingArgs({
    this.amazonManagedKafkaEventSourceConfig,
    this.batchSize,
    this.bisectBatchOnFunctionError,
    this.destinationConfig,
    this.documentDbEventSourceConfig,
    this.enabled,
    this.eventSourceArn,
    this.filterCriteria,
    required this.functionName,
    this.functionResponseTypes,
    this.kmsKeyArn,
    this.maximumBatchingWindowInSeconds,
    this.maximumRecordAgeInSeconds,
    this.maximumRetryAttempts,
    this.metricsConfig,
    this.parallelizationFactor,
    this.provisionedPollerConfig,
    this.queues,
    this.region,
    this.scalingConfig,
    this.selfManagedEventSource,
    this.selfManagedKafkaEventSourceConfig,
    this.sourceAccessConfigurations,
    this.startingPosition,
    this.startingPositionTimestamp,
    this.tags,
    this.topics,
    this.tumblingWindowInSeconds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final amazonManagedKafkaEventSourceConfigValue =
        amazonManagedKafkaEventSourceConfig;
    if (amazonManagedKafkaEventSourceConfigValue != null) {
      map['amazonManagedKafkaEventSourceConfig'] = Input.mapOptionalInputValue<
              EventSourceMappingAmazonManagedKafkaEventSourceConfig,
              Map<String, dynamic>>(
          amazonManagedKafkaEventSourceConfigValue, (value) => value.toMap());
    }
    final batchSizeValue = batchSize;
    if (batchSizeValue != null) {
      map['batchSize'] = batchSizeValue;
    }
    final bisectBatchOnFunctionErrorValue = bisectBatchOnFunctionError;
    if (bisectBatchOnFunctionErrorValue != null) {
      map['bisectBatchOnFunctionError'] = bisectBatchOnFunctionErrorValue;
    }
    final destinationConfigValue = destinationConfig;
    if (destinationConfigValue != null) {
      map['destinationConfig'] = Input.mapOptionalInputValue<
              EventSourceMappingDestinationConfig, Map<String, dynamic>>(
          destinationConfigValue, (value) => value.toMap());
    }
    final documentDbEventSourceConfigValue = documentDbEventSourceConfig;
    if (documentDbEventSourceConfigValue != null) {
      map['documentDbEventSourceConfig'] = Input.mapOptionalInputValue<
              EventSourceMappingDocumentDbEventSourceConfig,
              Map<String, dynamic>>(
          documentDbEventSourceConfigValue, (value) => value.toMap());
    }
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    final eventSourceArnValue = eventSourceArn;
    if (eventSourceArnValue != null) {
      map['eventSourceArn'] = eventSourceArnValue;
    }
    final filterCriteriaValue = filterCriteria;
    if (filterCriteriaValue != null) {
      map['filterCriteria'] = Input.mapOptionalInputValue<
          EventSourceMappingFilterCriteria,
          Map<String, dynamic>>(filterCriteriaValue, (value) => value.toMap());
    }
    map['functionName'] = functionName;
    final functionResponseTypesValue = functionResponseTypes;
    if (functionResponseTypesValue != null) {
      map['functionResponseTypes'] = functionResponseTypesValue;
    }
    final kmsKeyArnValue = kmsKeyArn;
    if (kmsKeyArnValue != null) {
      map['kmsKeyArn'] = kmsKeyArnValue;
    }
    final maximumBatchingWindowInSecondsValue = maximumBatchingWindowInSeconds;
    if (maximumBatchingWindowInSecondsValue != null) {
      map['maximumBatchingWindowInSeconds'] =
          maximumBatchingWindowInSecondsValue;
    }
    final maximumRecordAgeInSecondsValue = maximumRecordAgeInSeconds;
    if (maximumRecordAgeInSecondsValue != null) {
      map['maximumRecordAgeInSeconds'] = maximumRecordAgeInSecondsValue;
    }
    final maximumRetryAttemptsValue = maximumRetryAttempts;
    if (maximumRetryAttemptsValue != null) {
      map['maximumRetryAttempts'] = maximumRetryAttemptsValue;
    }
    final metricsConfigValue = metricsConfig;
    if (metricsConfigValue != null) {
      map['metricsConfig'] = Input.mapOptionalInputValue<
          EventSourceMappingMetricsConfig,
          Map<String, dynamic>>(metricsConfigValue, (value) => value.toMap());
    }
    final parallelizationFactorValue = parallelizationFactor;
    if (parallelizationFactorValue != null) {
      map['parallelizationFactor'] = parallelizationFactorValue;
    }
    final provisionedPollerConfigValue = provisionedPollerConfig;
    if (provisionedPollerConfigValue != null) {
      map['provisionedPollerConfig'] = Input.mapOptionalInputValue<
              EventSourceMappingProvisionedPollerConfig, Map<String, dynamic>>(
          provisionedPollerConfigValue, (value) => value.toMap());
    }
    final queuesValue = queues;
    if (queuesValue != null) {
      map['queues'] = queuesValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final scalingConfigValue = scalingConfig;
    if (scalingConfigValue != null) {
      map['scalingConfig'] = Input.mapOptionalInputValue<
          EventSourceMappingScalingConfig,
          Map<String, dynamic>>(scalingConfigValue, (value) => value.toMap());
    }
    final selfManagedEventSourceValue = selfManagedEventSource;
    if (selfManagedEventSourceValue != null) {
      map['selfManagedEventSource'] = Input.mapOptionalInputValue<
              EventSourceMappingSelfManagedEventSource, Map<String, dynamic>>(
          selfManagedEventSourceValue, (value) => value.toMap());
    }
    final selfManagedKafkaEventSourceConfigValue =
        selfManagedKafkaEventSourceConfig;
    if (selfManagedKafkaEventSourceConfigValue != null) {
      map['selfManagedKafkaEventSourceConfig'] = Input.mapOptionalInputValue<
              EventSourceMappingSelfManagedKafkaEventSourceConfig,
              Map<String, dynamic>>(
          selfManagedKafkaEventSourceConfigValue, (value) => value.toMap());
    }
    final sourceAccessConfigurationsValue = sourceAccessConfigurations;
    if (sourceAccessConfigurationsValue != null) {
      map['sourceAccessConfigurations'] = Input.mapOptionalInputValue<
              List<EventSourceMappingSourceAccessConfiguration>,
              List<Map<String, dynamic>>>(
          sourceAccessConfigurationsValue,
          (value) => Input.encodeList<
              EventSourceMappingSourceAccessConfiguration,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final startingPositionValue = startingPosition;
    if (startingPositionValue != null) {
      map['startingPosition'] = startingPositionValue;
    }
    final startingPositionTimestampValue = startingPositionTimestamp;
    if (startingPositionTimestampValue != null) {
      map['startingPositionTimestamp'] = startingPositionTimestampValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final topicsValue = topics;
    if (topicsValue != null) {
      map['topics'] = topicsValue;
    }
    final tumblingWindowInSecondsValue = tumblingWindowInSeconds;
    if (tumblingWindowInSecondsValue != null) {
      map['tumblingWindowInSeconds'] = tumblingWindowInSecondsValue;
    }
    return map;
  }

  factory EventSourceMappingArgs.fromMap(Map<String, dynamic> map) {
    return EventSourceMappingArgs(
      amazonManagedKafkaEventSourceConfig: Input.asOptionalInput<
              EventSourceMappingAmazonManagedKafkaEventSourceConfig>(
          map['amazonManagedKafkaEventSourceConfig']),
      batchSize: Input.asOptionalInput<int>(map['batchSize']),
      bisectBatchOnFunctionError:
          Input.asOptionalInput<bool>(map['bisectBatchOnFunctionError']),
      destinationConfig:
          Input.asOptionalInput<EventSourceMappingDestinationConfig>(
              map['destinationConfig']),
      documentDbEventSourceConfig:
          Input.asOptionalInput<EventSourceMappingDocumentDbEventSourceConfig>(
              map['documentDbEventSourceConfig']),
      enabled: Input.asOptionalInput<bool>(map['enabled']),
      eventSourceArn: Input.asOptionalInput<String>(map['eventSourceArn']),
      filterCriteria: Input.asOptionalInput<EventSourceMappingFilterCriteria>(
          map['filterCriteria']),
      functionName: Input.asInput<String>(map['functionName']),
      functionResponseTypes:
          Input.asOptionalInput<List<String>>(map['functionResponseTypes']),
      kmsKeyArn: Input.asOptionalInput<String>(map['kmsKeyArn']),
      maximumBatchingWindowInSeconds:
          Input.asOptionalInput<int>(map['maximumBatchingWindowInSeconds']),
      maximumRecordAgeInSeconds:
          Input.asOptionalInput<int>(map['maximumRecordAgeInSeconds']),
      maximumRetryAttempts:
          Input.asOptionalInput<int>(map['maximumRetryAttempts']),
      metricsConfig: Input.asOptionalInput<EventSourceMappingMetricsConfig>(
          map['metricsConfig']),
      parallelizationFactor:
          Input.asOptionalInput<int>(map['parallelizationFactor']),
      provisionedPollerConfig:
          Input.asOptionalInput<EventSourceMappingProvisionedPollerConfig>(
              map['provisionedPollerConfig']),
      queues: Input.asOptionalInput<String>(map['queues']),
      region: Input.asOptionalInput<String>(map['region']),
      scalingConfig: Input.asOptionalInput<EventSourceMappingScalingConfig>(
          map['scalingConfig']),
      selfManagedEventSource:
          Input.asOptionalInput<EventSourceMappingSelfManagedEventSource>(
              map['selfManagedEventSource']),
      selfManagedKafkaEventSourceConfig: Input.asOptionalInput<
              EventSourceMappingSelfManagedKafkaEventSourceConfig>(
          map['selfManagedKafkaEventSourceConfig']),
      sourceAccessConfigurations: Input.asOptionalInput<
              List<EventSourceMappingSourceAccessConfiguration>>(
          map['sourceAccessConfigurations']),
      startingPosition: Input.asOptionalInput<String>(map['startingPosition']),
      startingPositionTimestamp:
          Input.asOptionalInput<String>(map['startingPositionTimestamp']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      topics: Input.asOptionalInput<List<String>>(map['topics']),
      tumblingWindowInSeconds:
          Input.asOptionalInput<int>(map['tumblingWindowInSeconds']),
    );
  }
}
