import 'package:pulumi/pulumi.dart';
import 'event_stream_args.dart';

/// Provides a Pinpoint Event Stream resource.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const app = new aws.pinpoint.App("app", {});
/// const testStream = new aws.kinesis.Stream("test_stream", {
/// name: "pinpoint-kinesis-test",
/// shardCount: 1,
/// });
/// const assumeRole = aws.iam.getPolicyDocument({
/// statements: [{
/// effect: "Allow",
/// principals: [{
/// type: "Service",
/// identifiers: ["pinpoint.us-east-1.amazonaws.com"],
/// }],
/// actions: ["sts:AssumeRole"],
/// }],
/// });
/// const testRole = new aws.iam.Role("test_role", {assumeRolePolicy: assumeRole.then(assumeRole => assumeRole.json)});
/// const stream = new aws.pinpoint.EventStream("stream", {
/// applicationId: app.applicationId,
/// destinationStreamArn: testStream.arn,
/// roleArn: testRole.arn,
/// });
/// const testRolePolicy = aws.iam.getPolicyDocument({
/// statements: [{
/// effect: "Allow",
/// actions: [
/// "kinesis:PutRecords",
/// "kinesis:DescribeStream",
/// ],
/// resources: ["arn:aws:kinesis:us-east-1:*:*/*"],
/// }],
/// });
/// const testRolePolicyRolePolicy = new aws.iam.RolePolicy("test_role_policy", {
/// name: "test_policy",
/// role: testRole.id,
/// policy: testRolePolicy.then(testRolePolicy => testRolePolicy.json),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// app = aws.pinpoint.App("app")
/// test_stream = aws.kinesis.Stream("test_stream",
/// name="pinpoint-kinesis-test",
/// shard_count=1)
/// assume_role = aws.iam.get_policy_document(statements=[{
/// "effect": "Allow",
/// "principals": [{
/// "type": "Service",
/// "identifiers": ["pinpoint.us-east-1.amazonaws.com"],
/// }],
/// "actions": ["sts:AssumeRole"],
/// }])
/// test_role = aws.iam.Role("test_role", assume_role_policy=assume_role.json)
/// stream = aws.pinpoint.EventStream("stream",
/// application_id=app.application_id,
/// destination_stream_arn=test_stream.arn,
/// role_arn=test_role.arn)
/// test_role_policy = aws.iam.get_policy_document(statements=[{
/// "effect": "Allow",
/// "actions": [
/// "kinesis:PutRecords",
/// "kinesis:DescribeStream",
/// ],
/// "resources": ["arn:aws:kinesis:us-east-1:*:*/*"],
/// }])
/// test_role_policy_role_policy = aws.iam.RolePolicy("test_role_policy",
/// name="test_policy",
/// role=test_role.id,
/// policy=test_role_policy.json)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var app = new Aws.Pinpoint.App("app");
///
/// var testStream = new Aws.Kinesis.Stream("test_stream", new()
/// {
/// Name = "pinpoint-kinesis-test",
/// ShardCount = 1,
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
/// "pinpoint.us-east-1.amazonaws.com",
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
/// var testRole = new Aws.Iam.Role("test_role", new()
/// {
/// AssumeRolePolicy = assumeRole.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
/// });
///
/// var stream = new Aws.Pinpoint.EventStream("stream", new()
/// {
/// ApplicationId = app.ApplicationId,
/// DestinationStreamArn = testStream.Arn,
/// RoleArn = testRole.Arn,
/// });
///
/// var testRolePolicy = Aws.Iam.GetPolicyDocument.Invoke(new()
/// {
/// Statements = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
/// {
/// Effect = "Allow",
/// Actions = new[]
/// {
/// "kinesis:PutRecords",
/// "kinesis:DescribeStream",
/// },
/// Resources = new[]
/// {
/// "arn:aws:kinesis:us-east-1:*:*/*",
/// },
/// },
/// },
/// });
///
/// var testRolePolicyRolePolicy = new Aws.Iam.RolePolicy("test_role_policy", new()
/// {
/// Name = "test_policy",
/// Role = testRole.Id,
/// Policy = testRolePolicy.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kinesis"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/pinpoint"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// app, err := pinpoint.NewApp(ctx, "app", nil)
/// if err != nil {
/// return err
/// }
/// testStream, err := kinesis.NewStream(ctx, "test_stream", &kinesis.StreamArgs{
/// Name:       pulumi.String("pinpoint-kinesis-test"),
/// ShardCount: pulumi.Int(1),
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
/// "pinpoint.us-east-1.amazonaws.com",
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
/// testRole, err := iam.NewRole(ctx, "test_role", &iam.RoleArgs{
/// AssumeRolePolicy: pulumi.String(assumeRole.Json),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = pinpoint.NewEventStream(ctx, "stream", &pinpoint.EventStreamArgs{
/// ApplicationId:        app.ApplicationId,
/// DestinationStreamArn: testStream.Arn,
/// RoleArn:              testRole.Arn,
/// })
/// if err != nil {
/// return err
/// }
/// testRolePolicy, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// Statements: []iam.GetPolicyDocumentStatement{
/// {
/// Effect: pulumi.StringRef("Allow"),
/// Actions: []string{
/// "kinesis:PutRecords",
/// "kinesis:DescribeStream",
/// },
/// Resources: []string{
/// "arn:aws:kinesis:us-east-1:*:*/*",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = iam.NewRolePolicy(ctx, "test_role_policy", &iam.RolePolicyArgs{
/// Name:   pulumi.String("test_policy"),
/// Role:   testRole.ID(),
/// Policy: pulumi.String(testRolePolicy.Json),
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
/// import com.pulumi.aws.pinpoint.App;
/// import com.pulumi.aws.kinesis.Stream;
/// import com.pulumi.aws.kinesis.StreamArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.pinpoint.EventStream;
/// import com.pulumi.aws.pinpoint.EventStreamArgs;
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
/// var app = new App("app");
///
/// var testStream = new Stream("testStream", StreamArgs.builder()
/// .name("pinpoint-kinesis-test")
/// .shardCount(1)
/// .build());
///
/// final var assumeRole = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
/// .statements(GetPolicyDocumentStatementArgs.builder()
/// .effect("Allow")
/// .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
/// .type("Service")
/// .identifiers("pinpoint.us-east-1.amazonaws.com")
/// .build())
/// .actions("sts:AssumeRole")
/// .build())
/// .build());
///
/// var testRole = new Role("testRole", RoleArgs.builder()
/// .assumeRolePolicy(assumeRole.json())
/// .build());
///
/// var stream = new EventStream("stream", EventStreamArgs.builder()
/// .applicationId(app.applicationId())
/// .destinationStreamArn(testStream.arn())
/// .roleArn(testRole.arn())
/// .build());
///
/// final var testRolePolicy = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
/// .statements(GetPolicyDocumentStatementArgs.builder()
/// .effect("Allow")
/// .actions(
/// "kinesis:PutRecords",
/// "kinesis:DescribeStream")
/// .resources("arn:aws:kinesis:us-east-1:*:*/*")
/// .build())
/// .build());
///
/// var testRolePolicyRolePolicy = new RolePolicy("testRolePolicyRolePolicy", RolePolicyArgs.builder()
/// .name("test_policy")
/// .role(testRole.id())
/// .policy(testRolePolicy.json())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// stream:
/// type: aws:pinpoint:EventStream
/// properties:
/// applicationId: ${app.applicationId}
/// destinationStreamArn: ${testStream.arn}
/// roleArn: ${testRole.arn}
/// app:
/// type: aws:pinpoint:App
/// testStream:
/// type: aws:kinesis:Stream
/// name: test_stream
/// properties:
/// name: pinpoint-kinesis-test
/// shardCount: 1
/// testRole:
/// type: aws:iam:Role
/// name: test_role
/// properties:
/// assumeRolePolicy: ${assumeRole.json}
/// testRolePolicyRolePolicy:
/// type: aws:iam:RolePolicy
/// name: test_role_policy
/// properties:
/// name: test_policy
/// role: ${testRole.id}
/// policy: ${testRolePolicy.json}
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
/// - pinpoint.us-east-1.amazonaws.com
/// actions:
/// - sts:AssumeRole
/// testRolePolicy:
/// fn::invoke:
/// function: aws:iam:getPolicyDocument
/// arguments:
/// statements:
/// - effect: Allow
/// actions:
/// - kinesis:PutRecords
/// - kinesis:DescribeStream
/// resources:
/// - arn:aws:kinesis:us-east-1:*:*/*
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Pinpoint Event Stream using the `application-id`. For example:
///
/// ```sh
/// $ pulumi import aws:pinpoint/eventStream:EventStream stream application-id
/// ```
class EventStream extends CustomResource {
  /// The application ID.
  late final Output<String> applicationId;

  /// The Amazon Resource Name (ARN) of the Amazon Kinesis stream or Firehose delivery stream to which you want to publish events.
  late final Output<String> destinationStreamArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The IAM role that authorizes Amazon Pinpoint to publish events to the stream in your account.
  late final Output<String> roleArn;

  EventStream(
    String name, {
    EventStreamArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:pinpoint/eventStream:EventStream',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.applicationId = Output.createUnknown<String>();
    this.destinationStreamArn = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.roleArn = Output.createUnknown<String>();
  }
}
