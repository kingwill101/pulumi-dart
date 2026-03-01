// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'topic_rule_cloudwatch_alarm.dart';
import 'topic_rule_cloudwatch_log.dart';
import 'topic_rule_cloudwatch_metric.dart';
import 'topic_rule_dynamodb.dart';
import 'topic_rule_dynamodbv2.dart';
import 'topic_rule_elasticsearch.dart';
import 'topic_rule_error_action.dart';
import 'topic_rule_firehose.dart';
import 'topic_rule_http.dart';
import 'topic_rule_iot_analytic.dart';
import 'topic_rule_iot_event.dart';
import 'topic_rule_kafka.dart';
import 'topic_rule_kinesis.dart';
import 'topic_rule_lambda.dart';
import 'topic_rule_republish.dart';
import 'topic_rule_s3.dart';
import 'topic_rule_sns.dart';
import 'topic_rule_sqs.dart';
import 'topic_rule_step_function.dart';
import 'topic_rule_timestream.dart';

/// {@template pulumi_iot_topic_rule_topic_rule_args_doc}
/// The set of arguments for TopicRule.
/// {@endtemplate}
/// {@macro pulumi_iot_topic_rule_topic_rule_args_doc}
class TopicRuleArgs {
  final pulumi.Input<List<TopicRuleCloudwatchAlarm>>? cloudwatchAlarms;
  final pulumi.Input<List<TopicRuleCloudwatchLog>>? cloudwatchLogs;
  final pulumi.Input<List<TopicRuleCloudwatchMetric>>? cloudwatchMetrics;

  /// The description of the rule.
  final pulumi.Input<String>? description;
  final pulumi.Input<List<TopicRuleDynamodb>>? dynamodbs;
  final pulumi.Input<List<TopicRuleDynamodbv2>>? dynamodbv2s;
  final pulumi.Input<List<TopicRuleElasticsearch>>? elasticsearch;

  /// Specifies whether the rule is enabled.
  final pulumi.Input<bool> enabled;

  /// Configuration block with error action to be associated with the rule. See the documentation for `cloudwatch_alarm`, `cloudwatch_logs`, `cloudwatch_metric`, `dynamodb`, `dynamodbv2`, `elasticsearch`, `firehose`, `http`, `iot_analytics`, `iot_events`, `kafka`, `kinesis`, `lambda`, `republish`, `s3`, `sns`, `sqs`, `step_functions`, `timestream` configuration blocks for further configuration details.
  final pulumi.Input<TopicRuleErrorAction>? errorAction;
  final pulumi.Input<List<TopicRuleFirehose>>? firehoses;
  final pulumi.Input<List<TopicRuleHttp>>? https;
  final pulumi.Input<List<TopicRuleIotAnalytic>>? iotAnalytics;
  final pulumi.Input<List<TopicRuleIotEvent>>? iotEvents;
  final pulumi.Input<List<TopicRuleKafka>>? kafkas;
  final pulumi.Input<List<TopicRuleKinesis>>? kineses;
  final pulumi.Input<List<TopicRuleLambda>>? lambdas;

  /// The name of the rule.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  final pulumi.Input<List<TopicRuleRepublish>>? republishes;
  final pulumi.Input<List<TopicRuleS3>>? s3;
  final pulumi.Input<List<TopicRuleSns>>? sns;

  /// The SQL statement used to query the topic. For more information, see AWS IoT SQL Reference (http://docs.aws.amazon.com/iot/latest/developerguide/iot-rules.html#aws-iot-sql-reference) in the AWS IoT Developer Guide.
  final pulumi.Input<String> sql;

  /// The version of the SQL rules engine to use when evaluating the rule.
  final pulumi.Input<String> sqlVersion;
  final pulumi.Input<List<TopicRuleSqs>>? sqs;
  final pulumi.Input<List<TopicRuleStepFunction>>? stepFunctions;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<List<TopicRuleTimestream>>? timestreams;

