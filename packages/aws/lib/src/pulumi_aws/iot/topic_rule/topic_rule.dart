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
import 'topic_rule_args.dart';

/// Creates and manages an AWS IoT topic rule.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const mytopic = new aws.sns.Topic("mytopic", {name: "mytopic"});
/// const myerrortopic = new aws.sns.Topic("myerrortopic", {name: "myerrortopic"});
/// const rule = new aws.iot.TopicRule("rule", {
/// name: "MyRule",
/// description: "Example rule",
/// enabled: true,
/// sql: "SELECT * FROM 'topic/test'",
/// sqlVersion: "2016-03-23",
/// sns: [{
/// messageFormat: "RAW",
/// roleArn: role.arn,
/// targetArn: mytopic.arn,
/// }],
/// errorAction: {
/// sns: {
/// messageFormat: "RAW",
/// roleArn: role.arn,
/// targetArn: myerrortopic.arn,
/// },
/// },
/// });
/// const assumeRole = aws.iam.getPolicyDocument({
/// statements: [{
/// effect: "Allow",
/// principals: [{
/// type: "Service",
/// identifiers: ["iot.amazonaws.com"],
/// }],
/// actions: ["sts:AssumeRole"],
/// }],
/// });
/// const myrole = new aws.iam.Role("myrole", {
/// name: "myrole",
/// assumeRolePolicy: assumeRole.then(assumeRole => assumeRole.json),
/// });
/// const mypolicy = aws.iam.getPolicyDocumentOutput({
/// statements: [{
/// effect: "Allow",
/// actions: ["sns:Publish"],
/// resources: [mytopic.arn],
/// }],
/// });
/// const mypolicyRolePolicy = new aws.iam.RolePolicy("mypolicy", {
/// name: "mypolicy",
/// role: myrole.id,
/// policy: mypolicy.apply(mypolicy => mypolicy.json),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// mytopic = aws.sns.Topic("mytopic", name="mytopic")
/// myerrortopic = aws.sns.Topic("myerrortopic", name="myerrortopic")
/// rule = aws.iot.TopicRule("rule",
/// name="MyRule",
/// description="Example rule",
/// enabled=True,
/// sql="SELECT * FROM 'topic/test'",
/// sql_version="2016-03-23",
/// sns=[{
/// "message_format": "RAW",
/// "role_arn": role["arn"],
/// "target_arn": mytopic.arn,
/// }],
/// error_action={
/// "sns": {
/// "message_format": "RAW",
/// "role_arn": role["arn"],
/// "target_arn": myerrortopic.arn,
/// },
/// })
/// assume_role = aws.iam.get_policy_document(statements=[{
/// "effect": "Allow",
/// "principals": [{
/// "type": "Service",
/// "identifiers": ["iot.amazonaws.com"],
/// }],
/// "actions": ["sts:AssumeRole"],
/// }])
/// myrole = aws.iam.Role("myrole",
/// name="myrole",
/// assume_role_policy=assume_role.json)
/// mypolicy = aws.iam.get_policy_document_output(statements=[{
/// "effect": "Allow",
/// "actions": ["sns:Publish"],
/// "resources": [mytopic.arn],
/// }])
/// mypolicy_role_policy = aws.iam.RolePolicy("mypolicy",
/// name="mypolicy",
/// role=myrole.id,
/// policy=mypolicy.json)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var mytopic = new Aws.Sns.Topic("mytopic", new()
/// {
/// Name = "mytopic",
/// });
///
/// var myerrortopic = new Aws.Sns.Topic("myerrortopic", new()
/// {
/// Name = "myerrortopic",
/// });
///
/// var rule = new Aws.Iot.TopicRule("rule", new()
/// {
/// Name = "MyRule",
/// Description = "Example rule",
/// Enabled = true,
/// Sql = "SELECT * FROM 'topic/test'",
/// SqlVersion = "2016-03-23",
/// Sns = new[]
/// {
/// new Aws.Iot.Inputs.TopicRuleSnsArgs
/// {
/// MessageFormat = "RAW",
/// RoleArn = role.Arn,
/// TargetArn = mytopic.Arn,
/// },
/// },
/// ErrorAction = new Aws.Iot.Inputs.TopicRuleErrorActionArgs
/// {
/// Sns = new Aws.Iot.Inputs.TopicRuleErrorActionSnsArgs
/// {
/// MessageFormat = "RAW",
/// RoleArn = role.Arn,
/// TargetArn = myerrortopic.Arn,
/// },
/// },
/// });
///
/// var assumeRole = Aws.Iam.GetPolicyDocument.Invoke(new()
/// {
/// Statements = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
/// {
/// Effect = "Allow",
/// Principals = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
/// {
/// Type = "Service",
/// Identifiers = new[]
/// {
/// "iot.amazonaws.com",
/// },
/// },
/// },
/// Actions = new[]
/// {
/// "sts:AssumeRole",
/// },
/// },
/// },
/// });
///
/// var myrole = new Aws.Iam.Role("myrole", new()
/// {
/// Name = "myrole",
/// AssumeRolePolicy = assumeRole.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
/// });
///
/// var mypolicy = Aws.Iam.GetPolicyDocument.Invoke(new()
/// {
/// Statements = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
/// {
/// Effect = "Allow",
/// Actions = new[]
/// {
/// "sns:Publish",
/// },
/// Resources = new[]
/// {
/// mytopic.Arn,
/// },
/// },
/// },
/// });
///
/// var mypolicyRolePolicy = new Aws.Iam.RolePolicy("mypolicy", new()
/// {
/// Name = "mypolicy",
/// Role = myrole.Id,
/// Policy = mypolicy.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iot"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sns"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// mytopic, err := sns.NewTopic(ctx, "mytopic", &sns.TopicArgs{
/// Name: pulumi.String("mytopic"),
/// })
/// if err != nil {
/// return err
/// }
/// myerrortopic, err := sns.NewTopic(ctx, "myerrortopic", &sns.TopicArgs{
/// Name: pulumi.String("myerrortopic"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = iot.NewTopicRule(ctx, "rule", &iot.TopicRuleArgs{
/// Name:        pulumi.String("MyRule"),
/// Description: pulumi.String("Example rule"),
/// Enabled:     pulumi.Bool(true),
/// Sql:         pulumi.String("SELECT * FROM 'topic/test'"),
/// SqlVersion:  pulumi.String("2016-03-23"),
/// Sns: iot.TopicRuleSnsArray{
/// &iot.TopicRuleSnsArgs{
/// MessageFormat: pulumi.String("RAW"),
/// RoleArn:       pulumi.Any(role.Arn),
/// TargetArn:     mytopic.Arn,
/// },
/// },
/// ErrorAction: &iot.TopicRuleErrorActionArgs{
/// Sns: &iot.TopicRuleErrorActionSnsArgs{
/// MessageFormat: pulumi.String("RAW"),
/// RoleArn:       pulumi.Any(role.Arn),
/// TargetArn:     myerrortopic.Arn,
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// assumeRole, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// Statements: []iam.GetPolicyDocumentStatement{
/// {
/// Effect: pulumi.StringRef("Allow"),
/// Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// {
/// Type: "Service",
/// Identifiers: []string{
/// "iot.amazonaws.com",
/// },
/// },
/// },
/// Actions: []string{
/// "sts:AssumeRole",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// myrole, err := iam.NewRole(ctx, "myrole", &iam.RoleArgs{
/// Name:             pulumi.String("myrole"),
/// AssumeRolePolicy: pulumi.String(assumeRole.Json),
/// })
/// if err != nil {
/// return err
/// }
/// mypolicy := iam.GetPolicyDocumentOutput(ctx, iam.GetPolicyDocumentOutputArgs{
/// Statements: iam.GetPolicyDocumentStatementArray{
/// &iam.GetPolicyDocumentStatementArgs{
/// Effect: pulumi.String("Allow"),
/// Actions: pulumi.StringArray{
/// pulumi.String("sns:Publish"),
/// },
/// Resources: pulumi.StringArray{
/// mytopic.Arn,
/// },
/// },
/// },
/// }, nil)
/// _, err = iam.NewRolePolicy(ctx, "mypolicy", &iam.RolePolicyArgs{
/// Name: pulumi.String("mypolicy"),
/// Role: myrole.ID(),
/// Policy: pulumi.String(mypolicy.ApplyT(func(mypolicy iam.GetPolicyDocumentResult) (*string, error) {
/// return &mypolicy.Json, nil
/// }).(pulumi.StringPtrOutput)),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.sns.Topic;
/// import com.pulumi.aws.sns.TopicArgs;
/// import com.pulumi.aws.iot.TopicRule;
/// import com.pulumi.aws.iot.TopicRuleArgs;
/// import com.pulumi.aws.iot.inputs.TopicRuleSnsArgs;
/// import com.pulumi.aws.iot.inputs.TopicRuleErrorActionArgs;
/// import com.pulumi.aws.iot.inputs.TopicRuleErrorActionSnsArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.iam.RolePolicy;
/// import com.pulumi.aws.iam.RolePolicyArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var mytopic = new Topic("mytopic", TopicArgs.builder()
/// .name("mytopic")
/// .build());
///
/// var myerrortopic = new Topic("myerrortopic", TopicArgs.builder()
/// .name("myerrortopic")
/// .build());
///
/// var rule = new TopicRule("rule", TopicRuleArgs.builder()
/// .name("MyRule")
/// .description("Example rule")
/// .enabled(true)
/// .sql("SELECT * FROM 'topic/test'")
/// .sqlVersion("2016-03-23")
/// .sns(TopicRuleSnsArgs.builder()
/// .messageFormat("RAW")
/// .roleArn(role.arn())
/// .targetArn(mytopic.arn())
/// .build())
/// .errorAction(TopicRuleErrorActionArgs.builder()
/// .sns(TopicRuleErrorActionSnsArgs.builder()
/// .messageFormat("RAW")
/// .roleArn(role.arn())
/// .targetArn(myerrortopic.arn())
/// .build())
/// .build())
/// .build());
///
/// final var assumeRole = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
/// .statements(GetPolicyDocumentStatementArgs.builder()
/// .effect("Allow")
/// .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
/// .type("Service")
/// .identifiers("iot.amazonaws.com")
/// .build())
/// .actions("sts:AssumeRole")
/// .build())
/// .build());
///
/// var myrole = new Role("myrole", RoleArgs.builder()
/// .name("myrole")
/// .assumeRolePolicy(assumeRole.json())
/// .build());
///
/// final var mypolicy = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
/// .statements(GetPolicyDocumentStatementArgs.builder()
/// .effect("Allow")
/// .actions("sns:Publish")
/// .resources(mytopic.arn())
/// .build())
/// .build());
///
/// var mypolicyRolePolicy = new RolePolicy("mypolicyRolePolicy", RolePolicyArgs.builder()
/// .name("mypolicy")
/// .role(myrole.id())
/// .policy(mypolicy.applyValue(_mypolicy -> _mypolicy.json()))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// rule:
/// type: aws:iot:TopicRule
/// properties:
/// name: MyRule
/// description: Example rule
/// enabled: true
/// sql: SELECT * FROM 'topic/test'
/// sqlVersion: 2016-03-23
/// sns:
/// - messageFormat: RAW
/// roleArn: ${role.arn}
/// targetArn: ${mytopic.arn}
/// errorAction:
/// sns:
/// messageFormat: RAW
/// roleArn: ${role.arn}
/// targetArn: ${myerrortopic.arn}
/// mytopic:
/// type: aws:sns:Topic
/// properties:
/// name: mytopic
/// myerrortopic:
/// type: aws:sns:Topic
/// properties:
/// name: myerrortopic
/// myrole:
/// type: aws:iam:Role
/// properties:
/// name: myrole
/// assumeRolePolicy: ${assumeRole.json}
/// mypolicyRolePolicy:
/// type: aws:iam:RolePolicy
/// name: mypolicy
/// properties:
/// name: mypolicy
/// role: ${myrole.id}
/// policy: ${mypolicy.json}
/// variables:
/// assumeRole:
/// fn::invoke:
/// function: aws:iam:getPolicyDocument
/// arguments:
/// statements:
/// - effect: Allow
/// principals:
/// - type: Service
/// identifiers:
/// - iot.amazonaws.com
/// actions:
/// - sts:AssumeRole
/// mypolicy:
/// fn::invoke:
/// function: aws:iam:getPolicyDocument
/// arguments:
/// statements:
/// - effect: Allow
/// actions:
/// - sns:Publish
/// resources:
/// - ${mytopic.arn}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import IoT Topic Rules using the <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:iot/topicRule:TopicRule rule <name>
/// ```
class TopicRule extends CustomResource {
  /// The ARN of the topic rule
  late final Output<String> arn;
  late final Output<List<TopicRuleCloudwatchAlarm>?> cloudwatchAlarms;
  late final Output<List<TopicRuleCloudwatchLog>?> cloudwatchLogs;
  late final Output<List<TopicRuleCloudwatchMetric>?> cloudwatchMetrics;

