import 'package:pulumi/pulumi.dart';
import 'event_rule_args.dart';

/// Provides an EventBridge Rule resource.
///
/// > **Note:** EventBridge was formerly known as CloudWatch Events. The functionality is identical.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const console = new aws.cloudwatch.EventRule("console", {
/// name: "capture-aws-sign-in",
/// description: "Capture each AWS Console Sign In",
/// eventPattern: JSON.stringify({
/// "detail-type": ["AWS Console Sign In via CloudTrail"],
/// }),
/// });
/// const awsLogins = new aws.sns.Topic("aws_logins", {name: "aws-console-logins"});
/// const sns = new aws.cloudwatch.EventTarget("sns", {
/// rule: console.name,
/// targetId: "SendToSNS",
/// arn: awsLogins.arn,
/// });
/// const snsTopicPolicy = aws.iam.getPolicyDocumentOutput({
/// statements: [{
/// effect: "Allow",
/// actions: ["SNS:Publish"],
/// principals: [{
/// type: "Service",
/// identifiers: ["events.amazonaws.com"],
/// }],
/// resources: [awsLogins.arn],
/// }],
/// });
/// const _default = new aws.sns.TopicPolicy("default", {
/// arn: awsLogins.arn,
/// policy: snsTopicPolicy.apply(snsTopicPolicy => snsTopicPolicy.json),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// console = aws.cloudwatch.EventRule("console",
/// name="capture-aws-sign-in",
/// description="Capture each AWS Console Sign In",
/// event_pattern=json.dumps({
/// "detail-type": ["AWS Console Sign In via CloudTrail"],
/// }))
/// aws_logins = aws.sns.Topic("aws_logins", name="aws-console-logins")
/// sns = aws.cloudwatch.EventTarget("sns",
/// rule=console.name,
/// target_id="SendToSNS",
/// arn=aws_logins.arn)
/// sns_topic_policy = aws.iam.get_policy_document_output(statements=[{
/// "effect": "Allow",
/// "actions": ["SNS:Publish"],
/// "principals": [{
/// "type": "Service",
/// "identifiers": ["events.amazonaws.com"],
/// }],
/// "resources": [aws_logins.arn],
/// }])
/// default = aws.sns.TopicPolicy("default",
/// arn=aws_logins.arn,
/// policy=sns_topic_policy.json)
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
/// var console = new Aws.CloudWatch.EventRule("console", new()
/// {
/// Name = "capture-aws-sign-in",
/// Description = "Capture each AWS Console Sign In",
/// EventPattern = JsonSerializer.Serialize(new Dictionary<string, object?>
/// {
/// ["detail-type"] = new[]
/// {
/// "AWS Console Sign In via CloudTrail",
/// },
/// }),
/// });
///
/// var awsLogins = new Aws.Sns.Topic("aws_logins", new()
/// {
/// Name = "aws-console-logins",
/// });
///
/// var sns = new Aws.CloudWatch.EventTarget("sns", new()
/// {
/// Rule = console.Name,
/// TargetId = "SendToSNS",
/// Arn = awsLogins.Arn,
/// });
///
/// var snsTopicPolicy = Aws.Iam.GetPolicyDocument.Invoke(new()
/// {
/// Statements = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
/// {
/// Effect = "Allow",
/// Actions = new[]
/// {
/// "SNS:Publish",
/// },
/// Principals = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
/// {
/// Type = "Service",
/// Identifiers = new[]
/// {
/// "events.amazonaws.com",
/// },
/// },
/// },
/// Resources = new[]
/// {
/// awsLogins.Arn,
/// },
/// },
/// },
/// });
///
/// var @default = new Aws.Sns.TopicPolicy("default", new()
/// {
/// Arn = awsLogins.Arn,
/// Policy = snsTopicPolicy.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "encoding/json"
///
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sns"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// tmpJSON0, err := json.Marshal(map[string]interface{}{
/// "detail-type": []string{
/// "AWS Console Sign In via CloudTrail",
/// },
/// })
/// if err != nil {
/// return err
/// }
/// json0 := string(tmpJSON0)
/// console, err := cloudwatch.NewEventRule(ctx, "console", &cloudwatch.EventRuleArgs{
/// Name:         pulumi.String("capture-aws-sign-in"),
/// Description:  pulumi.String("Capture each AWS Console Sign In"),
/// EventPattern: pulumi.String(json0),
/// })
/// if err != nil {
/// return err
/// }
/// awsLogins, err := sns.NewTopic(ctx, "aws_logins", &sns.TopicArgs{
/// Name: pulumi.String("aws-console-logins"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = cloudwatch.NewEventTarget(ctx, "sns", &cloudwatch.EventTargetArgs{
/// Rule:     console.Name,
/// TargetId: pulumi.String("SendToSNS"),
/// Arn:      awsLogins.Arn,
/// })
/// if err != nil {
/// return err
/// }
/// snsTopicPolicy := iam.GetPolicyDocumentOutput(ctx, iam.GetPolicyDocumentOutputArgs{
/// Statements: iam.GetPolicyDocumentStatementArray{
/// &iam.GetPolicyDocumentStatementArgs{
/// Effect: pulumi.String("Allow"),
/// Actions: pulumi.StringArray{
/// pulumi.String("SNS:Publish"),
/// },
/// Principals: iam.GetPolicyDocumentStatementPrincipalArray{
/// &iam.GetPolicyDocumentStatementPrincipalArgs{
/// Type: pulumi.String("Service"),
/// Identifiers: pulumi.StringArray{
/// pulumi.String("events.amazonaws.com"),
/// },
/// },
/// },
/// Resources: pulumi.StringArray{
/// awsLogins.Arn,
/// },
/// },
/// },
/// }, nil)
/// _, err = sns.NewTopicPolicy(ctx, "default", &sns.TopicPolicyArgs{
/// Arn: awsLogins.Arn,
/// Policy: pulumi.String(snsTopicPolicy.ApplyT(func(snsTopicPolicy iam.GetPolicyDocumentResult) (*string, error) {
/// return &snsTopicPolicy.Json, nil
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
/// import com.pulumi.aws.cloudwatch.EventRule;
/// import com.pulumi.aws.cloudwatch.EventRuleArgs;
/// import com.pulumi.aws.sns.Topic;
/// import com.pulumi.aws.sns.TopicArgs;
/// import com.pulumi.aws.cloudwatch.EventTarget;
/// import com.pulumi.aws.cloudwatch.EventTargetArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.sns.TopicPolicy;
/// import com.pulumi.aws.sns.TopicPolicyArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
/// var console = new EventRule("console", EventRuleArgs.builder()
/// .name("capture-aws-sign-in")
/// .description("Capture each AWS Console Sign In")
/// .eventPattern(serializeJson(
/// jsonObject(
/// jsonProperty("detail-type", jsonArray("AWS Console Sign In via CloudTrail"))
/// )))
/// .build());
///
/// var awsLogins = new Topic("awsLogins", TopicArgs.builder()
/// .name("aws-console-logins")
/// .build());
///
/// var sns = new EventTarget("sns", EventTargetArgs.builder()
/// .rule(console.name())
/// .targetId("SendToSNS")
/// .arn(awsLogins.arn())
/// .build());
///
/// final var snsTopicPolicy = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
/// .statements(GetPolicyDocumentStatementArgs.builder()
/// .effect("Allow")
/// .actions("SNS:Publish")
/// .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
/// .type("Service")
/// .identifiers("events.amazonaws.com")
/// .build())
/// .resources(awsLogins.arn())
/// .build())
/// .build());
///
/// var default_ = new TopicPolicy("default", TopicPolicyArgs.builder()
/// .arn(awsLogins.arn())
/// .policy(snsTopicPolicy.applyValue(_snsTopicPolicy -> _snsTopicPolicy.json()))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// console:
/// type: aws:cloudwatch:EventRule
/// properties:
/// name: capture-aws-sign-in
/// description: Capture each AWS Console Sign In
/// eventPattern:
/// fn::toJSON:
/// detail-type:
/// - AWS Console Sign In via CloudTrail
/// sns:
/// type: aws:cloudwatch:EventTarget
/// properties:
/// rule: ${console.name}
/// targetId: SendToSNS
/// arn: ${awsLogins.arn}
/// awsLogins:
/// type: aws:sns:Topic
/// name: aws_logins
/// properties:
/// name: aws-console-logins
/// default:
/// type: aws:sns:TopicPolicy
/// properties:
/// arn: ${awsLogins.arn}
/// policy: ${snsTopicPolicy.json}
/// variables:
/// snsTopicPolicy:
/// fn::invoke:
/// function: aws:iam:getPolicyDocument
/// arguments:
/// statements:
/// - effect: Allow
/// actions:
/// - SNS:Publish
/// principals:
/// - type: Service
/// identifiers:
/// - events.amazonaws.com
/// resources:
/// - ${awsLogins.arn}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span> (String) Name of the EventBridge rule.
///
/// #### Optional
///
/// * <span pulumi-lang-nodejs="`accountId`" pulumi-lang-dotnet="`AccountId`" pulumi-lang-go="`accountId`" pulumi-lang-python="`account_id`" pulumi-lang-yaml="`accountId`" pulumi-lang-java="`accountId`">`account_id`</span> (String) AWS Account where this resource is managed.
/// * <span pulumi-lang-nodejs="`eventBusName`" pulumi-lang-dotnet="`EventBusName`" pulumi-lang-go="`eventBusName`" pulumi-lang-python="`event_bus_name`" pulumi-lang-yaml="`eventBusName`" pulumi-lang-java="`eventBusName`">`event_bus_name`</span> (String) Name of the event bus.
/// * <span pulumi-lang-nodejs="`region`" pulumi-lang-dotnet="`Region`" pulumi-lang-go="`region`" pulumi-lang-python="`region`" pulumi-lang-yaml="`region`" pulumi-lang-java="`region`">`region`</span> (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import EventBridge Rules using the `event_bus_name/rule_name` (if you omit <span pulumi-lang-nodejs="`eventBusName`" pulumi-lang-dotnet="`EventBusName`" pulumi-lang-go="`eventBusName`" pulumi-lang-python="`event_bus_name`" pulumi-lang-yaml="`eventBusName`" pulumi-lang-java="`eventBusName`">`event_bus_name`</span>, the <span pulumi-lang-nodejs="`default`" pulumi-lang-dotnet="`Default`" pulumi-lang-go="`default`" pulumi-lang-python="`default`" pulumi-lang-yaml="`default`" pulumi-lang-java="`default`">`default`</span> event bus will be used). For example:
///
/// ```sh
/// $ pulumi import aws:cloudwatch/eventRule:EventRule example example-event-bus/capture-console-sign-in
/// ```
class EventRule extends CustomResource {
  /// The Amazon Resource Name (ARN) of the rule.
  late final Output<String> arn;

