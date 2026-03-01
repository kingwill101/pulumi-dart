// ignore_for_file: unused_element, unnecessary_cast

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
  final MediaInsightsPipelineConfigurationElementAmazonTranscribeCallAnalyticsProcessorConfiguration?
  amazonTranscribeCallAnalyticsProcessorConfiguration;

  /// Configuration for Amazon Transcribe processor.
  final MediaInsightsPipelineConfigurationElementAmazonTranscribeProcessorConfiguration?
  amazonTranscribeProcessorConfiguration;

  /// Configuration for Kinesis Data Stream sink.
  final MediaInsightsPipelineConfigurationElementKinesisDataStreamSinkConfiguration?
  kinesisDataStreamSinkConfiguration;

  /// Configuration for Lambda Function sink.
  final MediaInsightsPipelineConfigurationElementLambdaFunctionSinkConfiguration?
  lambdaFunctionSinkConfiguration;

  /// Configuration for S3 recording sink.
  final MediaInsightsPipelineConfigurationElementS3RecordingSinkConfiguration?
  s3RecordingSinkConfiguration;

  /// Configuration for SNS Topic sink.
  final MediaInsightsPipelineConfigurationElementSnsTopicSinkConfiguration?
  snsTopicSinkConfiguration;

  /// Configuration for SQS Queue sink.
  final MediaInsightsPipelineConfigurationElementSqsQueueSinkConfiguration?
  sqsQueueSinkConfiguration;

  /// Element type.
  final String type;

  /// Configuration for Voice analytics processor.
  final MediaInsightsPipelineConfigurationElementVoiceAnalyticsProcessorConfiguration?
  voiceAnalyticsProcessorConfiguration;

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
      'amazonTranscribeCallAnalyticsProcessorConfiguration':
          ?amazonTranscribeCallAnalyticsProcessorConfiguration == null
          ? null
          : amazonTranscribeCallAnalyticsProcessorConfiguration!.toMap(),
      'amazonTranscribeProcessorConfiguration':
          ?amazonTranscribeProcessorConfiguration == null
          ? null
          : amazonTranscribeProcessorConfiguration!.toMap(),
      'kinesisDataStreamSinkConfiguration':
          ?kinesisDataStreamSinkConfiguration == null
          ? null
          : kinesisDataStreamSinkConfiguration!.toMap(),
      'lambdaFunctionSinkConfiguration':
          ?lambdaFunctionSinkConfiguration == null
          ? null
          : lambdaFunctionSinkConfiguration!.toMap(),
      's3RecordingSinkConfiguration': ?s3RecordingSinkConfiguration == null
          ? null
          : s3RecordingSinkConfiguration!.toMap(),
      'snsTopicSinkConfiguration': ?snsTopicSinkConfiguration == null
          ? null
          : snsTopicSinkConfiguration!.toMap(),
      'sqsQueueSinkConfiguration': ?sqsQueueSinkConfiguration == null
          ? null
          : sqsQueueSinkConfiguration!.toMap(),
      'type': type,
      'voiceAnalyticsProcessorConfiguration':
          ?voiceAnalyticsProcessorConfiguration == null
          ? null
          : voiceAnalyticsProcessorConfiguration!.toMap(),
    };
  }

  factory MediaInsightsPipelineConfigurationElement.fromMap(
    Map<String, dynamic> map,
  ) {
    return MediaInsightsPipelineConfigurationElement(
      amazonTranscribeCallAnalyticsProcessorConfiguration:
          map['amazonTranscribeCallAnalyticsProcessorConfiguration'] == null
          ? null
          : MediaInsightsPipelineConfigurationElementAmazonTranscribeCallAnalyticsProcessorConfiguration.fromMap(
              (map['amazonTranscribeCallAnalyticsProcessorConfiguration']
                      as Map)
                  .cast<String, dynamic>(),
            ),
      amazonTranscribeProcessorConfiguration:
          map['amazonTranscribeProcessorConfiguration'] == null
          ? null
          : MediaInsightsPipelineConfigurationElementAmazonTranscribeProcessorConfiguration.fromMap(
              (map['amazonTranscribeProcessorConfiguration'] as Map)
                  .cast<String, dynamic>(),
            ),
      kinesisDataStreamSinkConfiguration:
          map['kinesisDataStreamSinkConfiguration'] == null
          ? null
          : MediaInsightsPipelineConfigurationElementKinesisDataStreamSinkConfiguration.fromMap(
              (map['kinesisDataStreamSinkConfiguration'] as Map)
                  .cast<String, dynamic>(),
            ),
      lambdaFunctionSinkConfiguration:
          map['lambdaFunctionSinkConfiguration'] == null
          ? null
          : MediaInsightsPipelineConfigurationElementLambdaFunctionSinkConfiguration.fromMap(
              (map['lambdaFunctionSinkConfiguration'] as Map)
                  .cast<String, dynamic>(),
            ),
      s3RecordingSinkConfiguration: map['s3RecordingSinkConfiguration'] == null
          ? null
          : MediaInsightsPipelineConfigurationElementS3RecordingSinkConfiguration.fromMap(
              (map['s3RecordingSinkConfiguration'] as Map)
                  .cast<String, dynamic>(),
            ),
      snsTopicSinkConfiguration: map['snsTopicSinkConfiguration'] == null
          ? null
          : MediaInsightsPipelineConfigurationElementSnsTopicSinkConfiguration.fromMap(
              (map['snsTopicSinkConfiguration'] as Map).cast<String, dynamic>(),
            ),
      sqsQueueSinkConfiguration: map['sqsQueueSinkConfiguration'] == null
          ? null
          : MediaInsightsPipelineConfigurationElementSqsQueueSinkConfiguration.fromMap(
              (map['sqsQueueSinkConfiguration'] as Map).cast<String, dynamic>(),
            ),
      type: map['type'] as String,
      voiceAnalyticsProcessorConfiguration:
          map['voiceAnalyticsProcessorConfiguration'] == null
          ? null
          : MediaInsightsPipelineConfigurationElementVoiceAnalyticsProcessorConfiguration.fromMap(
              (map['voiceAnalyticsProcessorConfiguration'] as Map)
                  .cast<String, dynamic>(),
            ),
    );
  }
}
