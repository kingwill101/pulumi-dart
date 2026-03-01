// ignore_for_file: unused_element, unnecessary_cast

import 'topic_rule_error_action_cloudwatch_alarm.dart';
import 'topic_rule_error_action_cloudwatch_logs.dart';
import 'topic_rule_error_action_cloudwatch_metric.dart';
import 'topic_rule_error_action_dynamodb.dart';
import 'topic_rule_error_action_dynamodbv2.dart';
import 'topic_rule_error_action_elasticsearch.dart';
import 'topic_rule_error_action_firehose.dart';
import 'topic_rule_error_action_http.dart';
import 'topic_rule_error_action_iot_analytics.dart';
import 'topic_rule_error_action_iot_events.dart';
import 'topic_rule_error_action_kafka.dart';
import 'topic_rule_error_action_kinesis.dart';
import 'topic_rule_error_action_lambda.dart';
import 'topic_rule_error_action_republish.dart';
import 'topic_rule_error_action_s3.dart';
import 'topic_rule_error_action_sns.dart';
import 'topic_rule_error_action_sqs.dart';
import 'topic_rule_error_action_step_functions.dart';
import 'topic_rule_error_action_timestream.dart';

class TopicRuleErrorAction {
  final TopicRuleErrorActionCloudwatchAlarm? cloudwatchAlarm;
  final TopicRuleErrorActionCloudwatchLogs? cloudwatchLogs;
  final TopicRuleErrorActionCloudwatchMetric? cloudwatchMetric;
  final TopicRuleErrorActionDynamodb? dynamodb;
  final TopicRuleErrorActionDynamodbv2? dynamodbv2;
  final TopicRuleErrorActionElasticsearch? elasticsearch;
  final TopicRuleErrorActionFirehose? firehose;
  final TopicRuleErrorActionHttp? http;
  final TopicRuleErrorActionIotAnalytics? iotAnalytics;
  final TopicRuleErrorActionIotEvents? iotEvents;
  final TopicRuleErrorActionKafka? kafka;
  final TopicRuleErrorActionKinesis? kinesis;
  final TopicRuleErrorActionLambda? lambda;
  final TopicRuleErrorActionRepublish? republish;
  final TopicRuleErrorActionS3? s3;
  final TopicRuleErrorActionSns? sns;
  final TopicRuleErrorActionSqs? sqs;
  final TopicRuleErrorActionStepFunctions? stepFunctions;
  final TopicRuleErrorActionTimestream? timestream;

  /// Creates a new [TopicRuleErrorAction].
  /// [cloudwatchAlarm] Optional.
  /// [cloudwatchLogs] Optional.
  /// [cloudwatchMetric] Optional.
  /// [dynamodb] Optional.
  /// [dynamodbv2] Optional.
  /// [elasticsearch] Optional.
  /// [firehose] Optional.
  /// [http] Optional.
  /// [iotAnalytics] Optional.
  /// [iotEvents] Optional.
  /// [kafka] Optional.
  /// [kinesis] Optional.
  /// [lambda] Optional.
  /// [republish] Optional.
  /// [s3] Optional.
  /// [sns] Optional.
  /// [sqs] Optional.
  /// [stepFunctions] Optional.
  /// [timestream] Optional.
  TopicRuleErrorAction({
    this.cloudwatchAlarm,
    this.cloudwatchLogs,
    this.cloudwatchMetric,
    this.dynamodb,
    this.dynamodbv2,
    this.elasticsearch,
    this.firehose,
    this.http,
    this.iotAnalytics,
    this.iotEvents,
    this.kafka,
    this.kinesis,
    this.lambda,
    this.republish,
    this.s3,
    this.sns,
    this.sqs,
    this.stepFunctions,
    this.timestream,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudwatchAlarm': ?cloudwatchAlarm == null
          ? null
          : cloudwatchAlarm!.toMap(),
      'cloudwatchLogs': ?cloudwatchLogs == null
          ? null
          : cloudwatchLogs!.toMap(),
      'cloudwatchMetric': ?cloudwatchMetric == null
          ? null
          : cloudwatchMetric!.toMap(),
      'dynamodb': ?dynamodb == null ? null : dynamodb!.toMap(),
      'dynamodbv2': ?dynamodbv2 == null ? null : dynamodbv2!.toMap(),
      'elasticsearch': ?elasticsearch == null ? null : elasticsearch!.toMap(),
      'firehose': ?firehose == null ? null : firehose!.toMap(),
      'http': ?http == null ? null : http!.toMap(),
      'iotAnalytics': ?iotAnalytics == null ? null : iotAnalytics!.toMap(),
      'iotEvents': ?iotEvents == null ? null : iotEvents!.toMap(),
      'kafka': ?kafka == null ? null : kafka!.toMap(),
      'kinesis': ?kinesis == null ? null : kinesis!.toMap(),
      'lambda': ?lambda == null ? null : lambda!.toMap(),
      'republish': ?republish == null ? null : republish!.toMap(),
      's3': ?s3 == null ? null : s3!.toMap(),
      'sns': ?sns == null ? null : sns!.toMap(),
      'sqs': ?sqs == null ? null : sqs!.toMap(),
      'stepFunctions': ?stepFunctions == null ? null : stepFunctions!.toMap(),
      'timestream': ?timestream == null ? null : timestream!.toMap(),
    };
  }