  /// The description of the rule.
  late final Output<String?> description;
  late final Output<List<TopicRuleDynamodb>?> dynamodbs;
  late final Output<List<TopicRuleDynamodbv2>?> dynamodbv2s;
  late final Output<List<TopicRuleElasticsearch>?> elasticsearch;

  /// Specifies whether the rule is enabled.
  late final Output<bool> enabled;

  /// Configuration block with error action to be associated with the rule. See the documentation for <span pulumi-lang-nodejs="`cloudwatchAlarm`" pulumi-lang-dotnet="`CloudwatchAlarm`" pulumi-lang-go="`cloudwatchAlarm`" pulumi-lang-python="`cloudwatch_alarm`" pulumi-lang-yaml="`cloudwatchAlarm`" pulumi-lang-java="`cloudwatchAlarm`">`cloudwatch_alarm`</span>, <span pulumi-lang-nodejs="`cloudwatchLogs`" pulumi-lang-dotnet="`CloudwatchLogs`" pulumi-lang-go="`cloudwatchLogs`" pulumi-lang-python="`cloudwatch_logs`" pulumi-lang-yaml="`cloudwatchLogs`" pulumi-lang-java="`cloudwatchLogs`">`cloudwatch_logs`</span>, <span pulumi-lang-nodejs="`cloudwatchMetric`" pulumi-lang-dotnet="`CloudwatchMetric`" pulumi-lang-go="`cloudwatchMetric`" pulumi-lang-python="`cloudwatch_metric`" pulumi-lang-yaml="`cloudwatchMetric`" pulumi-lang-java="`cloudwatchMetric`">`cloudwatch_metric`</span>, <span pulumi-lang-nodejs="`dynamodb`" pulumi-lang-dotnet="`Dynamodb`" pulumi-lang-go="`dynamodb`" pulumi-lang-python="`dynamodb`" pulumi-lang-yaml="`dynamodb`" pulumi-lang-java="`dynamodb`">`dynamodb`</span>, <span pulumi-lang-nodejs="`dynamodbv2`" pulumi-lang-dotnet="`Dynamodbv2`" pulumi-lang-go="`dynamodbv2`" pulumi-lang-python="`dynamodbv2`" pulumi-lang-yaml="`dynamodbv2`" pulumi-lang-java="`dynamodbv2`">`dynamodbv2`</span>, <span pulumi-lang-nodejs="`elasticsearch`" pulumi-lang-dotnet="`Elasticsearch`" pulumi-lang-go="`elasticsearch`" pulumi-lang-python="`elasticsearch`" pulumi-lang-yaml="`elasticsearch`" pulumi-lang-java="`elasticsearch`">`elasticsearch`</span>, <span pulumi-lang-nodejs="`firehose`" pulumi-lang-dotnet="`Firehose`" pulumi-lang-go="`firehose`" pulumi-lang-python="`firehose`" pulumi-lang-yaml="`firehose`" pulumi-lang-java="`firehose`">`firehose`</span>, <span pulumi-lang-nodejs="`http`" pulumi-lang-dotnet="`Http`" pulumi-lang-go="`http`" pulumi-lang-python="`http`" pulumi-lang-yaml="`http`" pulumi-lang-java="`http`">`http`</span>, <span pulumi-lang-nodejs="`iotAnalytics`" pulumi-lang-dotnet="`IotAnalytics`" pulumi-lang-go="`iotAnalytics`" pulumi-lang-python="`iot_analytics`" pulumi-lang-yaml="`iotAnalytics`" pulumi-lang-java="`iotAnalytics`">`iot_analytics`</span>, <span pulumi-lang-nodejs="`iotEvents`" pulumi-lang-dotnet="`IotEvents`" pulumi-lang-go="`iotEvents`" pulumi-lang-python="`iot_events`" pulumi-lang-yaml="`iotEvents`" pulumi-lang-java="`iotEvents`">`iot_events`</span>, <span pulumi-lang-nodejs="`kafka`" pulumi-lang-dotnet="`Kafka`" pulumi-lang-go="`kafka`" pulumi-lang-python="`kafka`" pulumi-lang-yaml="`kafka`" pulumi-lang-java="`kafka`">`kafka`</span>, <span pulumi-lang-nodejs="`kinesis`" pulumi-lang-dotnet="`Kinesis`" pulumi-lang-go="`kinesis`" pulumi-lang-python="`kinesis`" pulumi-lang-yaml="`kinesis`" pulumi-lang-java="`kinesis`">`kinesis`</span>, <span pulumi-lang-nodejs="`lambda`" pulumi-lang-dotnet="`Lambda`" pulumi-lang-go="`lambda`" pulumi-lang-python="`lambda`" pulumi-lang-yaml="`lambda`" pulumi-lang-java="`lambda`">`lambda`</span>, <span pulumi-lang-nodejs="`republish`" pulumi-lang-dotnet="`Republish`" pulumi-lang-go="`republish`" pulumi-lang-python="`republish`" pulumi-lang-yaml="`republish`" pulumi-lang-java="`republish`">`republish`</span>, <span pulumi-lang-nodejs="`s3`" pulumi-lang-dotnet="`S3`" pulumi-lang-go="`s3`" pulumi-lang-python="`s3`" pulumi-lang-yaml="`s3`" pulumi-lang-java="`s3`">`s3`</span>, <span pulumi-lang-nodejs="`sns`" pulumi-lang-dotnet="`Sns`" pulumi-lang-go="`sns`" pulumi-lang-python="`sns`" pulumi-lang-yaml="`sns`" pulumi-lang-java="`sns`">`sns`</span>, <span pulumi-lang-nodejs="`sqs`" pulumi-lang-dotnet="`Sqs`" pulumi-lang-go="`sqs`" pulumi-lang-python="`sqs`" pulumi-lang-yaml="`sqs`" pulumi-lang-java="`sqs`">`sqs`</span>, <span pulumi-lang-nodejs="`stepFunctions`" pulumi-lang-dotnet="`StepFunctions`" pulumi-lang-go="`stepFunctions`" pulumi-lang-python="`step_functions`" pulumi-lang-yaml="`stepFunctions`" pulumi-lang-java="`stepFunctions`">`step_functions`</span>, <span pulumi-lang-nodejs="`timestream`" pulumi-lang-dotnet="`Timestream`" pulumi-lang-go="`timestream`" pulumi-lang-python="`timestream`" pulumi-lang-yaml="`timestream`" pulumi-lang-java="`timestream`">`timestream`</span> configuration blocks for further configuration details.
  late final Output<TopicRuleErrorAction?> errorAction;
  late final Output<List<TopicRuleFirehose>?> firehoses;
  late final Output<List<TopicRuleHttp>?> https;
  late final Output<List<TopicRuleIotAnalytic>?> iotAnalytics;
  late final Output<List<TopicRuleIotEvent>?> iotEvents;
  late final Output<List<TopicRuleKafka>?> kafkas;
  late final Output<List<TopicRuleKinesis>?> kineses;
  late final Output<List<TopicRuleLambda>?> lambdas;

