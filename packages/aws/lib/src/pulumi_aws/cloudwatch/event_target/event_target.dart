import 'package:pulumi/pulumi.dart';
import '../event_target_appsync_target/event_target_appsync_target.dart';
import '../event_target_batch_target/event_target_batch_target.dart';
import '../event_target_dead_letter_config/event_target_dead_letter_config.dart';
import '../event_target_ecs_target/event_target_ecs_target.dart';
import '../event_target_http_target/event_target_http_target.dart';
import '../event_target_input_transformer/event_target_input_transformer.dart';
import '../event_target_kinesis_target/event_target_kinesis_target.dart';
import '../event_target_redshift_target/event_target_redshift_target.dart';
import '../event_target_retry_policy/event_target_retry_policy.dart';
import '../event_target_run_command_target/event_target_run_command_target.dart';
import '../event_target_sagemaker_pipeline_target/event_target_sagemaker_pipeline_target.dart';
import '../event_target_sqs_target/event_target_sqs_target.dart';
import 'event_target_args.dart';

/// Provides an EventBridge Target resource.
///
/// > **Note:** EventBridge was formerly known as CloudWatch Events. The functionality is identical.
///
/// > **Note:** In order to be able to have your AWS Lambda function or
/// SNS topic invoked by an EventBridge rule, you must set up the right permissions
/// using <span pulumi-lang-nodejs="`aws.lambda.Permission`" pulumi-lang-dotnet="`aws.lambda.Permission`" pulumi-lang-go="`lambda.Permission`" pulumi-lang-python="`lambda.Permission`" pulumi-lang-yaml="`aws.lambda.Permission`" pulumi-lang-java="`aws.lambda.Permission`">`aws.lambda.Permission`</span>
/// or <span pulumi-lang-nodejs="`aws.sns.TopicPolicy`" pulumi-lang-dotnet="`aws.sns.TopicPolicy`" pulumi-lang-go="`sns.TopicPolicy`" pulumi-lang-python="`sns.TopicPolicy`" pulumi-lang-yaml="`aws.sns.TopicPolicy`" pulumi-lang-java="`aws.sns.TopicPolicy`">`aws.sns.TopicPolicy`</span>.
/// More info [here](https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-use-resource-based.html).
///
/// ## Example Usage
///
/// ### Kinesis Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const console = new aws.cloudwatch.EventRule("console", {
/// name: "capture-ec2-scaling-events",
/// description: "Capture all EC2 scaling events",
/// eventPattern: JSON.stringify({
/// source: ["aws.autoscaling"],
/// "detail-type": [
/// "EC2 Instance Launch Successful",
/// "EC2 Instance Terminate Successful",
/// "EC2 Instance Launch Unsuccessful",
/// "EC2 Instance Terminate Unsuccessful",
/// ],
/// }),
/// });
/// const testStream = new aws.kinesis.Stream("test_stream", {
/// name: "kinesis-test",
/// shardCount: 1,
/// });
/// const yada = new aws.cloudwatch.EventTarget("yada", {
/// targetId: "Yada",
/// rule: console.name,
/// arn: testStream.arn,
/// runCommandTargets: [
/// {
/// key: "tag:Name",
/// values: ["FooBar"],
/// },
/// {
/// key: "InstanceIds",
/// values: ["i-162058cd308bffec2"],
/// },
/// ],
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// console = aws.cloudwatch.EventRule("console",
/// name="capture-ec2-scaling-events",
/// description="Capture all EC2 scaling events",
/// event_pattern=json.dumps({
/// "source": ["aws.autoscaling"],
/// "detail-type": [
/// "EC2 Instance Launch Successful",
/// "EC2 Instance Terminate Successful",
/// "EC2 Instance Launch Unsuccessful",
/// "EC2 Instance Terminate Unsuccessful",
/// ],
/// }))
/// test_stream = aws.kinesis.Stream("test_stream",
/// name="kinesis-test",
/// shard_count=1)
/// yada = aws.cloudwatch.EventTarget("yada",
/// target_id="Yada",
/// rule=console.name,
/// arn=test_stream.arn,
/// run_command_targets=[
/// {
/// "key": "tag:Name",
/// "values": ["FooBar"],
/// },
/// {
/// "key": "InstanceIds",
/// "values": ["i-162058cd308bffec2"],
/// },
/// ])
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
/// Name = "capture-ec2-scaling-events",
/// Description = "Capture all EC2 scaling events",
/// EventPattern = JsonSerializer.Serialize(new Dictionary<string, object?>
/// {
/// ["source"] = new[]
/// {
/// "aws.autoscaling",
/// },
/// ["detail-type"] = new[]
/// {
/// "EC2 Instance Launch Successful",
/// "EC2 Instance Terminate Successful",
/// "EC2 Instance Launch Unsuccessful",
/// "EC2 Instance Terminate Unsuccessful",
/// },
/// }),
/// });
///
/// var testStream = new Aws.Kinesis.Stream("test_stream", new()
/// {
/// Name = "kinesis-test",
/// ShardCount = 1,
/// });
///
/// var yada = new Aws.CloudWatch.EventTarget("yada", new()
/// {
/// TargetId = "Yada",
/// Rule = console.Name,
/// Arn = testStream.Arn,
/// RunCommandTargets = new[]
/// {
/// new Aws.CloudWatch.Inputs.EventTargetRunCommandTargetArgs
/// {
/// Key = "tag:Name",
/// Values = new[]
/// {
/// "FooBar",
/// },
/// },
/// new Aws.CloudWatch.Inputs.EventTargetRunCommandTargetArgs
/// {
/// Key = "InstanceIds",
/// Values = new[]
/// {
/// "i-162058cd308bffec2",
/// },
/// },
/// },
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kinesis"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// tmpJSON0, err := json.Marshal(map[string]interface{}{
/// "source": []string{
/// "aws.autoscaling",
/// },
/// "detail-type": []string{
/// "EC2 Instance Launch Successful",
/// "EC2 Instance Terminate Successful",
/// "EC2 Instance Launch Unsuccessful",
/// "EC2 Instance Terminate Unsuccessful",
/// },
/// })
/// if err != nil {
/// return err
/// }
/// json0 := string(tmpJSON0)
/// console, err := cloudwatch.NewEventRule(ctx, "console", &cloudwatch.EventRuleArgs{
/// Name:         pulumi.String("capture-ec2-scaling-events"),
/// Description:  pulumi.String("Capture all EC2 scaling events"),
/// EventPattern: pulumi.String(json0),
/// })
/// if err != nil {
/// return err
/// }
/// testStream, err := kinesis.NewStream(ctx, "test_stream", &kinesis.StreamArgs{
/// Name:       pulumi.String("kinesis-test"),
/// ShardCount: pulumi.Int(1),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = cloudwatch.NewEventTarget(ctx, "yada", &cloudwatch.EventTargetArgs{
/// TargetId: pulumi.String("Yada"),
/// Rule:     console.Name,
/// Arn:      testStream.Arn,
/// RunCommandTargets: cloudwatch.EventTargetRunCommandTargetArray{
/// &cloudwatch.EventTargetRunCommandTargetArgs{
/// Key: pulumi.String("tag:Name"),
/// Values: pulumi.StringArray{
/// pulumi.String("FooBar"),
/// },
/// },
/// &cloudwatch.EventTargetRunCommandTargetArgs{
/// Key: pulumi.String("InstanceIds"),
/// Values: pulumi.StringArray{
/// pulumi.String("i-162058cd308bffec2"),
/// },
/// },
/// },
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
/// import com.pulumi.aws.kinesis.Stream;
/// import com.pulumi.aws.kinesis.StreamArgs;
/// import com.pulumi.aws.cloudwatch.EventTarget;
/// import com.pulumi.aws.cloudwatch.EventTargetArgs;
/// import com.pulumi.aws.cloudwatch.inputs.EventTargetRunCommandTargetArgs;
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
/// .name("capture-ec2-scaling-events")
/// .description("Capture all EC2 scaling events")
/// .eventPattern(serializeJson(
/// jsonObject(
/// jsonProperty("source", jsonArray("aws.autoscaling")),
/// jsonProperty("detail-type", jsonArray(
/// "EC2 Instance Launch Successful",
/// "EC2 Instance Terminate Successful",
/// "EC2 Instance Launch Unsuccessful",
/// "EC2 Instance Terminate Unsuccessful"
/// ))
/// )))
/// .build());
///
/// var testStream = new Stream("testStream", StreamArgs.builder()
/// .name("kinesis-test")
/// .shardCount(1)
/// .build());
///
/// var yada = new EventTarget("yada", EventTargetArgs.builder()
/// .targetId("Yada")
/// .rule(console.name())
/// .arn(testStream.arn())
/// .runCommandTargets(
/// EventTargetRunCommandTargetArgs.builder()
/// .key("tag:Name")
/// .values("FooBar")
/// .build(),
/// EventTargetRunCommandTargetArgs.builder()
/// .key("InstanceIds")
/// .values("i-162058cd308bffec2")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// yada:
/// type: aws:cloudwatch:EventTarget
/// properties:
/// targetId: Yada
/// rule: ${console.name}
/// arn: ${testStream.arn}
/// runCommandTargets:
/// - key: tag:Name
/// values:
/// - FooBar
/// - key: InstanceIds
/// values:
/// - i-162058cd308bffec2
/// console:
/// type: aws:cloudwatch:EventRule
/// properties:
/// name: capture-ec2-scaling-events
/// description: Capture all EC2 scaling events
/// eventPattern:
/// fn::toJSON:
/// source:
/// - aws.autoscaling
/// detail-type:
/// - EC2 Instance Launch Successful
/// - EC2 Instance Terminate Successful
/// - EC2 Instance Launch Unsuccessful
/// - EC2 Instance Terminate Unsuccessful
/// testStream:
/// type: aws:kinesis:Stream
/// name: test_stream
/// properties:
/// name: kinesis-test
/// shardCount: 1
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### SSM Document Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const ssmLifecycleTrust = aws.iam.getPolicyDocument({
/// statements: [{
/// actions: ["sts:AssumeRole"],
/// principals: [{
/// type: "Service",
/// identifiers: ["events.amazonaws.com"],
/// }],
/// }],
/// });
/// const stopInstance = new aws.ssm.Document("stop_instance", {
/// name: "stop_instance",
/// documentType: "Command",
/// content: JSON.stringify({
/// schemaVersion: "1.2",
/// description: "Stop an instance",
/// parameters: {},
/// runtimeConfig: {
/// "aws:runShellScript": {
/// properties: [{
/// id: "0.aws:runShellScript",
/// runCommand: ["halt"],
/// }],
/// },
/// },
/// }),
/// });
/// const ssmLifecycle = aws.iam.getPolicyDocumentOutput({
/// statements: [
/// {
/// effect: "Allow",
/// actions: ["ssm:SendCommand"],
/// resources: ["arn:aws:ec2:eu-west-1:1234567890:instance/*"],
/// conditions: [{
/// test: "StringEquals",
/// variable: "ec2:ResourceTag/Terminate",
/// values: ["*"],
/// }],
/// },
/// {
/// effect: "Allow",
/// actions: ["ssm:SendCommand"],
/// resources: [stopInstance.arn],
/// },
/// ],
/// });
/// const ssmLifecycleRole = new aws.iam.Role("ssm_lifecycle", {
/// name: "SSMLifecycle",
/// assumeRolePolicy: ssmLifecycleTrust.then(ssmLifecycleTrust => ssmLifecycleTrust.json),
/// });
/// const ssmLifecyclePolicy = new aws.iam.Policy("ssm_lifecycle", {
/// name: "SSMLifecycle",
/// policy: ssmLifecycle.apply(ssmLifecycle => ssmLifecycle.json),
/// });
/// const ssmLifecycleRolePolicyAttachment = new aws.iam.RolePolicyAttachment("ssm_lifecycle", {
/// policyArn: ssmLifecyclePolicy.arn,
/// role: ssmLifecycleRole.name,
/// });
/// const stopInstances = new aws.cloudwatch.EventRule("stop_instances", {
/// name: "StopInstance",
/// description: "Stop instances nightly",
/// scheduleExpression: "cron(0 0 * * ? *)",
/// });
/// const stopInstancesEventTarget = new aws.cloudwatch.EventTarget("stop_instances", {
/// targetId: "StopInstance",
/// arn: stopInstance.arn,
/// rule: stopInstances.name,
/// roleArn: ssmLifecycleRole.arn,
/// runCommandTargets: [{
/// key: "tag:Terminate",
/// values: ["midnight"],
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// ssm_lifecycle_trust = aws.iam.get_policy_document(statements=[{
/// "actions": ["sts:AssumeRole"],
/// "principals": [{
/// "type": "Service",
/// "identifiers": ["events.amazonaws.com"],
/// }],
/// }])
/// stop_instance = aws.ssm.Document("stop_instance",
/// name="stop_instance",
/// document_type="Command",
/// content=json.dumps({
/// "schemaVersion": "1.2",
/// "description": "Stop an instance",
/// "parameters": {},
/// "runtimeConfig": {
/// "aws:runShellScript": {
/// "properties": [{
/// "id": "0.aws:runShellScript",
/// "runCommand": ["halt"],
/// }],
/// },
/// },
/// }))
/// ssm_lifecycle = aws.iam.get_policy_document_output(statements=[
/// {
/// "effect": "Allow",
/// "actions": ["ssm:SendCommand"],
/// "resources": ["arn:aws:ec2:eu-west-1:1234567890:instance/*"],
/// "conditions": [{
/// "test": "StringEquals",
/// "variable": "ec2:ResourceTag/Terminate",
/// "values": ["*"],
/// }],
/// },
/// {
/// "effect": "Allow",
/// "actions": ["ssm:SendCommand"],
/// "resources": [stop_instance.arn],
/// },
/// ])
/// ssm_lifecycle_role = aws.iam.Role("ssm_lifecycle",
/// name="SSMLifecycle",
/// assume_role_policy=ssm_lifecycle_trust.json)
/// ssm_lifecycle_policy = aws.iam.Policy("ssm_lifecycle",
/// name="SSMLifecycle",
/// policy=ssm_lifecycle.json)
/// ssm_lifecycle_role_policy_attachment = aws.iam.RolePolicyAttachment("ssm_lifecycle",
/// policy_arn=ssm_lifecycle_policy.arn,
/// role=ssm_lifecycle_role.name)
/// stop_instances = aws.cloudwatch.EventRule("stop_instances",
/// name="StopInstance",
/// description="Stop instances nightly",
/// schedule_expression="cron(0 0 * * ? *)")
/// stop_instances_event_target = aws.cloudwatch.EventTarget("stop_instances",
/// target_id="StopInstance",
/// arn=stop_instance.arn,
/// rule=stop_instances.name,
/// role_arn=ssm_lifecycle_role.arn,
/// run_command_targets=[{
/// "key": "tag:Terminate",
/// "values": ["midnight"],
/// }])
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
/// var ssmLifecycleTrust = Aws.Iam.GetPolicyDocument.Invoke(new()
/// {
/// Statements = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
/// {
/// Actions = new[]
/// {
/// "sts:AssumeRole",
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
/// },
/// },
/// });
///
/// var stopInstance = new Aws.Ssm.Document("stop_instance", new()
/// {
/// Name = "stop_instance",
/// DocumentType = "Command",
/// Content = JsonSerializer.Serialize(new Dictionary<string, object?>
/// {
/// ["schemaVersion"] = "1.2",
/// ["description"] = "Stop an instance",
/// ["parameters"] = new Dictionary<string, object?>
/// {
/// },
/// ["runtimeConfig"] = new Dictionary<string, object?>
/// {
/// ["aws:runShellScript"] = new Dictionary<string, object?>
/// {
/// ["properties"] = new[]
/// {
/// new Dictionary<string, object?>
/// {
/// ["id"] = "0.aws:runShellScript",
/// ["runCommand"] = new[]
/// {
/// "halt",
/// },
/// },
/// },
/// },
/// },
/// }),
/// });
///
/// var ssmLifecycle = Aws.Iam.GetPolicyDocument.Invoke(new()
/// {
/// Statements = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
/// {
/// Effect = "Allow",
/// Actions = new[]
/// {
/// "ssm:SendCommand",
/// },
/// Resources = new[]
/// {
/// "arn:aws:ec2:eu-west-1:1234567890:instance/*",
/// },
/// Conditions = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementConditionInputArgs
/// {
/// Test = "StringEquals",
/// Variable = "ec2:ResourceTag/Terminate",
/// Values = new[]
/// {
/// "*",
/// },
/// },
/// },
/// },
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
/// {
/// Effect = "Allow",
/// Actions = new[]
/// {
/// "ssm:SendCommand",
/// },
/// Resources = new[]
/// {
/// stopInstance.Arn,
/// },
/// },
/// },
/// });
///
/// var ssmLifecycleRole = new Aws.Iam.Role("ssm_lifecycle", new()
/// {
/// Name = "SSMLifecycle",
/// AssumeRolePolicy = ssmLifecycleTrust.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
/// });
///
/// var ssmLifecyclePolicy = new Aws.Iam.Policy("ssm_lifecycle", new()
/// {
/// Name = "SSMLifecycle",
/// PolicyDocument = ssmLifecycle.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
/// });
///
/// var ssmLifecycleRolePolicyAttachment = new Aws.Iam.RolePolicyAttachment("ssm_lifecycle", new()
/// {
/// PolicyArn = ssmLifecyclePolicy.Arn,
/// Role = ssmLifecycleRole.Name,
/// });
///
/// var stopInstances = new Aws.CloudWatch.EventRule("stop_instances", new()
/// {
/// Name = "StopInstance",
/// Description = "Stop instances nightly",
/// ScheduleExpression = "cron(0 0 * * ? *)",
/// });
///
/// var stopInstancesEventTarget = new Aws.CloudWatch.EventTarget("stop_instances", new()
/// {
/// TargetId = "StopInstance",
/// Arn = stopInstance.Arn,
/// Rule = stopInstances.Name,
/// RoleArn = ssmLifecycleRole.Arn,
/// RunCommandTargets = new[]
/// {
/// new Aws.CloudWatch.Inputs.EventTargetRunCommandTargetArgs
/// {
/// Key = "tag:Terminate",
/// Values = new[]
/// {
/// "midnight",
/// },
/// },
/// },
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssm"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// ssmLifecycleTrust, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// Statements: []iam.GetPolicyDocumentStatement{
/// {
/// Actions: []string{
/// "sts:AssumeRole",
/// },
/// Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// {
/// Type: "Service",
/// Identifiers: []string{
/// "events.amazonaws.com",
/// },
/// },
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// tmpJSON0, err := json.Marshal(map[string]interface{}{
/// "schemaVersion": "1.2",
/// "description":   "Stop an instance",
/// "parameters":    map[string]interface{}{},
/// "runtimeConfig": map[string]interface{}{
/// "aws:runShellScript": map[string]interface{}{
/// "properties": []map[string]interface{}{
/// map[string]interface{}{
/// "id": "0.aws:runShellScript",
/// "runCommand": []string{
/// "halt",
/// },
/// },
/// },
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// json0 := string(tmpJSON0)
/// stopInstance, err := ssm.NewDocument(ctx, "stop_instance", &ssm.DocumentArgs{
/// Name:         pulumi.String("stop_instance"),
/// DocumentType: pulumi.String("Command"),
/// Content:      pulumi.String(json0),
/// })
/// if err != nil {
/// return err
/// }
/// ssmLifecycle := iam.GetPolicyDocumentOutput(ctx, iam.GetPolicyDocumentOutputArgs{
/// Statements: iam.GetPolicyDocumentStatementArray{
/// &iam.GetPolicyDocumentStatementArgs{
/// Effect: pulumi.String("Allow"),
/// Actions: pulumi.StringArray{
/// pulumi.String("ssm:SendCommand"),
/// },
/// Resources: pulumi.StringArray{
/// pulumi.String("arn:aws:ec2:eu-west-1:1234567890:instance/*"),
/// },
/// Conditions: iam.GetPolicyDocumentStatementConditionArray{
/// &iam.GetPolicyDocumentStatementConditionArgs{
/// Test:     pulumi.String("StringEquals"),
/// Variable: pulumi.String("ec2:ResourceTag/Terminate"),
/// Values: pulumi.StringArray{
/// pulumi.String("*"),
/// },
/// },
/// },
/// },
/// &iam.GetPolicyDocumentStatementArgs{
/// Effect: pulumi.String("Allow"),
/// Actions: pulumi.StringArray{
/// pulumi.String("ssm:SendCommand"),
/// },
/// Resources: pulumi.StringArray{
/// stopInstance.Arn,
/// },
/// },
/// },
/// }, nil)
/// ssmLifecycleRole, err := iam.NewRole(ctx, "ssm_lifecycle", &iam.RoleArgs{
/// Name:             pulumi.String("SSMLifecycle"),
/// AssumeRolePolicy: pulumi.String(ssmLifecycleTrust.Json),
/// })
/// if err != nil {
/// return err
/// }
/// ssmLifecyclePolicy, err := iam.NewPolicy(ctx, "ssm_lifecycle", &iam.PolicyArgs{
/// Name: pulumi.String("SSMLifecycle"),
/// Policy: pulumi.String(ssmLifecycle.ApplyT(func(ssmLifecycle iam.GetPolicyDocumentResult) (*string, error) {
/// return &ssmLifecycle.Json, nil
/// }).(pulumi.StringPtrOutput)),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = iam.NewRolePolicyAttachment(ctx, "ssm_lifecycle", &iam.RolePolicyAttachmentArgs{
/// PolicyArn: ssmLifecyclePolicy.Arn,
/// Role:      ssmLifecycleRole.Name,
/// })
/// if err != nil {
/// return err
/// }
/// stopInstances, err := cloudwatch.NewEventRule(ctx, "stop_instances", &cloudwatch.EventRuleArgs{
/// Name:               pulumi.String("StopInstance"),
/// Description:        pulumi.String("Stop instances nightly"),
/// ScheduleExpression: pulumi.String("cron(0 0 * * ? *)"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = cloudwatch.NewEventTarget(ctx, "stop_instances", &cloudwatch.EventTargetArgs{
/// TargetId: pulumi.String("StopInstance"),
/// Arn:      stopInstance.Arn,
/// Rule:     stopInstances.Name,
/// RoleArn:  ssmLifecycleRole.Arn,
/// RunCommandTargets: cloudwatch.EventTargetRunCommandTargetArray{
/// &cloudwatch.EventTargetRunCommandTargetArgs{
/// Key: pulumi.String("tag:Terminate"),
/// Values: pulumi.StringArray{
/// pulumi.String("midnight"),
/// },
/// },
/// },
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
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.ssm.Document;
/// import com.pulumi.aws.ssm.DocumentArgs;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.iam.Policy;
/// import com.pulumi.aws.iam.PolicyArgs;
/// import com.pulumi.aws.iam.RolePolicyAttachment;
/// import com.pulumi.aws.iam.RolePolicyAttachmentArgs;
/// import com.pulumi.aws.cloudwatch.EventRule;
/// import com.pulumi.aws.cloudwatch.EventRuleArgs;
/// import com.pulumi.aws.cloudwatch.EventTarget;
/// import com.pulumi.aws.cloudwatch.EventTargetArgs;
/// import com.pulumi.aws.cloudwatch.inputs.EventTargetRunCommandTargetArgs;
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
/// final var ssmLifecycleTrust = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
/// .statements(GetPolicyDocumentStatementArgs.builder()
/// .actions("sts:AssumeRole")
/// .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
/// .type("Service")
/// .identifiers("events.amazonaws.com")
/// .build())
/// .build())
/// .build());
///
/// var stopInstance = new Document("stopInstance", DocumentArgs.builder()
/// .name("stop_instance")
/// .documentType("Command")
/// .content(serializeJson(
/// jsonObject(
/// jsonProperty("schemaVersion", "1.2"),
/// jsonProperty("description", "Stop an instance"),
/// jsonProperty("parameters", jsonObject(
///
/// )),
/// jsonProperty("runtimeConfig", jsonObject(
/// jsonProperty("aws:runShellScript", jsonObject(
/// jsonProperty("properties", jsonArray(jsonObject(
/// jsonProperty("id", "0.aws:runShellScript"),
/// jsonProperty("runCommand", jsonArray("halt"))
/// )))
/// ))
/// ))
/// )))
/// .build());
///
/// final var ssmLifecycle = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
/// .statements(
/// GetPolicyDocumentStatementArgs.builder()
/// .effect("Allow")
/// .actions("ssm:SendCommand")
/// .resources("arn:aws:ec2:eu-west-1:1234567890:instance/*")
/// .conditions(GetPolicyDocumentStatementConditionArgs.builder()
/// .test("StringEquals")
/// .variable("ec2:ResourceTag/Terminate")
/// .values("*")
/// .build())
/// .build(),
/// GetPolicyDocumentStatementArgs.builder()
/// .effect("Allow")
/// .actions("ssm:SendCommand")
/// .resources(stopInstance.arn())
/// .build())
/// .build());
///
/// var ssmLifecycleRole = new Role("ssmLifecycleRole", RoleArgs.builder()
/// .name("SSMLifecycle")
/// .assumeRolePolicy(ssmLifecycleTrust.json())
/// .build());
///
/// var ssmLifecyclePolicy = new Policy("ssmLifecyclePolicy", PolicyArgs.builder()
/// .name("SSMLifecycle")
/// .policy(ssmLifecycle.applyValue(_ssmLifecycle -> _ssmLifecycle.json()))
/// .build());
///
/// var ssmLifecycleRolePolicyAttachment = new RolePolicyAttachment("ssmLifecycleRolePolicyAttachment", RolePolicyAttachmentArgs.builder()
/// .policyArn(ssmLifecyclePolicy.arn())
/// .role(ssmLifecycleRole.name())
/// .build());
///
/// var stopInstances = new EventRule("stopInstances", EventRuleArgs.builder()
/// .name("StopInstance")
/// .description("Stop instances nightly")
/// .scheduleExpression("cron(0 0 * * ? *)")
/// .build());
///
/// var stopInstancesEventTarget = new EventTarget("stopInstancesEventTarget", EventTargetArgs.builder()
/// .targetId("StopInstance")
/// .arn(stopInstance.arn())
/// .rule(stopInstances.name())
/// .roleArn(ssmLifecycleRole.arn())
/// .runCommandTargets(EventTargetRunCommandTargetArgs.builder()
/// .key("tag:Terminate")
/// .values("midnight")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// ssmLifecycleRole:
/// type: aws:iam:Role
/// name: ssm_lifecycle
/// properties:
/// name: SSMLifecycle
/// assumeRolePolicy: ${ssmLifecycleTrust.json}
/// ssmLifecyclePolicy:
/// type: aws:iam:Policy
/// name: ssm_lifecycle
/// properties:
/// name: SSMLifecycle
/// policy: ${ssmLifecycle.json}
/// ssmLifecycleRolePolicyAttachment:
/// type: aws:iam:RolePolicyAttachment
/// name: ssm_lifecycle
/// properties:
/// policyArn: ${ssmLifecyclePolicy.arn}
/// role: ${ssmLifecycleRole.name}
/// stopInstance:
/// type: aws:ssm:Document
/// name: stop_instance
/// properties:
/// name: stop_instance
/// documentType: Command
/// content:
/// fn::toJSON:
/// schemaVersion: '1.2'
/// description: Stop an instance
/// parameters: {}
/// runtimeConfig:
/// aws:runShellScript:
/// properties:
/// - id: 0.aws:runShellScript
/// runCommand:
/// - halt
/// stopInstances:
/// type: aws:cloudwatch:EventRule
/// name: stop_instances
/// properties:
/// name: StopInstance
/// description: Stop instances nightly
/// scheduleExpression: cron(0 0 * * ? *)
/// stopInstancesEventTarget:
/// type: aws:cloudwatch:EventTarget
/// name: stop_instances
/// properties:
/// targetId: StopInstance
/// arn: ${stopInstance.arn}
/// rule: ${stopInstances.name}
/// roleArn: ${ssmLifecycleRole.arn}
/// runCommandTargets:
/// - key: tag:Terminate
/// values:
/// - midnight
/// variables:
/// ssmLifecycleTrust:
/// fn::invoke:
/// function: aws:iam:getPolicyDocument
/// arguments:
/// statements:
/// - actions:
/// - sts:AssumeRole
/// principals:
/// - type: Service
/// identifiers:
/// - events.amazonaws.com
/// ssmLifecycle:
/// fn::invoke:
/// function: aws:iam:getPolicyDocument
/// arguments:
/// statements:
/// - effect: Allow
/// actions:
/// - ssm:SendCommand
/// resources:
/// - arn:aws:ec2:eu-west-1:1234567890:instance/*
/// conditions:
/// - test: StringEquals
/// variable: ec2:ResourceTag/Terminate
/// values:
/// - '*'
/// - effect: Allow
/// actions:
/// - ssm:SendCommand
/// resources:
/// - ${stopInstance.arn}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### RunCommand Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const stopInstances = new aws.cloudwatch.EventRule("stop_instances", {
/// name: "StopInstance",
/// description: "Stop instances nightly",
/// scheduleExpression: "cron(0 0 * * ? *)",
/// });
/// const stopInstancesEventTarget = new aws.cloudwatch.EventTarget("stop_instances", {
/// targetId: "StopInstance",
/// arn: `arn:aws:ssm:${awsRegion}::document/AWS-RunShellScript`,
/// input: "{\"commands\":[\"halt\"]}",
/// rule: stopInstances.name,
/// roleArn: ssmLifecycle.arn,
/// runCommandTargets: [{
/// key: "tag:Terminate",
/// values: ["midnight"],
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// stop_instances = aws.cloudwatch.EventRule("stop_instances",
/// name="StopInstance",
/// description="Stop instances nightly",
/// schedule_expression="cron(0 0 * * ? *)")
/// stop_instances_event_target = aws.cloudwatch.EventTarget("stop_instances",
/// target_id="StopInstance",
/// arn=f"arn:aws:ssm:{aws_region}::document/AWS-RunShellScript",
/// input="{\"commands\":[\"halt\"]}",
/// rule=stop_instances.name,
/// role_arn=ssm_lifecycle["arn"],
/// run_command_targets=[{
/// "key": "tag:Terminate",
/// "values": ["midnight"],
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var stopInstances = new Aws.CloudWatch.EventRule("stop_instances", new()
/// {
/// Name = "StopInstance",
/// Description = "Stop instances nightly",
/// ScheduleExpression = "cron(0 0 * * ? *)",
/// });
///
/// var stopInstancesEventTarget = new Aws.CloudWatch.EventTarget("stop_instances", new()
/// {
/// TargetId = "StopInstance",
/// Arn = $"arn:aws:ssm:{awsRegion}::document/AWS-RunShellScript",
/// Input = "{\"commands\":[\"halt\"]}",
/// Rule = stopInstances.Name,
/// RoleArn = ssmLifecycle.Arn,
/// RunCommandTargets = new[]
/// {
/// new Aws.CloudWatch.Inputs.EventTargetRunCommandTargetArgs
/// {
/// Key = "tag:Terminate",
/// Values = new[]
/// {
/// "midnight",
/// },
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// stopInstances, err := cloudwatch.NewEventRule(ctx, "stop_instances", &cloudwatch.EventRuleArgs{
/// Name:               pulumi.String("StopInstance"),
/// Description:        pulumi.String("Stop instances nightly"),
/// ScheduleExpression: pulumi.String("cron(0 0 * * ? *)"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = cloudwatch.NewEventTarget(ctx, "stop_instances", &cloudwatch.EventTargetArgs{
/// TargetId: pulumi.String("StopInstance"),
/// Arn:      pulumi.Sprintf("arn:aws:ssm:%v::document/AWS-RunShellScript", awsRegion),
/// Input:    pulumi.String("{\"commands\":[\"halt\"]}"),
/// Rule:     stopInstances.Name,
/// RoleArn:  pulumi.Any(ssmLifecycle.Arn),
/// RunCommandTargets: cloudwatch.EventTargetRunCommandTargetArray{
/// &cloudwatch.EventTargetRunCommandTargetArgs{
/// Key: pulumi.String("tag:Terminate"),
/// Values: pulumi.StringArray{
/// pulumi.String("midnight"),
/// },
/// },
/// },
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
/// import com.pulumi.aws.cloudwatch.EventTarget;
/// import com.pulumi.aws.cloudwatch.EventTargetArgs;
/// import com.pulumi.aws.cloudwatch.inputs.EventTargetRunCommandTargetArgs;
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
/// var stopInstances = new EventRule("stopInstances", EventRuleArgs.builder()
/// .name("StopInstance")
/// .description("Stop instances nightly")
/// .scheduleExpression("cron(0 0 * * ? *)")
/// .build());
///
/// var stopInstancesEventTarget = new EventTarget("stopInstancesEventTarget", EventTargetArgs.builder()
/// .targetId("StopInstance")
/// .arn(String.format("arn:aws:ssm:%s::document/AWS-RunShellScript", awsRegion))
/// .input("{\"commands\":[\"halt\"]}")
/// .rule(stopInstances.name())
/// .roleArn(ssmLifecycle.arn())
/// .runCommandTargets(EventTargetRunCommandTargetArgs.builder()
/// .key("tag:Terminate")
/// .values("midnight")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// stopInstances:
/// type: aws:cloudwatch:EventRule
/// name: stop_instances
/// properties:
/// name: StopInstance
/// description: Stop instances nightly
/// scheduleExpression: cron(0 0 * * ? *)
/// stopInstancesEventTarget:
/// type: aws:cloudwatch:EventTarget
/// name: stop_instances
/// properties:
/// targetId: StopInstance
/// arn: arn:aws:ssm:${awsRegion}::document/AWS-RunShellScript
/// input: '{"commands":["halt"]}'
/// rule: ${stopInstances.name}
/// roleArn: ${ssmLifecycle.arn}
/// runCommandTargets:
/// - key: tag:Terminate
/// values:
/// - midnight
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### ECS Run Task with Role and Task Override Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// const assumeRole = aws.iam.getPolicyDocument({
/// statements: [{
/// effect: "Allow",
/// principals: [{
/// type: "Service",
/// identifiers: ["events.amazonaws.com"],
/// }],
/// actions: ["sts:AssumeRole"],
/// }],
/// });
/// const ecsEvents = new aws.iam.Role("ecs_events", {
/// name: "ecs_events",
/// assumeRolePolicy: assumeRole.then(assumeRole => assumeRole.json),
/// });
/// const ecsEventsRunTaskWithAnyRole = std.replace({
/// text: taskName.arn,
/// search: "/:\\d+$/",
/// replace: ":*",
/// }).then(invoke => aws.iam.getPolicyDocument({
/// statements: [
/// {
/// effect: "Allow",
/// actions: ["iam:PassRole"],
/// resources: ["*"],
/// },
/// {
/// effect: "Allow",
/// actions: ["ecs:RunTask"],
/// resources: [invoke.result],
/// },
/// ],
/// }));
/// const ecsEventsRunTaskWithAnyRoleRolePolicy = new aws.iam.RolePolicy("ecs_events_run_task_with_any_role", {
/// name: "ecs_events_run_task_with_any_role",
/// role: ecsEvents.id,
/// policy: ecsEventsRunTaskWithAnyRole.then(ecsEventsRunTaskWithAnyRole => ecsEventsRunTaskWithAnyRole.json),
/// });
/// const ecsScheduledTask = new aws.cloudwatch.EventTarget("ecs_scheduled_task", {
/// targetId: "run-scheduled-task-every-hour",
/// arn: clusterName.arn,
/// rule: everyHour.name,
/// roleArn: ecsEvents.arn,
/// ecsTarget: {
/// taskCount: 1,
/// taskDefinitionArn: taskName.arn,
/// },
/// input: JSON.stringify({
/// containerOverrides: [{
/// name: "name-of-container-to-override",
/// command: [
/// "bin/console",
/// "scheduled-task",
/// ],
/// }],
/// }),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// assume_role = aws.iam.get_policy_document(statements=[{
/// "effect": "Allow",
/// "principals": [{
/// "type": "Service",
/// "identifiers": ["events.amazonaws.com"],
/// }],
/// "actions": ["sts:AssumeRole"],
/// }])
/// ecs_events = aws.iam.Role("ecs_events",
/// name="ecs_events",
/// assume_role_policy=assume_role.json)
/// ecs_events_run_task_with_any_role = aws.iam.get_policy_document(statements=[
/// {
/// "effect": "Allow",
/// "actions": ["iam:PassRole"],
/// "resources": ["*"],
/// },
/// {
/// "effect": "Allow",
/// "actions": ["ecs:RunTask"],
/// "resources": [std.replace(text=task_name["arn"],
/// search="/:\\d+$/",
/// replace=":*").result],
/// },
/// ])
/// ecs_events_run_task_with_any_role_role_policy = aws.iam.RolePolicy("ecs_events_run_task_with_any_role",
/// name="ecs_events_run_task_with_any_role",
/// role=ecs_events.id,
/// policy=ecs_events_run_task_with_any_role.json)
/// ecs_scheduled_task = aws.cloudwatch.EventTarget("ecs_scheduled_task",
/// target_id="run-scheduled-task-every-hour",
/// arn=cluster_name["arn"],
/// rule=every_hour["name"],
/// role_arn=ecs_events.arn,
/// ecs_target={
/// "task_count": 1,
/// "task_definition_arn": task_name["arn"],
/// },
/// input=json.dumps({
/// "containerOverrides": [{
/// "name": "name-of-container-to-override",
/// "command": [
/// "bin/console",
/// "scheduled-task",
/// ],
/// }],
/// }))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
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
/// "events.amazonaws.com",
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
/// var ecsEvents = new Aws.Iam.Role("ecs_events", new()
/// {
/// Name = "ecs_events",
/// AssumeRolePolicy = assumeRole.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
/// });
///
/// var ecsEventsRunTaskWithAnyRole = Aws.Iam.GetPolicyDocument.Invoke(new()
/// {
/// Statements = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
/// {
/// Effect = "Allow",
/// Actions = new[]
/// {
/// "iam:PassRole",
/// },
/// Resources = new[]
/// {
/// "*",
/// },
/// },
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
/// {
/// Effect = "Allow",
/// Actions = new[]
/// {
/// "ecs:RunTask",
/// },
/// Resources = new[]
/// {
/// Std.Replace.Invoke(new()
/// {
/// Text = taskName.Arn,
/// Search = "/:\\d+$/",
/// Replace = ":*",
/// }).Result,
/// },
/// },
/// },
/// });
///
/// var ecsEventsRunTaskWithAnyRoleRolePolicy = new Aws.Iam.RolePolicy("ecs_events_run_task_with_any_role", new()
/// {
/// Name = "ecs_events_run_task_with_any_role",
/// Role = ecsEvents.Id,
/// Policy = ecsEventsRunTaskWithAnyRole.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
/// });
///
/// var ecsScheduledTask = new Aws.CloudWatch.EventTarget("ecs_scheduled_task", new()
/// {
/// TargetId = "run-scheduled-task-every-hour",
/// Arn = clusterName.Arn,
/// Rule = everyHour.Name,
/// RoleArn = ecsEvents.Arn,
/// EcsTarget = new Aws.CloudWatch.Inputs.EventTargetEcsTargetArgs
/// {
/// TaskCount = 1,
/// TaskDefinitionArn = taskName.Arn,
/// },
/// Input = JsonSerializer.Serialize(new Dictionary<string, object?>
/// {
/// ["containerOverrides"] = new[]
/// {
/// new Dictionary<string, object?>
/// {
/// ["name"] = "name-of-container-to-override",
/// ["command"] = new[]
/// {
/// "bin/console",
/// "scheduled-task",
/// },
/// },
/// },
/// }),
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
/// "github.com/pulumi/pulumi-std/sdk/go/std"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// assumeRole, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// Statements: []iam.GetPolicyDocumentStatement{
/// {
/// Effect: pulumi.StringRef("Allow"),
/// Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// {
/// Type: "Service",
/// Identifiers: []string{
/// "events.amazonaws.com",
/// },
/// },
/// },
/// Actions: []string{
/// "sts:AssumeRole",
/// },
/// },
/// },
/// }, nil);
/// if err != nil {
/// return err
/// }
/// ecsEvents, err := iam.NewRole(ctx, "ecs_events", &iam.RoleArgs{
/// Name: pulumi.String("ecs_events"),
/// AssumeRolePolicy: pulumi.String(assumeRole.Json),
/// })
/// if err != nil {
/// return err
/// }
/// ecsEventsRunTaskWithAnyRole, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// Statements: []iam.GetPolicyDocumentStatement{
/// {
/// Effect: pulumi.StringRef("Allow"),
/// Actions: []string{
/// "iam:PassRole",
/// },
/// Resources: []string{
/// "*",
/// },
/// },
/// {
/// Effect: pulumi.StringRef("Allow"),
/// Actions: []string{
/// "ecs:RunTask",
/// },
/// Resources: interface{}{
/// std.Replace(ctx, {
/// Text: taskName.Arn,
/// Search: "/:\\d+$/",
/// Replace: ":*",
/// }, nil).Result,
/// },
/// },
/// },
/// }, nil);
/// if err != nil {
/// return err
/// }
/// _, err = iam.NewRolePolicy(ctx, "ecs_events_run_task_with_any_role", &iam.RolePolicyArgs{
/// Name: pulumi.String("ecs_events_run_task_with_any_role"),
/// Role: ecsEvents.ID(),
/// Policy: pulumi.String(ecsEventsRunTaskWithAnyRole.Json),
/// })
/// if err != nil {
/// return err
/// }
/// tmpJSON0, err := json.Marshal(map[string]interface{}{
/// "containerOverrides": []map[string]interface{}{
/// map[string]interface{}{
/// "name": "name-of-container-to-override",
/// "command": []string{
/// "bin/console",
/// "scheduled-task",
/// },
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// json0 := string(tmpJSON0)
/// _, err = cloudwatch.NewEventTarget(ctx, "ecs_scheduled_task", &cloudwatch.EventTargetArgs{
/// TargetId: pulumi.String("run-scheduled-task-every-hour"),
/// Arn: pulumi.Any(clusterName.Arn),
/// Rule: pulumi.Any(everyHour.Name),
/// RoleArn: ecsEvents.Arn,
/// EcsTarget: &cloudwatch.EventTargetEcsTargetArgs{
/// TaskCount: pulumi.Int(1),
/// TaskDefinitionArn: pulumi.Any(taskName.Arn),
/// },
/// Input: pulumi.String(json0),
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
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.ReplaceArgs;
/// import com.pulumi.aws.iam.RolePolicy;
/// import com.pulumi.aws.iam.RolePolicyArgs;
/// import com.pulumi.aws.cloudwatch.EventTarget;
/// import com.pulumi.aws.cloudwatch.EventTargetArgs;
/// import com.pulumi.aws.cloudwatch.inputs.EventTargetEcsTargetArgs;
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
/// final var assumeRole = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
/// .statements(GetPolicyDocumentStatementArgs.builder()
/// .effect("Allow")
/// .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
/// .type("Service")
/// .identifiers("events.amazonaws.com")
/// .build())
/// .actions("sts:AssumeRole")
/// .build())
/// .build());
///
/// var ecsEvents = new Role("ecsEvents", RoleArgs.builder()
/// .name("ecs_events")
/// .assumeRolePolicy(assumeRole.json())
/// .build());
///
/// final var ecsEventsRunTaskWithAnyRole = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
/// .statements(
/// GetPolicyDocumentStatementArgs.builder()
/// .effect("Allow")
/// .actions("iam:PassRole")
/// .resources("*")
/// .build(),
/// GetPolicyDocumentStatementArgs.builder()
/// .effect("Allow")
/// .actions("ecs:RunTask")
/// .resources(StdFunctions.replace(ReplaceArgs.builder()
/// .text(taskName.arn())
/// .search("/:\\d+$/")
/// .replace(":*")
/// .build()).result())
/// .build())
/// .build());
///
/// var ecsEventsRunTaskWithAnyRoleRolePolicy = new RolePolicy("ecsEventsRunTaskWithAnyRoleRolePolicy", RolePolicyArgs.builder()
/// .name("ecs_events_run_task_with_any_role")
/// .role(ecsEvents.id())
/// .policy(ecsEventsRunTaskWithAnyRole.json())
/// .build());
///
/// var ecsScheduledTask = new EventTarget("ecsScheduledTask", EventTargetArgs.builder()
/// .targetId("run-scheduled-task-every-hour")
/// .arn(clusterName.arn())
/// .rule(everyHour.name())
/// .roleArn(ecsEvents.arn())
/// .ecsTarget(EventTargetEcsTargetArgs.builder()
/// .taskCount(1)
/// .taskDefinitionArn(taskName.arn())
/// .build())
/// .input(serializeJson(
/// jsonObject(
/// jsonProperty("containerOverrides", jsonArray(jsonObject(
/// jsonProperty("name", "name-of-container-to-override"),
/// jsonProperty("command", jsonArray(
/// "bin/console",
/// "scheduled-task"
/// ))
/// )))
/// )))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// ecsEvents:
/// type: aws:iam:Role
/// name: ecs_events
/// properties:
/// name: ecs_events
/// assumeRolePolicy: ${assumeRole.json}
/// ecsEventsRunTaskWithAnyRoleRolePolicy:
/// type: aws:iam:RolePolicy
/// name: ecs_events_run_task_with_any_role
/// properties:
/// name: ecs_events_run_task_with_any_role
/// role: ${ecsEvents.id}
/// policy: ${ecsEventsRunTaskWithAnyRole.json}
/// ecsScheduledTask:
/// type: aws:cloudwatch:EventTarget
/// name: ecs_scheduled_task
/// properties:
/// targetId: run-scheduled-task-every-hour
/// arn: ${clusterName.arn}
/// rule: ${everyHour.name}
/// roleArn: ${ecsEvents.arn}
/// ecsTarget:
/// taskCount: 1
/// taskDefinitionArn: ${taskName.arn}
/// input:
/// fn::toJSON:
/// containerOverrides:
/// - name: name-of-container-to-override
/// command:
/// - bin/console
/// - scheduled-task
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
/// - events.amazonaws.com
/// actions:
/// - sts:AssumeRole
/// ecsEventsRunTaskWithAnyRole:
/// fn::invoke:
/// function: aws:iam:getPolicyDocument
/// arguments:
/// statements:
/// - effect: Allow
/// actions:
/// - iam:PassRole
/// resources:
/// - '*'
/// - effect: Allow
/// actions:
/// - ecs:RunTask
/// resources:
/// - fn::invoke:
/// function: std:replace
/// arguments:
/// text: ${taskName.arn}
/// search: /:\d+$/
/// replace: :*
/// return: result
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### API Gateway target
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const exampleEventRule = new aws.cloudwatch.EventRule("example", {});
/// const exampleDeployment = new aws.apigateway.Deployment("example", {restApi: exampleAwsApiGatewayRestApi.id});
/// const exampleStage = new aws.apigateway.Stage("example", {
/// restApi: exampleAwsApiGatewayRestApi.id,
/// deployment: exampleDeployment.id,
/// });
/// const example = new aws.cloudwatch.EventTarget("example", {
/// arn: pulumi.interpolate`${exampleStage.executionArn}/GET`,
/// rule: exampleEventRule.id,
/// httpTarget: {
/// queryStringParameters: {
/// Body: "$.detail.body",
/// },
/// headerParameters: {
/// Env: "Test",
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_event_rule = aws.cloudwatch.EventRule("example")
/// example_deployment = aws.apigateway.Deployment("example", rest_api=example_aws_api_gateway_rest_api["id"])
/// example_stage = aws.apigateway.Stage("example",
/// rest_api=example_aws_api_gateway_rest_api["id"],
/// deployment=example_deployment.id)
/// example = aws.cloudwatch.EventTarget("example",
/// arn=example_stage.execution_arn.apply(lambda execution_arn: f"{execution_arn}/GET"),
/// rule=example_event_rule.id,
/// http_target={
/// "query_string_parameters": {
/// "Body": "$.detail.body",
/// },
/// "header_parameters": {
/// "Env": "Test",
/// },
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var exampleEventRule = new Aws.CloudWatch.EventRule("example");
///
/// var exampleDeployment = new Aws.ApiGateway.Deployment("example", new()
/// {
/// RestApi = exampleAwsApiGatewayRestApi.Id,
/// });
///
/// var exampleStage = new Aws.ApiGateway.Stage("example", new()
/// {
/// RestApi = exampleAwsApiGatewayRestApi.Id,
/// Deployment = exampleDeployment.Id,
/// });
///
/// var example = new Aws.CloudWatch.EventTarget("example", new()
/// {
/// Arn = exampleStage.ExecutionArn.Apply(executionArn => $"{executionArn}/GET"),
/// Rule = exampleEventRule.Id,
/// HttpTarget = new Aws.CloudWatch.Inputs.EventTargetHttpTargetArgs
/// {
/// QueryStringParameters =
/// {
/// { "Body", "$.detail.body" },
/// },
/// HeaderParameters =
/// {
/// { "Env", "Test" },
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "fmt"
///
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/apigateway"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// exampleEventRule, err := cloudwatch.NewEventRule(ctx, "example", nil)
/// if err != nil {
/// return err
/// }
/// exampleDeployment, err := apigateway.NewDeployment(ctx, "example", &apigateway.DeploymentArgs{
/// RestApi: pulumi.Any(exampleAwsApiGatewayRestApi.Id),
/// })
/// if err != nil {
/// return err
/// }
/// exampleStage, err := apigateway.NewStage(ctx, "example", &apigateway.StageArgs{
/// RestApi:    pulumi.Any(exampleAwsApiGatewayRestApi.Id),
/// Deployment: exampleDeployment.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = cloudwatch.NewEventTarget(ctx, "example", &cloudwatch.EventTargetArgs{
/// Arn: exampleStage.ExecutionArn.ApplyT(func(executionArn string) (string, error) {
/// return fmt.Sprintf("%v/GET", executionArn), nil
/// }).(pulumi.StringOutput),
/// Rule: exampleEventRule.ID(),
/// HttpTarget: &cloudwatch.EventTargetHttpTargetArgs{
/// QueryStringParameters: pulumi.StringMap{
/// "Body": pulumi.String("$.detail.body"),
/// },
/// HeaderParameters: pulumi.StringMap{
/// "Env": pulumi.String("Test"),
/// },
/// },
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
/// import com.pulumi.aws.apigateway.Deployment;
/// import com.pulumi.aws.apigateway.DeploymentArgs;
/// import com.pulumi.aws.apigateway.Stage;
/// import com.pulumi.aws.apigateway.StageArgs;
/// import com.pulumi.aws.cloudwatch.EventTarget;
/// import com.pulumi.aws.cloudwatch.EventTargetArgs;
/// import com.pulumi.aws.cloudwatch.inputs.EventTargetHttpTargetArgs;
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
/// var exampleEventRule = new EventRule("exampleEventRule");
///
/// var exampleDeployment = new Deployment("exampleDeployment", DeploymentArgs.builder()
/// .restApi(exampleAwsApiGatewayRestApi.id())
/// .build());
///
/// var exampleStage = new Stage("exampleStage", StageArgs.builder()
/// .restApi(exampleAwsApiGatewayRestApi.id())
/// .deployment(exampleDeployment.id())
/// .build());
///
/// var example = new EventTarget("example", EventTargetArgs.builder()
/// .arn(exampleStage.executionArn().applyValue(_executionArn -> String.format("%s/GET", _executionArn)))
/// .rule(exampleEventRule.id())
/// .httpTarget(EventTargetHttpTargetArgs.builder()
/// .queryStringParameters(Map.of("Body", "$.detail.body"))
/// .headerParameters(Map.of("Env", "Test"))
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:cloudwatch:EventTarget
/// properties:
/// arn: ${exampleStage.executionArn}/GET
/// rule: ${exampleEventRule.id}
/// httpTarget:
/// queryStringParameters:
/// Body: $.detail.body
/// headerParameters:
/// Env: Test
/// exampleEventRule:
/// type: aws:cloudwatch:EventRule
/// name: example
/// exampleDeployment:
/// type: aws:apigateway:Deployment
/// name: example
/// properties:
/// restApi: ${exampleAwsApiGatewayRestApi.id}
/// exampleStage:
/// type: aws:apigateway:Stage
/// name: example
/// properties:
/// restApi: ${exampleAwsApiGatewayRestApi.id}
/// deployment: ${exampleDeployment.id}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Cross-Account Event Bus target
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const assumeRole = aws.iam.getPolicyDocument({
/// statements: [{
/// effect: "Allow",
/// principals: [{
/// type: "Service",
/// identifiers: ["events.amazonaws.com"],
/// }],
/// actions: ["sts:AssumeRole"],
/// }],
/// });
/// const eventBusInvokeRemoteEventBusRole = new aws.iam.Role("event_bus_invoke_remote_event_bus", {
/// name: "event-bus-invoke-remote-event-bus",
/// assumeRolePolicy: assumeRole.then(assumeRole => assumeRole.json),
/// });
/// const eventBusInvokeRemoteEventBus = aws.iam.getPolicyDocument({
/// statements: [{
/// effect: "Allow",
/// actions: ["events:PutEvents"],
/// resources: ["arn:aws:events:eu-west-1:1234567890:event-bus/My-Event-Bus"],
/// }],
/// });
/// const eventBusInvokeRemoteEventBusPolicy = new aws.iam.Policy("event_bus_invoke_remote_event_bus", {
/// name: "event_bus_invoke_remote_event_bus",
/// policy: eventBusInvokeRemoteEventBus.then(eventBusInvokeRemoteEventBus => eventBusInvokeRemoteEventBus.json),
/// });
/// const eventBusInvokeRemoteEventBusRolePolicyAttachment = new aws.iam.RolePolicyAttachment("event_bus_invoke_remote_event_bus", {
/// role: eventBusInvokeRemoteEventBusRole.name,
/// policyArn: eventBusInvokeRemoteEventBusPolicy.arn,
/// });
/// const stopInstances = new aws.cloudwatch.EventRule("stop_instances", {
/// name: "StopInstance",
/// description: "Stop instances nightly",
/// scheduleExpression: "cron(0 0 * * ? *)",
/// });
/// const stopInstancesEventTarget = new aws.cloudwatch.EventTarget("stop_instances", {
/// targetId: "StopInstance",
/// arn: "arn:aws:events:eu-west-1:1234567890:event-bus/My-Event-Bus",
/// rule: stopInstances.name,
/// roleArn: eventBusInvokeRemoteEventBusRole.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// assume_role = aws.iam.get_policy_document(statements=[{
/// "effect": "Allow",
/// "principals": [{
/// "type": "Service",
/// "identifiers": ["events.amazonaws.com"],
/// }],
/// "actions": ["sts:AssumeRole"],
/// }])
/// event_bus_invoke_remote_event_bus_role = aws.iam.Role("event_bus_invoke_remote_event_bus",
/// name="event-bus-invoke-remote-event-bus",
/// assume_role_policy=assume_role.json)
/// event_bus_invoke_remote_event_bus = aws.iam.get_policy_document(statements=[{
/// "effect": "Allow",
/// "actions": ["events:PutEvents"],
/// "resources": ["arn:aws:events:eu-west-1:1234567890:event-bus/My-Event-Bus"],
/// }])
/// event_bus_invoke_remote_event_bus_policy = aws.iam.Policy("event_bus_invoke_remote_event_bus",
/// name="event_bus_invoke_remote_event_bus",
/// policy=event_bus_invoke_remote_event_bus.json)
/// event_bus_invoke_remote_event_bus_role_policy_attachment = aws.iam.RolePolicyAttachment("event_bus_invoke_remote_event_bus",
/// role=event_bus_invoke_remote_event_bus_role.name,
/// policy_arn=event_bus_invoke_remote_event_bus_policy.arn)
/// stop_instances = aws.cloudwatch.EventRule("stop_instances",
/// name="StopInstance",
/// description="Stop instances nightly",
/// schedule_expression="cron(0 0 * * ? *)")
/// stop_instances_event_target = aws.cloudwatch.EventTarget("stop_instances",
/// target_id="StopInstance",
/// arn="arn:aws:events:eu-west-1:1234567890:event-bus/My-Event-Bus",
/// rule=stop_instances.name,
/// role_arn=event_bus_invoke_remote_event_bus_role.arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
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
/// "events.amazonaws.com",
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
/// var eventBusInvokeRemoteEventBusRole = new Aws.Iam.Role("event_bus_invoke_remote_event_bus", new()
/// {
/// Name = "event-bus-invoke-remote-event-bus",
/// AssumeRolePolicy = assumeRole.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
/// });
///
/// var eventBusInvokeRemoteEventBus = Aws.Iam.GetPolicyDocument.Invoke(new()
/// {
/// Statements = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
/// {
/// Effect = "Allow",
/// Actions = new[]
/// {
/// "events:PutEvents",
/// },
/// Resources = new[]
/// {
/// "arn:aws:events:eu-west-1:1234567890:event-bus/My-Event-Bus",
/// },
/// },
/// },
/// });
///
/// var eventBusInvokeRemoteEventBusPolicy = new Aws.Iam.Policy("event_bus_invoke_remote_event_bus", new()
/// {
/// Name = "event_bus_invoke_remote_event_bus",
/// PolicyDocument = eventBusInvokeRemoteEventBus.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
/// });
///
/// var eventBusInvokeRemoteEventBusRolePolicyAttachment = new Aws.Iam.RolePolicyAttachment("event_bus_invoke_remote_event_bus", new()
/// {
/// Role = eventBusInvokeRemoteEventBusRole.Name,
/// PolicyArn = eventBusInvokeRemoteEventBusPolicy.Arn,
/// });
///
/// var stopInstances = new Aws.CloudWatch.EventRule("stop_instances", new()
/// {
/// Name = "StopInstance",
/// Description = "Stop instances nightly",
/// ScheduleExpression = "cron(0 0 * * ? *)",
/// });
///
/// var stopInstancesEventTarget = new Aws.CloudWatch.EventTarget("stop_instances", new()
/// {
/// TargetId = "StopInstance",
/// Arn = "arn:aws:events:eu-west-1:1234567890:event-bus/My-Event-Bus",
/// Rule = stopInstances.Name,
/// RoleArn = eventBusInvokeRemoteEventBusRole.Arn,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// assumeRole, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// Statements: []iam.GetPolicyDocumentStatement{
/// {
/// Effect: pulumi.StringRef("Allow"),
/// Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// {
/// Type: "Service",
/// Identifiers: []string{
/// "events.amazonaws.com",
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
/// eventBusInvokeRemoteEventBusRole, err := iam.NewRole(ctx, "event_bus_invoke_remote_event_bus", &iam.RoleArgs{
/// Name:             pulumi.String("event-bus-invoke-remote-event-bus"),
/// AssumeRolePolicy: pulumi.String(assumeRole.Json),
/// })
/// if err != nil {
/// return err
/// }
/// eventBusInvokeRemoteEventBus, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// Statements: []iam.GetPolicyDocumentStatement{
/// {
/// Effect: pulumi.StringRef("Allow"),
/// Actions: []string{
/// "events:PutEvents",
/// },
/// Resources: []string{
/// "arn:aws:events:eu-west-1:1234567890:event-bus/My-Event-Bus",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// eventBusInvokeRemoteEventBusPolicy, err := iam.NewPolicy(ctx, "event_bus_invoke_remote_event_bus", &iam.PolicyArgs{
/// Name:   pulumi.String("event_bus_invoke_remote_event_bus"),
/// Policy: pulumi.String(eventBusInvokeRemoteEventBus.Json),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = iam.NewRolePolicyAttachment(ctx, "event_bus_invoke_remote_event_bus", &iam.RolePolicyAttachmentArgs{
/// Role:      eventBusInvokeRemoteEventBusRole.Name,
/// PolicyArn: eventBusInvokeRemoteEventBusPolicy.Arn,
/// })
/// if err != nil {
/// return err
/// }
/// stopInstances, err := cloudwatch.NewEventRule(ctx, "stop_instances", &cloudwatch.EventRuleArgs{
/// Name:               pulumi.String("StopInstance"),
/// Description:        pulumi.String("Stop instances nightly"),
/// ScheduleExpression: pulumi.String("cron(0 0 * * ? *)"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = cloudwatch.NewEventTarget(ctx, "stop_instances", &cloudwatch.EventTargetArgs{
/// TargetId: pulumi.String("StopInstance"),
/// Arn:      pulumi.String("arn:aws:events:eu-west-1:1234567890:event-bus/My-Event-Bus"),
/// Rule:     stopInstances.Name,
/// RoleArn:  eventBusInvokeRemoteEventBusRole.Arn,
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
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.iam.Policy;
/// import com.pulumi.aws.iam.PolicyArgs;
/// import com.pulumi.aws.iam.RolePolicyAttachment;
/// import com.pulumi.aws.iam.RolePolicyAttachmentArgs;
/// import com.pulumi.aws.cloudwatch.EventRule;
/// import com.pulumi.aws.cloudwatch.EventRuleArgs;
/// import com.pulumi.aws.cloudwatch.EventTarget;
/// import com.pulumi.aws.cloudwatch.EventTargetArgs;
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
/// final var assumeRole = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
/// .statements(GetPolicyDocumentStatementArgs.builder()
/// .effect("Allow")
/// .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
/// .type("Service")
/// .identifiers("events.amazonaws.com")
/// .build())
/// .actions("sts:AssumeRole")
/// .build())
/// .build());
///
/// var eventBusInvokeRemoteEventBusRole = new Role("eventBusInvokeRemoteEventBusRole", RoleArgs.builder()
/// .name("event-bus-invoke-remote-event-bus")
/// .assumeRolePolicy(assumeRole.json())
/// .build());
///
/// final var eventBusInvokeRemoteEventBus = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
/// .statements(GetPolicyDocumentStatementArgs.builder()
/// .effect("Allow")
/// .actions("events:PutEvents")
/// .resources("arn:aws:events:eu-west-1:1234567890:event-bus/My-Event-Bus")
/// .build())
/// .build());
///
/// var eventBusInvokeRemoteEventBusPolicy = new Policy("eventBusInvokeRemoteEventBusPolicy", PolicyArgs.builder()
/// .name("event_bus_invoke_remote_event_bus")
/// .policy(eventBusInvokeRemoteEventBus.json())
/// .build());
///
/// var eventBusInvokeRemoteEventBusRolePolicyAttachment = new RolePolicyAttachment("eventBusInvokeRemoteEventBusRolePolicyAttachment", RolePolicyAttachmentArgs.builder()
/// .role(eventBusInvokeRemoteEventBusRole.name())
/// .policyArn(eventBusInvokeRemoteEventBusPolicy.arn())
/// .build());
///
/// var stopInstances = new EventRule("stopInstances", EventRuleArgs.builder()
/// .name("StopInstance")
/// .description("Stop instances nightly")
/// .scheduleExpression("cron(0 0 * * ? *)")
/// .build());
///
/// var stopInstancesEventTarget = new EventTarget("stopInstancesEventTarget", EventTargetArgs.builder()
/// .targetId("StopInstance")
/// .arn("arn:aws:events:eu-west-1:1234567890:event-bus/My-Event-Bus")
/// .rule(stopInstances.name())
/// .roleArn(eventBusInvokeRemoteEventBusRole.arn())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// eventBusInvokeRemoteEventBusRole:
/// type: aws:iam:Role
/// name: event_bus_invoke_remote_event_bus
/// properties:
/// name: event-bus-invoke-remote-event-bus
/// assumeRolePolicy: ${assumeRole.json}
/// eventBusInvokeRemoteEventBusPolicy:
/// type: aws:iam:Policy
/// name: event_bus_invoke_remote_event_bus
/// properties:
/// name: event_bus_invoke_remote_event_bus
/// policy: ${eventBusInvokeRemoteEventBus.json}
/// eventBusInvokeRemoteEventBusRolePolicyAttachment:
/// type: aws:iam:RolePolicyAttachment
/// name: event_bus_invoke_remote_event_bus
/// properties:
/// role: ${eventBusInvokeRemoteEventBusRole.name}
/// policyArn: ${eventBusInvokeRemoteEventBusPolicy.arn}
/// stopInstances:
/// type: aws:cloudwatch:EventRule
/// name: stop_instances
/// properties:
/// name: StopInstance
/// description: Stop instances nightly
/// scheduleExpression: cron(0 0 * * ? *)
/// stopInstancesEventTarget:
/// type: aws:cloudwatch:EventTarget
/// name: stop_instances
/// properties:
/// targetId: StopInstance
/// arn: arn:aws:events:eu-west-1:1234567890:event-bus/My-Event-Bus
/// rule: ${stopInstances.name}
/// roleArn: ${eventBusInvokeRemoteEventBusRole.arn}
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
/// - events.amazonaws.com
/// actions:
/// - sts:AssumeRole
/// eventBusInvokeRemoteEventBus:
/// fn::invoke:
/// function: aws:iam:getPolicyDocument
/// arguments:
/// statements:
/// - effect: Allow
/// actions:
/// - events:PutEvents
/// resources:
/// - arn:aws:events:eu-west-1:1234567890:event-bus/My-Event-Bus
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Input Transformer Usage - JSON Object
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const exampleEventRule = new aws.cloudwatch.EventRule("example", {});
/// const example = new aws.cloudwatch.EventTarget("example", {
/// arn: exampleAwsLambdaFunction.arn,
/// rule: exampleEventRule.id,
/// inputTransformer: {
/// inputPaths: {
/// instance: "$.detail.instance",
/// status: "$.detail.status",
/// },
/// inputTemplate: `{
/// \\"instance_id\\": <instance>,
/// \\"instance_status\\": <status>
/// }
/// `,
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_event_rule = aws.cloudwatch.EventRule("example")
/// example = aws.cloudwatch.EventTarget("example",
/// arn=example_aws_lambda_function["arn"],
/// rule=example_event_rule.id,
/// input_transformer={
/// "input_paths": {
/// "instance": "$.detail.instance",
/// "status": "$.detail.status",
/// },
/// "input_template": """{
/// \"instance_id\": <instance>,
/// \"instance_status\": <status>
/// }
/// """,
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var exampleEventRule = new Aws.CloudWatch.EventRule("example");
///
/// var example = new Aws.CloudWatch.EventTarget("example", new()
/// {
/// Arn = exampleAwsLambdaFunction.Arn,
/// Rule = exampleEventRule.Id,
/// InputTransformer = new Aws.CloudWatch.Inputs.EventTargetInputTransformerArgs
/// {
/// InputPaths =
/// {
/// { "instance", "$.detail.instance" },
/// { "status", "$.detail.status" },
/// },
/// InputTemplate = @"{
/// \""instance_id\"": <instance>,
/// \""instance_status\"": <status>
/// }
/// ",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// exampleEventRule, err := cloudwatch.NewEventRule(ctx, "example", nil)
/// if err != nil {
/// return err
/// }
/// _, err = cloudwatch.NewEventTarget(ctx, "example", &cloudwatch.EventTargetArgs{
/// Arn:  pulumi.Any(exampleAwsLambdaFunction.Arn),
/// Rule: exampleEventRule.ID(),
/// InputTransformer: &cloudwatch.EventTargetInputTransformerArgs{
/// InputPaths: pulumi.StringMap{
/// "instance": pulumi.String("$.detail.instance"),
/// "status":   pulumi.String("$.detail.status"),
/// },
/// InputTemplate: pulumi.String("{\n  \\\"instance_id\\\": <instance>,\n  \\\"instance_status\\\": <status>\n}\n"),
/// },
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
/// import com.pulumi.aws.cloudwatch.EventTarget;
/// import com.pulumi.aws.cloudwatch.EventTargetArgs;
/// import com.pulumi.aws.cloudwatch.inputs.EventTargetInputTransformerArgs;
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
/// var exampleEventRule = new EventRule("exampleEventRule");
///
/// var example = new EventTarget("example", EventTargetArgs.builder()
/// .arn(exampleAwsLambdaFunction.arn())
/// .rule(exampleEventRule.id())
/// .inputTransformer(EventTargetInputTransformerArgs.builder()
/// .inputPaths(Map.ofEntries(
/// Map.entry("instance", "$.detail.instance"),
/// Map.entry("status", "$.detail.status")
/// ))
/// .inputTemplate("""
/// {
/// \"instance_id\": <instance>,
/// \"instance_status\": <status>
/// }
/// """)
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:cloudwatch:EventTarget
/// properties:
/// arn: ${exampleAwsLambdaFunction.arn}
/// rule: ${exampleEventRule.id}
/// inputTransformer:
/// inputPaths:
/// instance: $.detail.instance
/// status: $.detail.status
/// inputTemplate: |
/// {
/// \"instance_id\": <instance>,
/// \"instance_status\": <status>
/// }
/// exampleEventRule:
/// type: aws:cloudwatch:EventRule
/// name: example
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Input Transformer Usage - Simple String
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const exampleEventRule = new aws.cloudwatch.EventRule("example", {});
/// const example = new aws.cloudwatch.EventTarget("example", {
/// arn: exampleAwsLambdaFunction.arn,
/// rule: exampleEventRule.id,
/// inputTransformer: {
/// inputPaths: {
/// instance: "$.detail.instance",
/// status: "$.detail.status",
/// },
/// inputTemplate: "\"<instance> is in state <status>\"",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_event_rule = aws.cloudwatch.EventRule("example")
/// example = aws.cloudwatch.EventTarget("example",
/// arn=example_aws_lambda_function["arn"],
/// rule=example_event_rule.id,
/// input_transformer={
/// "input_paths": {
/// "instance": "$.detail.instance",
/// "status": "$.detail.status",
/// },
/// "input_template": "\"<instance> is in state <status>\"",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var exampleEventRule = new Aws.CloudWatch.EventRule("example");
///
/// var example = new Aws.CloudWatch.EventTarget("example", new()
/// {
/// Arn = exampleAwsLambdaFunction.Arn,
/// Rule = exampleEventRule.Id,
/// InputTransformer = new Aws.CloudWatch.Inputs.EventTargetInputTransformerArgs
/// {
/// InputPaths =
/// {
/// { "instance", "$.detail.instance" },
/// { "status", "$.detail.status" },
/// },
/// InputTemplate = "\"<instance> is in state <status>\"",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// exampleEventRule, err := cloudwatch.NewEventRule(ctx, "example", nil)
/// if err != nil {
/// return err
/// }
/// _, err = cloudwatch.NewEventTarget(ctx, "example", &cloudwatch.EventTargetArgs{
/// Arn:  pulumi.Any(exampleAwsLambdaFunction.Arn),
/// Rule: exampleEventRule.ID(),
/// InputTransformer: &cloudwatch.EventTargetInputTransformerArgs{
/// InputPaths: pulumi.StringMap{
/// "instance": pulumi.String("$.detail.instance"),
/// "status":   pulumi.String("$.detail.status"),
/// },
/// InputTemplate: pulumi.String("\"<instance> is in state <status>\""),
/// },
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
/// import com.pulumi.aws.cloudwatch.EventTarget;
/// import com.pulumi.aws.cloudwatch.EventTargetArgs;
/// import com.pulumi.aws.cloudwatch.inputs.EventTargetInputTransformerArgs;
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
/// var exampleEventRule = new EventRule("exampleEventRule");
///
/// var example = new EventTarget("example", EventTargetArgs.builder()
/// .arn(exampleAwsLambdaFunction.arn())
/// .rule(exampleEventRule.id())
/// .inputTransformer(EventTargetInputTransformerArgs.builder()
/// .inputPaths(Map.ofEntries(
/// Map.entry("instance", "$.detail.instance"),
/// Map.entry("status", "$.detail.status")
/// ))
/// .inputTemplate("\"<instance> is in state <status>\"")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:cloudwatch:EventTarget
/// properties:
/// arn: ${exampleAwsLambdaFunction.arn}
/// rule: ${exampleEventRule.id}
/// inputTransformer:
/// inputPaths:
/// instance: $.detail.instance
/// status: $.detail.status
/// inputTemplate: '"<instance> is in state <status>"'
/// exampleEventRule:
/// type: aws:cloudwatch:EventRule
/// name: example
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Cloudwatch Log Group Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.cloudwatch.LogGroup("example", {
/// name: "/aws/events/guardduty/logs",
/// retentionInDays: 1,
/// });
/// const exampleEventRule = new aws.cloudwatch.EventRule("example", {
/// name: "guard-duty_event_rule",
/// description: "GuardDuty Findings",
/// eventPattern: JSON.stringify({
/// source: ["aws.guardduty"],
/// }),
/// tags: {
/// Environment: "example",
/// },
/// });
/// const exampleLogPolicy = aws.iam.getPolicyDocumentOutput({
/// statements: [
/// {
/// effect: "Allow",
/// actions: ["logs:CreateLogStream"],
/// resources: [pulumi.interpolate`${example.arn}:*`],
/// principals: [{
/// type: "Service",
/// identifiers: [
/// "events.amazonaws.com",
/// "delivery.logs.amazonaws.com",
/// ],
/// }],
/// },
/// {
/// effect: "Allow",
/// actions: ["logs:PutLogEvents"],
/// resources: [pulumi.interpolate`${example.arn}:*:*`],
/// principals: [{
/// type: "Service",
/// identifiers: [
/// "events.amazonaws.com",
/// "delivery.logs.amazonaws.com",
/// ],
/// }],
/// conditions: [{
/// test: "ArnEquals",
/// values: [exampleEventRule.arn],
/// variable: "aws:SourceArn",
/// }],
/// },
/// ],
/// });
/// const exampleLogResourcePolicy = new aws.cloudwatch.LogResourcePolicy("example", {
/// policyDocument: exampleLogPolicy.apply(exampleLogPolicy => exampleLogPolicy.json),
/// policyName: "guardduty-log-publishing-policy",
/// });
/// const exampleEventTarget = new aws.cloudwatch.EventTarget("example", {
/// rule: exampleEventRule.name,
/// arn: example.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example = aws.cloudwatch.LogGroup("example",
/// name="/aws/events/guardduty/logs",
/// retention_in_days=1)
/// example_event_rule = aws.cloudwatch.EventRule("example",
/// name="guard-duty_event_rule",
/// description="GuardDuty Findings",
/// event_pattern=json.dumps({
/// "source": ["aws.guardduty"],
/// }),
/// tags={
/// "Environment": "example",
/// })
/// example_log_policy = aws.iam.get_policy_document_output(statements=[
/// {
/// "effect": "Allow",
/// "actions": ["logs:CreateLogStream"],
/// "resources": [example.arn.apply(lambda arn: f"{arn}:*")],
/// "principals": [{
/// "type": "Service",
/// "identifiers": [
/// "events.amazonaws.com",
/// "delivery.logs.amazonaws.com",
/// ],
/// }],
/// },
/// {
/// "effect": "Allow",
/// "actions": ["logs:PutLogEvents"],
/// "resources": [example.arn.apply(lambda arn: f"{arn}:*:*")],
/// "principals": [{
/// "type": "Service",
/// "identifiers": [
/// "events.amazonaws.com",
/// "delivery.logs.amazonaws.com",
/// ],
/// }],
/// "conditions": [{
/// "test": "ArnEquals",
/// "values": [example_event_rule.arn],
/// "variable": "aws:SourceArn",
/// }],
/// },
/// ])
/// example_log_resource_policy = aws.cloudwatch.LogResourcePolicy("example",
/// policy_document=example_log_policy.json,
/// policy_name="guardduty-log-publishing-policy")
/// example_event_target = aws.cloudwatch.EventTarget("example",
/// rule=example_event_rule.name,
/// arn=example.arn)
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
/// var example = new Aws.CloudWatch.LogGroup("example", new()
/// {
/// Name = "/aws/events/guardduty/logs",
/// RetentionInDays = 1,
/// });
///
/// var exampleEventRule = new Aws.CloudWatch.EventRule("example", new()
/// {
/// Name = "guard-duty_event_rule",
/// Description = "GuardDuty Findings",
/// EventPattern = JsonSerializer.Serialize(new Dictionary<string, object?>
/// {
/// ["source"] = new[]
/// {
/// "aws.guardduty",
/// },
/// }),
/// Tags =
/// {
/// { "Environment", "example" },
/// },
/// });
///
/// var exampleLogPolicy = Aws.Iam.GetPolicyDocument.Invoke(new()
/// {
/// Statements = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
/// {
/// Effect = "Allow",
/// Actions = new[]
/// {
/// "logs:CreateLogStream",
/// },
/// Resources = new[]
/// {
/// $"{example.Arn}:*",
/// },
/// Principals = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
/// {
/// Type = "Service",
/// Identifiers = new[]
/// {
/// "events.amazonaws.com",
/// "delivery.logs.amazonaws.com",
/// },
/// },
/// },
/// },
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
/// {
/// Effect = "Allow",
/// Actions = new[]
/// {
/// "logs:PutLogEvents",
/// },
/// Resources = new[]
/// {
/// $"{example.Arn}:*:*",
/// },
/// Principals = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
/// {
/// Type = "Service",
/// Identifiers = new[]
/// {
/// "events.amazonaws.com",
/// "delivery.logs.amazonaws.com",
/// },
/// },
/// },
/// Conditions = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementConditionInputArgs
/// {
/// Test = "ArnEquals",
/// Values = new[]
/// {
/// exampleEventRule.Arn,
/// },
/// Variable = "aws:SourceArn",
/// },
/// },
/// },
/// },
/// });
///
/// var exampleLogResourcePolicy = new Aws.CloudWatch.LogResourcePolicy("example", new()
/// {
/// PolicyDocument = exampleLogPolicy.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
/// PolicyName = "guardduty-log-publishing-policy",
/// });
///
/// var exampleEventTarget = new Aws.CloudWatch.EventTarget("example", new()
/// {
/// Rule = exampleEventRule.Name,
/// Arn = example.Arn,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "encoding/json"
/// "fmt"
///
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := cloudwatch.NewLogGroup(ctx, "example", &cloudwatch.LogGroupArgs{
/// Name:            pulumi.String("/aws/events/guardduty/logs"),
/// RetentionInDays: pulumi.Int(1),
/// })
/// if err != nil {
/// return err
/// }
/// tmpJSON0, err := json.Marshal(map[string]interface{}{
/// "source": []string{
/// "aws.guardduty",
/// },
/// })
/// if err != nil {
/// return err
/// }
/// json0 := string(tmpJSON0)
/// exampleEventRule, err := cloudwatch.NewEventRule(ctx, "example", &cloudwatch.EventRuleArgs{
/// Name:         pulumi.String("guard-duty_event_rule"),
/// Description:  pulumi.String("GuardDuty Findings"),
/// EventPattern: pulumi.String(json0),
/// Tags: pulumi.StringMap{
/// "Environment": pulumi.String("example"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// exampleLogPolicy := iam.GetPolicyDocumentOutput(ctx, iam.GetPolicyDocumentOutputArgs{
/// Statements: iam.GetPolicyDocumentStatementArray{
/// &iam.GetPolicyDocumentStatementArgs{
/// Effect: pulumi.String("Allow"),
/// Actions: pulumi.StringArray{
/// pulumi.String("logs:CreateLogStream"),
/// },
/// Resources: pulumi.StringArray{
/// example.Arn.ApplyT(func(arn string) (string, error) {
/// return fmt.Sprintf("%v:*", arn), nil
/// }).(pulumi.StringOutput),
/// },
/// Principals: iam.GetPolicyDocumentStatementPrincipalArray{
/// &iam.GetPolicyDocumentStatementPrincipalArgs{
/// Type: pulumi.String("Service"),
/// Identifiers: pulumi.StringArray{
/// pulumi.String("events.amazonaws.com"),
/// pulumi.String("delivery.logs.amazonaws.com"),
/// },
/// },
/// },
/// },
/// &iam.GetPolicyDocumentStatementArgs{
/// Effect: pulumi.String("Allow"),
/// Actions: pulumi.StringArray{
/// pulumi.String("logs:PutLogEvents"),
/// },
/// Resources: pulumi.StringArray{
/// example.Arn.ApplyT(func(arn string) (string, error) {
/// return fmt.Sprintf("%v:*:*", arn), nil
/// }).(pulumi.StringOutput),
/// },
/// Principals: iam.GetPolicyDocumentStatementPrincipalArray{
/// &iam.GetPolicyDocumentStatementPrincipalArgs{
/// Type: pulumi.String("Service"),
/// Identifiers: pulumi.StringArray{
/// pulumi.String("events.amazonaws.com"),
/// pulumi.String("delivery.logs.amazonaws.com"),
/// },
/// },
/// },
/// Conditions: iam.GetPolicyDocumentStatementConditionArray{
/// &iam.GetPolicyDocumentStatementConditionArgs{
/// Test: pulumi.String("ArnEquals"),
/// Values: pulumi.StringArray{
/// exampleEventRule.Arn,
/// },
/// Variable: pulumi.String("aws:SourceArn"),
/// },
/// },
/// },
/// },
/// }, nil)
/// _, err = cloudwatch.NewLogResourcePolicy(ctx, "example", &cloudwatch.LogResourcePolicyArgs{
/// PolicyDocument: pulumi.String(exampleLogPolicy.ApplyT(func(exampleLogPolicy iam.GetPolicyDocumentResult) (*string, error) {
/// return &exampleLogPolicy.Json, nil
/// }).(pulumi.StringPtrOutput)),
/// PolicyName: pulumi.String("guardduty-log-publishing-policy"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = cloudwatch.NewEventTarget(ctx, "example", &cloudwatch.EventTargetArgs{
/// Rule: exampleEventRule.Name,
/// Arn:  example.Arn,
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
/// import com.pulumi.aws.cloudwatch.LogGroup;
/// import com.pulumi.aws.cloudwatch.LogGroupArgs;
/// import com.pulumi.aws.cloudwatch.EventRule;
/// import com.pulumi.aws.cloudwatch.EventRuleArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.cloudwatch.LogResourcePolicy;
/// import com.pulumi.aws.cloudwatch.LogResourcePolicyArgs;
/// import com.pulumi.aws.cloudwatch.EventTarget;
/// import com.pulumi.aws.cloudwatch.EventTargetArgs;
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
/// var example = new LogGroup("example", LogGroupArgs.builder()
/// .name("/aws/events/guardduty/logs")
/// .retentionInDays(1)
/// .build());
///
/// var exampleEventRule = new EventRule("exampleEventRule", EventRuleArgs.builder()
/// .name("guard-duty_event_rule")
/// .description("GuardDuty Findings")
/// .eventPattern(serializeJson(
/// jsonObject(
/// jsonProperty("source", jsonArray("aws.guardduty"))
/// )))
/// .tags(Map.of("Environment", "example"))
/// .build());
///
/// final var exampleLogPolicy = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
/// .statements(
/// GetPolicyDocumentStatementArgs.builder()
/// .effect("Allow")
/// .actions("logs:CreateLogStream")
/// .resources(example.arn().applyValue(_arn -> String.format("%s:*", _arn)))
/// .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
/// .type("Service")
/// .identifiers(
/// "events.amazonaws.com",
/// "delivery.logs.amazonaws.com")
/// .build())
/// .build(),
/// GetPolicyDocumentStatementArgs.builder()
/// .effect("Allow")
/// .actions("logs:PutLogEvents")
/// .resources(example.arn().applyValue(_arn -> String.format("%s:*:*", _arn)))
/// .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
/// .type("Service")
/// .identifiers(
/// "events.amazonaws.com",
/// "delivery.logs.amazonaws.com")
/// .build())
/// .conditions(GetPolicyDocumentStatementConditionArgs.builder()
/// .test("ArnEquals")
/// .values(exampleEventRule.arn())
/// .variable("aws:SourceArn")
/// .build())
/// .build())
/// .build());
///
/// var exampleLogResourcePolicy = new LogResourcePolicy("exampleLogResourcePolicy", LogResourcePolicyArgs.builder()
/// .policyDocument(exampleLogPolicy.applyValue(_exampleLogPolicy -> _exampleLogPolicy.json()))
/// .policyName("guardduty-log-publishing-policy")
/// .build());
///
/// var exampleEventTarget = new EventTarget("exampleEventTarget", EventTargetArgs.builder()
/// .rule(exampleEventRule.name())
/// .arn(example.arn())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:cloudwatch:LogGroup
/// properties:
/// name: /aws/events/guardduty/logs
/// retentionInDays: 1
/// exampleLogResourcePolicy:
/// type: aws:cloudwatch:LogResourcePolicy
/// name: example
/// properties:
/// policyDocument: ${exampleLogPolicy.json}
/// policyName: guardduty-log-publishing-policy
/// exampleEventRule:
/// type: aws:cloudwatch:EventRule
/// name: example
/// properties:
/// name: guard-duty_event_rule
/// description: GuardDuty Findings
/// eventPattern:
/// fn::toJSON:
/// source:
/// - aws.guardduty
/// tags:
/// Environment: example
/// exampleEventTarget:
/// type: aws:cloudwatch:EventTarget
/// name: example
/// properties:
/// rule: ${exampleEventRule.name}
/// arn: ${example.arn}
/// variables:
/// exampleLogPolicy:
/// fn::invoke:
/// function: aws:iam:getPolicyDocument
/// arguments:
/// statements:
/// - effect: Allow
/// actions:
/// - logs:CreateLogStream
/// resources:
/// - ${example.arn}:*
/// principals:
/// - type: Service
/// identifiers:
/// - events.amazonaws.com
/// - delivery.logs.amazonaws.com
/// - effect: Allow
/// actions:
/// - logs:PutLogEvents
/// resources:
/// - ${example.arn}:*:*
/// principals:
/// - type: Service
/// identifiers:
/// - events.amazonaws.com
/// - delivery.logs.amazonaws.com
/// conditions:
/// - test: ArnEquals
/// values:
/// - ${exampleEventRule.arn}
/// variable: aws:SourceArn
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### AppSync Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// const invokeAppsyncMutation = new aws.cloudwatch.EventRule("invoke_appsync_mutation", {
/// name: "invoke-appsync-mutation",
/// description: "schedule_batch_test",
/// scheduleExpression: "rate(5 minutes)",
/// });
/// const appsyncMutationRoleTrust = aws.iam.getPolicyDocument({
/// statements: [{
/// actions: ["sts:AssumeRole"],
/// principals: [{
/// type: "Service",
/// identifiers: ["events.amazonaws.com"],
/// }],
/// }],
/// });
/// const appsyncMutationRole = new aws.iam.Role("appsync_mutation_role", {
/// name: "appsync-mutation-role",
/// assumeRolePolicy: appsyncMutationRoleTrust.then(appsyncMutationRoleTrust => appsyncMutationRoleTrust.json),
/// });
/// const graphql_api = new aws.appsync.GraphQLApi("graphql-api", {
/// name: "api",
/// authenticationType: "AWS_IAM",
/// schema: `    schema {
/// mutation: Mutation
/// query: Query
/// }
///
/// type Query {
/// testQuery: String
/// }
///
/// type Mutation {
/// testMutation(input: MutationInput!): TestMutationResult
/// }
///
/// type TestMutationResult {
/// test: String
/// }
///
/// input MutationInput {
/// testInput: String
/// }
/// `,
/// });
/// const invokeAppsyncMutationEventTarget = new aws.cloudwatch.EventTarget("invoke_appsync_mutation", {
/// arn: std.replaceOutput({
/// text: graphql_api.arn,
/// search: "apis",
/// replace: "endpoints/graphql-api",
/// }).apply(invoke => invoke.result),
/// rule: invokeAppsyncMutation.id,
/// roleArn: appsyncMutationRole.arn,
/// inputTransformer: {
/// inputPaths: {
/// input: "$.detail.input",
/// },
/// inputTemplate: `      {
/// \\"input\\": <input>
/// }
/// `,
/// },
/// appsyncTarget: {
/// graphqlOperation: "mutation TestMutation($input:MutationInput!){testMutation(input: $input) {test}}",
/// },
/// });
/// const appsyncMutationRolePolicyDocument = aws.iam.getPolicyDocumentOutput({
/// statements: [{
/// actions: ["appsync:GraphQL"],
/// effect: "Allow",
/// resources: [graphql_api.arn],
/// }],
/// });
/// const appsyncMutationRolePolicy = new aws.iam.Policy("appsync_mutation_role_policy", {
/// name: "appsync-mutation-role-policy",
/// policy: appsyncMutationRolePolicyDocument.apply(appsyncMutationRolePolicyDocument => appsyncMutationRolePolicyDocument.json),
/// });
/// const appsyncMutationRoleAttachment = new aws.iam.RolePolicyAttachment("appsync_mutation_role_attachment", {
/// policyArn: appsyncMutationRolePolicy.arn,
/// role: appsyncMutationRole.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// invoke_appsync_mutation = aws.cloudwatch.EventRule("invoke_appsync_mutation",
/// name="invoke-appsync-mutation",
/// description="schedule_batch_test",
/// schedule_expression="rate(5 minutes)")
/// appsync_mutation_role_trust = aws.iam.get_policy_document(statements=[{
/// "actions": ["sts:AssumeRole"],
/// "principals": [{
/// "type": "Service",
/// "identifiers": ["events.amazonaws.com"],
/// }],
/// }])
/// appsync_mutation_role = aws.iam.Role("appsync_mutation_role",
/// name="appsync-mutation-role",
/// assume_role_policy=appsync_mutation_role_trust.json)
/// graphql_api = aws.appsync.GraphQLApi("graphql-api",
/// name="api",
/// authentication_type="AWS_IAM",
/// schema="""    schema {
/// mutation: Mutation
/// query: Query
/// }
///
/// type Query {
/// testQuery: String
/// }
///
/// type Mutation {
/// testMutation(input: MutationInput!): TestMutationResult
/// }
///
/// type TestMutationResult {
/// test: String
/// }
///
/// input MutationInput {
/// testInput: String
/// }
/// """)
/// invoke_appsync_mutation_event_target = aws.cloudwatch.EventTarget("invoke_appsync_mutation",
/// arn=std.replace_output(text=graphql_api.arn,
/// search="apis",
/// replace="endpoints/graphql-api").apply(lambda invoke: invoke.result),
/// rule=invoke_appsync_mutation.id,
/// role_arn=appsync_mutation_role.arn,
/// input_transformer={
/// "input_paths": {
/// "input": "$.detail.input",
/// },
/// "input_template": """      {
/// \"input\": <input>
/// }
/// """,
/// },
/// appsync_target={
/// "graphql_operation": "mutation TestMutation($input:MutationInput!){testMutation(input: $input) {test}}",
/// })
/// appsync_mutation_role_policy_document = aws.iam.get_policy_document_output(statements=[{
/// "actions": ["appsync:GraphQL"],
/// "effect": "Allow",
/// "resources": [graphql_api.arn],
/// }])
/// appsync_mutation_role_policy = aws.iam.Policy("appsync_mutation_role_policy",
/// name="appsync-mutation-role-policy",
/// policy=appsync_mutation_role_policy_document.json)
/// appsync_mutation_role_attachment = aws.iam.RolePolicyAttachment("appsync_mutation_role_attachment",
/// policy_arn=appsync_mutation_role_policy.arn,
/// role=appsync_mutation_role.name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var invokeAppsyncMutation = new Aws.CloudWatch.EventRule("invoke_appsync_mutation", new()
/// {
/// Name = "invoke-appsync-mutation",
/// Description = "schedule_batch_test",
/// ScheduleExpression = "rate(5 minutes)",
/// });
///
/// var appsyncMutationRoleTrust = Aws.Iam.GetPolicyDocument.Invoke(new()
/// {
/// Statements = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
/// {
/// Actions = new[]
/// {
/// "sts:AssumeRole",
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
/// },
/// },
/// });
///
/// var appsyncMutationRole = new Aws.Iam.Role("appsync_mutation_role", new()
/// {
/// Name = "appsync-mutation-role",
/// AssumeRolePolicy = appsyncMutationRoleTrust.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
/// });
///
/// var graphql_api = new Aws.AppSync.GraphQLApi("graphql-api", new()
/// {
/// Name = "api",
/// AuthenticationType = "AWS_IAM",
/// Schema = @"    schema {
/// mutation: Mutation
/// query: Query
/// }
///
/// type Query {
/// testQuery: String
/// }
///
/// type Mutation {
/// testMutation(input: MutationInput!): TestMutationResult
/// }
///
/// type TestMutationResult {
/// test: String
/// }
///
/// input MutationInput {
/// testInput: String
/// }
/// ",
/// });
///
/// var invokeAppsyncMutationEventTarget = new Aws.CloudWatch.EventTarget("invoke_appsync_mutation", new()
/// {
/// Arn = Std.Replace.Invoke(new()
/// {
/// Text = graphql_api.Arn,
/// Search = "apis",
/// Replace = "endpoints/graphql-api",
/// }).Apply(invoke => invoke.Result),
/// Rule = invokeAppsyncMutation.Id,
/// RoleArn = appsyncMutationRole.Arn,
/// InputTransformer = new Aws.CloudWatch.Inputs.EventTargetInputTransformerArgs
/// {
/// InputPaths =
/// {
/// { "input", "$.detail.input" },
/// },
/// InputTemplate = @"      {
/// \""input\"": <input>
/// }
/// ",
/// },
/// AppsyncTarget = new Aws.CloudWatch.Inputs.EventTargetAppsyncTargetArgs
/// {
/// GraphqlOperation = "mutation TestMutation($input:MutationInput!){testMutation(input: $input) {test}}",
/// },
/// });
///
/// var appsyncMutationRolePolicyDocument = Aws.Iam.GetPolicyDocument.Invoke(new()
/// {
/// Statements = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
/// {
/// Actions = new[]
/// {
/// "appsync:GraphQL",
/// },
/// Effect = "Allow",
/// Resources = new[]
/// {
/// graphql_api.Arn,
/// },
/// },
/// },
/// });
///
/// var appsyncMutationRolePolicy = new Aws.Iam.Policy("appsync_mutation_role_policy", new()
/// {
/// Name = "appsync-mutation-role-policy",
/// PolicyDocument = appsyncMutationRolePolicyDocument.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
/// });
///
/// var appsyncMutationRoleAttachment = new Aws.Iam.RolePolicyAttachment("appsync_mutation_role_attachment", new()
/// {
/// PolicyArn = appsyncMutationRolePolicy.Arn,
/// Role = appsyncMutationRole.Name,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/appsync"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// "github.com/pulumi/pulumi-std/sdk/go/std"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// invokeAppsyncMutation, err := cloudwatch.NewEventRule(ctx, "invoke_appsync_mutation", &cloudwatch.EventRuleArgs{
/// Name:               pulumi.String("invoke-appsync-mutation"),
/// Description:        pulumi.String("schedule_batch_test"),
/// ScheduleExpression: pulumi.String("rate(5 minutes)"),
/// })
/// if err != nil {
/// return err
/// }
/// appsyncMutationRoleTrust, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// Statements: []iam.GetPolicyDocumentStatement{
/// {
/// Actions: []string{
/// "sts:AssumeRole",
/// },
/// Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// {
/// Type: "Service",
/// Identifiers: []string{
/// "events.amazonaws.com",
/// },
/// },
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// appsyncMutationRole, err := iam.NewRole(ctx, "appsync_mutation_role", &iam.RoleArgs{
/// Name:             pulumi.String("appsync-mutation-role"),
/// AssumeRolePolicy: pulumi.String(appsyncMutationRoleTrust.Json),
/// })
/// if err != nil {
/// return err
/// }
/// graphql_api, err := appsync.NewGraphQLApi(ctx, "graphql-api", &appsync.GraphQLApiArgs{
/// Name:               pulumi.String("api"),
/// AuthenticationType: pulumi.String("AWS_IAM"),
/// Schema: pulumi.String(`    schema {
/// mutation: Mutation
/// query: Query
/// }
///
/// type Query {
/// testQuery: String
/// }
///
/// type Mutation {
/// testMutation(input: MutationInput!): TestMutationResult
/// }
///
/// type TestMutationResult {
/// test: String
/// }
///
/// input MutationInput {
/// testInput: String
/// }
/// `),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = cloudwatch.NewEventTarget(ctx, "invoke_appsync_mutation", &cloudwatch.EventTargetArgs{
/// Arn: pulumi.String(std.ReplaceOutput(ctx, std.ReplaceOutputArgs{
/// Text:    graphql_api.Arn,
/// Search:  pulumi.String("apis"),
/// Replace: pulumi.String("endpoints/graphql-api"),
/// }, nil).ApplyT(func(invoke std.ReplaceResult) (*string, error) {
/// return invoke.Result, nil
/// }).(pulumi.StringPtrOutput)),
/// Rule:    invokeAppsyncMutation.ID(),
/// RoleArn: appsyncMutationRole.Arn,
/// InputTransformer: &cloudwatch.EventTargetInputTransformerArgs{
/// InputPaths: pulumi.StringMap{
/// "input": pulumi.String("$.detail.input"),
/// },
/// InputTemplate: pulumi.String("      {\n        \\\"input\\\": <input>\n      }\n"),
/// },
/// AppsyncTarget: &cloudwatch.EventTargetAppsyncTargetArgs{
/// GraphqlOperation: pulumi.String("mutation TestMutation($input:MutationInput!){testMutation(input: $input) {test}}"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// appsyncMutationRolePolicyDocument := iam.GetPolicyDocumentOutput(ctx, iam.GetPolicyDocumentOutputArgs{
/// Statements: iam.GetPolicyDocumentStatementArray{
/// &iam.GetPolicyDocumentStatementArgs{
/// Actions: pulumi.StringArray{
/// pulumi.String("appsync:GraphQL"),
/// },
/// Effect: pulumi.String("Allow"),
/// Resources: pulumi.StringArray{
/// graphql_api.Arn,
/// },
/// },
/// },
/// }, nil)
/// appsyncMutationRolePolicy, err := iam.NewPolicy(ctx, "appsync_mutation_role_policy", &iam.PolicyArgs{
/// Name: pulumi.String("appsync-mutation-role-policy"),
/// Policy: pulumi.String(appsyncMutationRolePolicyDocument.ApplyT(func(appsyncMutationRolePolicyDocument iam.GetPolicyDocumentResult) (*string, error) {
/// return &appsyncMutationRolePolicyDocument.Json, nil
/// }).(pulumi.StringPtrOutput)),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = iam.NewRolePolicyAttachment(ctx, "appsync_mutation_role_attachment", &iam.RolePolicyAttachmentArgs{
/// PolicyArn: appsyncMutationRolePolicy.Arn,
/// Role:      appsyncMutationRole.Name,
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
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.appsync.GraphQLApi;
/// import com.pulumi.aws.appsync.GraphQLApiArgs;
/// import com.pulumi.aws.cloudwatch.EventTarget;
/// import com.pulumi.aws.cloudwatch.EventTargetArgs;
/// import com.pulumi.aws.cloudwatch.inputs.EventTargetInputTransformerArgs;
/// import com.pulumi.aws.cloudwatch.inputs.EventTargetAppsyncTargetArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.ReplaceArgs;
/// import com.pulumi.aws.iam.Policy;
/// import com.pulumi.aws.iam.PolicyArgs;
/// import com.pulumi.aws.iam.RolePolicyAttachment;
/// import com.pulumi.aws.iam.RolePolicyAttachmentArgs;
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
/// var invokeAppsyncMutation = new EventRule("invokeAppsyncMutation", EventRuleArgs.builder()
/// .name("invoke-appsync-mutation")
/// .description("schedule_batch_test")
/// .scheduleExpression("rate(5 minutes)")
/// .build());
///
/// final var appsyncMutationRoleTrust = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
/// .statements(GetPolicyDocumentStatementArgs.builder()
/// .actions("sts:AssumeRole")
/// .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
/// .type("Service")
/// .identifiers("events.amazonaws.com")
/// .build())
/// .build())
/// .build());
///
/// var appsyncMutationRole = new Role("appsyncMutationRole", RoleArgs.builder()
/// .name("appsync-mutation-role")
/// .assumeRolePolicy(appsyncMutationRoleTrust.json())
/// .build());
///
/// var graphql_api = new GraphQLApi("graphql-api", GraphQLApiArgs.builder()
/// .name("api")
/// .authenticationType("AWS_IAM")
/// .schema("""
/// schema {
/// mutation: Mutation
/// query: Query
/// }
///
/// type Query {
/// testQuery: String
/// }
///
/// type Mutation {
/// testMutation(input: MutationInput!): TestMutationResult
/// }
///
/// type TestMutationResult {
/// test: String
/// }
///
/// input MutationInput {
/// testInput: String
/// }
/// """)
/// .build());
///
/// var invokeAppsyncMutationEventTarget = new EventTarget("invokeAppsyncMutationEventTarget", EventTargetArgs.builder()
/// .arn(StdFunctions.replace(ReplaceArgs.builder()
/// .text(graphql_api.arn())
/// .search("apis")
/// .replace("endpoints/graphql-api")
/// .build()).applyValue(_invoke -> _invoke.result()))
/// .rule(invokeAppsyncMutation.id())
/// .roleArn(appsyncMutationRole.arn())
/// .inputTransformer(EventTargetInputTransformerArgs.builder()
/// .inputPaths(Map.of("input", "$.detail.input"))
/// .inputTemplate("""
/// {
/// \"input\": <input>
/// }
/// """)
/// .build())
/// .appsyncTarget(EventTargetAppsyncTargetArgs.builder()
/// .graphqlOperation("mutation TestMutation($input:MutationInput!){testMutation(input: $input) {test}}")
/// .build())
/// .build());
///
/// final var appsyncMutationRolePolicyDocument = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
/// .statements(GetPolicyDocumentStatementArgs.builder()
/// .actions("appsync:GraphQL")
/// .effect("Allow")
/// .resources(graphql_api.arn())
/// .build())
/// .build());
///
/// var appsyncMutationRolePolicy = new Policy("appsyncMutationRolePolicy", PolicyArgs.builder()
/// .name("appsync-mutation-role-policy")
/// .policy(appsyncMutationRolePolicyDocument.applyValue(_appsyncMutationRolePolicyDocument -> _appsyncMutationRolePolicyDocument.json()))
/// .build());
///
/// var appsyncMutationRoleAttachment = new RolePolicyAttachment("appsyncMutationRoleAttachment", RolePolicyAttachmentArgs.builder()
/// .policyArn(appsyncMutationRolePolicy.arn())
/// .role(appsyncMutationRole.name())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// invokeAppsyncMutation:
/// type: aws:cloudwatch:EventRule
/// name: invoke_appsync_mutation
/// properties:
/// name: invoke-appsync-mutation
/// description: schedule_batch_test
/// scheduleExpression: rate(5 minutes)
/// invokeAppsyncMutationEventTarget:
/// type: aws:cloudwatch:EventTarget
/// name: invoke_appsync_mutation
/// properties:
/// arn:
/// fn::invoke:
/// function: std:replace
/// arguments:
/// text: ${["graphql-api"].arn}
/// search: apis
/// replace: endpoints/graphql-api
/// return: result
/// rule: ${invokeAppsyncMutation.id}
/// roleArn: ${appsyncMutationRole.arn}
/// inputTransformer:
/// inputPaths:
/// input: $.detail.input
/// inputTemplate: |2
/// {
/// \"input\": <input>
/// }
/// appsyncTarget:
/// graphqlOperation: 'mutation TestMutation($input:MutationInput!){testMutation(input: $input) {test}}'
/// appsyncMutationRole:
/// type: aws:iam:Role
/// name: appsync_mutation_role
/// properties:
/// name: appsync-mutation-role
/// assumeRolePolicy: ${appsyncMutationRoleTrust.json}
/// appsyncMutationRolePolicy:
/// type: aws:iam:Policy
/// name: appsync_mutation_role_policy
/// properties:
/// name: appsync-mutation-role-policy
/// policy: ${appsyncMutationRolePolicyDocument.json}
/// appsyncMutationRoleAttachment:
/// type: aws:iam:RolePolicyAttachment
/// name: appsync_mutation_role_attachment
/// properties:
/// policyArn: ${appsyncMutationRolePolicy.arn}
/// role: ${appsyncMutationRole.name}
/// graphql-api:
/// type: aws:appsync:GraphQLApi
/// properties:
/// name: api
/// authenticationType: AWS_IAM
/// schema: |2
/// schema {
/// mutation: Mutation
/// query: Query
/// }
///
/// type Query {
/// testQuery: String
/// }
///
/// type Mutation {
/// testMutation(input: MutationInput!): TestMutationResult
/// }
///
/// type TestMutationResult {
/// test: String
/// }
///
/// input MutationInput {
/// testInput: String
/// }
/// variables:
/// appsyncMutationRoleTrust:
/// fn::invoke:
/// function: aws:iam:getPolicyDocument
/// arguments:
/// statements:
/// - actions:
/// - sts:AssumeRole
/// principals:
/// - type: Service
/// identifiers:
/// - events.amazonaws.com
/// appsyncMutationRolePolicyDocument:
/// fn::invoke:
/// function: aws:iam:getPolicyDocument
/// arguments:
/// statements:
/// - actions:
/// - appsync:GraphQL
/// effect: Allow
/// resources:
/// - ${["graphql-api"].arn}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * <span pulumi-lang-nodejs="`eventBusName`" pulumi-lang-dotnet="`EventBusName`" pulumi-lang-go="`eventBusName`" pulumi-lang-python="`event_bus_name`" pulumi-lang-yaml="`eventBusName`" pulumi-lang-java="`eventBusName`">`event_bus_name`</span> (String) Event bus name for the target.
/// * <span pulumi-lang-nodejs="`rule`" pulumi-lang-dotnet="`Rule`" pulumi-lang-go="`rule`" pulumi-lang-python="`rule`" pulumi-lang-yaml="`rule`" pulumi-lang-java="`rule`">`rule`</span> (String) Rule name for the target.
/// * <span pulumi-lang-nodejs="`targetId`" pulumi-lang-dotnet="`TargetId`" pulumi-lang-go="`targetId`" pulumi-lang-python="`target_id`" pulumi-lang-yaml="`targetId`" pulumi-lang-java="`targetId`">`target_id`</span> (String) Target ID.
///
/// #### Optional
///
/// * <span pulumi-lang-nodejs="`accountId`" pulumi-lang-dotnet="`AccountId`" pulumi-lang-go="`accountId`" pulumi-lang-python="`account_id`" pulumi-lang-yaml="`accountId`" pulumi-lang-java="`accountId`">`account_id`</span> (String) AWS Account where this resource is managed.
/// * <span pulumi-lang-nodejs="`region`" pulumi-lang-dotnet="`Region`" pulumi-lang-go="`region`" pulumi-lang-python="`region`" pulumi-lang-yaml="`region`" pulumi-lang-java="`region`">`region`</span> (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import EventBridge Targets using `event_bus_name/rule-name/target-id` (if you omit <span pulumi-lang-nodejs="`eventBusName`" pulumi-lang-dotnet="`EventBusName`" pulumi-lang-go="`eventBusName`" pulumi-lang-python="`event_bus_name`" pulumi-lang-yaml="`eventBusName`" pulumi-lang-java="`eventBusName`">`event_bus_name`</span>, the <span pulumi-lang-nodejs="`default`" pulumi-lang-dotnet="`Default`" pulumi-lang-go="`default`" pulumi-lang-python="`default`" pulumi-lang-yaml="`default`" pulumi-lang-java="`default`">`default`</span> event bus will be used). For example:
///
/// ```sh
/// $ pulumi import aws:cloudwatch/eventTarget:EventTarget example rule-name/target-id
/// ```
class EventTarget extends CustomResource {
  /// Parameters used when you are using the rule to invoke an AppSync GraphQL API mutation. Documented below. A maximum of 1 are allowed.
  late final Output<EventTargetAppsyncTarget?> appsyncTarget;

  /// The Amazon Resource Name (ARN) of the target.
  late final Output<String> arn;

  /// Parameters used when you are using the rule to invoke an Amazon Batch Job. Documented below. A maximum of 1 are allowed.
  late final Output<EventTargetBatchTarget?> batchTarget;

  /// Parameters used when you are providing a dead letter config. Documented below. A maximum of 1 are allowed.
  late final Output<EventTargetDeadLetterConfig?> deadLetterConfig;

  /// Parameters used when you are using the rule to invoke Amazon ECS Task. Documented below. A maximum of 1 are allowed.
  late final Output<EventTargetEcsTarget?> ecsTarget;

  /// The name or ARN of the event bus to associate with the rule.
  /// If you omit this, the <span pulumi-lang-nodejs="`default`" pulumi-lang-dotnet="`Default`" pulumi-lang-go="`default`" pulumi-lang-python="`default`" pulumi-lang-yaml="`default`" pulumi-lang-java="`default`">`default`</span> event bus is used.
  late final Output<String?> eventBusName;

  /// Used to delete managed rules created by AWS. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  late final Output<bool?> forceDestroy;

  /// Parameters used when you are using the rule to invoke an API Gateway REST endpoint. Documented below. A maximum of 1 is allowed.
  late final Output<EventTargetHttpTarget?> httpTarget;

  /// Valid JSON text passed to the target. Conflicts with <span pulumi-lang-nodejs="`inputPath`" pulumi-lang-dotnet="`InputPath`" pulumi-lang-go="`inputPath`" pulumi-lang-python="`input_path`" pulumi-lang-yaml="`inputPath`" pulumi-lang-java="`inputPath`">`input_path`</span> and <span pulumi-lang-nodejs="`inputTransformer`" pulumi-lang-dotnet="`InputTransformer`" pulumi-lang-go="`inputTransformer`" pulumi-lang-python="`input_transformer`" pulumi-lang-yaml="`inputTransformer`" pulumi-lang-java="`inputTransformer`">`input_transformer`</span>.
  late final Output<String?> input;

  /// The value of the [JSONPath](http://goessner.net/articles/JsonPath/) that is used for extracting part of the matched event when passing it to the target. Conflicts with <span pulumi-lang-nodejs="`input`" pulumi-lang-dotnet="`Input`" pulumi-lang-go="`input`" pulumi-lang-python="`input`" pulumi-lang-yaml="`input`" pulumi-lang-java="`input`">`input`</span> and <span pulumi-lang-nodejs="`inputTransformer`" pulumi-lang-dotnet="`InputTransformer`" pulumi-lang-go="`inputTransformer`" pulumi-lang-python="`input_transformer`" pulumi-lang-yaml="`inputTransformer`" pulumi-lang-java="`inputTransformer`">`input_transformer`</span>.
  late final Output<String?> inputPath;

  /// Parameters used when you are providing a custom input to a target based on certain event data. Conflicts with <span pulumi-lang-nodejs="`input`" pulumi-lang-dotnet="`Input`" pulumi-lang-go="`input`" pulumi-lang-python="`input`" pulumi-lang-yaml="`input`" pulumi-lang-java="`input`">`input`</span> and <span pulumi-lang-nodejs="`inputPath`" pulumi-lang-dotnet="`InputPath`" pulumi-lang-go="`inputPath`" pulumi-lang-python="`input_path`" pulumi-lang-yaml="`inputPath`" pulumi-lang-java="`inputPath`">`input_path`</span>.
  late final Output<EventTargetInputTransformer?> inputTransformer;

  /// Parameters used when you are using the rule to invoke an Amazon Kinesis Stream. Documented below. A maximum of 1 are allowed.
  late final Output<EventTargetKinesisTarget?> kinesisTarget;

  /// Parameters used when you are using the rule to invoke an Amazon Redshift Statement. Documented below. A maximum of 1 are allowed.
  late final Output<EventTargetRedshiftTarget?> redshiftTarget;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Parameters used when you are providing retry policies. Documented below. A maximum of 1 are allowed.
  late final Output<EventTargetRetryPolicy?> retryPolicy;

  /// The Amazon Resource Name (ARN) of the IAM role to be used for this target when the rule is triggered. Required if <span pulumi-lang-nodejs="`ecsTarget`" pulumi-lang-dotnet="`EcsTarget`" pulumi-lang-go="`ecsTarget`" pulumi-lang-python="`ecs_target`" pulumi-lang-yaml="`ecsTarget`" pulumi-lang-java="`ecsTarget`">`ecs_target`</span> is used or target in <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span> is EC2 instance, Kinesis data stream, Step Functions state machine, or Event Bus in different account or region.
  late final Output<String?> roleArn;

  /// The name of the rule you want to add targets to.
  ///
  /// The following arguments are optional:
  late final Output<String> rule;

  /// Parameters used when you are using the rule to invoke Amazon EC2 Run Command. Documented below. A maximum of 5 are allowed.
  late final Output<List<EventTargetRunCommandTarget>?> runCommandTargets;

  /// Parameters used when you are using the rule to invoke an Amazon SageMaker AI Pipeline. Documented below. A maximum of 1 are allowed.
  late final Output<EventTargetSagemakerPipelineTarget?>
      sagemakerPipelineTarget;

  /// Parameters used when you are using the rule to invoke an Amazon SQS Queue. Documented below. A maximum of 1 are allowed.
  late final Output<EventTargetSqsTarget?> sqsTarget;

  /// The unique target assignment ID. If missing, will generate a random, unique id.
  late final Output<String> targetId;

  EventTarget(
    String name, {
    EventTargetArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatch/eventTarget:EventTarget',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.appsyncTarget = Output.createUnknown<EventTargetAppsyncTarget?>();
    this.arn = Output.createUnknown<String>();
    this.batchTarget = Output.createUnknown<EventTargetBatchTarget?>();
    this.deadLetterConfig =
        Output.createUnknown<EventTargetDeadLetterConfig?>();
    this.ecsTarget = Output.createUnknown<EventTargetEcsTarget?>();
    this.eventBusName = Output.createUnknown<String?>();
    this.forceDestroy = Output.createUnknown<bool?>();
    this.httpTarget = Output.createUnknown<EventTargetHttpTarget?>();
    this.input = Output.createUnknown<String?>();
    this.inputPath = Output.createUnknown<String?>();
    this.inputTransformer =
        Output.createUnknown<EventTargetInputTransformer?>();
    this.kinesisTarget = Output.createUnknown<EventTargetKinesisTarget?>();
    this.redshiftTarget = Output.createUnknown<EventTargetRedshiftTarget?>();
    this.region = Output.createUnknown<String>();
    this.retryPolicy = Output.createUnknown<EventTargetRetryPolicy?>();
    this.roleArn = Output.createUnknown<String?>();
    this.rule = Output.createUnknown<String>();
    this.runCommandTargets =
        Output.createUnknown<List<EventTargetRunCommandTarget>?>();
    this.sagemakerPipelineTarget =
        Output.createUnknown<EventTargetSagemakerPipelineTarget?>();
    this.sqsTarget = Output.createUnknown<EventTargetSqsTarget?>();
    this.targetId = Output.createUnknown<String>();
  }
}
