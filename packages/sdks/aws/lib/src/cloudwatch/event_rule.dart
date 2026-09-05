import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_rule_args.dart';
import 'event_rule_state.dart';

/// Provides an EventBridge Rule resource.
///
/// &gt; **Note:** EventBridge was formerly known as CloudWatch Events. The functionality is identical.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const console = new aws.cloudwatch.EventRule("console", {
///     name: "capture-aws-sign-in",
///     description: "Capture each AWS Console Sign In",
///     eventPattern: JSON.stringify({
///         "detail-type": ["AWS Console Sign In via CloudTrail"],
///     }),
/// });
/// const awsLogins = new aws.sns.Topic("aws_logins", {name: "aws-console-logins"});
/// const sns = new aws.cloudwatch.EventTarget("sns", {
///     rule: console.name,
///     targetId: "SendToSNS",
///     arn: awsLogins.arn,
/// });
/// const snsTopicPolicy = aws.iam.getPolicyDocumentOutput({
///     statements: [{
///         principals: [{
///             type: "Service",
///             identifiers: ["events.amazonaws.com"],
///         }],
///         effect: "Allow",
///         actions: ["SNS:Publish"],
///         resources: [awsLogins.arn],
///     }],
/// });
/// const _default = new aws.sns.TopicPolicy("default", {
///     arn: awsLogins.arn,
///     policy: snsTopicPolicy.json,
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// console = aws.cloudwatch.EventRule("console",
///     name="capture-aws-sign-in",
///     description="Capture each AWS Console Sign In",
///     event_pattern=json.dumps({
///         "detail-type": ["AWS Console Sign In via CloudTrail"],
///     }))
/// aws_logins = aws.sns.Topic("aws_logins", name="aws-console-logins")
/// sns = aws.cloudwatch.EventTarget("sns",
///     rule=console.name,
///     target_id="SendToSNS",
///     arn=aws_logins.arn)
/// sns_topic_policy = aws.iam.get_policy_document_output(statements=[{
///     "principals": [{
///         "type": "Service",
///         "identifiers": ["events.amazonaws.com"],
///     }],
///     "effect": "Allow",
///     "actions": ["SNS:Publish"],
///     "resources": [aws_logins.arn],
/// }])
/// default = aws.sns.TopicPolicy("default",
///     arn=aws_logins.arn,
///     policy=sns_topic_policy.json)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var console = new Aws.CloudWatch.EventRule("console", new()
///     {
///         Name = "capture-aws-sign-in",
///         Description = "Capture each AWS Console Sign In",
///         EventPattern = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["detail-type"] = new[]
///             {
///                 "AWS Console Sign In via CloudTrail",
///             },
///         }),
///     });
///
///     var awsLogins = new Aws.Sns.Topic("aws_logins", new()
///     {
///         Name = "aws-console-logins",
///     });
///
///     var sns = new Aws.CloudWatch.EventTarget("sns", new()
///     {
///         Rule = console.Name,
///         TargetId = "SendToSNS",
///         Arn = awsLogins.Arn,
///     });
///
///     var snsTopicPolicy = Aws.Iam.GetPolicyDocument.Invoke(new()
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
///                             "events.amazonaws.com",
///                         },
///                     },
///                 },
///                 Effect = "Allow",
///                 Actions = new[]
///                 {
///                     "SNS:Publish",
///                 },
///                 Resources = new[]
///                 {
///                     awsLogins.Arn,
///                 },
///             },
///         },
///     });
///
///     var @default = new Aws.Sns.TopicPolicy("default", new()
///     {
///         Arn = awsLogins.Arn,
///         Policy = snsTopicPolicy.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sns"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tmpJSON0, err := json.Marshal(map[string][]string{
/// 			"detail-type": []string{
/// 				"AWS Console Sign In via CloudTrail",
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		console, err := cloudwatch.NewEventRule(ctx, "console", &cloudwatch.EventRuleArgs{
/// 			Name:         pulumi.String("capture-aws-sign-in"),
/// 			Description:  pulumi.String("Capture each AWS Console Sign In"),
/// 			EventPattern: pulumi.String(json0),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		awsLogins, err := sns.NewTopic(ctx, "aws_logins", &sns.TopicArgs{
/// 			Name: pulumi.String("aws-console-logins"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudwatch.NewEventTarget(ctx, "sns", &cloudwatch.EventTargetArgs{
/// 			Rule:     console.Name,
/// 			TargetId: pulumi.String("SendToSNS"),
/// 			Arn:      awsLogins.Arn,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		snsTopicPolicy := iam.GetPolicyDocumentOutput(ctx, iam.GetPolicyDocumentOutputArgs{
/// 			Statements: iam.GetPolicyDocumentStatementArray{
/// 				&iam.GetPolicyDocumentStatementArgs{
/// 					Principals: iam.GetPolicyDocumentStatementPrincipalArray{
/// 						&iam.GetPolicyDocumentStatementPrincipalArgs{
/// 							Type: pulumi.String("Service"),
/// 							Identifiers: pulumi.StringArray{
/// 								pulumi.String("events.amazonaws.com"),
/// 							},
/// 						},
/// 					},
/// 					Effect: pulumi.String("Allow"),
/// 					Actions: pulumi.StringArray{
/// 						pulumi.String("SNS:Publish"),
/// 					},
/// 					Resources: pulumi.StringArray{
/// 						awsLogins.Arn,
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		_, err = sns.NewTopicPolicy(ctx, "default", &sns.TopicPolicyArgs{
/// 			Arn:    awsLogins.Arn,
/// 			Policy: snsTopicPolicy.Json(),
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
/// data "aws_iam_getpolicydocument" "snsTopicPolicy" {
///   statements {
///     principals {
///       type        = "Service"
///       identifiers = ["events.amazonaws.com"]
///     }
///     effect    = "Allow"
///     actions   = ["SNS:Publish"]
///     resources = [aws_sns_topic.aws_logins.arn]
///   }
/// }
///
/// resource "aws_cloudwatch_eventrule" "console" {
///   name        = "capture-aws-sign-in"
///   description = "Capture each AWS Console Sign In"
///   event_pattern = jsonencode({
///     "detail-type" = ["AWS Console Sign In via CloudTrail"]
///   })
/// }
/// resource "aws_cloudwatch_eventtarget" "sns" {
///   rule      = aws_cloudwatch_eventrule.console.name
///   target_id = "SendToSNS"
///   arn       = aws_sns_topic.aws_logins.arn
/// }
/// resource "aws_sns_topic" "aws_logins" {
///   name = "aws-console-logins"
/// }
/// resource "aws_sns_topicpolicy" "default" {
///   arn    = aws_sns_topic.aws_logins.arn
///   policy = data.aws_iam_getpolicydocument.snsTopicPolicy.json
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.cloudwatch.EventRule;
/// import com.pulumi.aws.cloudwatch.EventRuleArgs;
/// import com.pulumi.aws.sns.Topic;
/// import com.pulumi.aws.sns.TopicArgs;
/// import com.pulumi.aws.cloudwatch.EventTarget;
/// import com.pulumi.aws.cloudwatch.EventTargetArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementPrincipalArgs;
/// import com.pulumi.aws.sns.TopicPolicy;
/// import com.pulumi.aws.sns.TopicPolicyArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         var console = new EventRule("console", EventRuleArgs.builder()
///             .name("capture-aws-sign-in")
///             .description("Capture each AWS Console Sign In")
///             .eventPattern(serializeJson(
///                 jsonObject(
///                     jsonProperty("detail-type", jsonArray("AWS Console Sign In via CloudTrail"))
///                 )))
///             .build());
///
///         var awsLogins = new Topic("awsLogins", TopicArgs.builder()
///             .name("aws-console-logins")
///             .build());
///
///         var sns = new EventTarget("sns", EventTargetArgs.builder()
///             .rule(console.name())
///             .targetId("SendToSNS")
///             .arn(awsLogins.arn())
///             .build());
///
///         final var snsTopicPolicy = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("Service")
///                     .identifiers("events.amazonaws.com")
///                     .build())
///                 .effect("Allow")
///                 .actions("SNS:Publish")
///                 .resources(awsLogins.arn())
///                 .build())
///             .build());
///
///         var default_ = new TopicPolicy("default", TopicPolicyArgs.builder()
///             .arn(awsLogins.arn())
///             .policy(snsTopicPolicy.applyValue(_snsTopicPolicy -> _snsTopicPolicy.json()))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   console:
///     type: aws:cloudwatch:EventRule
///     properties:
///       name: capture-aws-sign-in
///       description: Capture each AWS Console Sign In
///       eventPattern:
///         fn::toJSON:
///           detail-type:
///             - AWS Console Sign In via CloudTrail
///   sns:
///     type: aws:cloudwatch:EventTarget
///     properties:
///       rule: ${console.name}
///       targetId: SendToSNS
///       arn: ${awsLogins.arn}
///   awsLogins:
///     type: aws:sns:Topic
///     name: aws_logins
///     properties:
///       name: aws-console-logins
///   default:
///     type: aws:sns:TopicPolicy
///     properties:
///       arn: ${awsLogins.arn}
///       policy: ${snsTopicPolicy.json}
/// variables:
///   snsTopicPolicy:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - principals:
///               - type: Service
///                 identifiers:
///                   - events.amazonaws.com
///             effect: Allow
///             actions:
///               - SNS:Publish
///             resources:
///               - ${awsLogins.arn}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `name` (String) Name of the EventBridge rule.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import EventBridge Rules using the `event_bus_name/rule_name` (if you omit `eventBusName`, the `default` event bus will be used). For example:
///
/// ```sh
/// $ pulumi import aws:cloudwatch/eventRule:EventRule example example-event-bus/capture-console-sign-in
/// ```
class EventRule extends pulumi.CustomResource {
  /// ARN of the rule.
  late final pulumi.Output<String> arn;
  /// The description of the rule.
  late final pulumi.Output<String?> description;
  /// The name or ARN of the event bus to associate with this rule. If you omit this, the `default` event bus is used.
  late final pulumi.Output<String?> eventBusName;
  /// The event pattern described a JSON object. At least one of `scheduleExpression` or `eventPattern` is required. See full documentation of [Events and Event Patterns in EventBridge](https://docs.aws.amazon.com/eventbridge/latest/userguide/eventbridge-and-event-patterns.html) for details. **Note**: The event pattern size is 2048 by default but it is adjustable up to 4096 characters by submitting a service quota increase request. See [Amazon EventBridge quotas](https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-quota.html) for details.
  late final pulumi.Output<String?> eventPattern;
  /// Used to delete managed rules created by AWS. Defaults to `false`.
  late final pulumi.Output<bool?> forceDestroy;
  /// Whether the rule should be enabled. Defaults to `true`. Conflicts with `state`.
  late final pulumi.Output<bool?> isEnabled;
  /// The name of the rule. If omitted, this provider will assign a random, unique name. Conflicts with `namePrefix`.
  late final pulumi.Output<String> name;
  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`. **Note**: Due to the length of the generated suffix, must be 38 characters or less.
  late final pulumi.Output<String> namePrefix;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// ARN associated with the role that is used for target invocation.
  late final pulumi.Output<String?> roleArn;
  /// The scheduling expression. For example, `cron(0 20 * * ? *)` or `rate(5 minutes)`. At least one of `scheduleExpression` or `eventPattern` is required. Can only be used on the default event bus. For more information, refer to the AWS documentation [Schedule Expressions for Rules](https://docs.aws.amazon.com/AmazonCloudWatch/latest/events/ScheduledEvents.html).
  late final pulumi.Output<String?> scheduleExpression;
  /// State of the rule. Valid values are `DISABLED`, `ENABLED`, and `ENABLED_WITH_ALL_CLOUDTRAIL_MANAGEMENT_EVENTS`. When state is `ENABLED`, the rule is enabled for all events except those delivered by CloudTrail. To also enable the rule for events delivered by CloudTrail, set `state` to `ENABLED_WITH_ALL_CLOUDTRAIL_MANAGEMENT_EVENTS`. Defaults to `ENABLED`. Conflicts with `isEnabled`.
  late final pulumi.Output<String?> state;
  /// A map of tags to assign to the resource. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// **NOTE:** The rule state `ENABLED_WITH_ALL_CLOUDTRAIL_MANAGEMENT_EVENTS` cannot be used in conjunction with the `scheduleExpression` argument.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [EventRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EventRule]. {@macro pulumi_cloudwatch_event_rule_event_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EventRule(
    String name, {
    EventRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatch/eventRule:EventRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    eventBusName = registerOutput<String?>('eventBusName');
    eventPattern = registerOutput<String?>('eventPattern');
    forceDestroy = registerOutput<bool?>('forceDestroy');
    isEnabled = registerOutput<bool?>('isEnabled');
    this.name = registerOutput<String>('name');
    namePrefix = registerOutput<String>('namePrefix');
    region = registerOutput<String>('region');
    roleArn = registerOutput<String?>('roleArn');
    scheduleExpression = registerOutput<String?>('scheduleExpression');
    state = registerOutput<String?>('state');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [EventRule] resource's state with the given [name] and [id].
  static EventRule get(
    String name,
    pulumi.Input<String> id, {
    EventRuleState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return EventRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  EventRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatch/eventRule:EventRule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    eventBusName = registerOutput<String?>('eventBusName');
    eventPattern = registerOutput<String?>('eventPattern');
    forceDestroy = registerOutput<bool?>('forceDestroy');
    isEnabled = registerOutput<bool?>('isEnabled');
    this.name = registerOutput<String>('name');
    namePrefix = registerOutput<String>('namePrefix');
    region = registerOutput<String>('region');
    roleArn = registerOutput<String?>('roleArn');
    scheduleExpression = registerOutput<String?>('scheduleExpression');
    this.state = registerOutput<String?>('state');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [EventRule] resource.
  EventRule.reference(String urn)
    : super(
        'aws:cloudwatch/eventRule:EventRule',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    eventBusName = registerOutput<String?>('eventBusName');
    eventPattern = registerOutput<String?>('eventPattern');
    forceDestroy = registerOutput<bool?>('forceDestroy');
    isEnabled = registerOutput<bool?>('isEnabled');
    this.name = registerOutput<String>('name');
    namePrefix = registerOutput<String>('namePrefix');
    region = registerOutput<String>('region');
    roleArn = registerOutput<String?>('roleArn');
    scheduleExpression = registerOutput<String?>('scheduleExpression');
    state = registerOutput<String?>('state');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