  /// The description of the rule.
  late final Output<String?> description;

  /// The name or ARN of the event bus to associate with this rule. If you omit this, the <span pulumi-lang-nodejs="`default`" pulumi-lang-dotnet="`Default`" pulumi-lang-go="`default`" pulumi-lang-python="`default`" pulumi-lang-yaml="`default`" pulumi-lang-java="`default`">`default`</span> event bus is used.
  late final Output<String?> eventBusName;

  /// The event pattern described a JSON object. At least one of <span pulumi-lang-nodejs="`scheduleExpression`" pulumi-lang-dotnet="`ScheduleExpression`" pulumi-lang-go="`scheduleExpression`" pulumi-lang-python="`schedule_expression`" pulumi-lang-yaml="`scheduleExpression`" pulumi-lang-java="`scheduleExpression`">`schedule_expression`</span> or <span pulumi-lang-nodejs="`eventPattern`" pulumi-lang-dotnet="`EventPattern`" pulumi-lang-go="`eventPattern`" pulumi-lang-python="`event_pattern`" pulumi-lang-yaml="`eventPattern`" pulumi-lang-java="`eventPattern`">`event_pattern`</span> is required. See full documentation of [Events and Event Patterns in EventBridge](https://docs.aws.amazon.com/eventbridge/latest/userguide/eventbridge-and-event-patterns.html) for details. **Note**: The event pattern size is 2048 by default but it is adjustable up to 4096 characters by submitting a service quota increase request. See [Amazon EventBridge quotas](https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-quota.html) for details.
  late final Output<String?> eventPattern;

