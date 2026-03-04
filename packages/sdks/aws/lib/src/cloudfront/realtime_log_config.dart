import 'package:pulumi/pulumi.dart' as pulumi;
import 'realtime_log_config_args.dart';
import 'realtime_log_config_endpoint.dart';
import 'realtime_log_config_state.dart';

/// Provides a CloudFront real-time log configuration resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const assumeRole = aws.iam.getPolicyDocument({
///     statements: [{
///         effect: "Allow",
///         principals: [{
///             type: "Service",
///             identifiers: ["cloudfront.amazonaws.com"],
///         }],
///         actions: ["sts:AssumeRole"],
///     }],
/// });
/// const exampleRole = new aws.iam.Role("example", {
///     name: "cloudfront-realtime-log-config-example",
///     assumeRolePolicy: assumeRole.then(assumeRole => assumeRole.json),
/// });
/// const example = aws.iam.getPolicyDocument({
///     statements: [{
///         effect: "Allow",
///         actions: [
///             "kinesis:DescribeStreamSummary",
///             "kinesis:DescribeStream",
///             "kinesis:PutRecord",
///             "kinesis:PutRecords",
///         ],
///         resources: [exampleAwsKinesisStream.arn],
///     }],
/// });
/// const exampleRolePolicy = new aws.iam.RolePolicy("example", {
///     name: "cloudfront-realtime-log-config-example",
///     role: exampleRole.id,
///     policy: example.then(example => example.json),
/// });
/// const exampleRealtimeLogConfig = new aws.cloudfront.RealtimeLogConfig("example", {
///     name: "example",
///     samplingRate: 75,
///     fields: [
///         "timestamp",
///         "c-ip",
///     ],
///     endpoint: {
///         streamType: "Kinesis",
///         kinesisStreamConfig: {
///             roleArn: exampleRole.arn,
///             streamArn: exampleAwsKinesisStream.arn,
///         },
///     },
/// }, {
///     dependsOn: [exampleRolePolicy],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// assume_role = aws.iam.get_policy_document(statements=[{
///     "effect": "Allow",
///     "principals": [{
///         "type": "Service",
///         "identifiers": ["cloudfront.amazonaws.com"],
///     }],
///     "actions": ["sts:AssumeRole"],
/// }])
/// example_role = aws.iam.Role("example",
///     name="cloudfront-realtime-log-config-example",
///     assume_role_policy=assume_role.json)
/// example = aws.iam.get_policy_document(statements=[{
///     "effect": "Allow",
///     "actions": [
///         "kinesis:DescribeStreamSummary",
///         "kinesis:DescribeStream",
///         "kinesis:PutRecord",
///         "kinesis:PutRecords",
///     ],
///     "resources": [example_aws_kinesis_stream["arn"]],
/// }])
/// example_role_policy = aws.iam.RolePolicy("example",
///     name="cloudfront-realtime-log-config-example",
///     role=example_role.id,
///     policy=example.json)
/// example_realtime_log_config = aws.cloudfront.RealtimeLogConfig("example",
///     name="example",
///     sampling_rate=75,
///     fields=[
///         "timestamp",
///         "c-ip",
///     ],
///     endpoint={
///         "stream_type": "Kinesis",
///         "kinesis_stream_config": {
///             "role_arn": example_role.arn,
///             "stream_arn": example_aws_kinesis_stream["arn"],
///         },
///     },
///     opts = pulumi.ResourceOptions(depends_on=[example_role_policy]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
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
///                             "cloudfront.amazonaws.com",
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
///     var exampleRole = new Aws.Iam.Role("example", new()
///     {
///         Name = "cloudfront-realtime-log-config-example",
///         AssumeRolePolicy = assumeRole.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
///     var example = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Effect = "Allow",
///                 Actions = new[]
///                 {
///                     "kinesis:DescribeStreamSummary",
///                     "kinesis:DescribeStream",
///                     "kinesis:PutRecord",
///                     "kinesis:PutRecords",
///                 },
///                 Resources = new[]
///                 {
///                     exampleAwsKinesisStream.Arn,
///                 },
///             },
///         },
///     });
///
///     var exampleRolePolicy = new Aws.Iam.RolePolicy("example", new()
///     {
///         Name = "cloudfront-realtime-log-config-example",
///         Role = exampleRole.Id,
///         Policy = example.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
///     var exampleRealtimeLogConfig = new Aws.CloudFront.RealtimeLogConfig("example", new()
///     {
///         Name = "example",
///         SamplingRate = 75,
///         Fields = new[]
///         {
///             "timestamp",
///             "c-ip",
///         },
///         Endpoint = new Aws.CloudFront.Inputs.RealtimeLogConfigEndpointArgs
///         {
///             StreamType = "Kinesis",
///             KinesisStreamConfig = new Aws.CloudFront.Inputs.RealtimeLogConfigEndpointKinesisStreamConfigArgs
///             {
///                 RoleArn = exampleRole.Arn,
///                 StreamArn = exampleAwsKinesisStream.Arn,
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleRolePolicy,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudfront"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
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
/// "cloudfront.amazonaws.com",
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
/// exampleRole, err := iam.NewRole(ctx, "example", &iam.RoleArgs{
/// Name: pulumi.String("cloudfront-realtime-log-config-example"),
/// AssumeRolePolicy: pulumi.String(assumeRole.Json),
/// })
/// if err != nil {
/// return err
/// }
/// example, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// Statements: []iam.GetPolicyDocumentStatement{
/// {
/// Effect: pulumi.StringRef("Allow"),
/// Actions: []string{
/// "kinesis:DescribeStreamSummary",
/// "kinesis:DescribeStream",
/// "kinesis:PutRecord",
/// "kinesis:PutRecords",
/// },
/// Resources: interface{}{
/// exampleAwsKinesisStream.Arn,
/// },
/// },
/// },
/// }, nil);
/// if err != nil {
/// return err
/// }
/// exampleRolePolicy, err := iam.NewRolePolicy(ctx, "example", &iam.RolePolicyArgs{
/// Name: pulumi.String("cloudfront-realtime-log-config-example"),
/// Role: exampleRole.ID(),
/// Policy: pulumi.String(example.Json),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = cloudfront.NewRealtimeLogConfig(ctx, "example", &cloudfront.RealtimeLogConfigArgs{
/// Name: pulumi.String("example"),
/// SamplingRate: pulumi.Int(75),
/// Fields: pulumi.StringArray{
/// pulumi.String("timestamp"),
/// pulumi.String("c-ip"),
/// },
/// Endpoint: &cloudfront.RealtimeLogConfigEndpointArgs{
/// StreamType: pulumi.String("Kinesis"),
/// KinesisStreamConfig: &cloudfront.RealtimeLogConfigEndpointKinesisStreamConfigArgs{
/// RoleArn: exampleRole.Arn,
/// StreamArn: pulumi.Any(exampleAwsKinesisStream.Arn),
/// },
/// },
/// }, pulumi.DependsOn([]pulumi.Resource{
/// exampleRolePolicy,
/// }))
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
/// import com.pulumi.aws.iam.RolePolicy;
/// import com.pulumi.aws.iam.RolePolicyArgs;
/// import com.pulumi.aws.cloudfront.RealtimeLogConfig;
/// import com.pulumi.aws.cloudfront.RealtimeLogConfigArgs;
/// import com.pulumi.aws.cloudfront.inputs.RealtimeLogConfigEndpointArgs;
/// import com.pulumi.aws.cloudfront.inputs.RealtimeLogConfigEndpointKinesisStreamConfigArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         final var assumeRole = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .effect("Allow")
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("Service")
///                     .identifiers("cloudfront.amazonaws.com")
///                     .build())
///                 .actions("sts:AssumeRole")
///                 .build())
///             .build());
///
///         var exampleRole = new Role("exampleRole", RoleArgs.builder()
///             .name("cloudfront-realtime-log-config-example")
///             .assumeRolePolicy(assumeRole.json())
///             .build());
///
///         final var example = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .effect("Allow")
///                 .actions(
///                     "kinesis:DescribeStreamSummary",
///                     "kinesis:DescribeStream",
///                     "kinesis:PutRecord",
///                     "kinesis:PutRecords")
///                 .resources(exampleAwsKinesisStream.arn())
///                 .build())
///             .build());
///
///         var exampleRolePolicy = new RolePolicy("exampleRolePolicy", RolePolicyArgs.builder()
///             .name("cloudfront-realtime-log-config-example")
///             .role(exampleRole.id())
///             .policy(example.json())
///             .build());
///
///         var exampleRealtimeLogConfig = new RealtimeLogConfig("exampleRealtimeLogConfig", RealtimeLogConfigArgs.builder()
///             .name("example")
///             .samplingRate(75)
///             .fields(
///                 "timestamp",
///                 "c-ip")
///             .endpoint(RealtimeLogConfigEndpointArgs.builder()
///                 .streamType("Kinesis")
///                 .kinesisStreamConfig(RealtimeLogConfigEndpointKinesisStreamConfigArgs.builder()
///                     .roleArn(exampleRole.arn())
///                     .streamArn(exampleAwsKinesisStream.arn())
///                     .build())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(exampleRolePolicy)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleRole:
///     type: aws:iam:Role
///     name: example
///     properties:
///       name: cloudfront-realtime-log-config-example
///       assumeRolePolicy: ${assumeRole.json}
///   exampleRolePolicy:
///     type: aws:iam:RolePolicy
///     name: example
///     properties:
///       name: cloudfront-realtime-log-config-example
///       role: ${exampleRole.id}
///       policy: ${example.json}
///   exampleRealtimeLogConfig:
///     type: aws:cloudfront:RealtimeLogConfig
///     name: example
///     properties:
///       name: example
///       samplingRate: 75
///       fields:
///         - timestamp
///         - c-ip
///       endpoint:
///         streamType: Kinesis
///         kinesisStreamConfig:
///           roleArn: ${exampleRole.arn}
///           streamArn: ${exampleAwsKinesisStream.arn}
///     options:
///       dependsOn:
///         - ${exampleRolePolicy}
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
///                   - cloudfront.amazonaws.com
///             actions:
///               - sts:AssumeRole
///   example:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - effect: Allow
///             actions:
///               - kinesis:DescribeStreamSummary
///               - kinesis:DescribeStream
///               - kinesis:PutRecord
///               - kinesis:PutRecords
///             resources:
///               - ${exampleAwsKinesisStream.arn}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the CloudFront real-time log configuration.
///
///
/// Using `pulumi import`, import CloudFront real-time log configurations using the ARN. For example:
///
/// ```sh
/// $ pulumi import aws:cloudfront/realtimeLogConfig:RealtimeLogConfig example arn:aws:cloudfront::111122223333:realtime-log-config/ExampleNameForRealtimeLogConfig
/// ```
class RealtimeLogConfig extends pulumi.CustomResource {
  /// The ARN (Amazon Resource Name) of the CloudFront real-time log configuration.
  late final pulumi.Output<String> arn;

