import 'package:pulumi/pulumi.dart' as pulumi;
import 'flow_args.dart';
import 'flow_destination_flow_config.dart';
import 'flow_metadata_catalog_config.dart';
import 'flow_source_flow_config.dart';
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
///         sid: "AllowAppFlowSourceActions",
///         effect: "Allow",
///         principals: [{
///             type: "Service",
///             identifiers: ["appflow.amazonaws.com"],
///         }],
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
///         sid: "AllowAppFlowDestinationActions",
///         effect: "Allow",
///         principals: [{
///             type: "Service",
///             identifiers: ["appflow.amazonaws.com"],
///         }],
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
///     name: "example",
///     sourceFlowConfig: {
///         connectorType: "S3",
///         sourceConnectorProperties: {
///             s3: {
///                 bucketName: exampleSourceBucketPolicy.bucket,
///                 bucketPrefix: "example",
///             },
///         },
///     },
///     destinationFlowConfigs: [{
///         connectorType: "S3",
///         destinationConnectorProperties: {
///             s3: {
///                 bucketName: exampleDestinationBucketPolicy.bucket,
///                 s3OutputFormatConfig: {
///                     prefixConfig: {
///                         prefixType: "PATH",
///                     },
///                 },
///             },
///         },
///     }],
///     tasks: [{
///         sourceFields: ["exampleField"],
///         destinationField: "exampleField",
///         taskType: "Map",
///         connectorOperators: [{
///             s3: "NO_OP",
///         }],
///     }],
///     triggerConfig: {
///         triggerType: "OnDemand",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_source_bucket = aws.s3.Bucket("example_source", bucket="example-source")
/// example_source = aws.iam.get_policy_document(statements=[{
///     "sid": "AllowAppFlowSourceActions",
///     "effect": "Allow",
///     "principals": [{
///         "type": "Service",
///         "identifiers": ["appflow.amazonaws.com"],
///     }],
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
///     "sid": "AllowAppFlowDestinationActions",
///     "effect": "Allow",
///     "principals": [{
///         "type": "Service",
///         "identifiers": ["appflow.amazonaws.com"],
///     }],
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
///     name="example",
///     source_flow_config={
///         "connector_type": "S3",
///         "source_connector_properties": {
///             "s3": {
///                 "bucket_name": example_source_bucket_policy.bucket,
///                 "bucket_prefix": "example",
///             },
///         },
///     },
///     destination_flow_configs=[{
///         "connector_type": "S3",
///         "destination_connector_properties": {
///             "s3": {
///                 "bucket_name": example_destination_bucket_policy.bucket,
///                 "s3_output_format_config": {
///                     "prefix_config": {
///                         "prefix_type": "PATH",
///                     },
///                 },
///             },
///         },
///     }],
///     tasks=[{
///         "source_fields": ["exampleField"],
///         "destination_field": "exampleField",
///         "task_type": "Map",
///         "connector_operators": [{
///             "s3": "NO_OP",
///         }],
///     }],
///     trigger_config={
///         "trigger_type": "OnDemand",
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
///                 Sid = "AllowAppFlowSourceActions",
///                 Effect = "Allow",
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
///                 Sid = "AllowAppFlowDestinationActions",
///                 Effect = "Allow",
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
///         Name = "example",
///         SourceFlowConfig = new Aws.AppFlow.Inputs.FlowSourceFlowConfigArgs
///         {
///             ConnectorType = "S3",
///             SourceConnectorProperties = new Aws.AppFlow.Inputs.FlowSourceFlowConfigSourceConnectorPropertiesArgs
///             {
///                 S3 = new Aws.AppFlow.Inputs.FlowSourceFlowConfigSourceConnectorPropertiesS3Args
///                 {
///                     BucketName = exampleSourceBucketPolicy.Bucket,
///                     BucketPrefix = "example",
///                 },
///             },
///         },
///         DestinationFlowConfigs = new[]
///         {
///             new Aws.AppFlow.Inputs.FlowDestinationFlowConfigArgs
///             {
///                 ConnectorType = "S3",
///                 DestinationConnectorProperties = new Aws.AppFlow.Inputs.FlowDestinationFlowConfigDestinationConnectorPropertiesArgs
///                 {
///                     S3 = new Aws.AppFlow.Inputs.FlowDestinationFlowConfigDestinationConnectorPropertiesS3Args
///                     {
///                         BucketName = exampleDestinationBucketPolicy.Bucket,
///                         S3OutputFormatConfig = new Aws.AppFlow.Inputs.FlowDestinationFlowConfigDestinationConnectorPropertiesS3S3OutputFormatConfigArgs
///                         {
///                             PrefixConfig = new Aws.AppFlow.Inputs.FlowDestinationFlowConfigDestinationConnectorPropertiesS3S3OutputFormatConfigPrefixConfigArgs
///                             {
///                                 PrefixType = "PATH",
///                             },
///                         },
///                     },
///                 },
///             },
///         },
///         Tasks = new[]
///         {
///             new Aws.AppFlow.Inputs.FlowTaskArgs
///             {
///                 SourceFields = new[]
///                 {
///                     "exampleField",
///                 },
///                 DestinationField = "exampleField",
///                 TaskType = "Map",
///                 ConnectorOperators = new[]
///                 {
///                     new Aws.AppFlow.Inputs.FlowTaskConnectorOperatorArgs
///                     {
///                         S3 = "NO_OP",
///                     },
///                 },
///             },
///         },
///         TriggerConfig = new Aws.AppFlow.Inputs.FlowTriggerConfigArgs
///         {
///             TriggerType = "OnDemand",
///         },
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
/// 					Sid:    pulumi.StringRef("AllowAppFlowSourceActions"),
/// 					Effect: pulumi.StringRef("Allow"),
/// 					Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// 						{
/// 							Type: "Service",
/// 							Identifiers: []string{
/// 								"appflow.amazonaws.com",
/// 							},
/// 						},
/// 					},
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
/// 			Bucket: exampleSourceBucket.ID(),
/// 			Policy: pulumi.String(exampleSource.Json),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = s3.NewBucketObjectv2(ctx, "example", &s3.BucketObjectv2Args{
/// 			Bucket: exampleSourceBucket.ID(),
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
/// 					Sid:    pulumi.StringRef("AllowAppFlowDestinationActions"),
/// 					Effect: pulumi.StringRef("Allow"),
/// 					Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// 						{
/// 							Type: "Service",
/// 							Identifiers: []string{
/// 								"appflow.amazonaws.com",
/// 							},
/// 						},
/// 					},
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
/// 			Bucket: exampleDestinationBucket.ID(),
/// 			Policy: pulumi.String(exampleDestination.Json),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = appflow.NewFlow(ctx, "example", &appflow.FlowArgs{
/// 			Name: pulumi.String("example"),
/// 			SourceFlowConfig: &appflow.FlowSourceFlowConfigArgs{
/// 				ConnectorType: pulumi.String("S3"),
/// 				SourceConnectorProperties: &appflow.FlowSourceFlowConfigSourceConnectorPropertiesArgs{
/// 					S3: &appflow.FlowSourceFlowConfigSourceConnectorPropertiesS3Args{
/// 						BucketName:   exampleSourceBucketPolicy.Bucket,
/// 						BucketPrefix: pulumi.String("example"),
/// 					},
/// 				},
/// 			},
/// 			DestinationFlowConfigs: appflow.FlowDestinationFlowConfigArray{
/// 				&appflow.FlowDestinationFlowConfigArgs{
/// 					ConnectorType: pulumi.String("S3"),
/// 					DestinationConnectorProperties: &appflow.FlowDestinationFlowConfigDestinationConnectorPropertiesArgs{
/// 						S3: &appflow.FlowDestinationFlowConfigDestinationConnectorPropertiesS3Args{
/// 							BucketName: exampleDestinationBucketPolicy.Bucket,
/// 							S3OutputFormatConfig: &appflow.FlowDestinationFlowConfigDestinationConnectorPropertiesS3S3OutputFormatConfigArgs{
/// 								PrefixConfig: &appflow.FlowDestinationFlowConfigDestinationConnectorPropertiesS3S3OutputFormatConfigPrefixConfigArgs{
/// 									PrefixType: pulumi.String("PATH"),
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Tasks: appflow.FlowTaskArray{
/// 				&appflow.FlowTaskArgs{
/// 					SourceFields: pulumi.StringArray{
/// 						pulumi.String("exampleField"),
/// 					},
/// 					DestinationField: pulumi.String("exampleField"),
/// 					TaskType:         pulumi.String("Map"),
/// 					ConnectorOperators: appflow.FlowTaskConnectorOperatorArray{
/// 						&appflow.FlowTaskConnectorOperatorArgs{
/// 							S3: pulumi.String("NO_OP"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			TriggerConfig: &appflow.FlowTriggerConfigArgs{
/// 				TriggerType: pulumi.String("OnDemand"),
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
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.s3.BucketPolicy;
/// import com.pulumi.aws.s3.BucketPolicyArgs;
/// import com.pulumi.aws.s3.BucketObjectv2;
/// import com.pulumi.aws.s3.BucketObjectv2Args;
/// import com.pulumi.aws.appflow.Flow;
/// import com.pulumi.aws.appflow.FlowArgs;
/// import com.pulumi.aws.appflow.inputs.FlowSourceFlowConfigArgs;
/// import com.pulumi.aws.appflow.inputs.FlowSourceFlowConfigSourceConnectorPropertiesArgs;
/// import com.pulumi.aws.appflow.inputs.FlowSourceFlowConfigSourceConnectorPropertiesS3Args;
/// import com.pulumi.aws.appflow.inputs.FlowDestinationFlowConfigArgs;
/// import com.pulumi.aws.appflow.inputs.FlowDestinationFlowConfigDestinationConnectorPropertiesArgs;
/// import com.pulumi.aws.appflow.inputs.FlowDestinationFlowConfigDestinationConnectorPropertiesS3Args;
/// import com.pulumi.aws.appflow.inputs.FlowDestinationFlowConfigDestinationConnectorPropertiesS3S3OutputFormatConfigArgs;
/// import com.pulumi.aws.appflow.inputs.FlowDestinationFlowConfigDestinationConnectorPropertiesS3S3OutputFormatConfigPrefixConfigArgs;
/// import com.pulumi.aws.appflow.inputs.FlowTaskArgs;
/// import com.pulumi.aws.appflow.inputs.FlowTriggerConfigArgs;
/// import com.pulumi.asset.FileAsset;
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
///         var exampleSourceBucket = new Bucket("exampleSourceBucket", BucketArgs.builder()
///             .bucket("example-source")
///             .build());
///
///         final var exampleSource = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .sid("AllowAppFlowSourceActions")
///                 .effect("Allow")
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("Service")
///                     .identifiers("appflow.amazonaws.com")
///                     .build())
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
///                 .sid("AllowAppFlowDestinationActions")
///                 .effect("Allow")
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("Service")
///                     .identifiers("appflow.amazonaws.com")
///                     .build())
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
///             .name("example")
///             .sourceFlowConfig(FlowSourceFlowConfigArgs.builder()
///                 .connectorType("S3")
///                 .sourceConnectorProperties(FlowSourceFlowConfigSourceConnectorPropertiesArgs.builder()
///                     .s3(FlowSourceFlowConfigSourceConnectorPropertiesS3Args.builder()
///                         .bucketName(exampleSourceBucketPolicy.bucket())
///                         .bucketPrefix("example")
///                         .build())
///                     .build())
///                 .build())
///             .destinationFlowConfigs(FlowDestinationFlowConfigArgs.builder()
///                 .connectorType("S3")
///                 .destinationConnectorProperties(FlowDestinationFlowConfigDestinationConnectorPropertiesArgs.builder()
///                     .s3(FlowDestinationFlowConfigDestinationConnectorPropertiesS3Args.builder()
///                         .bucketName(exampleDestinationBucketPolicy.bucket())
///                         .s3OutputFormatConfig(FlowDestinationFlowConfigDestinationConnectorPropertiesS3S3OutputFormatConfigArgs.builder()
///                             .prefixConfig(FlowDestinationFlowConfigDestinationConnectorPropertiesS3S3OutputFormatConfigPrefixConfigArgs.builder()
///                                 .prefixType("PATH")
///                                 .build())
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .tasks(FlowTaskArgs.builder()
///                 .sourceFields("exampleField")
///                 .destinationField("exampleField")
///                 .taskType("Map")
///                 .connectorOperators(FlowTaskConnectorOperatorArgs.builder()
///                     .s3("NO_OP")
///                     .build())
///                 .build())
///             .triggerConfig(FlowTriggerConfigArgs.builder()
///                 .triggerType("OnDemand")
///                 .build())
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
///         fn::FileAsset: example_source.csv
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
///       name: example
///       sourceFlowConfig:
///         connectorType: S3
///         sourceConnectorProperties:
///           s3:
///             bucketName: ${exampleSourceBucketPolicy.bucket}
///             bucketPrefix: example
///       destinationFlowConfigs:
///         - connectorType: S3
///           destinationConnectorProperties:
///             s3:
///               bucketName: ${exampleDestinationBucketPolicy.bucket}
///               s3OutputFormatConfig:
///                 prefixConfig:
///                   prefixType: PATH
///       tasks:
///         - sourceFields:
///             - exampleField
///           destinationField: exampleField
///           taskType: Map
///           connectorOperators:
///             - s3: NO_OP
///       triggerConfig:
///         triggerType: OnDemand
/// variables:
///   exampleSource:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - sid: AllowAppFlowSourceActions
///             effect: Allow
///             principals:
///               - type: Service
///                 identifiers:
///                   - appflow.amazonaws.com
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
///           - sid: AllowAppFlowDestinationActions
///             effect: Allow
///             principals:
///               - type: Service
///                 identifiers:
///                   - appflow.amazonaws.com
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
/// * `account_id` (String) AWS Account where this resource is managed.
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
  /// Description of the flow you want to create.
  late final pulumi.Output<String?> description;
  /// A Destination Flow Config that controls how Amazon AppFlow places data in the destination connector.
  late final pulumi.Output<List<FlowDestinationFlowConfig>> destinationFlowConfigs;
  /// The current status of the flow.
  late final pulumi.Output<String> flowStatus;
  /// ARN (Amazon Resource Name) of the Key Management Service (KMS) key you provide for encryption. This is required if you do not want to use the Amazon AppFlow-managed KMS key. If you don't provide anything here, Amazon AppFlow uses the Amazon AppFlow-managed KMS key.
  late final pulumi.Output<String> kmsArn;
  /// A Catalog that determines the configuration that Amazon AppFlow uses when it catalogs the data that’s transferred by the associated flow. When Amazon AppFlow catalogs the data from a flow, it stores metadata in a data catalog.
  late final pulumi.Output<FlowMetadataCatalogConfig> metadataCatalogConfig;
  /// Name of the flow.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The Source Flow Config that controls how Amazon AppFlow retrieves data from the source connector.
  late final pulumi.Output<FlowSourceFlowConfig> sourceFlowConfig;
  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// A Task that Amazon AppFlow performs while transferring the data in the flow run.
  late final pulumi.Output<List<FlowTask>> tasks;
  /// A Trigger that determine how and when the flow runs.
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
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.destinationFlowConfigs = registerOutput<List<FlowDestinationFlowConfig>>('destinationFlowConfigs');
    this.flowStatus = registerOutput<String>('flowStatus');
    this.kmsArn = registerOutput<String>('kmsArn');
    this.metadataCatalogConfig = registerOutput<FlowMetadataCatalogConfig>('metadataCatalogConfig');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.sourceFlowConfig = registerOutput<FlowSourceFlowConfig>('sourceFlowConfig');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.tasks = registerOutput<List<FlowTask>>('tasks');
    this.triggerConfig = registerOutput<FlowTriggerConfig>('triggerConfig');
  }
}