  /// Used to delete managed rules created by AWS. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  late final Output<bool?> forceDestroy;

  /// Whether the rule should be enabled. Defaults to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>. Conflicts with <span pulumi-lang-nodejs="`state`" pulumi-lang-dotnet="`State`" pulumi-lang-go="`state`" pulumi-lang-python="`state`" pulumi-lang-yaml="`state`" pulumi-lang-java="`state`">`state`</span>.
  late final Output<bool?> isEnabled;

  /// The name of the rule. If omitted, this provider will assign a random, unique name. Conflicts with <span pulumi-lang-nodejs="`namePrefix`" pulumi-lang-dotnet="`NamePrefix`" pulumi-lang-go="`namePrefix`" pulumi-lang-python="`name_prefix`" pulumi-lang-yaml="`namePrefix`" pulumi-lang-java="`namePrefix`">`name_prefix`</span>.
  late final Output<String> name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. **Note**: Due to the length of the generated suffix, must be 38 characters or less.
  late final Output<String> namePrefix;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The Amazon Resource Name (ARN) associated with the role that is used for target invocation.
  late final Output<String?> roleArn;

  /// The scheduling expression. For example, `cron(0 20 * * ? *)` or `rate(5 minutes)`. At least one of <span pulumi-lang-nodejs="`scheduleExpression`" pulumi-lang-dotnet="`ScheduleExpression`" pulumi-lang-go="`scheduleExpression`" pulumi-lang-python="`schedule_expression`" pulumi-lang-yaml="`scheduleExpression`" pulumi-lang-java="`scheduleExpression`">`schedule_expression`</span> or <span pulumi-lang-nodejs="`eventPattern`" pulumi-lang-dotnet="`EventPattern`" pulumi-lang-go="`eventPattern`" pulumi-lang-python="`event_pattern`" pulumi-lang-yaml="`eventPattern`" pulumi-lang-java="`eventPattern`">`event_pattern`</span> is required. Can only be used on the default event bus. For more information, refer to the AWS documentation [Schedule Expressions for Rules](https://docs.aws.amazon.com/AmazonCloudWatch/latest/events/ScheduledEvents.html).
  late final Output<String?> scheduleExpression;

