import 'package:pulumi/pulumi.dart' as pulumi;
import 'topic_rule_args.dart';
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
import 'topic_rule_state.dart';
import 'topic_rule_step_function.dart';
import 'topic_rule_timestream.dart';

/// Creates and manages an AWS IoT topic rule.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const mytopic = new aws.sns.Topic("mytopic", {name: "mytopic"});
/// const myerrortopic = new aws.sns.Topic("myerrortopic", {name: "myerrortopic"});
/// const rule = new aws.iot.TopicRule("rule", {
///     errorAction: {
///         sns: {
///             messageFormat: "RAW",
///             roleArn: role.arn,
///             targetArn: myerrortopic.arn,
///         },
///     },
///     sns: [{
///         messageFormat: "RAW",
///         roleArn: role.arn,
///         targetArn: mytopic.arn,
///     }],
///     name: "MyRule",
///     description: "Example rule",
///     enabled: true,
///     sql: "SELECT * FROM 'topic/test'",
///     sqlVersion: "2016-03-23",
/// });
/// const assumeRole = aws.iam.getPolicyDocument({
///     statements: [{
///         principals: [{
///             type: "Service",
///             identifiers: ["iot.amazonaws.com"],
///         }],
///         effect: "Allow",
///         actions: ["sts:AssumeRole"],
///     }],
/// });
/// const myrole = new aws.iam.Role("myrole", {
///     name: "myrole",
///     assumeRolePolicy: assumeRole.then(assumeRole => assumeRole.json),
/// });
/// const mypolicy = aws.iam.getPolicyDocumentOutput({
///     statements: [{
///         effect: "Allow",
///         actions: ["sns:Publish"],
///         resources: [mytopic.arn],
///     }],
/// });
/// const mypolicyRolePolicy = new aws.iam.RolePolicy("mypolicy", {
///     name: "mypolicy",
///     role: myrole.id,
///     policy: mypolicy.json,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// mytopic = aws.sns.Topic("mytopic", name="mytopic")
/// myerrortopic = aws.sns.Topic("myerrortopic", name="myerrortopic")
/// rule = aws.iot.TopicRule("rule",
///     error_action={
///         "sns": {
///             "message_format": "RAW",
///             "role_arn": role["arn"],
///             "target_arn": myerrortopic.arn,
///         },
///     },
///     sns=[{
///         "message_format": "RAW",
///         "role_arn": role["arn"],
///         "target_arn": mytopic.arn,
///     }],
///     name="MyRule",
///     description="Example rule",
///     enabled=True,
///     sql="SELECT * FROM 'topic/test'",
///     sql_version="2016-03-23")
/// assume_role = aws.iam.get_policy_document(statements=[{
///     "principals": [{
///         "type": "Service",
///         "identifiers": ["iot.amazonaws.com"],
///     }],
///     "effect": "Allow",
///     "actions": ["sts:AssumeRole"],
/// }])
/// myrole = aws.iam.Role("myrole",
///     name="myrole",
///     assume_role_policy=assume_role.json)
/// mypolicy = aws.iam.get_policy_document_output(statements=[{
///     "effect": "Allow",
///     "actions": ["sns:Publish"],
///     "resources": [mytopic.arn],
/// }])
/// mypolicy_role_policy = aws.iam.RolePolicy("mypolicy",
///     name="mypolicy",
///     role=myrole.id,
///     policy=mypolicy.json)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var mytopic = new Aws.Sns.Topic("mytopic", new()
///     {
///         Name = "mytopic",
///     });
///
///     var myerrortopic = new Aws.Sns.Topic("myerrortopic", new()
///     {
///         Name = "myerrortopic",
///     });
///
///     var rule = new Aws.Iot.TopicRule("rule", new()
///     {
///         ErrorAction = new Aws.Iot.Inputs.TopicRuleErrorActionArgs
///         {
///             Sns = new Aws.Iot.Inputs.TopicRuleErrorActionSnsArgs
///             {
///                 MessageFormat = "RAW",
///                 RoleArn = role.Arn,
///                 TargetArn = myerrortopic.Arn,
///             },
///         },
///         Sns = new[]
///         {
///             new Aws.Iot.Inputs.TopicRuleSnsArgs
///             {
///                 MessageFormat = "RAW",
///                 RoleArn = role.Arn,
///                 TargetArn = mytopic.Arn,
///             },
///         },
///         Name = "MyRule",
///         Description = "Example rule",
///         Enabled = true,
///         Sql = "SELECT * FROM 'topic/test'",
///         SqlVersion = "2016-03-23",
///     });
///
///     var assumeRole = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
///                     {
///                         Type = "Service",
///                         Identifiers = new[]
///                         {
///                             "iot.amazonaws.com",
///                         },
///                     },
///                 },
///                 Effect = "Allow",
///                 Actions = new[]
///                 {
///                     "sts:AssumeRole",
///                 },
///             },
///         },
///     });
///
///     var myrole = new Aws.Iam.Role("myrole", new()
///     {
///         Name = "myrole",
///         AssumeRolePolicy = assumeRole.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
///     var mypolicy = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Effect = "Allow",
///                 Actions = new[]
///                 {
///                     "sns:Publish",
///                 },
///                 Resources = new[]
///                 {
///                     mytopic.Arn,
///                 },
///             },
///         },
///     });
///
///     var mypolicyRolePolicy = new Aws.Iam.RolePolicy("mypolicy", new()
///     {
///         Name = "mypolicy",
///         Role = myrole.Id,
///         Policy = mypolicy.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iot"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sns"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		mytopic, err := sns.NewTopic(ctx, "mytopic", &sns.TopicArgs{
/// 			Name: pulumi.String("mytopic"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		myerrortopic, err := sns.NewTopic(ctx, "myerrortopic", &sns.TopicArgs{
/// 			Name: pulumi.String("myerrortopic"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iot.NewTopicRule(ctx, "rule", &iot.TopicRuleArgs{
/// 			ErrorAction: &iot.TopicRuleErrorActionArgs{
/// 				Sns: &iot.TopicRuleErrorActionSnsArgs{
/// 					MessageFormat: pulumi.String("RAW"),
/// 					RoleArn:       pulumi.Any(role.Arn),
/// 					TargetArn:     myerrortopic.Arn,
/// 				},
/// 			},
/// 			Sns: iot.TopicRuleSnsArray{
/// 				&iot.TopicRuleSnsArgs{
/// 					MessageFormat: pulumi.String("RAW"),
/// 					RoleArn:       pulumi.Any(role.Arn),
/// 					TargetArn:     mytopic.Arn,
/// 				},
/// 			},
/// 			Name:        pulumi.String("MyRule"),
/// 			Description: pulumi.String("Example rule"),
/// 			Enabled:     pulumi.Bool(true),
/// 			Sql:         pulumi.String("SELECT * FROM 'topic/test'"),
/// 			SqlVersion:  pulumi.String("2016-03-23"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		assumeRole, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{
/// 					Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// 						{
/// 							Type: "Service",
/// 							Identifiers: []string{
/// 								"iot.amazonaws.com",
/// 							},
/// 						},
/// 					},
/// 					Effect: pulumi.StringRef("Allow"),
/// 					Actions: []string{
/// 						"sts:AssumeRole",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		myrole, err := iam.NewRole(ctx, "myrole", &iam.RoleArgs{
/// 			Name:             pulumi.String("myrole"),
/// 			AssumeRolePolicy: pulumi.String(assumeRole.Json),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		mypolicy := iam.GetPolicyDocumentOutput(ctx, iam.GetPolicyDocumentOutputArgs{
/// 			Statements: iam.GetPolicyDocumentStatementArray{
/// 				&iam.GetPolicyDocumentStatementArgs{
/// 					Effect: pulumi.String("Allow"),
/// 					Actions: pulumi.StringArray{
/// 						pulumi.String("sns:Publish"),
/// 					},
/// 					Resources: pulumi.StringArray{
/// 						mytopic.Arn,
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		_, err = iam.NewRolePolicy(ctx, "mypolicy", &iam.RolePolicyArgs{
/// 			Name:   pulumi.String("mypolicy"),
/// 			Role:   myrole.ID().ToIDOutput().ToStringOutput(),
/// 			Policy: mypolicy.Json(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_iam_getpolicydocument" "assumeRole" {
///   statements {
///     principals {
///       type        = "Service"
///       identifiers = ["iot.amazonaws.com"]
///     }
///     effect  = "Allow"
///     actions = ["sts:AssumeRole"]
///   }
/// }
/// data "aws_iam_getpolicydocument" "mypolicy" {
///   statements {
///     effect    = "Allow"
///     actions   = ["sns:Publish"]
///     resources = [aws_sns_topic.mytopic.arn]
///   }
/// }
///
/// resource "aws_iot_topicrule" "rule" {
///   error_action = {
///     sns = {
///       message_format = "RAW"
///       role_arn       = role.arn
///       target_arn     = aws_sns_topic.myerrortopic.arn
///     }
///   }
///   sns {
///     message_format = "RAW"
///     role_arn       = role.arn
///     target_arn     = aws_sns_topic.mytopic.arn
///   }
///   name        = "MyRule"
///   description = "Example rule"
///   enabled     = true
///   sql         = "SELECT * FROM 'topic/test'"
///   sql_version = "2016-03-23"
/// }
/// resource "aws_sns_topic" "mytopic" {
///   name = "mytopic"
/// }
/// resource "aws_sns_topic" "myerrortopic" {
///   name = "myerrortopic"
/// }
/// resource "aws_iam_role" "myrole" {
///   name               = "myrole"
///   assume_role_policy = data.aws_iam_getpolicydocument.assumeRole.json
/// }
/// resource "aws_iam_rolepolicy" "mypolicy" {
///   name   = "mypolicy"
///   role   = aws_iam_role.myrole.id
///   policy = data.aws_iam_getpolicydocument.mypolicy.json
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
/// import com.pulumi.aws.iot.inputs.TopicRuleErrorActionArgs;
/// import com.pulumi.aws.iot.inputs.TopicRuleErrorActionSnsArgs;
/// import com.pulumi.aws.iot.inputs.TopicRuleSnsArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementPrincipalArgs;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.iam.RolePolicy;
/// import com.pulumi.aws.iam.RolePolicyArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var mytopic = new Topic("mytopic", TopicArgs.builder()
///             .name("mytopic")
///             .build());
///
///         var myerrortopic = new Topic("myerrortopic", TopicArgs.builder()
///             .name("myerrortopic")
///             .build());
///
///         var rule = new TopicRule("rule", TopicRuleArgs.builder()
///             .errorAction(TopicRuleErrorActionArgs.builder()
///                 .sns(TopicRuleErrorActionSnsArgs.builder()
///                     .messageFormat("RAW")
///                     .roleArn(role.arn())
///                     .targetArn(myerrortopic.arn())
///                     .build())
///                 .build())
///             .sns(TopicRuleSnsArgs.builder()
///                 .messageFormat("RAW")
///                 .roleArn(role.arn())
///                 .targetArn(mytopic.arn())
///                 .build())
///             .name("MyRule")
///             .description("Example rule")
///             .enabled(true)
///             .sql("SELECT * FROM 'topic/test'")
///             .sqlVersion("2016-03-23")
///             .build());
///
///         final var assumeRole = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("Service")
///                     .identifiers("iot.amazonaws.com")
///                     .build())
///                 .effect("Allow")
///                 .actions("sts:AssumeRole")
///                 .build())
///             .build());
///
///         var myrole = new Role("myrole", RoleArgs.builder()
///             .name("myrole")
///             .assumeRolePolicy(assumeRole.json())
///             .build());
///
///         final var mypolicy = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .effect("Allow")
///                 .actions("sns:Publish")
///                 .resources(mytopic.arn())
///                 .build())
///             .build());
///
///         var mypolicyRolePolicy = new RolePolicy("mypolicyRolePolicy", RolePolicyArgs.builder()
///             .name("mypolicy")
///             .role(myrole.id())
///             .policy(mypolicy.applyValue(_mypolicy -> _mypolicy.json()))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   rule:
///     type: aws:iot:TopicRule
///     properties:
///       errorAction:
///         sns:
///           messageFormat: RAW
///           roleArn: ${role.arn}
///           targetArn: ${myerrortopic.arn}
///       sns:
///         - messageFormat: RAW
///           roleArn: ${role.arn}
///           targetArn: ${mytopic.arn}
///       name: MyRule
///       description: Example rule
///       enabled: true
///       sql: SELECT * FROM 'topic/test'
///       sqlVersion: 2016-03-23
///   mytopic:
///     type: aws:sns:Topic
///     properties:
///       name: mytopic
///   myerrortopic:
///     type: aws:sns:Topic
///     properties:
///       name: myerrortopic
///   myrole:
///     type: aws:iam:Role
///     properties:
///       name: myrole
///       assumeRolePolicy: ${assumeRole.json}
///   mypolicyRolePolicy:
///     type: aws:iam:RolePolicy
///     name: mypolicy
///     properties:
///       name: mypolicy
///       role: ${myrole.id}
///       policy: ${mypolicy.json}
/// variables:
///   assumeRole:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - principals:
///               - type: Service
///                 identifiers:
///                   - iot.amazonaws.com
///             effect: Allow
///             actions:
///               - sts:AssumeRole
///   mypolicy:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - effect: Allow
///             actions:
///               - sns:Publish
///             resources:
///               - ${mytopic.arn}
/// ```
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
  /// Configuration block with error action to be associated with the rule. See the documentation for `cloudwatchAlarm`, `cloudwatchLogs`, `cloudwatchMetric`, `dynamodb`, `dynamodbv2`, `elasticsearch`, `firehose`, `http`, `iotAnalytics`, `iotEvents`, `kafka`, `kinesis`, `lambda`, `republish`, `s3`, `sns`, `sqs`, `stepFunctions`, `timestream` configuration blocks for further configuration details.
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
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<List<TopicRuleTimestream>?> timestreams;

  /// Creates a new [TopicRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TopicRule]. {@macro pulumi_iot_topic_rule_topic_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TopicRule(
    String name, {
    TopicRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:iot/topicRule:TopicRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    cloudwatchAlarms = registerOutput<List<TopicRuleCloudwatchAlarm>?>('cloudwatchAlarms', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TopicRuleCloudwatchAlarm>(guardedValue, (value) => TopicRuleCloudwatchAlarm.fromMap((value as Map).cast<String, dynamic>())); });
    cloudwatchLogs = registerOutput<List<TopicRuleCloudwatchLog>?>('cloudwatchLogs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TopicRuleCloudwatchLog>(guardedValue, (value) => TopicRuleCloudwatchLog.fromMap((value as Map).cast<String, dynamic>())); });
    cloudwatchMetrics = registerOutput<List<TopicRuleCloudwatchMetric>?>('cloudwatchMetrics', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TopicRuleCloudwatchMetric>(guardedValue, (value) => TopicRuleCloudwatchMetric.fromMap((value as Map).cast<String, dynamic>())); });
    description = registerOutput<String?>('description');
    dynamodbs = registerOutput<List<TopicRuleDynamodb>?>('dynamodbs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TopicRuleDynamodb>(guardedValue, (value) => TopicRuleDynamodb.fromMap((value as Map).cast<String, dynamic>())); });
    dynamodbv2s = registerOutput<List<TopicRuleDynamodbv2>?>('dynamodbv2s', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TopicRuleDynamodbv2>(guardedValue, (value) => TopicRuleDynamodbv2.fromMap((value as Map).cast<String, dynamic>())); });
    elasticsearch = registerOutput<List<TopicRuleElasticsearch>?>('elasticsearch', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TopicRuleElasticsearch>(guardedValue, (value) => TopicRuleElasticsearch.fromMap((value as Map).cast<String, dynamic>())); });
    enabled = registerOutput<bool>('enabled');
    errorAction = registerOutput<TopicRuleErrorAction?>('errorAction', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TopicRuleErrorAction.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    firehoses = registerOutput<List<TopicRuleFirehose>?>('firehoses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TopicRuleFirehose>(guardedValue, (value) => TopicRuleFirehose.fromMap((value as Map).cast<String, dynamic>())); });
    https = registerOutput<List<TopicRuleHttp>?>('https', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TopicRuleHttp>(guardedValue, (value) => TopicRuleHttp.fromMap((value as Map).cast<String, dynamic>())); });
    iotAnalytics = registerOutput<List<TopicRuleIotAnalytic>?>('iotAnalytics', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TopicRuleIotAnalytic>(guardedValue, (value) => TopicRuleIotAnalytic.fromMap((value as Map).cast<String, dynamic>())); });
    iotEvents = registerOutput<List<TopicRuleIotEvent>?>('iotEvents', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TopicRuleIotEvent>(guardedValue, (value) => TopicRuleIotEvent.fromMap((value as Map).cast<String, dynamic>())); });
    kafkas = registerOutput<List<TopicRuleKafka>?>('kafkas', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TopicRuleKafka>(guardedValue, (value) => TopicRuleKafka.fromMap((value as Map).cast<String, dynamic>())); });
    kineses = registerOutput<List<TopicRuleKinesis>?>('kineses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TopicRuleKinesis>(guardedValue, (value) => TopicRuleKinesis.fromMap((value as Map).cast<String, dynamic>())); });
    lambdas = registerOutput<List<TopicRuleLambda>?>('lambdas', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TopicRuleLambda>(guardedValue, (value) => TopicRuleLambda.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    republishes = registerOutput<List<TopicRuleRepublish>?>('republishes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TopicRuleRepublish>(guardedValue, (value) => TopicRuleRepublish.fromMap((value as Map).cast<String, dynamic>())); });
    s3 = registerOutput<List<TopicRuleS3>?>('s3', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TopicRuleS3>(guardedValue, (value) => TopicRuleS3.fromMap((value as Map).cast<String, dynamic>())); });
    sns = registerOutput<List<TopicRuleSns>?>('sns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TopicRuleSns>(guardedValue, (value) => TopicRuleSns.fromMap((value as Map).cast<String, dynamic>())); });
    sql = registerOutput<String>('sql');
    sqlVersion = registerOutput<String>('sqlVersion');
    sqs = registerOutput<List<TopicRuleSqs>?>('sqs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TopicRuleSqs>(guardedValue, (value) => TopicRuleSqs.fromMap((value as Map).cast<String, dynamic>())); });
    stepFunctions = registerOutput<List<TopicRuleStepFunction>?>('stepFunctions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TopicRuleStepFunction>(guardedValue, (value) => TopicRuleStepFunction.fromMap((value as Map).cast<String, dynamic>())); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timestreams = registerOutput<List<TopicRuleTimestream>?>('timestreams', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TopicRuleTimestream>(guardedValue, (value) => TopicRuleTimestream.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Gets an existing [TopicRule] resource's state with the given [name] and [id].
  static TopicRule get(
    String name,
    pulumi.Input<String> id, {
    TopicRuleState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return TopicRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  TopicRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:iot/topicRule:TopicRule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    cloudwatchAlarms = registerOutput<List<TopicRuleCloudwatchAlarm>?>('cloudwatchAlarms', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TopicRuleCloudwatchAlarm>(guardedValue, (value) => TopicRuleCloudwatchAlarm.fromMap((value as Map).cast<String, dynamic>())); });
    cloudwatchLogs = registerOutput<List<TopicRuleCloudwatchLog>?>('cloudwatchLogs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TopicRuleCloudwatchLog>(guardedValue, (value) => TopicRuleCloudwatchLog.fromMap((value as Map).cast<String, dynamic>())); });
    cloudwatchMetrics = registerOutput<List<TopicRuleCloudwatchMetric>?>('cloudwatchMetrics', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TopicRuleCloudwatchMetric>(guardedValue, (value) => TopicRuleCloudwatchMetric.fromMap((value as Map).cast<String, dynamic>())); });
    description = registerOutput<String?>('description');
    dynamodbs = registerOutput<List<TopicRuleDynamodb>?>('dynamodbs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TopicRuleDynamodb>(guardedValue, (value) => TopicRuleDynamodb.fromMap((value as Map).cast<String, dynamic>())); });
    dynamodbv2s = registerOutput<List<TopicRuleDynamodbv2>?>('dynamodbv2s', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TopicRuleDynamodbv2>(guardedValue, (value) => TopicRuleDynamodbv2.fromMap((value as Map).cast<String, dynamic>())); });
    elasticsearch = registerOutput<List<TopicRuleElasticsearch>?>('elasticsearch', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TopicRuleElasticsearch>(guardedValue, (value) => TopicRuleElasticsearch.fromMap((value as Map).cast<String, dynamic>())); });
    enabled = registerOutput<bool>('enabled');
    errorAction = registerOutput<TopicRuleErrorAction?>('errorAction', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TopicRuleErrorAction.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    firehoses = registerOutput<List<TopicRuleFirehose>?>('firehoses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TopicRuleFirehose>(guardedValue, (value) => TopicRuleFirehose.fromMap((value as Map).cast<String, dynamic>())); });
    https = registerOutput<List<TopicRuleHttp>?>('https', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TopicRuleHttp>(guardedValue, (value) => TopicRuleHttp.fromMap((value as Map).cast<String, dynamic>())); });
    iotAnalytics = registerOutput<List<TopicRuleIotAnalytic>?>('iotAnalytics', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TopicRuleIotAnalytic>(guardedValue, (value) => TopicRuleIotAnalytic.fromMap((value as Map).cast<String, dynamic>())); });
    iotEvents = registerOutput<List<TopicRuleIotEvent>?>('iotEvents', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TopicRuleIotEvent>(guardedValue, (value) => TopicRuleIotEvent.fromMap((value as Map).cast<String, dynamic>())); });
    kafkas = registerOutput<List<TopicRuleKafka>?>('kafkas', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TopicRuleKafka>(guardedValue, (value) => TopicRuleKafka.fromMap((value as Map).cast<String, dynamic>())); });
    kineses = registerOutput<List<TopicRuleKinesis>?>('kineses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TopicRuleKinesis>(guardedValue, (value) => TopicRuleKinesis.fromMap((value as Map).cast<String, dynamic>())); });
    lambdas = registerOutput<List<TopicRuleLambda>?>('lambdas', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TopicRuleLambda>(guardedValue, (value) => TopicRuleLambda.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    republishes = registerOutput<List<TopicRuleRepublish>?>('republishes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TopicRuleRepublish>(guardedValue, (value) => TopicRuleRepublish.fromMap((value as Map).cast<String, dynamic>())); });
    s3 = registerOutput<List<TopicRuleS3>?>('s3', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TopicRuleS3>(guardedValue, (value) => TopicRuleS3.fromMap((value as Map).cast<String, dynamic>())); });
    sns = registerOutput<List<TopicRuleSns>?>('sns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TopicRuleSns>(guardedValue, (value) => TopicRuleSns.fromMap((value as Map).cast<String, dynamic>())); });
    sql = registerOutput<String>('sql');
    sqlVersion = registerOutput<String>('sqlVersion');
    sqs = registerOutput<List<TopicRuleSqs>?>('sqs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TopicRuleSqs>(guardedValue, (value) => TopicRuleSqs.fromMap((value as Map).cast<String, dynamic>())); });
    stepFunctions = registerOutput<List<TopicRuleStepFunction>?>('stepFunctions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TopicRuleStepFunction>(guardedValue, (value) => TopicRuleStepFunction.fromMap((value as Map).cast<String, dynamic>())); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timestreams = registerOutput<List<TopicRuleTimestream>?>('timestreams', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TopicRuleTimestream>(guardedValue, (value) => TopicRuleTimestream.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Creates a typed reference to an existing [TopicRule] resource.
  TopicRule.reference(String urn)
    : super(
        'aws:iot/topicRule:TopicRule',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    cloudwatchAlarms = registerOutput<List<TopicRuleCloudwatchAlarm>?>('cloudwatchAlarms', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TopicRuleCloudwatchAlarm>(guardedValue, (value) => TopicRuleCloudwatchAlarm.fromMap((value as Map).cast<String, dynamic>())); });
    cloudwatchLogs = registerOutput<List<TopicRuleCloudwatchLog>?>('cloudwatchLogs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TopicRuleCloudwatchLog>(guardedValue, (value) => TopicRuleCloudwatchLog.fromMap((value as Map).cast<String, dynamic>())); });
    cloudwatchMetrics = registerOutput<List<TopicRuleCloudwatchMetric>?>('cloudwatchMetrics', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TopicRuleCloudwatchMetric>(guardedValue, (value) => TopicRuleCloudwatchMetric.fromMap((value as Map).cast<String, dynamic>())); });
    description = registerOutput<String?>('description');
    dynamodbs = registerOutput<List<TopicRuleDynamodb>?>('dynamodbs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TopicRuleDynamodb>(guardedValue, (value) => TopicRuleDynamodb.fromMap((value as Map).cast<String, dynamic>())); });
    dynamodbv2s = registerOutput<List<TopicRuleDynamodbv2>?>('dynamodbv2s', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TopicRuleDynamodbv2>(guardedValue, (value) => TopicRuleDynamodbv2.fromMap((value as Map).cast<String, dynamic>())); });
    elasticsearch = registerOutput<List<TopicRuleElasticsearch>?>('elasticsearch', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TopicRuleElasticsearch>(guardedValue, (value) => TopicRuleElasticsearch.fromMap((value as Map).cast<String, dynamic>())); });
    enabled = registerOutput<bool>('enabled');
    errorAction = registerOutput<TopicRuleErrorAction?>('errorAction', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TopicRuleErrorAction.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    firehoses = registerOutput<List<TopicRuleFirehose>?>('firehoses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TopicRuleFirehose>(guardedValue, (value) => TopicRuleFirehose.fromMap((value as Map).cast<String, dynamic>())); });
    https = registerOutput<List<TopicRuleHttp>?>('https', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TopicRuleHttp>(guardedValue, (value) => TopicRuleHttp.fromMap((value as Map).cast<String, dynamic>())); });
    iotAnalytics = registerOutput<List<TopicRuleIotAnalytic>?>('iotAnalytics', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TopicRuleIotAnalytic>(guardedValue, (value) => TopicRuleIotAnalytic.fromMap((value as Map).cast<String, dynamic>())); });
    iotEvents = registerOutput<List<TopicRuleIotEvent>?>('iotEvents', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TopicRuleIotEvent>(guardedValue, (value) => TopicRuleIotEvent.fromMap((value as Map).cast<String, dynamic>())); });
    kafkas = registerOutput<List<TopicRuleKafka>?>('kafkas', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TopicRuleKafka>(guardedValue, (value) => TopicRuleKafka.fromMap((value as Map).cast<String, dynamic>())); });
    kineses = registerOutput<List<TopicRuleKinesis>?>('kineses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TopicRuleKinesis>(guardedValue, (value) => TopicRuleKinesis.fromMap((value as Map).cast<String, dynamic>())); });
    lambdas = registerOutput<List<TopicRuleLambda>?>('lambdas', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TopicRuleLambda>(guardedValue, (value) => TopicRuleLambda.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    republishes = registerOutput<List<TopicRuleRepublish>?>('republishes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TopicRuleRepublish>(guardedValue, (value) => TopicRuleRepublish.fromMap((value as Map).cast<String, dynamic>())); });
    s3 = registerOutput<List<TopicRuleS3>?>('s3', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TopicRuleS3>(guardedValue, (value) => TopicRuleS3.fromMap((value as Map).cast<String, dynamic>())); });
    sns = registerOutput<List<TopicRuleSns>?>('sns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TopicRuleSns>(guardedValue, (value) => TopicRuleSns.fromMap((value as Map).cast<String, dynamic>())); });
    sql = registerOutput<String>('sql');
    sqlVersion = registerOutput<String>('sqlVersion');
    sqs = registerOutput<List<TopicRuleSqs>?>('sqs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TopicRuleSqs>(guardedValue, (value) => TopicRuleSqs.fromMap((value as Map).cast<String, dynamic>())); });
    stepFunctions = registerOutput<List<TopicRuleStepFunction>?>('stepFunctions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TopicRuleStepFunction>(guardedValue, (value) => TopicRuleStepFunction.fromMap((value as Map).cast<String, dynamic>())); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timestreams = registerOutput<List<TopicRuleTimestream>?>('timestreams', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TopicRuleTimestream>(guardedValue, (value) => TopicRuleTimestream.fromMap((value as Map).cast<String, dynamic>())); });
  }
}
