// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'media_insights_pipeline_configuration_element_amazon_transcribe_call_analytics_processor_configuration.dart';
import 'media_insights_pipeline_configuration_element_amazon_transcribe_processor_configuration.dart';
import 'media_insights_pipeline_configuration_element_kinesis_data_stream_sink_configuration.dart';
import 'media_insights_pipeline_configuration_element_lambda_function_sink_configuration.dart';
import 'media_insights_pipeline_configuration_element_s3_recording_sink_configuration.dart';
import 'media_insights_pipeline_configuration_element_sns_topic_sink_configuration.dart';
import 'media_insights_pipeline_configuration_element_sqs_queue_sink_configuration.dart';
import 'media_insights_pipeline_configuration_element_voice_analytics_processor_configuration.dart';

class MediaInsightsPipelineConfigurationElement {
  /// Configuration for Amazon Transcribe Call Analytics processor.
  final pulumi.Input<MediaInsightsPipelineConfigurationElementAmazonTranscribeCallAnalyticsProcessorConfiguration>? amazonTranscribeCallAnalyticsProcessorConfiguration;
  /// Configuration for Amazon Transcribe processor.
  final pulumi.Input<MediaInsightsPipelineConfigurationElementAmazonTranscribeProcessorConfiguration>? amazonTranscribeProcessorConfiguration;
  /// Configuration for Kinesis Data Stream sink.
  final pulumi.Input<MediaInsightsPipelineConfigurationElementKinesisDataStreamSinkConfiguration>? kinesisDataStreamSinkConfiguration;
  /// Configuration for Lambda Function sink.
  final pulumi.Input<MediaInsightsPipelineConfigurationElementLambdaFunctionSinkConfiguration>? lambdaFunctionSinkConfiguration;
  /// Configuration for S3 recording sink.
  final pulumi.Input<MediaInsightsPipelineConfigurationElementS3RecordingSinkConfiguration>? s3RecordingSinkConfiguration;
  /// Configuration for SNS Topic sink.
  final pulumi.Input<MediaInsightsPipelineConfigurationElementSnsTopicSinkConfiguration>? snsTopicSinkConfiguration;
  /// Configuration for SQS Queue sink.
  final pulumi.Input<MediaInsightsPipelineConfigurationElementSqsQueueSinkConfiguration>? sqsQueueSinkConfiguration;
  /// Element type.
  final pulumi.Input<String> type;
  /// Configuration for Voice analytics processor.
  final pulumi.Input<MediaInsightsPipelineConfigurationElementVoiceAnalyticsProcessorConfiguration>? voiceAnalyticsProcessorConfiguration;

  /// Creates a new [MediaInsightsPipelineConfigurationElement].
  /// [amazonTranscribeCallAnalyticsProcessorConfiguration] Configuration for Amazon Transcribe Call Analytics processor.
  /// [amazonTranscribeProcessorConfiguration] Configuration for Amazon Transcribe processor.
  /// [kinesisDataStreamSinkConfiguration] Configuration for Kinesis Data Stream sink.
  /// [lambdaFunctionSinkConfiguration] Configuration for Lambda Function sink.
  /// [s3RecordingSinkConfiguration] Configuration for S3 recording sink.
  /// [snsTopicSinkConfiguration] Configuration for SNS Topic sink.
  /// [sqsQueueSinkConfiguration] Configuration for SQS Queue sink.
  /// [type] Element type.
  /// [voiceAnalyticsProcessorConfiguration] Configuration for Voice analytics processor.
  MediaInsightsPipelineConfigurationElement({
    this.amazonTranscribeCallAnalyticsProcessorConfiguration,
    this.amazonTranscribeProcessorConfiguration,
    this.kinesisDataStreamSinkConfiguration,
    this.lambdaFunctionSinkConfiguration,
    this.s3RecordingSinkConfiguration,
    this.snsTopicSinkConfiguration,
    this.sqsQueueSinkConfiguration,
    required this.type,
    this.voiceAnalyticsProcessorConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amazonTranscribeCallAnalyticsProcessorConfiguration': ?pulumi.Input.mapOptionalInputValue<MediaInsightsPipelineConfigurationElementAmazonTranscribeCallAnalyticsProcessorConfiguration, Map<String, dynamic>>(amazonTranscribeCallAnalyticsProcessorConfiguration, (value) => value.toMap()),
      'amazonTranscribeProcessorConfiguration': ?pulumi.Input.mapOptionalInputValue<MediaInsightsPipelineConfigurationElementAmazonTranscribeProcessorConfiguration, Map<String, dynamic>>(amazonTranscribeProcessorConfiguration, (value) => value.toMap()),
      'kinesisDataStreamSinkConfiguration': ?pulumi.Input.mapOptionalInputValue<MediaInsightsPipelineConfigurationElementKinesisDataStreamSinkConfiguration, Map<String, dynamic>>(kinesisDataStreamSinkConfiguration, (value) => value.toMap()),
      'lambdaFunctionSinkConfiguration': ?pulumi.Input.mapOptionalInputValue<MediaInsightsPipelineConfigurationElementLambdaFunctionSinkConfiguration, Map<String, dynamic>>(lambdaFunctionSinkConfiguration, (value) => value.toMap()),
      's3RecordingSinkConfiguration': ?pulumi.Input.mapOptionalInputValue<MediaInsightsPipelineConfigurationElementS3RecordingSinkConfiguration, Map<String, dynamic>>(s3RecordingSinkConfiguration, (value) => value.toMap()),
      'snsTopicSinkConfiguration': ?pulumi.Input.mapOptionalInputValue<MediaInsightsPipelineConfigurationElementSnsTopicSinkConfiguration, Map<String, dynamic>>(snsTopicSinkConfiguration, (value) => value.toMap()),
      'sqsQueueSinkConfiguration': ?pulumi.Input.mapOptionalInputValue<MediaInsightsPipelineConfigurationElementSqsQueueSinkConfiguration, Map<String, dynamic>>(sqsQueueSinkConfiguration, (value) => value.toMap()),
      'type': type,
      'voiceAnalyticsProcessorConfiguration': ?pulumi.Input.mapOptionalInputValue<MediaInsightsPipelineConfigurationElementVoiceAnalyticsProcessorConfiguration, Map<String, dynamic>>(voiceAnalyticsProcessorConfiguration, (value) => value.toMap()),
    };
  }

