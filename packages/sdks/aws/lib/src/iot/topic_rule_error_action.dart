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
  const TopicRuleErrorAction({
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
      cloudwatchAlarm: (() { final guardedValue = map['cloudwatchAlarm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TopicRuleErrorActionCloudwatchAlarm.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      cloudwatchLogs: (() { final guardedValue = map['cloudwatchLogs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TopicRuleErrorActionCloudwatchLogs.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      cloudwatchMetric: (() { final guardedValue = map['cloudwatchMetric']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TopicRuleErrorActionCloudwatchMetric.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dynamodb: (() { final guardedValue = map['dynamodb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TopicRuleErrorActionDynamodb.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dynamodbv2: (() { final guardedValue = map['dynamodbv2']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TopicRuleErrorActionDynamodbv2.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      elasticsearch: (() { final guardedValue = map['elasticsearch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TopicRuleErrorActionElasticsearch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      firehose: (() { final guardedValue = map['firehose']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TopicRuleErrorActionFirehose.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      http: (() { final guardedValue = map['http']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TopicRuleErrorActionHttp.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      iotAnalytics: (() { final guardedValue = map['iotAnalytics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TopicRuleErrorActionIotAnalytics.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      iotEvents: (() { final guardedValue = map['iotEvents']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TopicRuleErrorActionIotEvents.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kafka: (() { final guardedValue = map['kafka']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TopicRuleErrorActionKafka.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kinesis: (() { final guardedValue = map['kinesis']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TopicRuleErrorActionKinesis.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      lambda: (() { final guardedValue = map['lambda']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TopicRuleErrorActionLambda.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      republish: (() { final guardedValue = map['republish']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TopicRuleErrorActionRepublish.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      s3: (() { final guardedValue = map['s3']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TopicRuleErrorActionS3.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sns: (() { final guardedValue = map['sns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TopicRuleErrorActionSns.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sqs: (() { final guardedValue = map['sqs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TopicRuleErrorActionSqs.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      stepFunctions: (() { final guardedValue = map['stepFunctions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TopicRuleErrorActionStepFunctions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      timestream: (() { final guardedValue = map['timestream']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TopicRuleErrorActionTimestream.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
