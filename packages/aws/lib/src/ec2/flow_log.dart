import 'package:pulumi/pulumi.dart' as pulumi;
import 'flow_log_args.dart';
import 'flow_log_destination_options.dart';

/// Provides a VPC/Subnet/ENI/Transit Gateway/Transit Gateway Attachment Flow Log to capture IP traffic for a specific network
/// interface, subnet, or VPC. Logs are sent to a CloudWatch Log Group, a S3 Bucket, or Amazon Data Firehose
///
/// ## Example Usage
///
/// ### CloudWatch Logging
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const exampleLogGroup = new aws.cloudwatch.LogGroup("example", {name: "example"});
/// const assumeRole = aws.iam.getPolicyDocument({
///     statements: [{
///         effect: "Allow",
///         principals: [{
///             type: "Service",
///             identifiers: ["vpc-flow-logs.amazonaws.com"],
///         }],
///         actions: ["sts:AssumeRole"],
///     }],
/// });
/// const exampleRole = new aws.iam.Role("example", {
///     name: "example",
///     assumeRolePolicy: assumeRole.then(assumeRole => assumeRole.json),
/// });
/// const exampleFlowLog = new aws.ec2.FlowLog("example", {
///     iamRoleArn: exampleRole.arn,
///     logDestination: exampleLogGroup.arn,
///     trafficType: "ALL",
///     vpcId: exampleAwsVpc.id,
/// });
/// const example = aws.iam.getPolicyDocument({
///     statements: [{
///         effect: "Allow",
///         actions: [
///             "logs:CreateLogGroup",
///             "logs:CreateLogStream",
///             "logs:PutLogEvents",
///             "logs:DescribeLogGroups",
///             "logs:DescribeLogStreams",
///         ],
///         resources: ["*"],
///     }],
/// });
/// const exampleRolePolicy = new aws.iam.RolePolicy("example", {
///     name: "example",
///     role: exampleRole.id,
///     policy: example.then(example => example.json),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_log_group = aws.cloudwatch.LogGroup("example", name="example")
/// assume_role = aws.iam.get_policy_document(statements=[{
///     "effect": "Allow",
///     "principals": [{
///         "type": "Service",
///         "identifiers": ["vpc-flow-logs.amazonaws.com"],
///     }],
///     "actions": ["sts:AssumeRole"],
/// }])
/// example_role = aws.iam.Role("example",
///     name="example",
///     assume_role_policy=assume_role.json)
/// example_flow_log = aws.ec2.FlowLog("example",
///     iam_role_arn=example_role.arn,
///     log_destination=example_log_group.arn,
///     traffic_type="ALL",
///     vpc_id=example_aws_vpc["id"])
/// example = aws.iam.get_policy_document(statements=[{
///     "effect": "Allow",
///     "actions": [
///         "logs:CreateLogGroup",
///         "logs:CreateLogStream",
///         "logs:PutLogEvents",
///         "logs:DescribeLogGroups",
///         "logs:DescribeLogStreams",
///     ],
///     "resources": ["*"],
/// }])
/// example_role_policy = aws.iam.RolePolicy("example",
///     name="example",
///     role=example_role.id,
///     policy=example.json)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleLogGroup = new Aws.CloudWatch.LogGroup("example", new()
///     {
///         Name = "example",
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
///                             "vpc-flow-logs.amazonaws.com",
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
///         Name = "example",
///         AssumeRolePolicy = assumeRole.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
///     var exampleFlowLog = new Aws.Ec2.FlowLog("example", new()
///     {
///         IamRoleArn = exampleRole.Arn,
///         LogDestination = exampleLogGroup.Arn,
///         TrafficType = "ALL",
///         VpcId = exampleAwsVpc.Id,
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
///                     "logs:CreateLogGroup",
///                     "logs:CreateLogStream",
///                     "logs:PutLogEvents",
///                     "logs:DescribeLogGroups",
///                     "logs:DescribeLogStreams",
///                 },
///                 Resources = new[]
///                 {
///                     "*",
///                 },
///             },
///         },
///     });
///
///     var exampleRolePolicy = new Aws.Iam.RolePolicy("example", new()
///     {
///         Name = "example",
///         Role = exampleRole.Id,
///         Policy = example.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		exampleLogGroup, err := cloudwatch.NewLogGroup(ctx, "example", &cloudwatch.LogGroupArgs{
/// 			Name: pulumi.String("example"),
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
/// 								"vpc-flow-logs.amazonaws.com",
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
/// 		exampleRole, err := iam.NewRole(ctx, "example", &iam.RoleArgs{
/// 			Name:             pulumi.String("example"),
/// 			AssumeRolePolicy: pulumi.String(assumeRole.Json),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ec2.NewFlowLog(ctx, "example", &ec2.FlowLogArgs{
/// 			IamRoleArn:     exampleRole.Arn,
/// 			LogDestination: exampleLogGroup.Arn,
/// 			TrafficType:    pulumi.String("ALL"),
/// 			VpcId:          pulumi.Any(exampleAwsVpc.Id),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{
/// 					Effect: pulumi.StringRef("Allow"),
/// 					Actions: []string{
/// 						"logs:CreateLogGroup",
/// 						"logs:CreateLogStream",
/// 						"logs:PutLogEvents",
/// 						"logs:DescribeLogGroups",
/// 						"logs:DescribeLogStreams",
/// 					},
/// 					Resources: []string{
/// 						"*",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iam.NewRolePolicy(ctx, "example", &iam.RolePolicyArgs{
/// 			Name:   pulumi.String("example"),
/// 			Role:   exampleRole.ID(),
/// 			Policy: pulumi.String(example.Json),
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
/// import com.pulumi.aws.cloudwatch.LogGroup;
/// import com.pulumi.aws.cloudwatch.LogGroupArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.ec2.FlowLog;
/// import com.pulumi.aws.ec2.FlowLogArgs;
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
///         var exampleLogGroup = new LogGroup("exampleLogGroup", LogGroupArgs.builder()
///             .name("example")
///             .build());
///
///         final var assumeRole = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .effect("Allow")
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("Service")
///                     .identifiers("vpc-flow-logs.amazonaws.com")
///                     .build())
///                 .actions("sts:AssumeRole")
///                 .build())
///             .build());
///
///         var exampleRole = new Role("exampleRole", RoleArgs.builder()
///             .name("example")
///             .assumeRolePolicy(assumeRole.json())
///             .build());
///
///         var exampleFlowLog = new FlowLog("exampleFlowLog", FlowLogArgs.builder()
///             .iamRoleArn(exampleRole.arn())
///             .logDestination(exampleLogGroup.arn())
///             .trafficType("ALL")
///             .vpcId(exampleAwsVpc.id())
///             .build());
///
///         final var example = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .effect("Allow")
///                 .actions(
///                     "logs:CreateLogGroup",
///                     "logs:CreateLogStream",
///                     "logs:PutLogEvents",
///                     "logs:DescribeLogGroups",
///                     "logs:DescribeLogStreams")
///                 .resources("*")
///                 .build())
///             .build());
///
///         var exampleRolePolicy = new RolePolicy("exampleRolePolicy", RolePolicyArgs.builder()
///             .name("example")
///             .role(exampleRole.id())
///             .policy(example.json())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleFlowLog:
///     type: aws:ec2:FlowLog
///     name: example
///     properties:
///       iamRoleArn: ${exampleRole.arn}
///       logDestination: ${exampleLogGroup.arn}
///       trafficType: ALL
///       vpcId: ${exampleAwsVpc.id}
///   exampleLogGroup:
///     type: aws:cloudwatch:LogGroup
///     name: example
///     properties:
///       name: example
///   exampleRole:
///     type: aws:iam:Role
///     name: example
///     properties:
///       name: example
///       assumeRolePolicy: ${assumeRole.json}
///   exampleRolePolicy:
///     type: aws:iam:RolePolicy
///     name: example
///     properties:
///       name: example
///       role: ${exampleRole.id}
///       policy: ${example.json}
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
///                   - vpc-flow-logs.amazonaws.com
///             actions:
///               - sts:AssumeRole
///   example:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - effect: Allow
///             actions:
///               - logs:CreateLogGroup
///               - logs:CreateLogStream
///               - logs:PutLogEvents
///               - logs:DescribeLogGroups
///               - logs:DescribeLogStreams
///             resources:
///               - '*'
/// ```
///
///
/// ### Amazon Data Firehose logging
///
///
/// ```yaml
/// resources:
///   exampleFlowLog:
///     type: aws:ec2:FlowLog
///     name: example
///     properties:
///       logDestination: ${exampleFirehoseDeliveryStream.arn}
///       logDestinationType: kinesis-data-firehose
///       trafficType: ALL
///       vpcId: ${exampleAwsVpc.id}
///   exampleFirehoseDeliveryStream:
///     type: aws:kinesis:FirehoseDeliveryStream
///     name: example
///     properties:
///       name: kinesis_firehose_test
///       destination: extended_s3
///       extendedS3Configuration:
///         roleArn: ${exampleRole.arn}
///         bucketArn: ${exampleBucket.arn}
///       tags:
///         LogDeliveryEnabled: 'true'
///   exampleBucket:
///     type: aws:s3:Bucket
///     name: example
///     properties:
///       bucket: example
///   exampleBucketAcl:
///     type: aws:s3:BucketAcl
///     name: example
///     properties:
///       bucket: ${exampleBucket.id}
///       acl: private
///   exampleRole:
///     type: aws:iam:Role
///     name: example
///     properties:
///       name: firehose_test_role
///       assumeRolePolicy: ${assumeRole.json}
///   exampleRolePolicy:
///     type: aws:iam:RolePolicy
///     name: example
///     properties:
///       name: test
///       role: ${exampleRole.id}
///       policy: ${example.json}
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
///                   - firehose.amazonaws.com
///             actions:
///               - sts:AssumeRole
///   example:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         effect: Allow
///         actions:
///           - logs:CreateLogDelivery
///           - logs:DeleteLogDelivery
///           - logs:ListLogDeliveries
///           - logs:GetLogDelivery
///           - firehose:TagDeliveryStream
///         resources:
///           - '*'
/// ```
///
///
/// ### S3 Logging
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const exampleBucket = new aws.s3.Bucket("example", {bucket: "example"});
/// const example = new aws.ec2.FlowLog("example", {
///     logDestination: exampleBucket.arn,
///     logDestinationType: "s3",
///     trafficType: "ALL",
///     vpcId: exampleAwsVpc.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_bucket = aws.s3.Bucket("example", bucket="example")
/// example = aws.ec2.FlowLog("example",
///     log_destination=example_bucket.arn,
///     log_destination_type="s3",
///     traffic_type="ALL",
///     vpc_id=example_aws_vpc["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleBucket = new Aws.S3.Bucket("example", new()
///     {
///         BucketName = "example",
///     });
///
///     var example = new Aws.Ec2.FlowLog("example", new()
///     {
///         LogDestination = exampleBucket.Arn,
///         LogDestinationType = "s3",
///         TrafficType = "ALL",
///         VpcId = exampleAwsVpc.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		exampleBucket, err := s3.NewBucket(ctx, "example", &s3.BucketArgs{
/// 			Bucket: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ec2.NewFlowLog(ctx, "example", &ec2.FlowLogArgs{
/// 			LogDestination:     exampleBucket.Arn,
/// 			LogDestinationType: pulumi.String("s3"),
/// 			TrafficType:        pulumi.String("ALL"),
/// 			VpcId:              pulumi.Any(exampleAwsVpc.Id),
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
/// import com.pulumi.aws.s3.Bucket;
/// import com.pulumi.aws.s3.BucketArgs;
/// import com.pulumi.aws.ec2.FlowLog;
/// import com.pulumi.aws.ec2.FlowLogArgs;
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
///         var exampleBucket = new Bucket("exampleBucket", BucketArgs.builder()
///             .bucket("example")
///             .build());
///
///         var example = new FlowLog("example", FlowLogArgs.builder()
///             .logDestination(exampleBucket.arn())
///             .logDestinationType("s3")
///             .trafficType("ALL")
///             .vpcId(exampleAwsVpc.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ec2:FlowLog
///     properties:
///       logDestination: ${exampleBucket.arn}
///       logDestinationType: s3
///       trafficType: ALL
///       vpcId: ${exampleAwsVpc.id}
///   exampleBucket:
///     type: aws:s3:Bucket
///     name: example
///     properties:
///       bucket: example
/// ```
///
///
/// ### S3 Logging in Apache Parquet format with per-hour partitions
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const exampleBucket = new aws.s3.Bucket("example", {bucket: "example"});
/// const example = new aws.ec2.FlowLog("example", {
///     logDestination: exampleBucket.arn,
///     logDestinationType: "s3",
///     trafficType: "ALL",
///     vpcId: exampleAwsVpc.id,
///     destinationOptions: {
///         fileFormat: "parquet",
///         perHourPartition: true,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_bucket = aws.s3.Bucket("example", bucket="example")
/// example = aws.ec2.FlowLog("example",
///     log_destination=example_bucket.arn,
///     log_destination_type="s3",
///     traffic_type="ALL",
///     vpc_id=example_aws_vpc["id"],
///     destination_options={
///         "file_format": "parquet",
///         "per_hour_partition": True,
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleBucket = new Aws.S3.Bucket("example", new()
///     {
///         BucketName = "example",
///     });
///
///     var example = new Aws.Ec2.FlowLog("example", new()
///     {
///         LogDestination = exampleBucket.Arn,
///         LogDestinationType = "s3",
///         TrafficType = "ALL",
///         VpcId = exampleAwsVpc.Id,
///         DestinationOptions = new Aws.Ec2.Inputs.FlowLogDestinationOptionsArgs
///         {
///             FileFormat = "parquet",
///             PerHourPartition = true,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		exampleBucket, err := s3.NewBucket(ctx, "example", &s3.BucketArgs{
/// 			Bucket: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ec2.NewFlowLog(ctx, "example", &ec2.FlowLogArgs{
/// 			LogDestination:     exampleBucket.Arn,
/// 			LogDestinationType: pulumi.String("s3"),
/// 			TrafficType:        pulumi.String("ALL"),
/// 			VpcId:              pulumi.Any(exampleAwsVpc.Id),
/// 			DestinationOptions: &ec2.FlowLogDestinationOptionsArgs{
/// 				FileFormat:       pulumi.String("parquet"),
/// 				PerHourPartition: pulumi.Bool(true),
/// 			},
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
/// import com.pulumi.aws.s3.Bucket;
/// import com.pulumi.aws.s3.BucketArgs;
/// import com.pulumi.aws.ec2.FlowLog;
/// import com.pulumi.aws.ec2.FlowLogArgs;
/// import com.pulumi.aws.ec2.inputs.FlowLogDestinationOptionsArgs;
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
///         var exampleBucket = new Bucket("exampleBucket", BucketArgs.builder()
///             .bucket("example")
///             .build());
///
///         var example = new FlowLog("example", FlowLogArgs.builder()
///             .logDestination(exampleBucket.arn())
///             .logDestinationType("s3")
///             .trafficType("ALL")
///             .vpcId(exampleAwsVpc.id())
///             .destinationOptions(FlowLogDestinationOptionsArgs.builder()
///                 .fileFormat("parquet")
///                 .perHourPartition(true)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ec2:FlowLog
///     properties:
///       logDestination: ${exampleBucket.arn}
///       logDestinationType: s3
///       trafficType: ALL
///       vpcId: ${exampleAwsVpc.id}
///       destinationOptions:
///         fileFormat: parquet
///         perHourPartition: true
///   exampleBucket:
///     type: aws:s3:Bucket
///     name: example
///     properties:
///       bucket: example
/// ```
///
///
/// ### Cross-Account Amazon Data Firehose Logging
///
/// The following example shows how to set up a flow log in one AWS account (source) that sends logs to an Amazon Data Firehose delivery stream in another AWS account (destination).
/// See the [AWS Documentation](https://docs.aws.amazon.com/vpc/latest/userguide/flow-logs-firehose.html).
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// // For source account
/// const src = new aws.ec2.Vpc("src", {});
/// const srcAssumeRolePolicy = aws.iam.getPolicyDocument({
///     statements: [{
///         actions: ["sts:AssumeRole"],
///         effect: "Allow",
///         principals: [{
///             type: "Service",
///             identifiers: ["delivery.logs.amazonaws.com"],
///         }],
///     }],
/// });
/// const srcRole = new aws.iam.Role("src", {
///     name: "tf-example-mySourceRole",
///     assumeRolePolicy: srcAssumeRolePolicy.then(srcAssumeRolePolicy => srcAssumeRolePolicy.json),
/// });
/// // For destination account
/// const dstAssumeRolePolicy = aws.iam.getPolicyDocumentOutput({
///     statements: [{
///         actions: ["sts:AssumeRole"],
///         effect: "Allow",
///         principals: [{
///             type: "AWS",
///             identifiers: [srcRole.arn],
///         }],
///     }],
/// });
/// const dst = new aws.iam.Role("dst", {
///     name: "AWSLogDeliveryFirehoseCrossAccountRole",
///     assumeRolePolicy: dstAssumeRolePolicy.apply(dstAssumeRolePolicy => dstAssumeRolePolicy.json),
/// });
/// const srcRolePolicy = aws.iam.getPolicyDocumentOutput({
///     statements: [
///         {
///             effect: "Allow",
///             actions: ["iam:PassRole"],
///             resources: [srcRole.arn],
///             conditions: [
///                 {
///                     test: "StringEquals",
///                     variable: "iam:PassedToService",
///                     values: ["delivery.logs.amazonaws.com"],
///                 },
///                 {
///                     test: "StringLike",
///                     variable: "iam:AssociatedResourceARN",
///                     values: [src.arn],
///                 },
///             ],
///         },
///         {
///             effect: "Allow",
///             actions: [
///                 "logs:CreateLogDelivery",
///                 "logs:DeleteLogDelivery",
///                 "logs:ListLogDeliveries",
///                 "logs:GetLogDelivery",
///             ],
///             resources: ["*"],
///         },
///         {
///             effect: "Allow",
///             actions: ["sts:AssumeRole"],
///             resources: [dst.arn],
///         },
///     ],
/// });
/// const srcPolicy = new aws.iam.RolePolicy("src_policy", {
///     name: "tf-example-mySourceRolePolicy",
///     role: srcRole.name,
///     policy: srcRolePolicy.apply(srcRolePolicy => srcRolePolicy.json),
/// });
/// const dstFirehoseDeliveryStream = new aws.kinesis.FirehoseDeliveryStream("dst", {tags: {
///     LogDeliveryEnabled: "true",
/// }});
/// const srcFlowLog = new aws.ec2.FlowLog("src", {
///     logDestinationType: "kinesis-data-firehose",
///     logDestination: dstFirehoseDeliveryStream.arn,
///     trafficType: "ALL",
///     vpcId: src.id,
///     iamRoleArn: srcRole.arn,
///     deliverCrossAccountRole: dst.arn,
/// });
/// const dstRolePolicy = aws.iam.getPolicyDocument({
///     statements: [{
///         effect: "Allow",
///         actions: [
///             "iam:CreateServiceLinkedRole",
///             "firehose:TagDeliveryStream",
///         ],
///         resources: ["*"],
///     }],
/// });
/// const dstRolePolicy2 = new aws.iam.RolePolicy("dst", {
///     name: "AWSLogDeliveryFirehoseCrossAccountRolePolicy",
///     role: dst.name,
///     policy: dstRolePolicy.then(dstRolePolicy => dstRolePolicy.json),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// # For source account
/// src = aws.ec2.Vpc("src")
/// src_assume_role_policy = aws.iam.get_policy_document(statements=[{
///     "actions": ["sts:AssumeRole"],
///     "effect": "Allow",
///     "principals": [{
///         "type": "Service",
///         "identifiers": ["delivery.logs.amazonaws.com"],
///     }],
/// }])
/// src_role = aws.iam.Role("src",
///     name="tf-example-mySourceRole",
///     assume_role_policy=src_assume_role_policy.json)
/// # For destination account
/// dst_assume_role_policy = aws.iam.get_policy_document_output(statements=[{
///     "actions": ["sts:AssumeRole"],
///     "effect": "Allow",
///     "principals": [{
///         "type": "AWS",
///         "identifiers": [src_role.arn],
///     }],
/// }])
/// dst = aws.iam.Role("dst",
///     name="AWSLogDeliveryFirehoseCrossAccountRole",
///     assume_role_policy=dst_assume_role_policy.json)
/// src_role_policy = aws.iam.get_policy_document_output(statements=[
///     {
///         "effect": "Allow",
///         "actions": ["iam:PassRole"],
///         "resources": [src_role.arn],
///         "conditions": [
///             {
///                 "test": "StringEquals",
///                 "variable": "iam:PassedToService",
///                 "values": ["delivery.logs.amazonaws.com"],
///             },
///             {
///                 "test": "StringLike",
///                 "variable": "iam:AssociatedResourceARN",
///                 "values": [src.arn],
///             },
///         ],
///     },
///     {
///         "effect": "Allow",
///         "actions": [
///             "logs:CreateLogDelivery",
///             "logs:DeleteLogDelivery",
///             "logs:ListLogDeliveries",
///             "logs:GetLogDelivery",
///         ],
///         "resources": ["*"],
///     },
///     {
///         "effect": "Allow",
///         "actions": ["sts:AssumeRole"],
///         "resources": [dst.arn],
///     },
/// ])
/// src_policy = aws.iam.RolePolicy("src_policy",
///     name="tf-example-mySourceRolePolicy",
///     role=src_role.name,
///     policy=src_role_policy.json)
/// dst_firehose_delivery_stream = aws.kinesis.FirehoseDeliveryStream("dst", tags={
///     "LogDeliveryEnabled": "true",
/// })
/// src_flow_log = aws.ec2.FlowLog("src",
///     log_destination_type="kinesis-data-firehose",
///     log_destination=dst_firehose_delivery_stream.arn,
///     traffic_type="ALL",
///     vpc_id=src.id,
///     iam_role_arn=src_role.arn,
///     deliver_cross_account_role=dst.arn)
/// dst_role_policy = aws.iam.get_policy_document(statements=[{
///     "effect": "Allow",
///     "actions": [
///         "iam:CreateServiceLinkedRole",
///         "firehose:TagDeliveryStream",
///     ],
///     "resources": ["*"],
/// }])
/// dst_role_policy2 = aws.iam.RolePolicy("dst",
///     name="AWSLogDeliveryFirehoseCrossAccountRolePolicy",
///     role=dst.name,
///     policy=dst_role_policy.json)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // For source account
///     var src = new Aws.Ec2.Vpc("src");
///
///     var srcAssumeRolePolicy = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Actions = new[]
///                 {
///                     "sts:AssumeRole",
///                 },
///                 Effect = "Allow",
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
///                     {
///                         Type = "Service",
///                         Identifiers = new[]
///                         {
///                             "delivery.logs.amazonaws.com",
///                         },
///                     },
///                 },
///             },
///         },
///     });
///
///     var srcRole = new Aws.Iam.Role("src", new()
///     {
///         Name = "tf-example-mySourceRole",
///         AssumeRolePolicy = srcAssumeRolePolicy.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
///     // For destination account
///     var dstAssumeRolePolicy = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Actions = new[]
///                 {
///                     "sts:AssumeRole",
///                 },
///                 Effect = "Allow",
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
///                     {
///                         Type = "AWS",
///                         Identifiers = new[]
///                         {
///                             srcRole.Arn,
///                         },
///                     },
///                 },
///             },
///         },
///     });
///
///     var dst = new Aws.Iam.Role("dst", new()
///     {
///         Name = "AWSLogDeliveryFirehoseCrossAccountRole",
///         AssumeRolePolicy = dstAssumeRolePolicy.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
///     var srcRolePolicy = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Effect = "Allow",
///                 Actions = new[]
///                 {
///                     "iam:PassRole",
///                 },
///                 Resources = new[]
///                 {
///                     srcRole.Arn,
///                 },
///                 Conditions = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementConditionInputArgs
///                     {
///                         Test = "StringEquals",
///                         Variable = "iam:PassedToService",
///                         Values = new[]
///                         {
///                             "delivery.logs.amazonaws.com",
///                         },
///                     },
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementConditionInputArgs
///                     {
///                         Test = "StringLike",
///                         Variable = "iam:AssociatedResourceARN",
///                         Values = new[]
///                         {
///                             src.Arn,
///                         },
///                     },
///                 },
///             },
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Effect = "Allow",
///                 Actions = new[]
///                 {
///                     "logs:CreateLogDelivery",
///                     "logs:DeleteLogDelivery",
///                     "logs:ListLogDeliveries",
///                     "logs:GetLogDelivery",
///                 },
///                 Resources = new[]
///                 {
///                     "*",
///                 },
///             },
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Effect = "Allow",
///                 Actions = new[]
///                 {
///                     "sts:AssumeRole",
///                 },
///                 Resources = new[]
///                 {
///                     dst.Arn,
///                 },
///             },
///         },
///     });
///
///     var srcPolicy = new Aws.Iam.RolePolicy("src_policy", new()
///     {
///         Name = "tf-example-mySourceRolePolicy",
///         Role = srcRole.Name,
///         Policy = srcRolePolicy.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
///     var dstFirehoseDeliveryStream = new Aws.Kinesis.FirehoseDeliveryStream("dst", new()
///     {
///         Tags =
///         {
///             { "LogDeliveryEnabled", "true" },
///         },
///     });
///
///     var srcFlowLog = new Aws.Ec2.FlowLog("src", new()
///     {
///         LogDestinationType = "kinesis-data-firehose",
///         LogDestination = dstFirehoseDeliveryStream.Arn,
///         TrafficType = "ALL",
///         VpcId = src.Id,
///         IamRoleArn = srcRole.Arn,
///         DeliverCrossAccountRole = dst.Arn,
///     });
///
///     var dstRolePolicy = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Effect = "Allow",
///                 Actions = new[]
///                 {
///                     "iam:CreateServiceLinkedRole",
///                     "firehose:TagDeliveryStream",
///                 },
///                 Resources = new[]
///                 {
///                     "*",
///                 },
///             },
///         },
///     });
///
///     var dstRolePolicy2 = new Aws.Iam.RolePolicy("dst", new()
///     {
///         Name = "AWSLogDeliveryFirehoseCrossAccountRolePolicy",
///         Role = dst.Name,
///         Policy = dstRolePolicy.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kinesis"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// For source account
/// 		src, err := ec2.NewVpc(ctx, "src", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		srcAssumeRolePolicy, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{
/// 					Actions: []string{
/// 						"sts:AssumeRole",
/// 					},
/// 					Effect: pulumi.StringRef("Allow"),
/// 					Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// 						{
/// 							Type: "Service",
/// 							Identifiers: []string{
/// 								"delivery.logs.amazonaws.com",
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		srcRole, err := iam.NewRole(ctx, "src", &iam.RoleArgs{
/// 			Name:             pulumi.String("tf-example-mySourceRole"),
/// 			AssumeRolePolicy: pulumi.String(srcAssumeRolePolicy.Json),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// For destination account
/// 		dstAssumeRolePolicy := iam.GetPolicyDocumentOutput(ctx, iam.GetPolicyDocumentOutputArgs{
/// 			Statements: iam.GetPolicyDocumentStatementArray{
/// 				&iam.GetPolicyDocumentStatementArgs{
/// 					Actions: pulumi.StringArray{
/// 						pulumi.String("sts:AssumeRole"),
/// 					},
/// 					Effect: pulumi.String("Allow"),
/// 					Principals: iam.GetPolicyDocumentStatementPrincipalArray{
/// 						&iam.GetPolicyDocumentStatementPrincipalArgs{
/// 							Type: pulumi.String("AWS"),
/// 							Identifiers: pulumi.StringArray{
/// 								srcRole.Arn,
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		dst, err := iam.NewRole(ctx, "dst", &iam.RoleArgs{
/// 			Name: pulumi.String("AWSLogDeliveryFirehoseCrossAccountRole"),
/// 			AssumeRolePolicy: pulumi.String(dstAssumeRolePolicy.ApplyT(func(dstAssumeRolePolicy iam.GetPolicyDocumentResult) (*string, error) {
/// 				return &dstAssumeRolePolicy.Json, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		srcRolePolicy := iam.GetPolicyDocumentOutput(ctx, iam.GetPolicyDocumentOutputArgs{
/// 			Statements: iam.GetPolicyDocumentStatementArray{
/// 				&iam.GetPolicyDocumentStatementArgs{
/// 					Effect: pulumi.String("Allow"),
/// 					Actions: pulumi.StringArray{
/// 						pulumi.String("iam:PassRole"),
/// 					},
/// 					Resources: pulumi.StringArray{
/// 						srcRole.Arn,
/// 					},
/// 					Conditions: iam.GetPolicyDocumentStatementConditionArray{
/// 						&iam.GetPolicyDocumentStatementConditionArgs{
/// 							Test:     pulumi.String("StringEquals"),
/// 							Variable: pulumi.String("iam:PassedToService"),
/// 							Values: pulumi.StringArray{
/// 								pulumi.String("delivery.logs.amazonaws.com"),
/// 							},
/// 						},
/// 						&iam.GetPolicyDocumentStatementConditionArgs{
/// 							Test:     pulumi.String("StringLike"),
/// 							Variable: pulumi.String("iam:AssociatedResourceARN"),
/// 							Values: pulumi.StringArray{
/// 								src.Arn,
/// 							},
/// 						},
/// 					},
/// 				},
/// 				&iam.GetPolicyDocumentStatementArgs{
/// 					Effect: pulumi.String("Allow"),
/// 					Actions: pulumi.StringArray{
/// 						pulumi.String("logs:CreateLogDelivery"),
/// 						pulumi.String("logs:DeleteLogDelivery"),
/// 						pulumi.String("logs:ListLogDeliveries"),
/// 						pulumi.String("logs:GetLogDelivery"),
/// 					},
/// 					Resources: pulumi.StringArray{
/// 						pulumi.String("*"),
/// 					},
/// 				},
/// 				&iam.GetPolicyDocumentStatementArgs{
/// 					Effect: pulumi.String("Allow"),
/// 					Actions: pulumi.StringArray{
/// 						pulumi.String("sts:AssumeRole"),
/// 					},
/// 					Resources: pulumi.StringArray{
/// 						dst.Arn,
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		_, err = iam.NewRolePolicy(ctx, "src_policy", &iam.RolePolicyArgs{
/// 			Name: pulumi.String("tf-example-mySourceRolePolicy"),
/// 			Role: srcRole.Name,
/// 			Policy: pulumi.String(srcRolePolicy.ApplyT(func(srcRolePolicy iam.GetPolicyDocumentResult) (*string, error) {
/// 				return &srcRolePolicy.Json, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		dstFirehoseDeliveryStream, err := kinesis.NewFirehoseDeliveryStream(ctx, "dst", &kinesis.FirehoseDeliveryStreamArgs{
/// 			Tags: pulumi.StringMap{
/// 				"LogDeliveryEnabled": pulumi.String("true"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ec2.NewFlowLog(ctx, "src", &ec2.FlowLogArgs{
/// 			LogDestinationType:      pulumi.String("kinesis-data-firehose"),
/// 			LogDestination:          dstFirehoseDeliveryStream.Arn,
/// 			TrafficType:             pulumi.String("ALL"),
/// 			VpcId:                   src.ID(),
/// 			IamRoleArn:              srcRole.Arn,
/// 			DeliverCrossAccountRole: dst.Arn,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		dstRolePolicy, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{
/// 					Effect: pulumi.StringRef("Allow"),
/// 					Actions: []string{
/// 						"iam:CreateServiceLinkedRole",
/// 						"firehose:TagDeliveryStream",
/// 					},
/// 					Resources: []string{
/// 						"*",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iam.NewRolePolicy(ctx, "dst", &iam.RolePolicyArgs{
/// 			Name:   pulumi.String("AWSLogDeliveryFirehoseCrossAccountRolePolicy"),
/// 			Role:   dst.Name,
/// 			Policy: pulumi.String(dstRolePolicy.Json),
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
/// import com.pulumi.aws.ec2.Vpc;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.iam.RolePolicy;
/// import com.pulumi.aws.iam.RolePolicyArgs;
/// import com.pulumi.aws.kinesis.FirehoseDeliveryStream;
/// import com.pulumi.aws.kinesis.FirehoseDeliveryStreamArgs;
/// import com.pulumi.aws.ec2.FlowLog;
/// import com.pulumi.aws.ec2.FlowLogArgs;
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
///         // For source account
///         var src = new Vpc("src");
///
///         final var srcAssumeRolePolicy = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .actions("sts:AssumeRole")
///                 .effect("Allow")
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("Service")
///                     .identifiers("delivery.logs.amazonaws.com")
///                     .build())
///                 .build())
///             .build());
///
///         var srcRole = new Role("srcRole", RoleArgs.builder()
///             .name("tf-example-mySourceRole")
///             .assumeRolePolicy(srcAssumeRolePolicy.json())
///             .build());
///
///         // For destination account
///         final var dstAssumeRolePolicy = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .actions("sts:AssumeRole")
///                 .effect("Allow")
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("AWS")
///                     .identifiers(srcRole.arn())
///                     .build())
///                 .build())
///             .build());
///
///         var dst = new Role("dst", RoleArgs.builder()
///             .name("AWSLogDeliveryFirehoseCrossAccountRole")
///             .assumeRolePolicy(dstAssumeRolePolicy.applyValue(_dstAssumeRolePolicy -> _dstAssumeRolePolicy.json()))
///             .build());
///
///         final var srcRolePolicy = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(
///                 GetPolicyDocumentStatementArgs.builder()
///                     .effect("Allow")
///                     .actions("iam:PassRole")
///                     .resources(srcRole.arn())
///                     .conditions(
///                         GetPolicyDocumentStatementConditionArgs.builder()
///                             .test("StringEquals")
///                             .variable("iam:PassedToService")
///                             .values("delivery.logs.amazonaws.com")
///                             .build(),
///                         GetPolicyDocumentStatementConditionArgs.builder()
///                             .test("StringLike")
///                             .variable("iam:AssociatedResourceARN")
///                             .values(src.arn())
///                             .build())
///                     .build(),
///                 GetPolicyDocumentStatementArgs.builder()
///                     .effect("Allow")
///                     .actions(
///                         "logs:CreateLogDelivery",
///                         "logs:DeleteLogDelivery",
///                         "logs:ListLogDeliveries",
///                         "logs:GetLogDelivery")
///                     .resources("*")
///                     .build(),
///                 GetPolicyDocumentStatementArgs.builder()
///                     .effect("Allow")
///                     .actions("sts:AssumeRole")
///                     .resources(dst.arn())
///                     .build())
///             .build());
///
///         var srcPolicy = new RolePolicy("srcPolicy", RolePolicyArgs.builder()
///             .name("tf-example-mySourceRolePolicy")
///             .role(srcRole.name())
///             .policy(srcRolePolicy.applyValue(_srcRolePolicy -> _srcRolePolicy.json()))
///             .build());
///
///         var dstFirehoseDeliveryStream = new FirehoseDeliveryStream("dstFirehoseDeliveryStream", FirehoseDeliveryStreamArgs.builder()
///             .tags(Map.of("LogDeliveryEnabled", "true"))
///             .build());
///
///         var srcFlowLog = new FlowLog("srcFlowLog", FlowLogArgs.builder()
///             .logDestinationType("kinesis-data-firehose")
///             .logDestination(dstFirehoseDeliveryStream.arn())
///             .trafficType("ALL")
///             .vpcId(src.id())
///             .iamRoleArn(srcRole.arn())
///             .deliverCrossAccountRole(dst.arn())
///             .build());
///
///         final var dstRolePolicy = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .effect("Allow")
///                 .actions(
///                     "iam:CreateServiceLinkedRole",
///                     "firehose:TagDeliveryStream")
///                 .resources("*")
///                 .build())
///             .build());
///
///         var dstRolePolicy2 = new RolePolicy("dstRolePolicy2", RolePolicyArgs.builder()
///             .name("AWSLogDeliveryFirehoseCrossAccountRolePolicy")
///             .role(dst.name())
///             .policy(dstRolePolicy.json())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # For source account
///   src:
///     type: aws:ec2:Vpc
///   srcRole:
///     type: aws:iam:Role
///     name: src
///     properties:
///       name: tf-example-mySourceRole
///       assumeRolePolicy: ${srcAssumeRolePolicy.json}
///   srcPolicy:
///     type: aws:iam:RolePolicy
///     name: src_policy
///     properties:
///       name: tf-example-mySourceRolePolicy
///       role: ${srcRole.name}
///       policy: ${srcRolePolicy.json}
///   srcFlowLog:
///     type: aws:ec2:FlowLog
///     name: src
///     properties:
///       logDestinationType: kinesis-data-firehose
///       logDestination: ${dstFirehoseDeliveryStream.arn}
///       trafficType: ALL
///       vpcId: ${src.id}
///       iamRoleArn: ${srcRole.arn}
///       deliverCrossAccountRole: ${dst.arn}
///   dst:
///     type: aws:iam:Role
///     properties:
///       name: AWSLogDeliveryFirehoseCrossAccountRole
///       assumeRolePolicy: ${dstAssumeRolePolicy.json}
///   dstRolePolicy2:
///     type: aws:iam:RolePolicy
///     name: dst
///     properties:
///       name: AWSLogDeliveryFirehoseCrossAccountRolePolicy
///       role: ${dst.name}
///       policy: ${dstRolePolicy.json}
///   dstFirehoseDeliveryStream:
///     type: aws:kinesis:FirehoseDeliveryStream
///     name: dst
///     properties:
///       tags:
///         LogDeliveryEnabled: 'true'
/// variables:
///   srcAssumeRolePolicy:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - actions:
///               - sts:AssumeRole
///             effect: Allow
///             principals:
///               - type: Service
///                 identifiers:
///                   - delivery.logs.amazonaws.com
///   srcRolePolicy:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - effect: Allow
///             actions:
///               - iam:PassRole
///             resources:
///               - ${srcRole.arn}
///             conditions:
///               - test: StringEquals
///                 variable: iam:PassedToService
///                 values:
///                   - delivery.logs.amazonaws.com
///               - test: StringLike
///                 variable: iam:AssociatedResourceARN
///                 values:
///                   - ${src.arn}
///           - effect: Allow
///             actions:
///               - logs:CreateLogDelivery
///               - logs:DeleteLogDelivery
///               - logs:ListLogDeliveries
///               - logs:GetLogDelivery
///             resources:
///               - '*'
///           - effect: Allow
///             actions:
///               - sts:AssumeRole
///             resources:
///               - ${dst.arn}
///   # For destination account
///   dstAssumeRolePolicy:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - actions:
///               - sts:AssumeRole
///             effect: Allow
///             principals:
///               - type: AWS
///                 identifiers:
///                   - ${srcRole.arn}
///   dstRolePolicy:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - effect: Allow
///             actions:
///               - iam:CreateServiceLinkedRole
///               - firehose:TagDeliveryStream
///             resources:
///               - '*'
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Flow Logs using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/flowLog:FlowLog test_flow_log fl-1a2b3c4d
/// ```
class FlowLog extends pulumi.CustomResource {
  /// ARN of the Flow Log.
  late final pulumi.Output<String> arn;
  /// ARN of the IAM role in the destination account used for cross-account delivery of flow logs.
  late final pulumi.Output<String?> deliverCrossAccountRole;
  /// Describes the destination options for a flow log. More details below.
  late final pulumi.Output<FlowLogDestinationOptions?> destinationOptions;
  /// Elastic Network Interface ID to attach to.
  late final pulumi.Output<String?> eniId;
  /// ARN of the IAM role used to post flow logs. Corresponds to `DeliverLogsPermissionArn` in the [AWS API](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateFlowLogs.html).
  late final pulumi.Output<String?> iamRoleArn;
  /// ARN of the logging destination.
  late final pulumi.Output<String> logDestination;
  /// Logging destination type. Valid values: `cloud-watch-logs`, `s3`, `kinesis-data-firehose`. Default: `cloud-watch-logs`.
  late final pulumi.Output<String?> logDestinationType;
  /// The fields to include in the flow log record. Accepted format example: `"$${interface-id} $${srcaddr} $${dstaddr} $${srcport} $${dstport}"`.
  late final pulumi.Output<String> logFormat;
  /// The maximum interval of time during which a flow of packets is captured and aggregated into a flow log record.
  /// Valid Values: `60` seconds (1 minute) or `600` seconds (10 minutes). Default: `600`.
  /// When `transit_gateway_id` or `transit_gateway_attachment_id` is specified, `max_aggregation_interval` *must* be 60 seconds (1 minute).
  late final pulumi.Output<int?> maxAggregationInterval;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Regional NAT Gateway ID to attach to.
  late final pulumi.Output<String?> regionalNatGatewayId;
  /// Subnet ID to attach to.
  late final pulumi.Output<String?> subnetId;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// The type of traffic to capture. Valid values: `ACCEPT`,`REJECT`, `ALL`. Required if `eni_id`, `regional_nat_gateway_id`, `subnet_id`, or `vpc_id` is specified.
  late final pulumi.Output<String?> trafficType;
  /// Transit Gateway Attachment ID to attach to.
  late final pulumi.Output<String?> transitGatewayAttachmentId;
  /// Transit Gateway ID to attach to.
  late final pulumi.Output<String?> transitGatewayId;
  /// VPC ID to attach to.
  ///
  /// > **NOTE:** One of `eni_id`, `regional_nat_gateway_id`, `subnet_id`, `transit_gateway_id`, `transit_gateway_attachment_id`, or `vpc_id` must be specified.
  late final pulumi.Output<String?> vpcId;

  /// Creates a new [FlowLog].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FlowLog]. {@macro pulumi_ec2_flow_log_flow_log_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FlowLog(
    String name, {
    FlowLogArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/flowLog:FlowLog',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.deliverCrossAccountRole = registerOutput<String?>('deliverCrossAccountRole');
    this.destinationOptions = registerOutput<FlowLogDestinationOptions?>('destinationOptions');
    this.eniId = registerOutput<String?>('eniId');
    this.iamRoleArn = registerOutput<String?>('iamRoleArn');
    this.logDestination = registerOutput<String>('logDestination');
    this.logDestinationType = registerOutput<String?>('logDestinationType');
    this.logFormat = registerOutput<String>('logFormat');
    this.maxAggregationInterval = registerOutput<int?>('maxAggregationInterval');
    this.region = registerOutput<String>('region');
    this.regionalNatGatewayId = registerOutput<String?>('regionalNatGatewayId');
    this.subnetId = registerOutput<String?>('subnetId');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.trafficType = registerOutput<String?>('trafficType');
    this.transitGatewayAttachmentId = registerOutput<String?>('transitGatewayAttachmentId');
    this.transitGatewayId = registerOutput<String?>('transitGatewayId');
    this.vpcId = registerOutput<String?>('vpcId');
  }
}