  /// State of the rule. Valid values are `DISABLED`, `ENABLED`, and `ENABLED_WITH_ALL_CLOUDTRAIL_MANAGEMENT_EVENTS`. When state is `ENABLED`, the rule is enabled for all events except those delivered by CloudTrail. To also enable the rule for events delivered by CloudTrail, set <span pulumi-lang-nodejs="`state`" pulumi-lang-dotnet="`State`" pulumi-lang-go="`state`" pulumi-lang-python="`state`" pulumi-lang-yaml="`state`" pulumi-lang-java="`state`">`state`</span> to `ENABLED_WITH_ALL_CLOUDTRAIL_MANAGEMENT_EVENTS`. Defaults to `ENABLED`. Conflicts with <span pulumi-lang-nodejs="`isEnabled`" pulumi-lang-dotnet="`IsEnabled`" pulumi-lang-go="`isEnabled`" pulumi-lang-python="`is_enabled`" pulumi-lang-yaml="`isEnabled`" pulumi-lang-java="`isEnabled`">`is_enabled`</span>.
  late final Output<String?> state;

  /// A map of tags to assign to the resource. .If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// **NOTE:** The rule state `ENABLED_WITH_ALL_CLOUDTRAIL_MANAGEMENT_EVENTS` cannot be used in conjunction with the <span pulumi-lang-nodejs="`scheduleExpression`" pulumi-lang-dotnet="`ScheduleExpression`" pulumi-lang-go="`scheduleExpression`" pulumi-lang-python="`schedule_expression`" pulumi-lang-yaml="`scheduleExpression`" pulumi-lang-java="`scheduleExpression`">`schedule_expression`</span> argument.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  EventRule(
    String name, {
    EventRuleArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatch/eventRule:EventRule',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.eventBusName = registerOutput<String?>('eventBusName');
    this.eventPattern = registerOutput<String?>('eventPattern');
    this.forceDestroy = registerOutput<bool?>('forceDestroy');
    this.isEnabled = registerOutput<bool?>('isEnabled');
    this.name = registerOutput<String>('name');
    this.namePrefix = registerOutput<String>('namePrefix');
    this.region = registerOutput<String>('region');
    this.roleArn = registerOutput<String?>('roleArn');
    this.scheduleExpression = registerOutput<String?>('scheduleExpression');
    this.state = registerOutput<String?>('state');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
