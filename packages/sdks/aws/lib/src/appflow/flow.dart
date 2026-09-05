import 'package:pulumi/pulumi.dart' as pulumi;
import 'flow_args.dart';
import 'flow_destination_flow_config.dart';
import 'flow_metadata_catalog_config.dart';
import 'flow_source_flow_config.dart';
import 'flow_state.dart';
import 'flow_task.dart';
import 'flow_trigger_config.dart';

/// Provides an AppFlow flow resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const exampleSourceBucket = new aws.s3.Bucket("example_source", {bucket: "example-source"});
/// const exampleSource = aws.iam.getPolicyDocument({
///     statements: [{
///         principals: [{
///             type: "Service",
///             identifiers: ["appflow.amazonaws.com"],
///         }],
///         sid: "AllowAppFlowSourceActions",
///         effect: "Allow",
///         actions: [
///             "s3:ListBucket",
///             "s3:GetObject",
///         ],
///         resources: [
///             "arn:aws:s3:::example-source",
///             "arn:aws:s3:::example-source/*",
///         ],
///     }],
/// });
/// const exampleSourceBucketPolicy = new aws.s3.BucketPolicy("example_source", {
///     bucket: exampleSourceBucket.id,
///     policy: exampleSource.then(exampleSource => exampleSource.json),
/// });
/// const example = new aws.s3.BucketObjectv2("example", {
///     bucket: exampleSourceBucket.id,
///     key: "example_source.csv",
///     source: new pulumi.asset.FileAsset("example_source.csv"),
/// });
/// const exampleDestinationBucket = new aws.s3.Bucket("example_destination", {bucket: "example-destination"});
/// const exampleDestination = aws.iam.getPolicyDocument({
///     statements: [{
///         principals: [{
///             type: "Service",
///             identifiers: ["appflow.amazonaws.com"],
///         }],
///         sid: "AllowAppFlowDestinationActions",
///         effect: "Allow",
///         actions: [
///             "s3:PutObject",
///             "s3:AbortMultipartUpload",
///             "s3:ListMultipartUploadParts",
///             "s3:ListBucketMultipartUploads",
///             "s3:GetBucketAcl",
///             "s3:PutObjectAcl",
///         ],
///         resources: [
///             "arn:aws:s3:::example-destination",
///             "arn:aws:s3:::example-destination/*",
///         ],
///     }],
/// });
/// const exampleDestinationBucketPolicy = new aws.s3.BucketPolicy("example_destination", {
///     bucket: exampleDestinationBucket.id,
///     policy: exampleDestination.then(exampleDestination => exampleDestination.json),
/// });
/// const exampleFlow = new aws.appflow.Flow("example", {
///     sourceFlowConfig: {
///         sourceConnectorProperties: {
///             s3: {
///                 bucketName: exampleSourceBucketPolicy.bucket,
///                 bucketPrefix: "example",
///             },
///         },
///         connectorType: "S3",
///     },
///     triggerConfig: {
///         triggerType: "OnDemand",
///     },
///     destinationFlowConfigs: [{
///         destinationConnectorProperties: {
///             s3: {
///                 s3OutputFormatConfig: {
///                     prefixConfig: {
///                         prefixType: "PATH",
///                     },
///                 },
///                 bucketName: exampleDestinationBucketPolicy.bucket,
///             },
///         },
///         connectorType: "S3",
///     }],
///     tasks: [{
///         connectorOperators: [{
///             s3: "NO_OP",
///         }],
///         sourceFields: ["exampleField"],
///         destinationField: "exampleField",
///         taskType: "Map",
///     }],
///     name: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_source_bucket = aws.s3.Bucket("example_source", bucket="example-source")
/// example_source = aws.iam.get_policy_document(statements=[{
///     "principals": [{
///         "type": "Service",
///         "identifiers": ["appflow.amazonaws.com"],
///     }],
///     "sid": "AllowAppFlowSourceActions",
///     "effect": "Allow",
///     "actions": [
///         "s3:ListBucket",
///         "s3:GetObject",
///     ],
///     "resources": [
///         "arn:aws:s3:::example-source",
///         "arn:aws:s3:::example-source/*",
///     ],
/// }])
/// example_source_bucket_policy = aws.s3.BucketPolicy("example_source",
///     bucket=example_source_bucket.id,
///     policy=example_source.json)
/// example = aws.s3.BucketObjectv2("example",
///     bucket=example_source_bucket.id,
///     key="example_source.csv",
///     source=pulumi.FileAsset("example_source.csv"))
/// example_destination_bucket = aws.s3.Bucket("example_destination", bucket="example-destination")
/// example_destination = aws.iam.get_policy_document(statements=[{
///     "principals": [{
///         "type": "Service",
///         "identifiers": ["appflow.amazonaws.com"],
///     }],
///     "sid": "AllowAppFlowDestinationActions",
///     "effect": "Allow",
///     "actions": [
///         "s3:PutObject",
///         "s3:AbortMultipartUpload",
///         "s3:ListMultipartUploadParts",
///         "s3:ListBucketMultipartUploads",
///         "s3:GetBucketAcl",
///         "s3:PutObjectAcl",
///     ],
///     "resources": [
///         "arn:aws:s3:::example-destination",
///         "arn:aws:s3:::example-destination/*",
///     ],
/// }])
/// example_destination_bucket_policy = aws.s3.BucketPolicy("example_destination",
///     bucket=example_destination_bucket.id,
///     policy=example_destination.json)
/// example_flow = aws.appflow.Flow("example",
///     source_flow_config={
///         "source_connector_properties": {
///             "s3": {
///                 "bucket_name": example_source_bucket_policy.bucket,
///                 "bucket_prefix": "example",
///             },
///         },
///         "connector_type": "S3",
///     },
///     trigger_config={
///         "trigger_type": "OnDemand",
///     },
///     destination_flow_configs=[{
///         "destination_connector_properties": {
///             "s3": {
///                 "s3_output_format_config": {
///                     "prefix_config": {
///                         "prefix_type": "PATH",
///                     },
///                 },
///                 "bucket_name": example_destination_bucket_policy.bucket,
///             },
///         },
///         "connector_type": "S3",
///     }],
///     tasks=[{
///         "connector_operators": [{
///             "s3": "NO_OP",
///         }],
///         "source_fields": ["exampleField"],
///         "destination_field": "exampleField",
///         "task_type": "Map",
///     }],
///     name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleSourceBucket = new Aws.S3.Bucket("example_source", new()
///     {
///         BucketName = "example-source",
///     });
///
///     var exampleSource = Aws.Iam.GetPolicyDocument.Invoke(new()
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
///                             "appflow.amazonaws.com",
///                         },
///                     },
///                 },
///                 Sid = "AllowAppFlowSourceActions",
///                 Effect = "Allow",
///                 Actions = new[]
///                 {
///                     "s3:ListBucket",
///                     "s3:GetObject",
///                 },
///                 Resources = new[]
///                 {
///                     "arn:aws:s3:::example-source",
///                     "arn:aws:s3:::example-source/*",
///                 },
///             },
///         },
///     });
///
///     var exampleSourceBucketPolicy = new Aws.S3.BucketPolicy("example_source", new()
///     {
///         Bucket = exampleSourceBucket.Id,
///         Policy = exampleSource.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
///     var example = new Aws.S3.BucketObjectv2("example", new()
///     {
///         Bucket = exampleSourceBucket.Id,
///         Key = "example_source.csv",
///         Source = new FileAsset("example_source.csv"),
///     });
///
///     var exampleDestinationBucket = new Aws.S3.Bucket("example_destination", new()
///     {
///         BucketName = "example-destination",
///     });
///
///     var exampleDestination = Aws.Iam.GetPolicyDocument.Invoke(new()
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
///                             "appflow.amazonaws.com",
///                         },
///                     },
///                 },
///                 Sid = "AllowAppFlowDestinationActions",
///                 Effect = "Allow",
///                 Actions = new[]
///                 {
///                     "s3:PutObject",
///                     "s3:AbortMultipartUpload",
///                     "s3:ListMultipartUploadParts",
///                     "s3:ListBucketMultipartUploads",
///                     "s3:GetBucketAcl",
///                     "s3:PutObjectAcl",
///                 },
///                 Resources = new[]
///                 {
///                     "arn:aws:s3:::example-destination",
///                     "arn:aws:s3:::example-destination/*",
///                 },
///             },
///         },
///     });
///
///     var exampleDestinationBucketPolicy = new Aws.S3.BucketPolicy("example_destination", new()
///     {
///         Bucket = exampleDestinationBucket.Id,
///         Policy = exampleDestination.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
///     var exampleFlow = new Aws.AppFlow.Flow("example", new()
///     {
///         SourceFlowConfig = new Aws.AppFlow.Inputs.FlowSourceFlowConfigArgs
///         {
///             SourceConnectorProperties = new Aws.AppFlow.Inputs.FlowSourceFlowConfigSourceConnectorPropertiesArgs
///             {
///                 S3 = new Aws.AppFlow.Inputs.FlowSourceFlowConfigSourceConnectorPropertiesS3Args
///                 {
///                     BucketName = exampleSourceBucketPolicy.Bucket,
///                     BucketPrefix = "example",
///                 },
///             },
///             ConnectorType = "S3",
///         },
///         TriggerConfig = new Aws.AppFlow.Inputs.FlowTriggerConfigArgs
///         {
///             TriggerType = "OnDemand",
///         },
///         DestinationFlowConfigs = new[]
///         {
///             new Aws.AppFlow.Inputs.FlowDestinationFlowConfigArgs
///             {
///                 DestinationConnectorProperties = new Aws.AppFlow.Inputs.FlowDestinationFlowConfigDestinationConnectorPropertiesArgs
///                 {
///                     S3 = new Aws.AppFlow.Inputs.FlowDestinationFlowConfigDestinationConnectorPropertiesS3Args
///                     {
///                         S3OutputFormatConfig = new Aws.AppFlow.Inputs.FlowDestinationFlowConfigDestinationConnectorPropertiesS3S3OutputFormatConfigArgs
///                         {
///                             PrefixConfig = new Aws.AppFlow.Inputs.FlowDestinationFlowConfigDestinationConnectorPropertiesS3S3OutputFormatConfigPrefixConfigArgs
///                             {
///                                 PrefixType = "PATH",
///                             },
///                         },
///                         BucketName = exampleDestinationBucketPolicy.Bucket,
///                     },
///                 },
///                 ConnectorType = "S3",
///             },
///         },
///         Tasks = new[]
///         {
///             new Aws.AppFlow.Inputs.FlowTaskArgs
///             {
///                 ConnectorOperators = new[]
///                 {
///                     new Aws.AppFlow.Inputs.FlowTaskConnectorOperatorArgs
///                     {
///                         S3 = "NO_OP",
///                     },
///                 },
///                 SourceFields = new[]
///                 {
///                     "exampleField",
///                 },
///                 DestinationField = "exampleField",
///                 TaskType = "Map",
///             },
///         },
///         Name = "example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/appflow"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		exampleSourceBucket, err := s3.NewBucket(ctx, "example_source", &s3.BucketArgs{
/// 			Bucket: pulumi.String("example-source"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSource, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{
/// 					Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// 						{
/// 							Type: "Service",
/// 							Identifiers: []string{
/// 								"appflow.amazonaws.com",
/// 							},
/// 						},
/// 					},
/// 					Sid:    pulumi.StringRef("AllowAppFlowSourceActions"),
/// 					Effect: pulumi.StringRef("Allow"),
/// 					Actions: []string{
/// 						"s3:ListBucket",
/// 						"s3:GetObject",
/// 					},
/// 					Resources: []string{
/// 						"arn:aws:s3:::example-source",
/// 						"arn:aws:s3:::example-source/*",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSourceBucketPolicy, err := s3.NewBucketPolicy(ctx, "example_source", &s3.BucketPolicyArgs{
/// 			Bucket: exampleSourceBucket.ID().ToIDOutput().ToStringOutput(),
/// 			Policy: pulumi.String(exampleSource.Json),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = s3.NewBucketObjectv2(ctx, "example", &s3.BucketObjectv2Args{
/// 			Bucket: exampleSourceBucket.ID().ToIDOutput().ToStringOutput(),
/// 			Key:    pulumi.String("example_source.csv"),
/// 			Source: pulumi.NewFileAsset("example_source.csv"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleDestinationBucket, err := s3.NewBucket(ctx, "example_destination", &s3.BucketArgs{
/// 			Bucket: pulumi.String("example-destination"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleDestination, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{
/// 					Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// 						{
/// 							Type: "Service",
/// 							Identifiers: []string{
/// 								"appflow.amazonaws.com",
/// 							},
/// 						},
/// 					},
/// 					Sid:    pulumi.StringRef("AllowAppFlowDestinationActions"),
/// 					Effect: pulumi.StringRef("Allow"),
/// 					Actions: []string{
/// 						"s3:PutObject",
/// 						"s3:AbortMultipartUpload",
/// 						"s3:ListMultipartUploadParts",
/// 						"s3:ListBucketMultipartUploads",
/// 						"s3:GetBucketAcl",
/// 						"s3:PutObjectAcl",
/// 					},
/// 					Resources: []string{
/// 						"arn:aws:s3:::example-destination",
/// 						"arn:aws:s3:::example-destination/*",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleDestinationBucketPolicy, err := s3.NewBucketPolicy(ctx, "example_destination", &s3.BucketPolicyArgs{
/// 			Bucket: exampleDestinationBucket.ID().ToIDOutput().ToStringOutput(),
/// 			Policy: pulumi.String(exampleDestination.Json),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = appflow.NewFlow(ctx, "example", &appflow.FlowArgs{
/// 			SourceFlowConfig: &appflow.FlowSourceFlowConfigArgs{
/// 				SourceConnectorProperties: &appflow.FlowSourceFlowConfigSourceConnectorPropertiesArgs{
/// 					S3: &appflow.FlowSourceFlowConfigSourceConnectorPropertiesS3Args{
/// 						BucketName:   exampleSourceBucketPolicy.Bucket,
/// 						BucketPrefix: pulumi.String("example"),
/// 					},
/// 				},
/// 				ConnectorType: pulumi.String("S3"),
/// 			},
/// 			TriggerConfig: &appflow.FlowTriggerConfigArgs{
/// 				TriggerType: pulumi.String("OnDemand"),
/// 			},
/// 			DestinationFlowConfigs: appflow.FlowDestinationFlowConfigArray{
/// 				&appflow.FlowDestinationFlowConfigArgs{
/// 					DestinationConnectorProperties: &appflow.FlowDestinationFlowConfigDestinationConnectorPropertiesArgs{
/// 						S3: &appflow.FlowDestinationFlowConfigDestinationConnectorPropertiesS3Args{
/// 							S3OutputFormatConfig: &appflow.FlowDestinationFlowConfigDestinationConnectorPropertiesS3S3OutputFormatConfigArgs{
/// 								PrefixConfig: &appflow.FlowDestinationFlowConfigDestinationConnectorPropertiesS3S3OutputFormatConfigPrefixConfigArgs{
/// 									PrefixType: pulumi.String("PATH"),
/// 								},
/// 							},
/// 							BucketName: exampleDestinationBucketPolicy.Bucket,
/// 						},
/// 					},
/// 					ConnectorType: pulumi.String("S3"),
/// 				},
/// 			},
/// 			Tasks: appflow.FlowTaskArray{
/// 				&appflow.FlowTaskArgs{
/// 					ConnectorOperators: appflow.FlowTaskConnectorOperatorArray{
/// 						&appflow.FlowTaskConnectorOperatorArgs{
/// 							S3: pulumi.String("NO_OP"),
/// 						},
/// 					},
/// 					SourceFields: pulumi.StringArray{
/// 						pulumi.String("exampleField"),
/// 					},
/// 					DestinationField: pulumi.String("exampleField"),
/// 					TaskType:         pulumi.String("Map"),
/// 				},
/// 			},
/// 			Name: pulumi.String("example"),
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
/// data "aws_iam_getpolicydocument" "exampleSource" {
///   statements {
///     principals {
///       type        = "Service"
///       identifiers = ["appflow.amazonaws.com"]
///     }
///     sid       = "AllowAppFlowSourceActions"
///     effect    = "Allow"
///     actions   = ["s3:ListBucket", "s3:GetObject"]
///     resources = ["arn:aws:s3:::example-source", "arn:aws:s3:::example-source/*"]
///   }
/// }
/// data "aws_iam_getpolicydocument" "exampleDestination" {
///   statements {
///     principals {
///       type        = "Service"
///       identifiers = ["appflow.amazonaws.com"]
///     }
///     sid       = "AllowAppFlowDestinationActions"
///     effect    = "Allow"
///     actions   = ["s3:PutObject", "s3:AbortMultipartUpload", "s3:ListMultipartUploadParts", "s3:ListBucketMultipartUploads", "s3:GetBucketAcl", "s3:PutObjectAcl"]
///     resources = ["arn:aws:s3:::example-destination", "arn:aws:s3:::example-destination/*"]
///   }
/// }
///
/// resource "aws_s3_bucket" "example_source" {
///   bucket = "example-source"
/// }
/// resource "aws_s3_bucketpolicy" "example_source" {
///   bucket = aws_s3_bucket.example_source.id
///   policy = data.aws_iam_getpolicydocument.exampleSource.json
/// }
/// resource "aws_s3_bucketobjectv2" "example" {
///   bucket = aws_s3_bucket.example_source.id
///   key    = "example_source.csv"
///   source = fileAsset("example_source.csv")
/// }
/// resource "aws_s3_bucket" "example_destination" {
///   bucket = "example-destination"
/// }
/// resource "aws_s3_bucketpolicy" "example_destination" {
///   bucket = aws_s3_bucket.example_destination.id
///   policy = data.aws_iam_getpolicydocument.exampleDestination.json
/// }
/// resource "aws_appflow_flow" "example" {
///   source_flow_config = {
///     source_connector_properties = {
///       s3 = {
///         bucket_name   = aws_s3_bucketpolicy.example_source.bucket
///         bucket_prefix = "example"
///       }
///     }
///     connector_type = "S3"
///   }
///   trigger_config = {
///     trigger_type = "OnDemand"
///   }
///   destination_flow_configs {
///     destination_connector_properties = {
///       s3 = {
///         s3_output_format_config = {
///           prefix_config = {
///             prefix_type = "PATH"
///           }
///         }
///         bucket_name = aws_s3_bucketpolicy.example_destination.bucket
///       }
///     }
///     connector_type = "S3"
///   }
///   tasks {
///     connector_operators {
///       s3 = "NO_OP"
///     }
///     source_fields     = ["exampleField"]
///     destination_field = "exampleField"
///     task_type         = "Map"
///   }
///   name = "example"
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
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementPrincipalArgs;
/// import com.pulumi.aws.s3.BucketPolicy;
/// import com.pulumi.aws.s3.BucketPolicyArgs;
/// import com.pulumi.aws.s3.BucketObjectv2;
/// import com.pulumi.aws.s3.BucketObjectv2Args;
/// import com.pulumi.aws.appflow.Flow;
/// import com.pulumi.aws.appflow.FlowArgs;
/// import com.pulumi.aws.appflow.inputs.FlowSourceFlowConfigArgs;
/// import com.pulumi.aws.appflow.inputs.FlowSourceFlowConfigSourceConnectorPropertiesArgs;
/// import com.pulumi.aws.appflow.inputs.FlowSourceFlowConfigSourceConnectorPropertiesS3Args;
/// import com.pulumi.aws.appflow.inputs.FlowTriggerConfigArgs;
/// import com.pulumi.aws.appflow.inputs.FlowDestinationFlowConfigArgs;
/// import com.pulumi.aws.appflow.inputs.FlowDestinationFlowConfigDestinationConnectorPropertiesArgs;
/// import com.pulumi.aws.appflow.inputs.FlowDestinationFlowConfigDestinationConnectorPropertiesS3Args;
/// import com.pulumi.aws.appflow.inputs.FlowDestinationFlowConfigDestinationConnectorPropertiesS3S3OutputFormatConfigArgs;
/// import com.pulumi.aws.appflow.inputs.FlowDestinationFlowConfigDestinationConnectorPropertiesS3S3OutputFormatConfigPrefixConfigArgs;
/// import com.pulumi.aws.appflow.inputs.FlowTaskArgs;
/// import com.pulumi.aws.appflow.inputs.FlowTaskConnectorOperatorArgs;
/// import com.pulumi.asset.FileAsset;
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
///         var exampleSourceBucket = new Bucket("exampleSourceBucket", BucketArgs.builder()
///             .bucket("example-source")
///             .build());
///
///         final var exampleSource = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("Service")
///                     .identifiers("appflow.amazonaws.com")
///                     .build())
///                 .sid("AllowAppFlowSourceActions")
///                 .effect("Allow")
///                 .actions(
///                     "s3:ListBucket",
///                     "s3:GetObject")
///                 .resources(
///                     "arn:aws:s3:::example-source",
///                     "arn:aws:s3:::example-source/*")
///                 .build())
///             .build());
///
///         var exampleSourceBucketPolicy = new BucketPolicy("exampleSourceBucketPolicy", BucketPolicyArgs.builder()
///             .bucket(exampleSourceBucket.id())
///             .policy(exampleSource.json())
///             .build());
///
///         var example = new BucketObjectv2("example", BucketObjectv2Args.builder()
///             .bucket(exampleSourceBucket.id())
///             .key("example_source.csv")
///             .source(new FileAsset("example_source.csv"))
///             .build());
///
///         var exampleDestinationBucket = new Bucket("exampleDestinationBucket", BucketArgs.builder()
///             .bucket("example-destination")
///             .build());
///
///         final var exampleDestination = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("Service")
///                     .identifiers("appflow.amazonaws.com")
///                     .build())
///                 .sid("AllowAppFlowDestinationActions")
///                 .effect("Allow")
///                 .actions(
///                     "s3:PutObject",
///                     "s3:AbortMultipartUpload",
///                     "s3:ListMultipartUploadParts",
///                     "s3:ListBucketMultipartUploads",
///                     "s3:GetBucketAcl",
///                     "s3:PutObjectAcl")
///                 .resources(
///                     "arn:aws:s3:::example-destination",
///                     "arn:aws:s3:::example-destination/*")
///                 .build())
///             .build());
///
///         var exampleDestinationBucketPolicy = new BucketPolicy("exampleDestinationBucketPolicy", BucketPolicyArgs.builder()
///             .bucket(exampleDestinationBucket.id())
///             .policy(exampleDestination.json())
///             .build());
///
///         var exampleFlow = new Flow("exampleFlow", FlowArgs.builder()
///             .sourceFlowConfig(FlowSourceFlowConfigArgs.builder()
///                 .sourceConnectorProperties(FlowSourceFlowConfigSourceConnectorPropertiesArgs.builder()
///                     .s3(FlowSourceFlowConfigSourceConnectorPropertiesS3Args.builder()
///                         .bucketName(exampleSourceBucketPolicy.bucket())
///                         .bucketPrefix("example")
///                         .build())
///                     .build())
///                 .connectorType("S3")
///                 .build())
///             .triggerConfig(FlowTriggerConfigArgs.builder()
///                 .triggerType("OnDemand")
///                 .build())
///             .destinationFlowConfigs(FlowDestinationFlowConfigArgs.builder()
///                 .destinationConnectorProperties(FlowDestinationFlowConfigDestinationConnectorPropertiesArgs.builder()
///                     .s3(FlowDestinationFlowConfigDestinationConnectorPropertiesS3Args.builder()
///                         .s3OutputFormatConfig(FlowDestinationFlowConfigDestinationConnectorPropertiesS3S3OutputFormatConfigArgs.builder()
///                             .prefixConfig(FlowDestinationFlowConfigDestinationConnectorPropertiesS3S3OutputFormatConfigPrefixConfigArgs.builder()
///                                 .prefixType("PATH")
///                                 .build())
///                             .build())
///                         .bucketName(exampleDestinationBucketPolicy.bucket())
///                         .build())
///                     .build())
///                 .connectorType("S3")
///                 .build())
///             .tasks(FlowTaskArgs.builder()
///                 .connectorOperators(FlowTaskConnectorOperatorArgs.builder()
///                     .s3("NO_OP")
///                     .build())
///                 .sourceFields("exampleField")
///                 .destinationField("exampleField")
///                 .taskType("Map")
///                 .build())
///             .name("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleSourceBucket:
///     type: aws:s3:Bucket
///     name: example_source
///     properties:
///       bucket: example-source
///   exampleSourceBucketPolicy:
///     type: aws:s3:BucketPolicy
///     name: example_source
///     properties:
///       bucket: ${exampleSourceBucket.id}
///       policy: ${exampleSource.json}
///   example:
///     type: aws:s3:BucketObjectv2
///     properties:
///       bucket: ${exampleSourceBucket.id}
///       key: example_source.csv
///       source:
///         fn::fileAsset: example_source.csv
///   exampleDestinationBucket:
///     type: aws:s3:Bucket
///     name: example_destination
///     properties:
///       bucket: example-destination
///   exampleDestinationBucketPolicy:
///     type: aws:s3:BucketPolicy
///     name: example_destination
///     properties:
///       bucket: ${exampleDestinationBucket.id}
///       policy: ${exampleDestination.json}
///   exampleFlow:
///     type: aws:appflow:Flow
///     name: example
///     properties:
///       sourceFlowConfig:
///         sourceConnectorProperties:
///           s3:
///             bucketName: ${exampleSourceBucketPolicy.bucket}
///             bucketPrefix: example
///         connectorType: S3
///       triggerConfig:
///         triggerType: OnDemand
///       destinationFlowConfigs:
///         - destinationConnectorProperties:
///             s3:
///               s3OutputFormatConfig:
///                 prefixConfig:
///                   prefixType: PATH
///               bucketName: ${exampleDestinationBucketPolicy.bucket}
///           connectorType: S3
///       tasks:
///         - connectorOperators:
///             - s3: NO_OP
///           sourceFields:
///             - exampleField
///           destinationField: exampleField
///           taskType: Map
///       name: example
/// variables:
///   exampleSource:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - principals:
///               - type: Service
///                 identifiers:
///                   - appflow.amazonaws.com
///             sid: AllowAppFlowSourceActions
///             effect: Allow
///             actions:
///               - s3:ListBucket
///               - s3:GetObject
///             resources:
///               - arn:aws:s3:::example-source
///               - arn:aws:s3:::example-source/*
///   exampleDestination:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - principals:
///               - type: Service
///                 identifiers:
///                   - appflow.amazonaws.com
///             sid: AllowAppFlowDestinationActions
///             effect: Allow
///             actions:
///               - s3:PutObject
///               - s3:AbortMultipartUpload
///               - s3:ListMultipartUploadParts
///               - s3:ListBucketMultipartUploads
///               - s3:GetBucketAcl
///               - s3:PutObjectAcl
///             resources:
///               - arn:aws:s3:::example-destination
///               - arn:aws:s3:::example-destination/*
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `name` (String) Name of the AppFlow flow.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import AppFlow flows using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:appflow/flow:Flow example example-flow
/// ```
class Flow extends pulumi.CustomResource {
  /// Flow's ARN.
  late final pulumi.Output<String> arn;
  /// Description of the flow.
  late final pulumi.Output<String?> description;
  /// Configuration that controls how Amazon AppFlow places data in the destination connector. See the `destinationFlowConfig` Block for details.
  late final pulumi.Output<List<FlowDestinationFlowConfig>> destinationFlowConfigs;
  /// Current status of the flow.
  late final pulumi.Output<String> flowStatus;
  /// ARN of the KMS key you provide for encryption. Required if you do not want to use the Amazon AppFlow-managed KMS key. Uses the Amazon AppFlow-managed KMS key when not provided.
  late final pulumi.Output<String> kmsArn;
  /// Configuration that determines how Amazon AppFlow catalogs the data that the flow transfers. See the `metadataCatalogConfig` Block for details.
  late final pulumi.Output<FlowMetadataCatalogConfig> metadataCatalogConfig;
  /// Name of the flow.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Configuration that controls how Amazon AppFlow retrieves data from the source connector. See the `sourceFlowConfig` Block for details.
  late final pulumi.Output<FlowSourceFlowConfig> sourceFlowConfig;
  /// Key-value mapping of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Tasks that Amazon AppFlow performs while transferring the data in the flow run. See the `task` Block for details.
  late final pulumi.Output<List<FlowTask>> tasks;
  /// Configuration that determines how and when the flow runs. See the `triggerConfig` Block for details.
  late final pulumi.Output<FlowTriggerConfig> triggerConfig;

