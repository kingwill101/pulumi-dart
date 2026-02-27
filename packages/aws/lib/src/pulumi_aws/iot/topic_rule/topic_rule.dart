import 'package:pulumi/pulumi.dart' as pulumi;
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
import 'topic_rule_args.dart';

/// Creates and manages an AWS IoT topic rule.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import IoT Topic Rules using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:iot/topicRule:TopicRule rule <name>
/// ```
class TopicRule extends pulumi.CustomResource {
  /// The ARN of the topic rule
  late final pulumi.Output<String> arn;
  late final pulumi.Output<List<TopicRuleCloudwatchAlarm>?> cloudwatchAlarms;
  late final pulumi.Output<List<TopicRuleCloudwatchLog>?> cloudwatchLogs;
  late final pulumi.Output<List<TopicRuleCloudwatchMetric>?> cloudwatchMetrics;

  /// The description of the rule.
  late final pulumi.Output<String?> description;
  late final pulumi.Output<List<TopicRuleDynamodb>?> dynamodbs;
  late final pulumi.Output<List<TopicRuleDynamodbv2>?> dynamodbv2s;
  late final pulumi.Output<List<TopicRuleElasticsearch>?> elasticsearch;

  /// Specifies whether the rule is enabled.
  late final pulumi.Output<bool> enabled;

  /// Configuration block with error action to be associated with the rule. See the documentation for `cloudwatch_alarm`, `cloudwatch_logs`, `cloudwatch_metric`, `dynamodb`, `dynamodbv2`, `elasticsearch`, `firehose`, `http`, `iot_analytics`, `iot_events`, `kafka`, `kinesis`, `lambda`, `republish`, `s3`, `sns`, `sqs`, `step_functions`, `timestream` configuration blocks for further configuration details.
  late final pulumi.Output<TopicRuleErrorAction?> errorAction;
  late final pulumi.Output<List<TopicRuleFirehose>?> firehoses;
  late final pulumi.Output<List<TopicRuleHttp>?> https;
  late final pulumi.Output<List<TopicRuleIotAnalytic>?> iotAnalytics;
  late final pulumi.Output<List<TopicRuleIotEvent>?> iotEvents;
  late final pulumi.Output<List<TopicRuleKafka>?> kafkas;
  late final pulumi.Output<List<TopicRuleKinesis>?> kineses;
  late final pulumi.Output<List<TopicRuleLambda>?> lambdas;

  /// The name of the rule.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  late final pulumi.Output<List<TopicRuleRepublish>?> republishes;
  late final pulumi.Output<List<TopicRuleS3>?> s3;
  late final pulumi.Output<List<TopicRuleSns>?> sns;

  /// The SQL statement used to query the topic. For more information, see AWS IoT SQL Reference (http://docs.aws.amazon.com/iot/latest/developerguide/iot-rules.html#aws-iot-sql-reference) in the AWS IoT Developer Guide.
  late final pulumi.Output<String> sql;

  /// The version of the SQL rules engine to use when evaluating the rule.
  late final pulumi.Output<String> sqlVersion;
  late final pulumi.Output<List<TopicRuleSqs>?> sqs;
  late final pulumi.Output<List<TopicRuleStepFunction>?> stepFunctions;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<List<TopicRuleTimestream>?> timestreams;

  TopicRule(
    String name, {
    TopicRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:iot/topicRule:TopicRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.cloudwatchAlarms =
        registerOutput<List<TopicRuleCloudwatchAlarm>?>('cloudwatchAlarms');
    this.cloudwatchLogs =
        registerOutput<List<TopicRuleCloudwatchLog>?>('cloudwatchLogs');
    this.cloudwatchMetrics =
        registerOutput<List<TopicRuleCloudwatchMetric>?>('cloudwatchMetrics');
    this.description = registerOutput<String?>('description');
    this.dynamodbs = registerOutput<List<TopicRuleDynamodb>?>('dynamodbs');
    this.dynamodbv2s =
        registerOutput<List<TopicRuleDynamodbv2>?>('dynamodbv2s');
    this.elasticsearch =
        registerOutput<List<TopicRuleElasticsearch>?>('elasticsearch');
    this.enabled = registerOutput<bool>('enabled');
    this.errorAction = registerOutput<TopicRuleErrorAction?>('errorAction');
    this.firehoses = registerOutput<List<TopicRuleFirehose>?>('firehoses');
    this.https = registerOutput<List<TopicRuleHttp>?>('https');
    this.iotAnalytics =
        registerOutput<List<TopicRuleIotAnalytic>?>('iotAnalytics');
    this.iotEvents = registerOutput<List<TopicRuleIotEvent>?>('iotEvents');
    this.kafkas = registerOutput<List<TopicRuleKafka>?>('kafkas');
    this.kineses = registerOutput<List<TopicRuleKinesis>?>('kineses');
    this.lambdas = registerOutput<List<TopicRuleLambda>?>('lambdas');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.republishes = registerOutput<List<TopicRuleRepublish>?>('republishes');
    this.s3 = registerOutput<List<TopicRuleS3>?>('s3');
    this.sns = registerOutput<List<TopicRuleSns>?>('sns');
    this.sql = registerOutput<String>('sql');
    this.sqlVersion = registerOutput<String>('sqlVersion');
    this.sqs = registerOutput<List<TopicRuleSqs>?>('sqs');
    this.stepFunctions =
        registerOutput<List<TopicRuleStepFunction>?>('stepFunctions');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timestreams =
        registerOutput<List<TopicRuleTimestream>?>('timestreams');
  }
}
