// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
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
  final pulumi.Input<TopicRuleErrorActionCloudwatchAlarm>? cloudwatchAlarm;
  final pulumi.Input<TopicRuleErrorActionCloudwatchLogs>? cloudwatchLogs;
  final pulumi.Input<TopicRuleErrorActionCloudwatchMetric>? cloudwatchMetric;
  final pulumi.Input<TopicRuleErrorActionDynamodb>? dynamodb;
  final pulumi.Input<TopicRuleErrorActionDynamodbv2>? dynamodbv2;
  final pulumi.Input<TopicRuleErrorActionElasticsearch>? elasticsearch;
  final pulumi.Input<TopicRuleErrorActionFirehose>? firehose;
  final pulumi.Input<TopicRuleErrorActionHttp>? http;
  final pulumi.Input<TopicRuleErrorActionIotAnalytics>? iotAnalytics;
  final pulumi.Input<TopicRuleErrorActionIotEvents>? iotEvents;
  final pulumi.Input<TopicRuleErrorActionKafka>? kafka;
  final pulumi.Input<TopicRuleErrorActionKinesis>? kinesis;
  final pulumi.Input<TopicRuleErrorActionLambda>? lambda;
  final pulumi.Input<TopicRuleErrorActionRepublish>? republish;
  final pulumi.Input<TopicRuleErrorActionS3>? s3;
  final pulumi.Input<TopicRuleErrorActionSns>? sns;
  final pulumi.Input<TopicRuleErrorActionSqs>? sqs;
  final pulumi.Input<TopicRuleErrorActionStepFunctions>? stepFunctions;
  final pulumi.Input<TopicRuleErrorActionTimestream>? timestream;

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
      'cloudwatchAlarm': ?pulumi.Input.mapOptionalInputValue<TopicRuleErrorActionCloudwatchAlarm, Map<String, dynamic>>(cloudwatchAlarm, (value) => value.toMap()),
      'cloudwatchLogs': ?pulumi.Input.mapOptionalInputValue<TopicRuleErrorActionCloudwatchLogs, Map<String, dynamic>>(cloudwatchLogs, (value) => value.toMap()),
      'cloudwatchMetric': ?pulumi.Input.mapOptionalInputValue<TopicRuleErrorActionCloudwatchMetric, Map<String, dynamic>>(cloudwatchMetric, (value) => value.toMap()),
      'dynamodb': ?pulumi.Input.mapOptionalInputValue<TopicRuleErrorActionDynamodb, Map<String, dynamic>>(dynamodb, (value) => value.toMap()),
      'dynamodbv2': ?pulumi.Input.mapOptionalInputValue<TopicRuleErrorActionDynamodbv2, Map<String, dynamic>>(dynamodbv2, (value) => value.toMap()),
      'elasticsearch': ?pulumi.Input.mapOptionalInputValue<TopicRuleErrorActionElasticsearch, Map<String, dynamic>>(elasticsearch, (value) => value.toMap()),
      'firehose': ?pulumi.Input.mapOptionalInputValue<TopicRuleErrorActionFirehose, Map<String, dynamic>>(firehose, (value) => value.toMap()),
      'http': ?pulumi.Input.mapOptionalInputValue<TopicRuleErrorActionHttp, Map<String, dynamic>>(http, (value) => value.toMap()),
      'iotAnalytics': ?pulumi.Input.mapOptionalInputValue<TopicRuleErrorActionIotAnalytics, Map<String, dynamic>>(iotAnalytics, (value) => value.toMap()),
      'iotEvents': ?pulumi.Input.mapOptionalInputValue<TopicRuleErrorActionIotEvents, Map<String, dynamic>>(iotEvents, (value) => value.toMap()),
      'kafka': ?pulumi.Input.mapOptionalInputValue<TopicRuleErrorActionKafka, Map<String, dynamic>>(kafka, (value) => value.toMap()),
      'kinesis': ?pulumi.Input.mapOptionalInputValue<TopicRuleErrorActionKinesis, Map<String, dynamic>>(kinesis, (value) => value.toMap()),
      'lambda': ?pulumi.Input.mapOptionalInputValue<TopicRuleErrorActionLambda, Map<String, dynamic>>(lambda, (value) => value.toMap()),
      'republish': ?pulumi.Input.mapOptionalInputValue<TopicRuleErrorActionRepublish, Map<String, dynamic>>(republish, (value) => value.toMap()),
      's3': ?pulumi.Input.mapOptionalInputValue<TopicRuleErrorActionS3, Map<String, dynamic>>(s3, (value) => value.toMap()),
      'sns': ?pulumi.Input.mapOptionalInputValue<TopicRuleErrorActionSns, Map<String, dynamic>>(sns, (value) => value.toMap()),
      'sqs': ?pulumi.Input.mapOptionalInputValue<TopicRuleErrorActionSqs, Map<String, dynamic>>(sqs, (value) => value.toMap()),
      'stepFunctions': ?pulumi.Input.mapOptionalInputValue<TopicRuleErrorActionStepFunctions, Map<String, dynamic>>(stepFunctions, (value) => value.toMap()),
      'timestream': ?pulumi.Input.mapOptionalInputValue<TopicRuleErrorActionTimestream, Map<String, dynamic>>(timestream, (value) => value.toMap()),
    };
  }

  factory TopicRuleErrorAction.fromMap(Map<String, dynamic> map) {
    return TopicRuleErrorAction(
      cloudwatchAlarm: map['cloudwatchAlarm'] == null ? null : ((TopicRuleErrorActionCloudwatchAlarm.fromMap((map['cloudwatchAlarm']! as Map).cast<String, dynamic>())).input()).input(),
      cloudwatchLogs: map['cloudwatchLogs'] == null ? null : ((TopicRuleErrorActionCloudwatchLogs.fromMap((map['cloudwatchLogs']! as Map).cast<String, dynamic>())).input()).input(),
      cloudwatchMetric: map['cloudwatchMetric'] == null ? null : ((TopicRuleErrorActionCloudwatchMetric.fromMap((map['cloudwatchMetric']! as Map).cast<String, dynamic>())).input()).input(),
      dynamodb: map['dynamodb'] == null ? null : ((TopicRuleErrorActionDynamodb.fromMap((map['dynamodb']! as Map).cast<String, dynamic>())).input()).input(),
      dynamodbv2: map['dynamodbv2'] == null ? null : ((TopicRuleErrorActionDynamodbv2.fromMap((map['dynamodbv2']! as Map).cast<String, dynamic>())).input()).input(),
      elasticsearch: map['elasticsearch'] == null ? null : ((TopicRuleErrorActionElasticsearch.fromMap((map['elasticsearch']! as Map).cast<String, dynamic>())).input()).input(),
      firehose: map['firehose'] == null ? null : ((TopicRuleErrorActionFirehose.fromMap((map['firehose']! as Map).cast<String, dynamic>())).input()).input(),
      http: map['http'] == null ? null : ((TopicRuleErrorActionHttp.fromMap((map['http']! as Map).cast<String, dynamic>())).input()).input(),
      iotAnalytics: map['iotAnalytics'] == null ? null : ((TopicRuleErrorActionIotAnalytics.fromMap((map['iotAnalytics']! as Map).cast<String, dynamic>())).input()).input(),
      iotEvents: map['iotEvents'] == null ? null : ((TopicRuleErrorActionIotEvents.fromMap((map['iotEvents']! as Map).cast<String, dynamic>())).input()).input(),
      kafka: map['kafka'] == null ? null : ((TopicRuleErrorActionKafka.fromMap((map['kafka']! as Map).cast<String, dynamic>())).input()).input(),
      kinesis: map['kinesis'] == null ? null : ((TopicRuleErrorActionKinesis.fromMap((map['kinesis']! as Map).cast<String, dynamic>())).input()).input(),
      lambda: map['lambda'] == null ? null : ((TopicRuleErrorActionLambda.fromMap((map['lambda']! as Map).cast<String, dynamic>())).input()).input(),
      republish: map['republish'] == null ? null : ((TopicRuleErrorActionRepublish.fromMap((map['republish']! as Map).cast<String, dynamic>())).input()).input(),
      s3: map['s3'] == null ? null : ((TopicRuleErrorActionS3.fromMap((map['s3']! as Map).cast<String, dynamic>())).input()).input(),
      sns: map['sns'] == null ? null : ((TopicRuleErrorActionSns.fromMap((map['sns']! as Map).cast<String, dynamic>())).input()).input(),
      sqs: map['sqs'] == null ? null : ((TopicRuleErrorActionSqs.fromMap((map['sqs']! as Map).cast<String, dynamic>())).input()).input(),
      stepFunctions: map['stepFunctions'] == null ? null : ((TopicRuleErrorActionStepFunctions.fromMap((map['stepFunctions']! as Map).cast<String, dynamic>())).input()).input(),
      timestream: map['timestream'] == null ? null : ((TopicRuleErrorActionTimestream.fromMap((map['timestream']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