  /// The name of the rule.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;
  late final Output<List<TopicRuleRepublish>?> republishes;
  late final Output<List<TopicRuleS3>?> s3;
  late final Output<List<TopicRuleSns>?> sns;

  /// The SQL statement used to query the topic. For more information, see AWS IoT SQL Reference (http://docs.aws.amazon.com/iot/latest/developerguide/iot-rules.html#aws-iot-sql-reference) in the AWS IoT Developer Guide.
  late final Output<String> sql;

  /// The version of the SQL rules engine to use when evaluating the rule.
  late final Output<String> sqlVersion;
  late final Output<List<TopicRuleSqs>?> sqs;
  late final Output<List<TopicRuleStepFunction>?> stepFunctions;

  /// Key-value map of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;
  late final Output<List<TopicRuleTimestream>?> timestreams;

  TopicRule(
    String name, {
    TopicRuleArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:iot/topicRule:TopicRule',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.cloudwatchAlarms =
        Output.createUnknown<List<TopicRuleCloudwatchAlarm>?>();
    this.cloudwatchLogs = Output.createUnknown<List<TopicRuleCloudwatchLog>?>();
    this.cloudwatchMetrics =
        Output.createUnknown<List<TopicRuleCloudwatchMetric>?>();
    this.description = Output.createUnknown<String?>();
    this.dynamodbs = Output.createUnknown<List<TopicRuleDynamodb>?>();
    this.dynamodbv2s = Output.createUnknown<List<TopicRuleDynamodbv2>?>();
    this.elasticsearch = Output.createUnknown<List<TopicRuleElasticsearch>?>();
    this.enabled = Output.createUnknown<bool>();
    this.errorAction = Output.createUnknown<TopicRuleErrorAction?>();
    this.firehoses = Output.createUnknown<List<TopicRuleFirehose>?>();
    this.https = Output.createUnknown<List<TopicRuleHttp>?>();
    this.iotAnalytics = Output.createUnknown<List<TopicRuleIotAnalytic>?>();
    this.iotEvents = Output.createUnknown<List<TopicRuleIotEvent>?>();
    this.kafkas = Output.createUnknown<List<TopicRuleKafka>?>();
    this.kineses = Output.createUnknown<List<TopicRuleKinesis>?>();
    this.lambdas = Output.createUnknown<List<TopicRuleLambda>?>();
    this.name = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.republishes = Output.createUnknown<List<TopicRuleRepublish>?>();
    this.s3 = Output.createUnknown<List<TopicRuleS3>?>();
    this.sns = Output.createUnknown<List<TopicRuleSns>?>();
    this.sql = Output.createUnknown<String>();
    this.sqlVersion = Output.createUnknown<String>();
    this.sqs = Output.createUnknown<List<TopicRuleSqs>?>();
    this.stepFunctions = Output.createUnknown<List<TopicRuleStepFunction>?>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.timestreams = Output.createUnknown<List<TopicRuleTimestream>?>();
  }
}
