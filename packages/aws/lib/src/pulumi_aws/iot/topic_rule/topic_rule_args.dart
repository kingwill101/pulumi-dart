// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../topic_rule_cloudwatch_alarm/topic_rule_cloudwatch_alarm.dart';
import '../topic_rule_cloudwatch_log/topic_rule_cloudwatch_log.dart';
import '../topic_rule_cloudwatch_metric/topic_rule_cloudwatch_metric.dart';
import '../topic_rule_dynamodb/topic_rule_dynamodb.dart';
import '../topic_rule_dynamodbv2/topic_rule_dynamodbv2.dart';
import '../topic_rule_elasticsearch/topic_rule_elasticsearch.dart';
import '../topic_rule_error_action/topic_rule_error_action.dart';
import '../topic_rule_firehose/topic_rule_firehose.dart';
import '../topic_rule_http/topic_rule_http.dart';
import '../topic_rule_iot_analytic/topic_rule_iot_analytic.dart';
import '../topic_rule_iot_event/topic_rule_iot_event.dart';
import '../topic_rule_kafka/topic_rule_kafka.dart';
import '../topic_rule_kinesis/topic_rule_kinesis.dart';
import '../topic_rule_lambda/topic_rule_lambda.dart';
import '../topic_rule_republish/topic_rule_republish.dart';
import '../topic_rule_s3/topic_rule_s3.dart';
import '../topic_rule_sns/topic_rule_sns.dart';
import '../topic_rule_sqs/topic_rule_sqs.dart';
import '../topic_rule_step_function/topic_rule_step_function.dart';
import '../topic_rule_timestream/topic_rule_timestream.dart';

/// The set of arguments for TopicRule.
class TopicRuleArgs {
  final Input<List<TopicRuleCloudwatchAlarm>>? cloudwatchAlarms;
  final Input<List<TopicRuleCloudwatchLog>>? cloudwatchLogs;
  final Input<List<TopicRuleCloudwatchMetric>>? cloudwatchMetrics;

  /// The description of the rule.
  final Input<String>? description;
  final Input<List<TopicRuleDynamodb>>? dynamodbs;
  final Input<List<TopicRuleDynamodbv2>>? dynamodbv2s;
  final Input<List<TopicRuleElasticsearch>>? elasticsearch;

  /// Specifies whether the rule is enabled.
  final Input<bool> enabled;

  /// Configuration block with error action to be associated with the rule. See the documentation for `cloudwatch_alarm`, `cloudwatch_logs`, `cloudwatch_metric`, `dynamodb`, `dynamodbv2`, `elasticsearch`, `firehose`, `http`, `iot_analytics`, `iot_events`, `kafka`, `kinesis`, `lambda`, `republish`, `s3`, `sns`, `sqs`, `step_functions`, `timestream` configuration blocks for further configuration details.
  final Input<TopicRuleErrorAction>? errorAction;
  final Input<List<TopicRuleFirehose>>? firehoses;
  final Input<List<TopicRuleHttp>>? https;
  final Input<List<TopicRuleIotAnalytic>>? iotAnalytics;
  final Input<List<TopicRuleIotEvent>>? iotEvents;
  final Input<List<TopicRuleKafka>>? kafkas;
  final Input<List<TopicRuleKinesis>>? kineses;
  final Input<List<TopicRuleLambda>>? lambdas;

  /// The name of the rule.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;
  final Input<List<TopicRuleRepublish>>? republishes;
  final Input<List<TopicRuleS3>>? s3;
  final Input<List<TopicRuleSns>>? sns;

  /// The SQL statement used to query the topic. For more information, see AWS IoT SQL Reference (http://docs.aws.amazon.com/iot/latest/developerguide/iot-rules.html#aws-iot-sql-reference) in the AWS IoT Developer Guide.
  final Input<String> sql;

  /// The version of the SQL rules engine to use when evaluating the rule.
  final Input<String> sqlVersion;
  final Input<List<TopicRuleSqs>>? sqs;
  final Input<List<TopicRuleStepFunction>>? stepFunctions;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;
  final Input<List<TopicRuleTimestream>>? timestreams;

