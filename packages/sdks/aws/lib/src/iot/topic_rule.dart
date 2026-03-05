import 'package:pulumi/pulumi.dart' as pulumi;
import 'topic_rule_args.dart';
import 'topic_rule_error_action.dart';
import 'topic_rule_state.dart';

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
///     name: "MyRule",
///     description: "Example rule",
///     enabled: true,
///     sql: "SELECT * FROM 'topic/test'",
///     sqlVersion: "2016-03-23",
///     sns: [{
///         messageFormat: "RAW",
///         roleArn: role.arn,
///         targetArn: mytopic.arn,
///     }],
///     errorAction: {
///         sns: {
///             messageFormat: "RAW",
///             roleArn: role.arn,
///             targetArn: myerrortopic.arn,
///         },
///     },
/// });
/// const assumeRole = aws.iam.getPolicyDocument({
///     statements: [{
///         effect: "Allow",
///         principals: [{
///             type: "Service",
///             identifiers: ["iot.amazonaws.com"],
///         }],
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
///     policy: mypolicy.apply(mypolicy => mypolicy.json),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// mytopic = aws.sns.Topic("mytopic", name="mytopic")
/// myerrortopic = aws.sns.Topic("myerrortopic", name="myerrortopic")
/// rule = aws.iot.TopicRule("rule",
///     name="MyRule",
///     description="Example rule",
///     enabled=True,
///     sql="SELECT * FROM 'topic/test'",
///     sql_version="2016-03-23",
///     sns=[{
///         "message_format": "RAW",
///         "role_arn": role["arn"],
///         "target_arn": mytopic.arn,
///     }],
///     error_action={
///         "sns": {
///             "message_format": "RAW",
///             "role_arn": role["arn"],
///             "target_arn": myerrortopic.arn,
///         },
///     })
/// assume_role = aws.iam.get_policy_document(statements=[{
///     "effect": "Allow",
///     "principals": [{
///         "type": "Service",
///         "identifiers": ["iot.amazonaws.com"],
///     }],
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
///         Name = "MyRule",
///         Description = "Example rule",
///         Enabled = true,
///         Sql = "SELECT * FROM 'topic/test'",
///         SqlVersion = "2016-03-23",
///         Sns = new[]
///         {
///             new Aws.Iot.Inputs.TopicRuleSnsArgs
///             {
///                 MessageFormat = "RAW",
///                 RoleArn = role.Arn,
///                 TargetArn = mytopic.Arn,
///             },
///         },
///         ErrorAction = new Aws.Iot.Inputs.TopicRuleErrorActionArgs
///         {
///             Sns = new Aws.Iot.Inputs.TopicRuleErrorActionSnsArgs
///             {
///                 MessageFormat = "RAW",
///                 RoleArn = role.Arn,
///                 TargetArn = myerrortopic.Arn,
///             },
///         },
///     });
///
///     var assumeRole = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Effect = "Allow",
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
/// 			Name:        pulumi.String("MyRule"),
/// 			Description: pulumi.String("Example rule"),
/// 			Enabled:     pulumi.Bool(true),
/// 			Sql:         pulumi.String("SELECT * FROM 'topic/test'"),
/// 			SqlVersion:  pulumi.String("2016-03-23"),
/// 			Sns: iot.TopicRuleSnsArray{
/// 				&iot.TopicRuleSnsArgs{
/// 					MessageFormat: pulumi.String("RAW"),
/// 					RoleArn:       pulumi.Any(role.Arn),
/// 					TargetArn:     mytopic.Arn,
/// 				},
/// 			},
/// 			ErrorAction: &iot.TopicRuleErrorActionArgs{
/// 				Sns: &iot.TopicRuleErrorActionSnsArgs{
/// 					MessageFormat: pulumi.String("RAW"),
/// 					RoleArn:       pulumi.Any(role.Arn),
/// 					TargetArn:     myerrortopic.Arn,
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		assumeRole, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{
/// 					Effect: pulumi.StringRef("Allow"),
/// 					Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// 						{
/// 							Type: "Service",
/// 							Identifiers: []string{
/// 								"iot.amazonaws.com",
/// 							},
/// 						},
/// 					},
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
/// 			Name: pulumi.String("mypolicy"),
/// 			Role: myrole.ID(),
/// 			Policy: pulumi.String(mypolicy.ApplyT(func(mypolicy iam.GetPolicyDocumentResult) (*string, error) {
/// 				return &mypolicy.Json, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
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
///             .name("MyRule")
///             .description("Example rule")
///             .enabled(true)
///             .sql("SELECT * FROM 'topic/test'")
///             .sqlVersion("2016-03-23")
///             .sns(TopicRuleSnsArgs.builder()
///                 .messageFormat("RAW")
///                 .roleArn(role.arn())
///                 .targetArn(mytopic.arn())
///                 .build())
///             .errorAction(TopicRuleErrorActionArgs.builder()
///                 .sns(TopicRuleErrorActionSnsArgs.builder()
///                     .messageFormat("RAW")
///                     .roleArn(role.arn())
///                     .targetArn(myerrortopic.arn())
///                     .build())
///                 .build())
///             .build());
///
///         final var assumeRole = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .effect("Allow")
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("Service")
///                     .identifiers("iot.amazonaws.com")
///                     .build())
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
///       name: MyRule
///       description: Example rule
///       enabled: true
///       sql: SELECT * FROM 'topic/test'
///       sqlVersion: 2016-03-23
///       sns:
///         - messageFormat: RAW
///           roleArn: ${role.arn}
///           targetArn: ${mytopic.arn}
///       errorAction:
///         sns:
///           messageFormat: RAW
///           roleArn: ${role.arn}
///           targetArn: ${myerrortopic.arn}
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
///           - effect: Allow
///             principals:
///               - type: Service
///                 identifiers:
///                   - iot.amazonaws.com
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
  late final pulumi.Output<List<Map<String, dynamic>>?> cloudwatchAlarms;
  late final pulumi.Output<List<Map<String, dynamic>>?> cloudwatchLogs;
  late final pulumi.Output<List<Map<String, dynamic>>?> cloudwatchMetrics;

  /// The description of the rule.
  late final pulumi.Output<String?> description;
  late final pulumi.Output<List<Map<String, dynamic>>?> dynamodbs;
  late final pulumi.Output<List<Map<String, dynamic>>?> dynamodbv2s;
  late final pulumi.Output<List<Map<String, dynamic>>?> elasticsearch;

  /// Specifies whether the rule is enabled.
  late final pulumi.Output<bool> enabled;

  /// Configuration block with error action to be associated with the rule. See the documentation for `cloudwatch_alarm`, `cloudwatch_logs`, `cloudwatch_metric`, `dynamodb`, `dynamodbv2`, `elasticsearch`, `firehose`, `http`, `iot_analytics`, `iot_events`, `kafka`, `kinesis`, `lambda`, `republish`, `s3`, `sns`, `sqs`, `step_functions`, `timestream` configuration blocks for further configuration details.
  late final pulumi.Output<TopicRuleErrorAction?> errorAction;
  late final pulumi.Output<List<Map<String, dynamic>>?> firehoses;
  late final pulumi.Output<List<Map<String, dynamic>>?> https;
  late final pulumi.Output<List<Map<String, dynamic>>?> iotAnalytics;
  late final pulumi.Output<List<Map<String, dynamic>>?> iotEvents;
  late final pulumi.Output<List<Map<String, dynamic>>?> kafkas;
  late final pulumi.Output<List<Map<String, dynamic>>?> kineses;
  late final pulumi.Output<List<Map<String, dynamic>>?> lambdas;

  /// The name of the rule.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  late final pulumi.Output<List<Map<String, dynamic>>?> republishes;
  late final pulumi.Output<List<Map<String, dynamic>>?> s3;
  late final pulumi.Output<List<Map<String, dynamic>>?> sns;

  /// The SQL statement used to query the topic. For more information, see AWS IoT SQL Reference (http://docs.aws.amazon.com/iot/latest/developerguide/iot-rules.html#aws-iot-sql-reference) in the AWS IoT Developer Guide.
  late final pulumi.Output<String> sql;

  /// The version of the SQL rules engine to use when evaluating the rule.
  late final pulumi.Output<String> sqlVersion;
  late final pulumi.Output<List<Map<String, dynamic>>?> sqs;
  late final pulumi.Output<List<Map<String, dynamic>>?> stepFunctions;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<List<Map<String, dynamic>>?> timestreams;

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
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    cloudwatchAlarms = registerOutput<List<Map<String, dynamic>>?>(
      'cloudwatchAlarms',
    );
    cloudwatchLogs = registerOutput<List<Map<String, dynamic>>?>(
      'cloudwatchLogs',
    );
    cloudwatchMetrics = registerOutput<List<Map<String, dynamic>>?>(
      'cloudwatchMetrics',
    );
    description = registerOutput<String?>('description');
    dynamodbs = registerOutput<List<Map<String, dynamic>>?>('dynamodbs');
    dynamodbv2s = registerOutput<List<Map<String, dynamic>>?>('dynamodbv2s');
    elasticsearch = registerOutput<List<Map<String, dynamic>>?>(
      'elasticsearch',
    );
    enabled = registerOutput<bool>('enabled');
    errorAction = registerOutput<TopicRuleErrorAction?>(
      'errorAction',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return TopicRuleErrorAction.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    firehoses = registerOutput<List<Map<String, dynamic>>?>('firehoses');
    https = registerOutput<List<Map<String, dynamic>>?>('https');
    iotAnalytics = registerOutput<List<Map<String, dynamic>>?>('iotAnalytics');
    iotEvents = registerOutput<List<Map<String, dynamic>>?>('iotEvents');
    kafkas = registerOutput<List<Map<String, dynamic>>?>('kafkas');
    kineses = registerOutput<List<Map<String, dynamic>>?>('kineses');
    lambdas = registerOutput<List<Map<String, dynamic>>?>('lambdas');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    republishes = registerOutput<List<Map<String, dynamic>>?>('republishes');
    s3 = registerOutput<List<Map<String, dynamic>>?>('s3');
    sns = registerOutput<List<Map<String, dynamic>>?>('sns');
    sql = registerOutput<String>('sql');
    sqlVersion = registerOutput<String>('sqlVersion');
    sqs = registerOutput<List<Map<String, dynamic>>?>('sqs');
    stepFunctions = registerOutput<List<Map<String, dynamic>>?>(
      'stepFunctions',
    );
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timestreams = registerOutput<List<Map<String, dynamic>>?>('timestreams');
  }

  /// Gets an existing [TopicRule] resource's state with the given [name] and [id].
  static TopicRule get(
    String name,
    pulumi.Input<String> id, {
    TopicRuleState? state,
  }) {
    return TopicRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
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
    cloudwatchAlarms = registerOutput<List<Map<String, dynamic>>?>(
      'cloudwatchAlarms',
    );
    cloudwatchLogs = registerOutput<List<Map<String, dynamic>>?>(
      'cloudwatchLogs',
    );
    cloudwatchMetrics = registerOutput<List<Map<String, dynamic>>?>(
      'cloudwatchMetrics',
    );
    description = registerOutput<String?>('description');
    dynamodbs = registerOutput<List<Map<String, dynamic>>?>('dynamodbs');
    dynamodbv2s = registerOutput<List<Map<String, dynamic>>?>('dynamodbv2s');
    elasticsearch = registerOutput<List<Map<String, dynamic>>?>(
      'elasticsearch',
    );
    enabled = registerOutput<bool>('enabled');
    errorAction = registerOutput<TopicRuleErrorAction?>(
      'errorAction',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return TopicRuleErrorAction.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    firehoses = registerOutput<List<Map<String, dynamic>>?>('firehoses');
    https = registerOutput<List<Map<String, dynamic>>?>('https');
    iotAnalytics = registerOutput<List<Map<String, dynamic>>?>('iotAnalytics');
    iotEvents = registerOutput<List<Map<String, dynamic>>?>('iotEvents');
    kafkas = registerOutput<List<Map<String, dynamic>>?>('kafkas');
    kineses = registerOutput<List<Map<String, dynamic>>?>('kineses');
    lambdas = registerOutput<List<Map<String, dynamic>>?>('lambdas');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    republishes = registerOutput<List<Map<String, dynamic>>?>('republishes');
    s3 = registerOutput<List<Map<String, dynamic>>?>('s3');
    sns = registerOutput<List<Map<String, dynamic>>?>('sns');
    sql = registerOutput<String>('sql');
    sqlVersion = registerOutput<String>('sqlVersion');
    sqs = registerOutput<List<Map<String, dynamic>>?>('sqs');
    stepFunctions = registerOutput<List<Map<String, dynamic>>?>(
      'stepFunctions',
    );
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timestreams = registerOutput<List<Map<String, dynamic>>?>('timestreams');
  }
}