  /// Creates a new [TopicRuleArgs].
  /// [cloudwatchAlarms] Optional.
  /// [cloudwatchLogs] Optional.
  /// [cloudwatchMetrics] Optional.
  /// [description] The description of the rule.
  /// [dynamodbs] Optional.
  /// [dynamodbv2s] Optional.
  /// [elasticsearch] Optional.
  /// [enabled] Specifies whether the rule is enabled.
  /// [errorAction] Configuration block with error action to be associated with the rule. See the documentation for `cloudwatch_alarm`, `cloudwatch_logs`, `cloudwatch_metric`, `dynamodb`, `dynamodbv2`, `elasticsearch`, `firehose`, `http`, `iot_analytics`, `iot_events`, `kafka`, `kinesis`, `lambda`, `republish`, `s3`, `sns`, `sqs`, `step_functions`, `timestream` configuration blocks for further configuration details.
  /// [firehoses] Optional.
  /// [https] Optional.
  /// [iotAnalytics] Optional.
  /// [iotEvents] Optional.
  /// [kafkas] Optional.
  /// [kineses] Optional.
  /// [lambdas] Optional.
  /// [name] The name of the rule.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [republishes] Optional.
  /// [s3] Optional.
  /// [sns] Optional.
  /// [sql] The SQL statement used to query the topic. For more information, see AWS IoT SQL Reference (http://docs.aws.amazon.com/iot/latest/developerguide/iot-rules.html#aws-iot-sql-reference) in the AWS IoT Developer Guide.
  /// [sqlVersion] The version of the SQL rules engine to use when evaluating the rule.
  /// [sqs] Optional.
  /// [stepFunctions] Optional.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timestreams] Optional.
  TopicRuleArgs({
    List<TopicRuleCloudwatchAlarm>? cloudwatchAlarms,
    List<TopicRuleCloudwatchLog>? cloudwatchLogs,
    List<TopicRuleCloudwatchMetric>? cloudwatchMetrics,
    String? description,
    List<TopicRuleDynamodb>? dynamodbs,
    List<TopicRuleDynamodbv2>? dynamodbv2s,
    List<TopicRuleElasticsearch>? elasticsearch,
    required bool enabled,
    TopicRuleErrorAction? errorAction,
    List<TopicRuleFirehose>? firehoses,
    List<TopicRuleHttp>? https,
    List<TopicRuleIotAnalytic>? iotAnalytics,
    List<TopicRuleIotEvent>? iotEvents,
    List<TopicRuleKafka>? kafkas,
    List<TopicRuleKinesis>? kineses,
    List<TopicRuleLambda>? lambdas,
    String? name,
    String? region,
    List<TopicRuleRepublish>? republishes,
    List<TopicRuleS3>? s3,
    List<TopicRuleSns>? sns,
    required String sql,
    required String sqlVersion,
    List<TopicRuleSqs>? sqs,
    List<TopicRuleStepFunction>? stepFunctions,
    Map<String, String>? tags,
    List<TopicRuleTimestream>? timestreams,
  }) : cloudwatchAlarms =
           pulumi.Input.asOptionalInput<List<TopicRuleCloudwatchAlarm>>(
             cloudwatchAlarms,
           ),
       cloudwatchLogs = pulumi
           .Input.asOptionalInput<List<TopicRuleCloudwatchLog>>(cloudwatchLogs),
       cloudwatchMetrics =
           pulumi.Input.asOptionalInput<List<TopicRuleCloudwatchMetric>>(
             cloudwatchMetrics,
           ),
       description = pulumi.Input.asOptionalInput<String>(description),
       dynamodbs = pulumi.Input.asOptionalInput<List<TopicRuleDynamodb>>(
         dynamodbs,
       ),
       dynamodbv2s = pulumi.Input.asOptionalInput<List<TopicRuleDynamodbv2>>(
         dynamodbv2s,
       ),
       elasticsearch = pulumi
           .Input.asOptionalInput<List<TopicRuleElasticsearch>>(elasticsearch),
       enabled = pulumi.Input.asInput<bool>(enabled),
       errorAction = pulumi.Input.asOptionalInput<TopicRuleErrorAction>(
         errorAction,
       ),
       firehoses = pulumi.Input.asOptionalInput<List<TopicRuleFirehose>>(
         firehoses,
       ),
       https = pulumi.Input.asOptionalInput<List<TopicRuleHttp>>(https),
       iotAnalytics = pulumi.Input.asOptionalInput<List<TopicRuleIotAnalytic>>(
         iotAnalytics,
       ),
       iotEvents = pulumi.Input.asOptionalInput<List<TopicRuleIotEvent>>(
         iotEvents,
       ),
       kafkas = pulumi.Input.asOptionalInput<List<TopicRuleKafka>>(kafkas),
       kineses = pulumi.Input.asOptionalInput<List<TopicRuleKinesis>>(kineses),
       lambdas = pulumi.Input.asOptionalInput<List<TopicRuleLambda>>(lambdas),
       name = pulumi.Input.asOptionalInput<String>(name),
       region = pulumi.Input.asOptionalInput<String>(region),
       republishes = pulumi.Input.asOptionalInput<List<TopicRuleRepublish>>(
         republishes,
       ),
       s3 = pulumi.Input.asOptionalInput<List<TopicRuleS3>>(s3),
       sns = pulumi.Input.asOptionalInput<List<TopicRuleSns>>(sns),
       sql = pulumi.Input.asInput<String>(sql),
       sqlVersion = pulumi.Input.asInput<String>(sqlVersion),
       sqs = pulumi.Input.asOptionalInput<List<TopicRuleSqs>>(sqs),
       stepFunctions = pulumi
           .Input.asOptionalInput<List<TopicRuleStepFunction>>(stepFunctions),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
       timestreams = pulumi.Input.asOptionalInput<List<TopicRuleTimestream>>(
         timestreams,
       );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudwatchAlarms':
          ?pulumi.Input.mapOptionalInputValue<
            List<TopicRuleCloudwatchAlarm>,
            List<Map<String, dynamic>>
          >(
            cloudwatchAlarms,
            (value) =>
                pulumi.Input.encodeList<
                  TopicRuleCloudwatchAlarm,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'cloudwatchLogs':
          ?pulumi.Input.mapOptionalInputValue<
            List<TopicRuleCloudwatchLog>,
            List<Map<String, dynamic>>
          >(
            cloudwatchLogs,
            (value) =>
                pulumi.Input.encodeList<
                  TopicRuleCloudwatchLog,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'cloudwatchMetrics':
          ?pulumi.Input.mapOptionalInputValue<
            List<TopicRuleCloudwatchMetric>,
            List<Map<String, dynamic>>
          >(
            cloudwatchMetrics,
            (value) =>
                pulumi.Input.encodeList<
                  TopicRuleCloudwatchMetric,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'description': ?description,
      'dynamodbs':
          ?pulumi.Input.mapOptionalInputValue<
            List<TopicRuleDynamodb>,
            List<Map<String, dynamic>>
          >(
            dynamodbs,
            (value) =>
                pulumi.Input.encodeList<
                  TopicRuleDynamodb,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'dynamodbv2s':
          ?pulumi.Input.mapOptionalInputValue<
            List<TopicRuleDynamodbv2>,
            List<Map<String, dynamic>>
          >(
            dynamodbv2s,
            (value) =>
                pulumi.Input.encodeList<
                  TopicRuleDynamodbv2,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'elasticsearch':
          ?pulumi.Input.mapOptionalInputValue<
            List<TopicRuleElasticsearch>,
            List<Map<String, dynamic>>
          >(
            elasticsearch,
            (value) =>
                pulumi.Input.encodeList<
                  TopicRuleElasticsearch,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'enabled': enabled,
      'errorAction':
          ?pulumi.Input.mapOptionalInputValue<
            TopicRuleErrorAction,
            Map<String, dynamic>
          >(errorAction, (value) => value.toMap()),
      'firehoses':
          ?pulumi.Input.mapOptionalInputValue<
            List<TopicRuleFirehose>,
            List<Map<String, dynamic>>
          >(
            firehoses,
            (value) =>
                pulumi.Input.encodeList<
                  TopicRuleFirehose,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'https':
          ?pulumi.Input.mapOptionalInputValue<
            List<TopicRuleHttp>,
            List<Map<String, dynamic>>
          >(
            https,
            (value) =>
                pulumi.Input.encodeList<TopicRuleHttp, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'iotAnalytics':
          ?pulumi.Input.mapOptionalInputValue<
            List<TopicRuleIotAnalytic>,
            List<Map<String, dynamic>>
          >(
            iotAnalytics,
            (value) =>
                pulumi.Input.encodeList<
                  TopicRuleIotAnalytic,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'iotEvents':
          ?pulumi.Input.mapOptionalInputValue<
            List<TopicRuleIotEvent>,
            List<Map<String, dynamic>>
          >(
            iotEvents,
            (value) =>
                pulumi.Input.encodeList<
                  TopicRuleIotEvent,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'kafkas':
          ?pulumi.Input.mapOptionalInputValue<
            List<TopicRuleKafka>,
            List<Map<String, dynamic>>
          >(
            kafkas,
            (value) =>
                pulumi.Input.encodeList<TopicRuleKafka, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'kineses':
          ?pulumi.Input.mapOptionalInputValue<
            List<TopicRuleKinesis>,
            List<Map<String, dynamic>>
          >(
            kineses,
            (value) =>
                pulumi.Input.encodeList<TopicRuleKinesis, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'lambdas':
          ?pulumi.Input.mapOptionalInputValue<
            List<TopicRuleLambda>,
            List<Map<String, dynamic>>
          >(
            lambdas,
            (value) =>
                pulumi.Input.encodeList<TopicRuleLambda, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'name': ?name,
      'region': ?region,
      'republishes':
          ?pulumi.Input.mapOptionalInputValue<
            List<TopicRuleRepublish>,
            List<Map<String, dynamic>>
          >(
            republishes,
            (value) =>
                pulumi.Input.encodeList<
                  TopicRuleRepublish,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      's3':
          ?pulumi.Input.mapOptionalInputValue<
            List<TopicRuleS3>,
            List<Map<String, dynamic>>
          >(
            s3,
            (value) =>
                pulumi.Input.encodeList<TopicRuleS3, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'sns':
          ?pulumi.Input.mapOptionalInputValue<
            List<TopicRuleSns>,
            List<Map<String, dynamic>>
          >(
            sns,
            (value) =>
                pulumi.Input.encodeList<TopicRuleSns, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'sql': sql,
      'sqlVersion': sqlVersion,
      'sqs':
          ?pulumi.Input.mapOptionalInputValue<
            List<TopicRuleSqs>,
            List<Map<String, dynamic>>
          >(
            sqs,
            (value) =>
                pulumi.Input.encodeList<TopicRuleSqs, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'stepFunctions':
          ?pulumi.Input.mapOptionalInputValue<
            List<TopicRuleStepFunction>,
            List<Map<String, dynamic>>
          >(
            stepFunctions,
            (value) =>
                pulumi.Input.encodeList<
                  TopicRuleStepFunction,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'tags': ?tags,
      'timestreams':
          ?pulumi.Input.mapOptionalInputValue<
            List<TopicRuleTimestream>,
            List<Map<String, dynamic>>
          >(
            timestreams,
            (value) =>
                pulumi.Input.encodeList<
                  TopicRuleTimestream,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory TopicRuleArgs.fromMap(Map<String, dynamic> map) {
    return TopicRuleArgs(
      cloudwatchAlarms: map['cloudwatchAlarms'] == null
          ? null
          : pulumi.Input.decodeList<TopicRuleCloudwatchAlarm>(
              map['cloudwatchAlarms'],
              (value) => TopicRuleCloudwatchAlarm.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      cloudwatchLogs: map['cloudwatchLogs'] == null
          ? null
          : pulumi.Input.decodeList<TopicRuleCloudwatchLog>(
              map['cloudwatchLogs'],
              (value) => TopicRuleCloudwatchLog.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      cloudwatchMetrics: map['cloudwatchMetrics'] == null
          ? null
          : pulumi.Input.decodeList<TopicRuleCloudwatchMetric>(
              map['cloudwatchMetrics'],
              (value) => TopicRuleCloudwatchMetric.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      description: map['description'] == null
          ? null
          : map['description'] as String,
      dynamodbs: map['dynamodbs'] == null
          ? null
          : pulumi.Input.decodeList<TopicRuleDynamodb>(
              map['dynamodbs'],
              (value) => TopicRuleDynamodb.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      dynamodbv2s: map['dynamodbv2s'] == null
          ? null
          : pulumi.Input.decodeList<TopicRuleDynamodbv2>(
              map['dynamodbv2s'],
              (value) => TopicRuleDynamodbv2.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      elasticsearch: map['elasticsearch'] == null
          ? null
          : pulumi.Input.decodeList<TopicRuleElasticsearch>(
              map['elasticsearch'],
              (value) => TopicRuleElasticsearch.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      enabled: map['enabled'] as bool,
      errorAction: map['errorAction'] == null
          ? null
          : TopicRuleErrorAction.fromMap(
              (map['errorAction'] as Map).cast<String, dynamic>(),
            ),
      firehoses: map['firehoses'] == null
          ? null
          : pulumi.Input.decodeList<TopicRuleFirehose>(
              map['firehoses'],
              (value) => TopicRuleFirehose.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      https: map['https'] == null
          ? null
          : pulumi.Input.decodeList<TopicRuleHttp>(
              map['https'],
              (value) =>
                  TopicRuleHttp.fromMap((value as Map).cast<String, dynamic>()),
            ),
      iotAnalytics: map['iotAnalytics'] == null
          ? null
          : pulumi.Input.decodeList<TopicRuleIotAnalytic>(
              map['iotAnalytics'],
              (value) => TopicRuleIotAnalytic.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      iotEvents: map['iotEvents'] == null
          ? null
          : pulumi.Input.decodeList<TopicRuleIotEvent>(
              map['iotEvents'],
              (value) => TopicRuleIotEvent.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      kafkas: map['kafkas'] == null
          ? null
          : pulumi.Input.decodeList<TopicRuleKafka>(
              map['kafkas'],
              (value) => TopicRuleKafka.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      kineses: map['kineses'] == null
          ? null
          : pulumi.Input.decodeList<TopicRuleKinesis>(
              map['kineses'],
              (value) => TopicRuleKinesis.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      lambdas: map['lambdas'] == null
          ? null
          : pulumi.Input.decodeList<TopicRuleLambda>(
              map['lambdas'],
              (value) => TopicRuleLambda.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      republishes: map['republishes'] == null
          ? null
          : pulumi.Input.decodeList<TopicRuleRepublish>(
              map['republishes'],
              (value) => TopicRuleRepublish.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      s3: map['s3'] == null
          ? null
          : pulumi.Input.decodeList<TopicRuleS3>(
              map['s3'],
              (value) =>
                  TopicRuleS3.fromMap((value as Map).cast<String, dynamic>()),
            ),
      sns: map['sns'] == null
          ? null
          : pulumi.Input.decodeList<TopicRuleSns>(
              map['sns'],
              (value) =>
                  TopicRuleSns.fromMap((value as Map).cast<String, dynamic>()),
            ),
      sql: map['sql'] as String,
      sqlVersion: map['sqlVersion'] as String,
      sqs: map['sqs'] == null
          ? null
          : pulumi.Input.decodeList<TopicRuleSqs>(
              map['sqs'],
              (value) =>
                  TopicRuleSqs.fromMap((value as Map).cast<String, dynamic>()),
            ),
      stepFunctions: map['stepFunctions'] == null
          ? null
          : pulumi.Input.decodeList<TopicRuleStepFunction>(
              map['stepFunctions'],
              (value) => TopicRuleStepFunction.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      timestreams: map['timestreams'] == null
          ? null
          : pulumi.Input.decodeList<TopicRuleTimestream>(
              map['timestreams'],
              (value) => TopicRuleTimestream.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
    );
  }
}
