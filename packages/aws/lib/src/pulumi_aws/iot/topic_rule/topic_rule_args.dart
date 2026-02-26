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

  /// Configuration block with error action to be associated with the rule. See the documentation for <span pulumi-lang-nodejs="`cloudwatchAlarm`" pulumi-lang-dotnet="`CloudwatchAlarm`" pulumi-lang-go="`cloudwatchAlarm`" pulumi-lang-python="`cloudwatch_alarm`" pulumi-lang-yaml="`cloudwatchAlarm`" pulumi-lang-java="`cloudwatchAlarm`">`cloudwatch_alarm`</span>, <span pulumi-lang-nodejs="`cloudwatchLogs`" pulumi-lang-dotnet="`CloudwatchLogs`" pulumi-lang-go="`cloudwatchLogs`" pulumi-lang-python="`cloudwatch_logs`" pulumi-lang-yaml="`cloudwatchLogs`" pulumi-lang-java="`cloudwatchLogs`">`cloudwatch_logs`</span>, <span pulumi-lang-nodejs="`cloudwatchMetric`" pulumi-lang-dotnet="`CloudwatchMetric`" pulumi-lang-go="`cloudwatchMetric`" pulumi-lang-python="`cloudwatch_metric`" pulumi-lang-yaml="`cloudwatchMetric`" pulumi-lang-java="`cloudwatchMetric`">`cloudwatch_metric`</span>, <span pulumi-lang-nodejs="`dynamodb`" pulumi-lang-dotnet="`Dynamodb`" pulumi-lang-go="`dynamodb`" pulumi-lang-python="`dynamodb`" pulumi-lang-yaml="`dynamodb`" pulumi-lang-java="`dynamodb`">`dynamodb`</span>, <span pulumi-lang-nodejs="`dynamodbv2`" pulumi-lang-dotnet="`Dynamodbv2`" pulumi-lang-go="`dynamodbv2`" pulumi-lang-python="`dynamodbv2`" pulumi-lang-yaml="`dynamodbv2`" pulumi-lang-java="`dynamodbv2`">`dynamodbv2`</span>, <span pulumi-lang-nodejs="`elasticsearch`" pulumi-lang-dotnet="`Elasticsearch`" pulumi-lang-go="`elasticsearch`" pulumi-lang-python="`elasticsearch`" pulumi-lang-yaml="`elasticsearch`" pulumi-lang-java="`elasticsearch`">`elasticsearch`</span>, <span pulumi-lang-nodejs="`firehose`" pulumi-lang-dotnet="`Firehose`" pulumi-lang-go="`firehose`" pulumi-lang-python="`firehose`" pulumi-lang-yaml="`firehose`" pulumi-lang-java="`firehose`">`firehose`</span>, <span pulumi-lang-nodejs="`http`" pulumi-lang-dotnet="`Http`" pulumi-lang-go="`http`" pulumi-lang-python="`http`" pulumi-lang-yaml="`http`" pulumi-lang-java="`http`">`http`</span>, <span pulumi-lang-nodejs="`iotAnalytics`" pulumi-lang-dotnet="`IotAnalytics`" pulumi-lang-go="`iotAnalytics`" pulumi-lang-python="`iot_analytics`" pulumi-lang-yaml="`iotAnalytics`" pulumi-lang-java="`iotAnalytics`">`iot_analytics`</span>, <span pulumi-lang-nodejs="`iotEvents`" pulumi-lang-dotnet="`IotEvents`" pulumi-lang-go="`iotEvents`" pulumi-lang-python="`iot_events`" pulumi-lang-yaml="`iotEvents`" pulumi-lang-java="`iotEvents`">`iot_events`</span>, <span pulumi-lang-nodejs="`kafka`" pulumi-lang-dotnet="`Kafka`" pulumi-lang-go="`kafka`" pulumi-lang-python="`kafka`" pulumi-lang-yaml="`kafka`" pulumi-lang-java="`kafka`">`kafka`</span>, <span pulumi-lang-nodejs="`kinesis`" pulumi-lang-dotnet="`Kinesis`" pulumi-lang-go="`kinesis`" pulumi-lang-python="`kinesis`" pulumi-lang-yaml="`kinesis`" pulumi-lang-java="`kinesis`">`kinesis`</span>, <span pulumi-lang-nodejs="`lambda`" pulumi-lang-dotnet="`Lambda`" pulumi-lang-go="`lambda`" pulumi-lang-python="`lambda`" pulumi-lang-yaml="`lambda`" pulumi-lang-java="`lambda`">`lambda`</span>, <span pulumi-lang-nodejs="`republish`" pulumi-lang-dotnet="`Republish`" pulumi-lang-go="`republish`" pulumi-lang-python="`republish`" pulumi-lang-yaml="`republish`" pulumi-lang-java="`republish`">`republish`</span>, <span pulumi-lang-nodejs="`s3`" pulumi-lang-dotnet="`S3`" pulumi-lang-go="`s3`" pulumi-lang-python="`s3`" pulumi-lang-yaml="`s3`" pulumi-lang-java="`s3`">`s3`</span>, <span pulumi-lang-nodejs="`sns`" pulumi-lang-dotnet="`Sns`" pulumi-lang-go="`sns`" pulumi-lang-python="`sns`" pulumi-lang-yaml="`sns`" pulumi-lang-java="`sns`">`sns`</span>, <span pulumi-lang-nodejs="`sqs`" pulumi-lang-dotnet="`Sqs`" pulumi-lang-go="`sqs`" pulumi-lang-python="`sqs`" pulumi-lang-yaml="`sqs`" pulumi-lang-java="`sqs`">`sqs`</span>, <span pulumi-lang-nodejs="`stepFunctions`" pulumi-lang-dotnet="`StepFunctions`" pulumi-lang-go="`stepFunctions`" pulumi-lang-python="`step_functions`" pulumi-lang-yaml="`stepFunctions`" pulumi-lang-java="`stepFunctions`">`step_functions`</span>, <span pulumi-lang-nodejs="`timestream`" pulumi-lang-dotnet="`Timestream`" pulumi-lang-go="`timestream`" pulumi-lang-python="`timestream`" pulumi-lang-yaml="`timestream`" pulumi-lang-java="`timestream`">`timestream`</span> configuration blocks for further configuration details.
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

  /// Key-value map of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
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