  /// The Amazon Kinesis data streams where real-time log data is sent.
  late final pulumi.Output<RealtimeLogConfigEndpoint> endpoint;

  /// The fields that are included in each real-time log record. See the [AWS documentation](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/real-time-logs.html#understand-real-time-log-config-fields) for supported values.
  late final pulumi.Output<List<String>> fields;

  /// The unique name to identify this real-time log configuration.
  late final pulumi.Output<String> name;

  /// The sampling rate for this real-time log configuration. The sampling rate determines the percentage of viewer requests that are represented in the real-time log data. An integer between `1` and `100`, inclusive.
  late final pulumi.Output<int> samplingRate;

  /// Creates a new [RealtimeLogConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RealtimeLogConfig]. {@macro pulumi_cloudfront_realtime_log_config_realtime_log_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RealtimeLogConfig(
    String name, {
    RealtimeLogConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:cloudfront/realtimeLogConfig:RealtimeLogConfig',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    endpoint = registerOutput<RealtimeLogConfigEndpoint>('endpoint');
    fields = registerOutput<List<String>>('fields');
    this.name = registerOutput<String>('name');
    samplingRate = registerOutput<int>('samplingRate');
  }

  /// Gets an existing [RealtimeLogConfig] resource's state with the given [name] and [id].
  static RealtimeLogConfig get(
    String name,
    pulumi.Input<String> id, {
    RealtimeLogConfigState? state,
  }) {
    return RealtimeLogConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RealtimeLogConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:cloudfront/realtimeLogConfig:RealtimeLogConfig',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    endpoint = registerOutput<RealtimeLogConfigEndpoint>('endpoint');
    fields = registerOutput<List<String>>('fields');
    this.name = registerOutput<String>('name');
    samplingRate = registerOutput<int>('samplingRate');
  }
}