  factory TopicRuleErrorAction.fromMap(Map<String, dynamic> map) {
    return TopicRuleErrorAction(
      cloudwatchAlarm: map['cloudwatchAlarm'] == null
          ? null
          : TopicRuleErrorActionCloudwatchAlarm.fromMap(
              (map['cloudwatchAlarm'] as Map).cast<String, dynamic>(),
            ),
      cloudwatchLogs: map['cloudwatchLogs'] == null
          ? null
          : TopicRuleErrorActionCloudwatchLogs.fromMap(
              (map['cloudwatchLogs'] as Map).cast<String, dynamic>(),
            ),
      cloudwatchMetric: map['cloudwatchMetric'] == null
          ? null
          : TopicRuleErrorActionCloudwatchMetric.fromMap(
              (map['cloudwatchMetric'] as Map).cast<String, dynamic>(),
            ),
      dynamodb: map['dynamodb'] == null
          ? null
          : TopicRuleErrorActionDynamodb.fromMap(
              (map['dynamodb'] as Map).cast<String, dynamic>(),
            ),
      dynamodbv2: map['dynamodbv2'] == null
          ? null
          : TopicRuleErrorActionDynamodbv2.fromMap(
              (map['dynamodbv2'] as Map).cast<String, dynamic>(),
            ),
      elasticsearch: map['elasticsearch'] == null
          ? null
          : TopicRuleErrorActionElasticsearch.fromMap(
              (map['elasticsearch'] as Map).cast<String, dynamic>(),
            ),
      firehose: map['firehose'] == null
          ? null
          : TopicRuleErrorActionFirehose.fromMap(
              (map['firehose'] as Map).cast<String, dynamic>(),
            ),
      http: map['http'] == null
          ? null
          : TopicRuleErrorActionHttp.fromMap(
              (map['http'] as Map).cast<String, dynamic>(),
            ),
      iotAnalytics: map['iotAnalytics'] == null
          ? null
          : TopicRuleErrorActionIotAnalytics.fromMap(
              (map['iotAnalytics'] as Map).cast<String, dynamic>(),
            ),
      iotEvents: map['iotEvents'] == null
          ? null
          : TopicRuleErrorActionIotEvents.fromMap(
              (map['iotEvents'] as Map).cast<String, dynamic>(),
            ),
      kafka: map['kafka'] == null
          ? null
          : TopicRuleErrorActionKafka.fromMap(
              (map['kafka'] as Map).cast<String, dynamic>(),
            ),
      kinesis: map['kinesis'] == null
          ? null
          : TopicRuleErrorActionKinesis.fromMap(
              (map['kinesis'] as Map).cast<String, dynamic>(),
            ),
      lambda: map['lambda'] == null
          ? null
          : TopicRuleErrorActionLambda.fromMap(
              (map['lambda'] as Map).cast<String, dynamic>(),
            ),
      republish: map['republish'] == null
          ? null
          : TopicRuleErrorActionRepublish.fromMap(
              (map['republish'] as Map).cast<String, dynamic>(),
            ),
      s3: map['s3'] == null
          ? null
          : TopicRuleErrorActionS3.fromMap(
              (map['s3'] as Map).cast<String, dynamic>(),
            ),
      sns: map['sns'] == null
          ? null
          : TopicRuleErrorActionSns.fromMap(
              (map['sns'] as Map).cast<String, dynamic>(),
            ),
      sqs: map['sqs'] == null
          ? null
          : TopicRuleErrorActionSqs.fromMap(
              (map['sqs'] as Map).cast<String, dynamic>(),
            ),
      stepFunctions: map['stepFunctions'] == null
          ? null
          : TopicRuleErrorActionStepFunctions.fromMap(
              (map['stepFunctions'] as Map).cast<String, dynamic>(),
            ),
      timestream: map['timestream'] == null
          ? null
          : TopicRuleErrorActionTimestream.fromMap(
              (map['timestream'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