  factory MediaInsightsPipelineConfigurationElement.fromMap(Map<String, dynamic> map) {
    return MediaInsightsPipelineConfigurationElement(
      amazonTranscribeCallAnalyticsProcessorConfiguration: map['amazonTranscribeCallAnalyticsProcessorConfiguration'] == null ? null : (MediaInsightsPipelineConfigurationElementAmazonTranscribeCallAnalyticsProcessorConfiguration.fromMap((map['amazonTranscribeCallAnalyticsProcessorConfiguration'] as Map).cast<String, dynamic>())).input(),
      amazonTranscribeProcessorConfiguration: map['amazonTranscribeProcessorConfiguration'] == null ? null : (MediaInsightsPipelineConfigurationElementAmazonTranscribeProcessorConfiguration.fromMap((map['amazonTranscribeProcessorConfiguration'] as Map).cast<String, dynamic>())).input(),
      kinesisDataStreamSinkConfiguration: map['kinesisDataStreamSinkConfiguration'] == null ? null : (MediaInsightsPipelineConfigurationElementKinesisDataStreamSinkConfiguration.fromMap((map['kinesisDataStreamSinkConfiguration'] as Map).cast<String, dynamic>())).input(),
      lambdaFunctionSinkConfiguration: map['lambdaFunctionSinkConfiguration'] == null ? null : (MediaInsightsPipelineConfigurationElementLambdaFunctionSinkConfiguration.fromMap((map['lambdaFunctionSinkConfiguration'] as Map).cast<String, dynamic>())).input(),
      s3RecordingSinkConfiguration: map['s3RecordingSinkConfiguration'] == null ? null : (MediaInsightsPipelineConfigurationElementS3RecordingSinkConfiguration.fromMap((map['s3RecordingSinkConfiguration'] as Map).cast<String, dynamic>())).input(),
      snsTopicSinkConfiguration: map['snsTopicSinkConfiguration'] == null ? null : (MediaInsightsPipelineConfigurationElementSnsTopicSinkConfiguration.fromMap((map['snsTopicSinkConfiguration'] as Map).cast<String, dynamic>())).input(),
      sqsQueueSinkConfiguration: map['sqsQueueSinkConfiguration'] == null ? null : (MediaInsightsPipelineConfigurationElementSqsQueueSinkConfiguration.fromMap((map['sqsQueueSinkConfiguration'] as Map).cast<String, dynamic>())).input(),
      type: (map['type'] as String).input(),
      voiceAnalyticsProcessorConfiguration: map['voiceAnalyticsProcessorConfiguration'] == null ? null : (MediaInsightsPipelineConfigurationElementVoiceAnalyticsProcessorConfiguration.fromMap((map['voiceAnalyticsProcessorConfiguration'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

