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
    final map = <String, dynamic>{};
    final cloudwatchAlarmValue = cloudwatchAlarm;
    if (cloudwatchAlarmValue != null) {
      map['cloudwatchAlarm'] = cloudwatchAlarmValue.toMap();
    }
    final cloudwatchLogsValue = cloudwatchLogs;
    if (cloudwatchLogsValue != null) {
      map['cloudwatchLogs'] = cloudwatchLogsValue.toMap();
    }
    final cloudwatchMetricValue = cloudwatchMetric;
    if (cloudwatchMetricValue != null) {
      map['cloudwatchMetric'] = cloudwatchMetricValue.toMap();
    }
    final dynamodbValue = dynamodb;
    if (dynamodbValue != null) {
      map['dynamodb'] = dynamodbValue.toMap();
    }
    final dynamodbv2Value = dynamodbv2;
    if (dynamodbv2Value != null) {
      map['dynamodbv2'] = dynamodbv2Value.toMap();
    }
    final elasticsearchValue = elasticsearch;
    if (elasticsearchValue != null) {
      map['elasticsearch'] = elasticsearchValue.toMap();
    }
    final firehoseValue = firehose;
    if (firehoseValue != null) {
      map['firehose'] = firehoseValue.toMap();
    }
    final httpValue = http;
    if (httpValue != null) {
      map['http'] = httpValue.toMap();
    }
    final iotAnalyticsValue = iotAnalytics;
    if (iotAnalyticsValue != null) {
      map['iotAnalytics'] = iotAnalyticsValue.toMap();
    }
    final iotEventsValue = iotEvents;
    if (iotEventsValue != null) {
      map['iotEvents'] = iotEventsValue.toMap();
    }
    final kafkaValue = kafka;
    if (kafkaValue != null) {
      map['kafka'] = kafkaValue.toMap();
    }
    final kinesisValue = kinesis;
    if (kinesisValue != null) {
      map['kinesis'] = kinesisValue.toMap();
    }
    final lambdaValue = lambda;
    if (lambdaValue != null) {
      map['lambda'] = lambdaValue.toMap();
    }
    final republishValue = republish;
    if (republishValue != null) {
      map['republish'] = republishValue.toMap();
    }
    final s3Value = s3;
    if (s3Value != null) {
      map['s3'] = s3Value.toMap();
    }
    final snsValue = sns;
    if (snsValue != null) {
      map['sns'] = snsValue.toMap();
    }
    final sqsValue = sqs;
    if (sqsValue != null) {
      map['sqs'] = sqsValue.toMap();
    }
    final stepFunctionsValue = stepFunctions;
    if (stepFunctionsValue != null) {
      map['stepFunctions'] = stepFunctionsValue.toMap();
    }
    final timestreamValue = timestream;
    if (timestreamValue != null) {
      map['timestream'] = timestreamValue.toMap();
    }
    return map;
  }

  factory TopicRuleErrorAction.fromMap(Map<String, dynamic> map) {
    return TopicRuleErrorAction(
      cloudwatchAlarm: map['cloudwatchAlarm'] == null
          ? null
          : TopicRuleErrorActionCloudwatchAlarm.fromMap(
              (map['cloudwatchAlarm'] as Map).cast<String, dynamic>()),
      cloudwatchLogs: map['cloudwatchLogs'] == null
          ? null
          : TopicRuleErrorActionCloudwatchLogs.fromMap(
              (map['cloudwatchLogs'] as Map).cast<String, dynamic>()),
      cloudwatchMetric: map['cloudwatchMetric'] == null
          ? null
          : TopicRuleErrorActionCloudwatchMetric.fromMap(
              (map['cloudwatchMetric'] as Map).cast<String, dynamic>()),
      dynamodb: map['dynamodb'] == null
          ? null
          : TopicRuleErrorActionDynamodb.fromMap(
              (map['dynamodb'] as Map).cast<String, dynamic>()),
      dynamodbv2: map['dynamodbv2'] == null
          ? null
          : TopicRuleErrorActionDynamodbv2.fromMap(
              (map['dynamodbv2'] as Map).cast<String, dynamic>()),
      elasticsearch: map['elasticsearch'] == null
          ? null
          : TopicRuleErrorActionElasticsearch.fromMap(
              (map['elasticsearch'] as Map).cast<String, dynamic>()),
      firehose: map['firehose'] == null
          ? null
          : TopicRuleErrorActionFirehose.fromMap(
              (map['firehose'] as Map).cast<String, dynamic>()),
      http: map['http'] == null
          ? null
          : TopicRuleErrorActionHttp.fromMap(
              (map['http'] as Map).cast<String, dynamic>()),
      iotAnalytics: map['iotAnalytics'] == null
          ? null
          : TopicRuleErrorActionIotAnalytics.fromMap(
              (map['iotAnalytics'] as Map).cast<String, dynamic>()),
      iotEvents: map['iotEvents'] == null
          ? null
          : TopicRuleErrorActionIotEvents.fromMap(
              (map['iotEvents'] as Map).cast<String, dynamic>()),
      kafka: map['kafka'] == null
          ? null
          : TopicRuleErrorActionKafka.fromMap(
              (map['kafka'] as Map).cast<String, dynamic>()),
      kinesis: map['kinesis'] == null
          ? null
          : TopicRuleErrorActionKinesis.fromMap(
              (map['kinesis'] as Map).cast<String, dynamic>()),
      lambda: map['lambda'] == null
          ? null
          : TopicRuleErrorActionLambda.fromMap(
              (map['lambda'] as Map).cast<String, dynamic>()),
      republish: map['republish'] == null
          ? null
          : TopicRuleErrorActionRepublish.fromMap(
              (map['republish'] as Map).cast<String, dynamic>()),
      s3: map['s3'] == null
          ? null
          : TopicRuleErrorActionS3.fromMap(
              (map['s3'] as Map).cast<String, dynamic>()),
      sns: map['sns'] == null
          ? null
          : TopicRuleErrorActionSns.fromMap(
              (map['sns'] as Map).cast<String, dynamic>()),
      sqs: map['sqs'] == null
          ? null
          : TopicRuleErrorActionSqs.fromMap(
              (map['sqs'] as Map).cast<String, dynamic>()),
      stepFunctions: map['stepFunctions'] == null
          ? null
          : TopicRuleErrorActionStepFunctions.fromMap(
              (map['stepFunctions'] as Map).cast<String, dynamic>()),
      timestream: map['timestream'] == null
          ? null
          : TopicRuleErrorActionTimestream.fromMap(
              (map['timestream'] as Map).cast<String, dynamic>()),
    );
  }
}