  TopicRuleArgs({
    this.cloudwatchAlarms,
    this.cloudwatchLogs,
    this.cloudwatchMetrics,
    this.description,
    this.dynamodbs,
    this.dynamodbv2s,
    this.elasticsearch,
    required this.enabled,
    this.errorAction,
    this.firehoses,
    this.https,
    this.iotAnalytics,
    this.iotEvents,
    this.kafkas,
    this.kineses,
    this.lambdas,
    this.name,
    this.region,
    this.republishes,
    this.s3,
    this.sns,
    required this.sql,
    required this.sqlVersion,
    this.sqs,
    this.stepFunctions,
    this.tags,
    this.timestreams,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cloudwatchAlarmsValue = cloudwatchAlarms;
    if (cloudwatchAlarmsValue != null) {
      map['cloudwatchAlarms'] = Input.mapOptionalInputValue<
              List<TopicRuleCloudwatchAlarm>, List<Map<String, dynamic>>>(
          cloudwatchAlarmsValue,
          (value) =>
              Input.encodeList<TopicRuleCloudwatchAlarm, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final cloudwatchLogsValue = cloudwatchLogs;
    if (cloudwatchLogsValue != null) {
      map['cloudwatchLogs'] = Input.mapOptionalInputValue<
              List<TopicRuleCloudwatchLog>, List<Map<String, dynamic>>>(
          cloudwatchLogsValue,
          (value) =>
              Input.encodeList<TopicRuleCloudwatchLog, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final cloudwatchMetricsValue = cloudwatchMetrics;
    if (cloudwatchMetricsValue != null) {
      map['cloudwatchMetrics'] = Input.mapOptionalInputValue<
              List<TopicRuleCloudwatchMetric>, List<Map<String, dynamic>>>(
          cloudwatchMetricsValue,
          (value) =>
              Input.encodeList<TopicRuleCloudwatchMetric, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final dynamodbsValue = dynamodbs;
    if (dynamodbsValue != null) {
      map['dynamodbs'] = Input.mapOptionalInputValue<List<TopicRuleDynamodb>,
              List<Map<String, dynamic>>>(
          dynamodbsValue,
          (value) => Input.encodeList<TopicRuleDynamodb, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final dynamodbv2sValue = dynamodbv2s;
    if (dynamodbv2sValue != null) {
      map['dynamodbv2s'] = Input.mapOptionalInputValue<
              List<TopicRuleDynamodbv2>, List<Map<String, dynamic>>>(
          dynamodbv2sValue,
          (value) =>
              Input.encodeList<TopicRuleDynamodbv2, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final elasticsearchValue = elasticsearch;
    if (elasticsearchValue != null) {
      map['elasticsearch'] = Input.mapOptionalInputValue<
              List<TopicRuleElasticsearch>, List<Map<String, dynamic>>>(
          elasticsearchValue,
          (value) =>
              Input.encodeList<TopicRuleElasticsearch, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    map['enabled'] = enabled;
    final errorActionValue = errorAction;
    if (errorActionValue != null) {
      map['errorAction'] = Input.mapOptionalInputValue<TopicRuleErrorAction,
          Map<String, dynamic>>(errorActionValue, (value) => value.toMap());
    }
    final firehosesValue = firehoses;
    if (firehosesValue != null) {
      map['firehoses'] = Input.mapOptionalInputValue<List<TopicRuleFirehose>,
              List<Map<String, dynamic>>>(
          firehosesValue,
          (value) => Input.encodeList<TopicRuleFirehose, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final httpsValue = https;
    if (httpsValue != null) {
      map['https'] = Input.mapOptionalInputValue<List<TopicRuleHttp>,
              List<Map<String, dynamic>>>(
          httpsValue,
          (value) => Input.encodeList<TopicRuleHttp, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final iotAnalyticsValue = iotAnalytics;
    if (iotAnalyticsValue != null) {
      map['iotAnalytics'] = Input.mapOptionalInputValue<
              List<TopicRuleIotAnalytic>, List<Map<String, dynamic>>>(
          iotAnalyticsValue,
          (value) =>
              Input.encodeList<TopicRuleIotAnalytic, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final iotEventsValue = iotEvents;
    if (iotEventsValue != null) {
      map['iotEvents'] = Input.mapOptionalInputValue<List<TopicRuleIotEvent>,
              List<Map<String, dynamic>>>(
          iotEventsValue,
          (value) => Input.encodeList<TopicRuleIotEvent, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final kafkasValue = kafkas;
    if (kafkasValue != null) {
      map['kafkas'] = Input.mapOptionalInputValue<List<TopicRuleKafka>,
              List<Map<String, dynamic>>>(
          kafkasValue,
          (value) => Input.encodeList<TopicRuleKafka, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final kinesesValue = kineses;
    if (kinesesValue != null) {
      map['kineses'] = Input.mapOptionalInputValue<List<TopicRuleKinesis>,
              List<Map<String, dynamic>>>(
          kinesesValue,
          (value) => Input.encodeList<TopicRuleKinesis, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final lambdasValue = lambdas;
    if (lambdasValue != null) {
      map['lambdas'] = Input.mapOptionalInputValue<List<TopicRuleLambda>,
              List<Map<String, dynamic>>>(
          lambdasValue,
          (value) => Input.encodeList<TopicRuleLambda, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final republishesValue = republishes;
    if (republishesValue != null) {
      map['republishes'] = Input.mapOptionalInputValue<List<TopicRuleRepublish>,
              List<Map<String, dynamic>>>(
          republishesValue,
          (value) => Input.encodeList<TopicRuleRepublish, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final s3Value = s3;
    if (s3Value != null) {
      map['s3'] = Input.mapOptionalInputValue<List<TopicRuleS3>,
              List<Map<String, dynamic>>>(
          s3Value,
          (value) => Input.encodeList<TopicRuleS3, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final snsValue = sns;
    if (snsValue != null) {
      map['sns'] = Input.mapOptionalInputValue<List<TopicRuleSns>,
              List<Map<String, dynamic>>>(
          snsValue,
          (value) => Input.encodeList<TopicRuleSns, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    map['sql'] = sql;
    map['sqlVersion'] = sqlVersion;
    final sqsValue = sqs;
    if (sqsValue != null) {
      map['sqs'] = Input.mapOptionalInputValue<List<TopicRuleSqs>,
              List<Map<String, dynamic>>>(
          sqsValue,
          (value) => Input.encodeList<TopicRuleSqs, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final stepFunctionsValue = stepFunctions;
    if (stepFunctionsValue != null) {
      map['stepFunctions'] = Input.mapOptionalInputValue<
              List<TopicRuleStepFunction>, List<Map<String, dynamic>>>(
          stepFunctionsValue,
          (value) =>
              Input.encodeList<TopicRuleStepFunction, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final timestreamsValue = timestreams;
    if (timestreamsValue != null) {
      map['timestreams'] = Input.mapOptionalInputValue<
              List<TopicRuleTimestream>, List<Map<String, dynamic>>>(
          timestreamsValue,
          (value) =>
              Input.encodeList<TopicRuleTimestream, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    return map;
  }

  factory TopicRuleArgs.fromMap(Map<String, dynamic> map) {
    return TopicRuleArgs(
      cloudwatchAlarms: Input.asOptionalInput<List<TopicRuleCloudwatchAlarm>>(
          map['cloudwatchAlarms']),
      cloudwatchLogs: Input.asOptionalInput<List<TopicRuleCloudwatchLog>>(
          map['cloudwatchLogs']),
      cloudwatchMetrics: Input.asOptionalInput<List<TopicRuleCloudwatchMetric>>(
          map['cloudwatchMetrics']),
      description: Input.asOptionalInput<String>(map['description']),
      dynamodbs:
          Input.asOptionalInput<List<TopicRuleDynamodb>>(map['dynamodbs']),
      dynamodbv2s:
          Input.asOptionalInput<List<TopicRuleDynamodbv2>>(map['dynamodbv2s']),
      elasticsearch: Input.asOptionalInput<List<TopicRuleElasticsearch>>(
          map['elasticsearch']),
      enabled: Input.asInput<bool>(map['enabled']),
      errorAction:
          Input.asOptionalInput<TopicRuleErrorAction>(map['errorAction']),
      firehoses:
          Input.asOptionalInput<List<TopicRuleFirehose>>(map['firehoses']),
      https: Input.asOptionalInput<List<TopicRuleHttp>>(map['https']),
      iotAnalytics: Input.asOptionalInput<List<TopicRuleIotAnalytic>>(
          map['iotAnalytics']),
      iotEvents:
          Input.asOptionalInput<List<TopicRuleIotEvent>>(map['iotEvents']),
      kafkas: Input.asOptionalInput<List<TopicRuleKafka>>(map['kafkas']),
      kineses: Input.asOptionalInput<List<TopicRuleKinesis>>(map['kineses']),
      lambdas: Input.asOptionalInput<List<TopicRuleLambda>>(map['lambdas']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      republishes:
          Input.asOptionalInput<List<TopicRuleRepublish>>(map['republishes']),
      s3: Input.asOptionalInput<List<TopicRuleS3>>(map['s3']),
      sns: Input.asOptionalInput<List<TopicRuleSns>>(map['sns']),
      sql: Input.asInput<String>(map['sql']),
      sqlVersion: Input.asInput<String>(map['sqlVersion']),
      sqs: Input.asOptionalInput<List<TopicRuleSqs>>(map['sqs']),
      stepFunctions: Input.asOptionalInput<List<TopicRuleStepFunction>>(
          map['stepFunctions']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      timestreams:
          Input.asOptionalInput<List<TopicRuleTimestream>>(map['timestreams']),
    );
  }
}