  /// Creates a new [Flow].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Flow]. {@macro pulumi_appflow_flow_flow_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Flow(
    String name, {
    FlowArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:appflow/flow:Flow',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    destinationFlowConfigs = registerOutput<List<FlowDestinationFlowConfig>>('destinationFlowConfigs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FlowDestinationFlowConfig>(guardedValue, (value) => FlowDestinationFlowConfig.fromMap((value as Map).cast<String, dynamic>())); });
    flowStatus = registerOutput<String>('flowStatus');
    kmsArn = registerOutput<String>('kmsArn');
    metadataCatalogConfig = registerOutput<FlowMetadataCatalogConfig>('metadataCatalogConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FlowMetadataCatalogConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    sourceFlowConfig = registerOutput<FlowSourceFlowConfig>('sourceFlowConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FlowSourceFlowConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tasks = registerOutput<List<FlowTask>>('tasks', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FlowTask>(guardedValue, (value) => FlowTask.fromMap((value as Map).cast<String, dynamic>())); });
    triggerConfig = registerOutput<FlowTriggerConfig>('triggerConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FlowTriggerConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [Flow] resource's state with the given [name] and [id].
  static Flow get(
    String name,
    pulumi.Input<String> id, {
    FlowState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Flow._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Flow._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:appflow/flow:Flow',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    destinationFlowConfigs = registerOutput<List<FlowDestinationFlowConfig>>('destinationFlowConfigs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FlowDestinationFlowConfig>(guardedValue, (value) => FlowDestinationFlowConfig.fromMap((value as Map).cast<String, dynamic>())); });
    flowStatus = registerOutput<String>('flowStatus');
    kmsArn = registerOutput<String>('kmsArn');
    metadataCatalogConfig = registerOutput<FlowMetadataCatalogConfig>('metadataCatalogConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FlowMetadataCatalogConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    sourceFlowConfig = registerOutput<FlowSourceFlowConfig>('sourceFlowConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FlowSourceFlowConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tasks = registerOutput<List<FlowTask>>('tasks', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FlowTask>(guardedValue, (value) => FlowTask.fromMap((value as Map).cast<String, dynamic>())); });
    triggerConfig = registerOutput<FlowTriggerConfig>('triggerConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FlowTriggerConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [Flow] resource.
  Flow.reference(String urn)
    : super(
        'aws:appflow/flow:Flow',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    destinationFlowConfigs = registerOutput<List<FlowDestinationFlowConfig>>('destinationFlowConfigs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FlowDestinationFlowConfig>(guardedValue, (value) => FlowDestinationFlowConfig.fromMap((value as Map).cast<String, dynamic>())); });
    flowStatus = registerOutput<String>('flowStatus');
    kmsArn = registerOutput<String>('kmsArn');
    metadataCatalogConfig = registerOutput<FlowMetadataCatalogConfig>('metadataCatalogConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FlowMetadataCatalogConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    sourceFlowConfig = registerOutput<FlowSourceFlowConfig>('sourceFlowConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FlowSourceFlowConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tasks = registerOutput<List<FlowTask>>('tasks', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FlowTask>(guardedValue, (value) => FlowTask.fromMap((value as Map).cast<String, dynamic>())); });
    triggerConfig = registerOutput<FlowTriggerConfig>('triggerConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FlowTriggerConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
