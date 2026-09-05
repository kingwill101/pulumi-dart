import 'package:pulumi/pulumi.dart' as pulumi;
import 'firehose_delivery_stream_args.dart';
import 'firehose_delivery_stream_elasticsearch_configuration.dart';
import 'firehose_delivery_stream_extended_s3_configuration.dart';
import 'firehose_delivery_stream_http_endpoint_configuration.dart';
import 'firehose_delivery_stream_iceberg_configuration.dart';
import 'firehose_delivery_stream_kinesis_source_configuration.dart';
import 'firehose_delivery_stream_msk_source_configuration.dart';
import 'firehose_delivery_stream_opensearch_configuration.dart';
import 'firehose_delivery_stream_opensearchserverless_configuration.dart';
import 'firehose_delivery_stream_redshift_configuration.dart';
import 'firehose_delivery_stream_server_side_encryption.dart';
import 'firehose_delivery_stream_snowflake_configuration.dart';
import 'firehose_delivery_stream_splunk_configuration.dart';
import 'firehose_delivery_stream_state.dart';

/// Provides a Kinesis Firehose Delivery Stream resource. Amazon Kinesis Firehose is a fully managed, elastic service to easily deliver real-time data streams to destinations such as Amazon S3 , Amazon Redshift and Snowflake.
///
/// For more details, see the [Amazon Kinesis Firehose Documentation](https://aws.amazon.com/documentation/firehose/).
///
/// ## Example Usage
///
/// ### Extended S3 Destination
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const bucket = new aws.s3.Bucket("bucket", {bucket: "tf-test-bucket"});
/// const firehoseAssumeRole = aws.iam.getPolicyDocument({
///     statements: [{
///         principals: [{
///             type: "Service",
///             identifiers: ["firehose.amazonaws.com"],
///         }],
///         effect: "Allow",
///         actions: ["sts:AssumeRole"],
///     }],
/// });
/// const firehoseRole = new aws.iam.Role("firehose_role", {
///     name: "firehose_test_role",
///     assumeRolePolicy: firehoseAssumeRole.then(firehoseAssumeRole => firehoseAssumeRole.json),
/// });
/// const lambdaAssumeRole = aws.iam.getPolicyDocument({
///     statements: [{
///         principals: [{
///             type: "Service",
///             identifiers: ["lambda.amazonaws.com"],
///         }],
///         effect: "Allow",
///         actions: ["sts:AssumeRole"],
///     }],
/// });
/// const lambdaIam = new aws.iam.Role("lambda_iam", {
///     name: "lambda_iam",
///     assumeRolePolicy: lambdaAssumeRole.then(lambdaAssumeRole => lambdaAssumeRole.json),
/// });
/// const lambdaProcessor = new aws.lambda.Function("lambda_processor", {
///     code: new pulumi.asset.FileArchive("lambda.zip"),
///     name: "firehose_lambda_processor",
///     role: lambdaIam.arn,
///     handler: "exports.handler",
///     runtime: aws.lambda.Runtime.NodeJS24dX,
/// });
/// const extendedS3Stream = new aws.kinesis.FirehoseDeliveryStream("extended_s3_stream", {
///     extendedS3Configuration: {
///         processingConfiguration: {
///             processors: [{
///                 parameters: [{
///                     parameterName: "LambdaArn",
///                     parameterValue: pulumi.interpolate`${lambdaProcessor.arn}:$LATEST`,
///                 }],
///                 type: "Lambda",
///             }],
///             enabled: true,
///         },
///         roleArn: firehoseRole.arn,
///         bucketArn: bucket.arn,
///     },
///     name: "kinesis-firehose-extended-s3-test-stream",
///     destination: "extended_s3",
/// });
/// const bucketAcl = new aws.s3.BucketAcl("bucket_acl", {
///     bucket: bucket.id,
///     acl: "private",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// bucket = aws.s3.Bucket("bucket", bucket="tf-test-bucket")
/// firehose_assume_role = aws.iam.get_policy_document(statements=[{
///     "principals": [{
///         "type": "Service",
///         "identifiers": ["firehose.amazonaws.com"],
///     }],
///     "effect": "Allow",
///     "actions": ["sts:AssumeRole"],
/// }])
/// firehose_role = aws.iam.Role("firehose_role",
///     name="firehose_test_role",
///     assume_role_policy=firehose_assume_role.json)
/// lambda_assume_role = aws.iam.get_policy_document(statements=[{
///     "principals": [{
///         "type": "Service",
///         "identifiers": ["lambda.amazonaws.com"],
///     }],
///     "effect": "Allow",
///     "actions": ["sts:AssumeRole"],
/// }])
/// lambda_iam = aws.iam.Role("lambda_iam",
///     name="lambda_iam",
///     assume_role_policy=lambda_assume_role.json)
/// lambda_processor = aws.lambda_.Function("lambda_processor",
///     code=pulumi.FileArchive("lambda.zip"),
///     name="firehose_lambda_processor",
///     role=lambda_iam.arn,
///     handler="exports.handler",
///     runtime=aws.lambda_.Runtime.NODE_JS24D_X)
/// extended_s3_stream = aws.kinesis.FirehoseDeliveryStream("extended_s3_stream",
///     extended_s3_configuration={
///         "processing_configuration": {
///             "processors": [{
///                 "parameters": [{
///                     "parameter_name": "LambdaArn",
///                     "parameter_value": lambda_processor.arn.apply(lambda arn: f"{arn}:$LATEST"),
///                 }],
///                 "type": "Lambda",
///             }],
///             "enabled": True,
///         },
///         "role_arn": firehose_role.arn,
///         "bucket_arn": bucket.arn,
///     },
///     name="kinesis-firehose-extended-s3-test-stream",
///     destination="extended_s3")
/// bucket_acl = aws.s3.BucketAcl("bucket_acl",
///     bucket=bucket.id,
///     acl="private")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var bucket = new Aws.S3.Bucket("bucket", new()
///     {
///         BucketName = "tf-test-bucket",
///     });
///
///     var firehoseAssumeRole = Aws.Iam.GetPolicyDocument.Invoke(new()
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
///                             "firehose.amazonaws.com",
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
///     var firehoseRole = new Aws.Iam.Role("firehose_role", new()
///     {
///         Name = "firehose_test_role",
///         AssumeRolePolicy = firehoseAssumeRole.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
///     var lambdaAssumeRole = Aws.Iam.GetPolicyDocument.Invoke(new()
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
///                             "lambda.amazonaws.com",
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
///     var lambdaIam = new Aws.Iam.Role("lambda_iam", new()
///     {
///         Name = "lambda_iam",
///         AssumeRolePolicy = lambdaAssumeRole.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
///     var lambdaProcessor = new Aws.Lambda.Function("lambda_processor", new()
///     {
///         Code = new FileArchive("lambda.zip"),
///         Name = "firehose_lambda_processor",
///         Role = lambdaIam.Arn,
///         Handler = "exports.handler",
///         Runtime = Aws.Lambda.Runtime.NodeJS24dX,
///     });
///
///     var extendedS3Stream = new Aws.Kinesis.FirehoseDeliveryStream("extended_s3_stream", new()
///     {
///         ExtendedS3Configuration = new Aws.Kinesis.Inputs.FirehoseDeliveryStreamExtendedS3ConfigurationArgs
///         {
///             ProcessingConfiguration = new Aws.Kinesis.Inputs.FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationArgs
///             {
///                 Processors = new[]
///                 {
///                     new Aws.Kinesis.Inputs.FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationProcessorArgs
///                     {
///                         Parameters = new[]
///                         {
///                             new Aws.Kinesis.Inputs.FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationProcessorParameterArgs
///                             {
///                                 ParameterName = "LambdaArn",
///                                 ParameterValue = lambdaProcessor.Arn.Apply(arn => $"{arn}:$LATEST"),
///                             },
///                         },
///                         Type = "Lambda",
///                     },
///                 },
///                 Enabled = true,
///             },
///             RoleArn = firehoseRole.Arn,
///             BucketArn = bucket.Arn,
///         },
///         Name = "kinesis-firehose-extended-s3-test-stream",
///         Destination = "extended_s3",
///     });
///
///     var bucketAcl = new Aws.S3.BucketAcl("bucket_acl", new()
///     {
///         Bucket = bucket.Id,
///         Acl = "private",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kinesis"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		bucket, err := s3.NewBucket(ctx, "bucket", &s3.BucketArgs{
/// 			Bucket: pulumi.String("tf-test-bucket"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		firehoseAssumeRole, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{
/// 					Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// 						{
/// 							Type: "Service",
/// 							Identifiers: []string{
/// 								"firehose.amazonaws.com",
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
/// 		firehoseRole, err := iam.NewRole(ctx, "firehose_role", &iam.RoleArgs{
/// 			Name:             pulumi.String("firehose_test_role"),
/// 			AssumeRolePolicy: pulumi.String(firehoseAssumeRole.Json),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		lambdaAssumeRole, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{
/// 					Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// 						{
/// 							Type: "Service",
/// 							Identifiers: []string{
/// 								"lambda.amazonaws.com",
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
/// 		lambdaIam, err := iam.NewRole(ctx, "lambda_iam", &iam.RoleArgs{
/// 			Name:             pulumi.String("lambda_iam"),
/// 			AssumeRolePolicy: pulumi.String(lambdaAssumeRole.Json),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		lambdaProcessor, err := lambda.NewFunction(ctx, "lambda_processor", &lambda.FunctionArgs{
/// 			Code:    pulumi.NewFileArchive("lambda.zip"),
/// 			Name:    pulumi.String("firehose_lambda_processor"),
/// 			Role:    lambdaIam.Arn,
/// 			Handler: pulumi.String("exports.handler"),
/// 			Runtime: pulumi.String(lambda.RuntimeNodeJS24dX),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = kinesis.NewFirehoseDeliveryStream(ctx, "extended_s3_stream", &kinesis.FirehoseDeliveryStreamArgs{
/// 			ExtendedS3Configuration: &kinesis.FirehoseDeliveryStreamExtendedS3ConfigurationArgs{
/// 				ProcessingConfiguration: &kinesis.FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationArgs{
/// 					Processors: kinesis.FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationProcessorArray{
/// 						&kinesis.FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationProcessorArgs{
/// 							Parameters: kinesis.FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationProcessorParameterArray{
/// 								&kinesis.FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationProcessorParameterArgs{
/// 									ParameterName: pulumi.String("LambdaArn"),
/// 									ParameterValue: lambdaProcessor.Arn.ApplyT(func(arn string) (string, error) {
/// 										return fmt.Sprintf("%v:$LATEST", arn), nil
/// 									}).(pulumi.StringOutput),
/// 								},
/// 							},
/// 							Type: pulumi.String("Lambda"),
/// 						},
/// 					},
/// 					Enabled: pulumi.Bool(true),
/// 				},
/// 				RoleArn:   firehoseRole.Arn,
/// 				BucketArn: bucket.Arn,
/// 			},
/// 			Name:        pulumi.String("kinesis-firehose-extended-s3-test-stream"),
/// 			Destination: pulumi.String("extended_s3"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = s3.NewBucketAcl(ctx, "bucket_acl", &s3.BucketAclArgs{
/// 			Bucket: bucket.ID().ToIDOutput().ToStringOutput(),
/// 			Acl:    pulumi.String("private"),
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
/// data "aws_iam_getpolicydocument" "firehoseAssumeRole" {
///   statements {
///     principals {
///       type        = "Service"
///       identifiers = ["firehose.amazonaws.com"]
///     }
///     effect  = "Allow"
///     actions = ["sts:AssumeRole"]
///   }
/// }
/// data "aws_iam_getpolicydocument" "lambdaAssumeRole" {
///   statements {
///     principals {
///       type        = "Service"
///       identifiers = ["lambda.amazonaws.com"]
///     }
///     effect  = "Allow"
///     actions = ["sts:AssumeRole"]
///   }
/// }
///
/// resource "aws_kinesis_firehosedeliverystream" "extended_s3_stream" {
///   extended_s3_configuration = {
///     processing_configuration = {
///       processors = [{
///         "parameters" = [{
///           "parameterName"  = "LambdaArn"
///           "parameterValue" ="${aws_lambda_function.lambda_processor.arn}:$LATEST"
///         }]
///         "type" = "Lambda"
///       }]
///       enabled = "true"
///     }
///     role_arn   = aws_iam_role.firehose_role.arn
///     bucket_arn = aws_s3_bucket.bucket.arn
///   }
///   name        = "kinesis-firehose-extended-s3-test-stream"
///   destination = "extended_s3"
/// }
/// resource "aws_s3_bucket" "bucket" {
///   bucket = "tf-test-bucket"
/// }
/// resource "aws_s3_bucketacl" "bucket_acl" {
///   bucket = aws_s3_bucket.bucket.id
///   acl    = "private"
/// }
/// resource "aws_iam_role" "firehose_role" {
///   name               = "firehose_test_role"
///   assume_role_policy = data.aws_iam_getpolicydocument.firehoseAssumeRole.json
/// }
/// resource "aws_iam_role" "lambda_iam" {
///   name               = "lambda_iam"
///   assume_role_policy = data.aws_iam_getpolicydocument.lambdaAssumeRole.json
/// }
/// resource "aws_lambda_function" "lambda_processor" {
///   code    = fileArchive("lambda.zip")
///   name    = "firehose_lambda_processor"
///   role    = aws_iam_role.lambda_iam.arn
///   handler = "exports.handler"
///   runtime = "nodejs24.x"
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
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.lambda.Function;
/// import com.pulumi.aws.lambda.FunctionArgs;
/// import com.pulumi.aws.kinesis.FirehoseDeliveryStream;
/// import com.pulumi.aws.kinesis.FirehoseDeliveryStreamArgs;
/// import com.pulumi.aws.kinesis.inputs.FirehoseDeliveryStreamExtendedS3ConfigurationArgs;
/// import com.pulumi.aws.kinesis.inputs.FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationArgs;
/// import com.pulumi.aws.kinesis.inputs.FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationProcessorArgs;
/// import com.pulumi.aws.kinesis.inputs.FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationProcessorParameterArgs;
/// import com.pulumi.aws.s3.BucketAcl;
/// import com.pulumi.aws.s3.BucketAclArgs;
/// import com.pulumi.asset.FileArchive;
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
///         var bucket = new Bucket("bucket", BucketArgs.builder()
///             .bucket("tf-test-bucket")
///             .build());
///
///         final var firehoseAssumeRole = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("Service")
///                     .identifiers("firehose.amazonaws.com")
///                     .build())
///                 .effect("Allow")
///                 .actions("sts:AssumeRole")
///                 .build())
///             .build());
///
///         var firehoseRole = new Role("firehoseRole", RoleArgs.builder()
///             .name("firehose_test_role")
///             .assumeRolePolicy(firehoseAssumeRole.json())
///             .build());
///
///         final var lambdaAssumeRole = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("Service")
///                     .identifiers("lambda.amazonaws.com")
///                     .build())
///                 .effect("Allow")
///                 .actions("sts:AssumeRole")
///                 .build())
///             .build());
///
///         var lambdaIam = new Role("lambdaIam", RoleArgs.builder()
///             .name("lambda_iam")
///             .assumeRolePolicy(lambdaAssumeRole.json())
///             .build());
///
///         var lambdaProcessor = new Function("lambdaProcessor", FunctionArgs.builder()
///             .code(new FileArchive("lambda.zip"))
///             .name("firehose_lambda_processor")
///             .role(lambdaIam.arn())
///             .handler("exports.handler")
///             .runtime("nodejs24.x")
///             .build());
///
///         var extendedS3Stream = new FirehoseDeliveryStream("extendedS3Stream", FirehoseDeliveryStreamArgs.builder()
///             .extendedS3Configuration(FirehoseDeliveryStreamExtendedS3ConfigurationArgs.builder()
///                 .processingConfiguration(FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationArgs.builder()
///                     .processors(FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationProcessorArgs.builder()
///                         .parameters(FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationProcessorParameterArgs.builder()
///                             .parameterName("LambdaArn")
///                             .parameterValue(lambdaProcessor.arn().applyValue(_arn -> String.format("%s:$LATEST", _arn)))
///                             .build())
///                         .type("Lambda")
///                         .build())
///                     .enabled(true)
///                     .build())
///                 .roleArn(firehoseRole.arn())
///                 .bucketArn(bucket.arn())
///                 .build())
///             .name("kinesis-firehose-extended-s3-test-stream")
///             .destination("extended_s3")
///             .build());
///
///         var bucketAcl = new BucketAcl("bucketAcl", BucketAclArgs.builder()
///             .bucket(bucket.id())
///             .acl("private")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   extendedS3Stream:
///     type: aws:kinesis:FirehoseDeliveryStream
///     name: extended_s3_stream
///     properties:
///       extendedS3Configuration:
///         processingConfiguration:
///           processors:
///             - parameters:
///                 - parameterName: LambdaArn
///                   parameterValue: ${lambdaProcessor.arn}:$LATEST
///               type: Lambda
///           enabled: 'true'
///         roleArn: ${firehoseRole.arn}
///         bucketArn: ${bucket.arn}
///       name: kinesis-firehose-extended-s3-test-stream
///       destination: extended_s3
///   bucket:
///     type: aws:s3:Bucket
///     properties:
///       bucket: tf-test-bucket
///   bucketAcl:
///     type: aws:s3:BucketAcl
///     name: bucket_acl
///     properties:
///       bucket: ${bucket.id}
///       acl: private
///   firehoseRole:
///     type: aws:iam:Role
///     name: firehose_role
///     properties:
///       name: firehose_test_role
///       assumeRolePolicy: ${firehoseAssumeRole.json}
///   lambdaIam:
///     type: aws:iam:Role
///     name: lambda_iam
///     properties:
///       name: lambda_iam
///       assumeRolePolicy: ${lambdaAssumeRole.json}
///   lambdaProcessor:
///     type: aws:lambda:Function
///     name: lambda_processor
///     properties:
///       code:
///         fn::fileArchive: lambda.zip
///       name: firehose_lambda_processor
///       role: ${lambdaIam.arn}
///       handler: exports.handler
///       runtime: nodejs24.x
/// variables:
///   firehoseAssumeRole:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - principals:
///               - type: Service
///                 identifiers:
///                   - firehose.amazonaws.com
///             effect: Allow
///             actions:
///               - sts:AssumeRole
///   lambdaAssumeRole:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - principals:
///               - type: Service
///                 identifiers:
///                   - lambda.amazonaws.com
///             effect: Allow
///             actions:
///               - sts:AssumeRole
/// ```
///
///
/// ### Extended S3 Destination with dynamic partitioning
///
/// These examples use built-in Firehose functionality, rather than requiring a lambda.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const extendedS3Stream = new aws.kinesis.FirehoseDeliveryStream("extended_s3_stream", {
///     extendedS3Configuration: {
///         dynamicPartitioningConfiguration: {
///             enabled: true,
///         },
///         processingConfiguration: {
///             processors: [
///                 {
///                     parameters: [{
///                         parameterName: "SubRecordType",
///                         parameterValue: "JSON",
///                     }],
///                     type: "RecordDeAggregation",
///                 },
///                 {
///                     type: "AppendDelimiterToRecord",
///                 },
///                 {
///                     parameters: [
///                         {
///                             parameterName: "JsonParsingEngine",
///                             parameterValue: "JQ-1.6",
///                         },
///                         {
///                             parameterName: "MetadataExtractionQuery",
///                             parameterValue: "{customer_id:.customer_id}",
///                         },
///                     ],
///                     type: "MetadataExtraction",
///                 },
///             ],
///             enabled: true,
///         },
///         roleArn: firehoseRole.arn,
///         bucketArn: bucket.arn,
///         bufferingSize: 64,
///         prefix: "data/customer_id=!{partitionKeyFromQuery:customer_id}/year=!{timestamp:yyyy}/month=!{timestamp:MM}/day=!{timestamp:dd}/hour=!{timestamp:HH}/",
///         errorOutputPrefix: "errors/year=!{timestamp:yyyy}/month=!{timestamp:MM}/day=!{timestamp:dd}/hour=!{timestamp:HH}/!{firehose:error-output-type}/",
///     },
///     name: "kinesis-firehose-extended-s3-test-stream",
///     destination: "extended_s3",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// extended_s3_stream = aws.kinesis.FirehoseDeliveryStream("extended_s3_stream",
///     extended_s3_configuration={
///         "dynamic_partitioning_configuration": {
///             "enabled": True,
///         },
///         "processing_configuration": {
///             "processors": [
///                 {
///                     "parameters": [{
///                         "parameter_name": "SubRecordType",
///                         "parameter_value": "JSON",
///                     }],
///                     "type": "RecordDeAggregation",
///                 },
///                 {
///                     "type": "AppendDelimiterToRecord",
///                 },
///                 {
///                     "parameters": [
///                         {
///                             "parameter_name": "JsonParsingEngine",
///                             "parameter_value": "JQ-1.6",
///                         },
///                         {
///                             "parameter_name": "MetadataExtractionQuery",
///                             "parameter_value": "{customer_id:.customer_id}",
///                         },
///                     ],
///                     "type": "MetadataExtraction",
///                 },
///             ],
///             "enabled": True,
///         },
///         "role_arn": firehose_role["arn"],
///         "bucket_arn": bucket["arn"],
///         "buffering_size": 64,
///         "prefix": "data/customer_id=!{partitionKeyFromQuery:customer_id}/year=!{timestamp:yyyy}/month=!{timestamp:MM}/day=!{timestamp:dd}/hour=!{timestamp:HH}/",
///         "error_output_prefix": "errors/year=!{timestamp:yyyy}/month=!{timestamp:MM}/day=!{timestamp:dd}/hour=!{timestamp:HH}/!{firehose:error-output-type}/",
///     },
///     name="kinesis-firehose-extended-s3-test-stream",
///     destination="extended_s3")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var extendedS3Stream = new Aws.Kinesis.FirehoseDeliveryStream("extended_s3_stream", new()
///     {
///         ExtendedS3Configuration = new Aws.Kinesis.Inputs.FirehoseDeliveryStreamExtendedS3ConfigurationArgs
///         {
///             DynamicPartitioningConfiguration = new Aws.Kinesis.Inputs.FirehoseDeliveryStreamExtendedS3ConfigurationDynamicPartitioningConfigurationArgs
///             {
///                 Enabled = true,
///             },
///             ProcessingConfiguration = new Aws.Kinesis.Inputs.FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationArgs
///             {
///                 Processors = new[]
///                 {
///                     new Aws.Kinesis.Inputs.FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationProcessorArgs
///                     {
///                         Parameters = new[]
///                         {
///                             new Aws.Kinesis.Inputs.FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationProcessorParameterArgs
///                             {
///                                 ParameterName = "SubRecordType",
///                                 ParameterValue = "JSON",
///                             },
///                         },
///                         Type = "RecordDeAggregation",
///                     },
///                     new Aws.Kinesis.Inputs.FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationProcessorArgs
///                     {
///                         Type = "AppendDelimiterToRecord",
///                     },
///                     new Aws.Kinesis.Inputs.FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationProcessorArgs
///                     {
///                         Parameters = new[]
///                         {
///                             new Aws.Kinesis.Inputs.FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationProcessorParameterArgs
///                             {
///                                 ParameterName = "JsonParsingEngine",
///                                 ParameterValue = "JQ-1.6",
///                             },
///                             new Aws.Kinesis.Inputs.FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationProcessorParameterArgs
///                             {
///                                 ParameterName = "MetadataExtractionQuery",
///                                 ParameterValue = "{customer_id:.customer_id}",
///                             },
///                         },
///                         Type = "MetadataExtraction",
///                     },
///                 },
///                 Enabled = true,
///             },
///             RoleArn = firehoseRole.Arn,
///             BucketArn = bucket.Arn,
///             BufferingSize = 64,
///             Prefix = "data/customer_id=!{partitionKeyFromQuery:customer_id}/year=!{timestamp:yyyy}/month=!{timestamp:MM}/day=!{timestamp:dd}/hour=!{timestamp:HH}/",
///             ErrorOutputPrefix = "errors/year=!{timestamp:yyyy}/month=!{timestamp:MM}/day=!{timestamp:dd}/hour=!{timestamp:HH}/!{firehose:error-output-type}/",
///         },
///         Name = "kinesis-firehose-extended-s3-test-stream",
///         Destination = "extended_s3",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kinesis"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := kinesis.NewFirehoseDeliveryStream(ctx, "extended_s3_stream", &kinesis.FirehoseDeliveryStreamArgs{
/// 			ExtendedS3Configuration: &kinesis.FirehoseDeliveryStreamExtendedS3ConfigurationArgs{
/// 				DynamicPartitioningConfiguration: &kinesis.FirehoseDeliveryStreamExtendedS3ConfigurationDynamicPartitioningConfigurationArgs{
/// 					Enabled: pulumi.Bool(true),
/// 				},
/// 				ProcessingConfiguration: &kinesis.FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationArgs{
/// 					Processors: kinesis.FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationProcessorArray{
/// 						&kinesis.FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationProcessorArgs{
/// 							Parameters: kinesis.FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationProcessorParameterArray{
/// 								&kinesis.FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationProcessorParameterArgs{
/// 									ParameterName:  pulumi.String("SubRecordType"),
/// 									ParameterValue: pulumi.String("JSON"),
/// 								},
/// 							},
/// 							Type: pulumi.String("RecordDeAggregation"),
/// 						},
/// 						&kinesis.FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationProcessorArgs{
/// 							Type: pulumi.String("AppendDelimiterToRecord"),
/// 						},
/// 						&kinesis.FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationProcessorArgs{
/// 							Parameters: kinesis.FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationProcessorParameterArray{
/// 								&kinesis.FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationProcessorParameterArgs{
/// 									ParameterName:  pulumi.String("JsonParsingEngine"),
/// 									ParameterValue: pulumi.String("JQ-1.6"),
/// 								},
/// 								&kinesis.FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationProcessorParameterArgs{
/// 									ParameterName:  pulumi.String("MetadataExtractionQuery"),
/// 									ParameterValue: pulumi.String("{customer_id:.customer_id}"),
/// 								},
/// 							},
/// 							Type: pulumi.String("MetadataExtraction"),
/// 						},
/// 					},
/// 					Enabled: pulumi.Bool(true),
/// 				},
/// 				RoleArn:           pulumi.Any(firehoseRole.Arn),
/// 				BucketArn:         pulumi.Any(bucket.Arn),
/// 				BufferingSize:     pulumi.Int(64),
/// 				Prefix:            pulumi.String("data/customer_id=!{partitionKeyFromQuery:customer_id}/year=!{timestamp:yyyy}/month=!{timestamp:MM}/day=!{timestamp:dd}/hour=!{timestamp:HH}/"),
/// 				ErrorOutputPrefix: pulumi.String("errors/year=!{timestamp:yyyy}/month=!{timestamp:MM}/day=!{timestamp:dd}/hour=!{timestamp:HH}/!{firehose:error-output-type}/"),
/// 			},
/// 			Name:        pulumi.String("kinesis-firehose-extended-s3-test-stream"),
/// 			Destination: pulumi.String("extended_s3"),
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
/// resource "aws_kinesis_firehosedeliverystream" "extended_s3_stream" {
///   extended_s3_configuration = {
///     dynamic_partitioning_configuration = {
///       enabled = "true"
///     }
///     processing_configuration = {
///       processors = [{
///         "parameters" = [{
///           "parameterName"  = "SubRecordType"
///           "parameterValue" = "JSON"
///         }]
///         "type" = "RecordDeAggregation"
///         }, {
///         "type" = "AppendDelimiterToRecord"
///         }, {
///         "parameters" = [{
///           "parameterName"  = "JsonParsingEngine"
///           "parameterValue" = "JQ-1.6"
///           }, {
///           "parameterName"  = "MetadataExtractionQuery"
///           "parameterValue" = "{customer_id:.customer_id}"
///         }]
///         "type" = "MetadataExtraction"
///       }]
///       enabled = "true"
///     }
///     role_arn            = firehoseRole.arn
///     bucket_arn          = bucket.arn
///     buffering_size      = 64
///     prefix              = "data/customer_id=!{partitionKeyFromQuery:customer_id}/year=!{timestamp:yyyy}/month=!{timestamp:MM}/day=!{timestamp:dd}/hour=!{timestamp:HH}/"
///     error_output_prefix = "errors/year=!{timestamp:yyyy}/month=!{timestamp:MM}/day=!{timestamp:dd}/hour=!{timestamp:HH}/!{firehose:error-output-type}/"
///   }
///   # https://docs.aws.amazon.com/firehose/latest/dev/dynamic-partitioning.html
///   # Example prefix using partitionKeyFromQuery, applicable to JQ processor
///   name        = "kinesis-firehose-extended-s3-test-stream"
///   destination = "extended_s3"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.kinesis.FirehoseDeliveryStream;
/// import com.pulumi.aws.kinesis.FirehoseDeliveryStreamArgs;
/// import com.pulumi.aws.kinesis.inputs.FirehoseDeliveryStreamExtendedS3ConfigurationArgs;
/// import com.pulumi.aws.kinesis.inputs.FirehoseDeliveryStreamExtendedS3ConfigurationDynamicPartitioningConfigurationArgs;
/// import com.pulumi.aws.kinesis.inputs.FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationArgs;
/// import com.pulumi.aws.kinesis.inputs.FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationProcessorArgs;
/// import com.pulumi.aws.kinesis.inputs.FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationProcessorParameterArgs;
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
///         var extendedS3Stream = new FirehoseDeliveryStream("extendedS3Stream", FirehoseDeliveryStreamArgs.builder()
///             .extendedS3Configuration(FirehoseDeliveryStreamExtendedS3ConfigurationArgs.builder()
///                 .dynamicPartitioningConfiguration(FirehoseDeliveryStreamExtendedS3ConfigurationDynamicPartitioningConfigurationArgs.builder()
///                     .enabled(true)
///                     .build())
///                 .processingConfiguration(FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationArgs.builder()
///                     .processors(
///                         FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationProcessorArgs.builder()
///                             .parameters(FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationProcessorParameterArgs.builder()
///                                 .parameterName("SubRecordType")
///                                 .parameterValue("JSON")
///                                 .build())
///                             .type("RecordDeAggregation")
///                             .build(),
///                         FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationProcessorArgs.builder()
///                             .type("AppendDelimiterToRecord")
///                             .build(),
///                         FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationProcessorArgs.builder()
///                             .parameters(
///                                 FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationProcessorParameterArgs.builder()
///                                     .parameterName("JsonParsingEngine")
///                                     .parameterValue("JQ-1.6")
///                                     .build(),
///                                 FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationProcessorParameterArgs.builder()
///                                     .parameterName("MetadataExtractionQuery")
///                                     .parameterValue("{customer_id:.customer_id}")
///                                     .build())
///                             .type("MetadataExtraction")
///                             .build())
///                     .enabled(true)
///                     .build())
///                 .roleArn(firehoseRole.arn())
///                 .bucketArn(bucket.arn())
///                 .bufferingSize(64)
///                 .prefix("data/customer_id=!{partitionKeyFromQuery:customer_id}/year=!{timestamp:yyyy}/month=!{timestamp:MM}/day=!{timestamp:dd}/hour=!{timestamp:HH}/")
///                 .errorOutputPrefix("errors/year=!{timestamp:yyyy}/month=!{timestamp:MM}/day=!{timestamp:dd}/hour=!{timestamp:HH}/!{firehose:error-output-type}/")
///                 .build())
///             .name("kinesis-firehose-extended-s3-test-stream")
///             .destination("extended_s3")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   extendedS3Stream:
///     type: aws:kinesis:FirehoseDeliveryStream
///     name: extended_s3_stream
///     properties:
///       extendedS3Configuration:
///         dynamicPartitioningConfiguration:
///           enabled: 'true'
///         processingConfiguration:
///           processors:
///             - parameters:
///                 - parameterName: SubRecordType
///                   parameterValue: JSON
///               type: RecordDeAggregation
///             - type: AppendDelimiterToRecord
///             - parameters:
///                 - parameterName: JsonParsingEngine
///                   parameterValue: JQ-1.6
///                 - parameterName: MetadataExtractionQuery
///                   parameterValue: '{customer_id:.customer_id}'
///               type: MetadataExtraction
///           enabled: 'true'
///         roleArn: ${firehoseRole.arn}
///         bucketArn: ${bucket.arn}
///         bufferingSize: 64
///         prefix: data/customer_id=!{partitionKeyFromQuery:customer_id}/year=!{timestamp:yyyy}/month=!{timestamp:MM}/day=!{timestamp:dd}/hour=!{timestamp:HH}/
///         errorOutputPrefix: errors/year=!{timestamp:yyyy}/month=!{timestamp:MM}/day=!{timestamp:dd}/hour=!{timestamp:HH}/!{firehose:error-output-type}/
///       name: kinesis-firehose-extended-s3-test-stream
///       destination: extended_s3
/// ```
///
///
/// Multiple Dynamic Partitioning Keys (maximum of 50) can be added by comma separating the `parameterValue`.
///
/// The following example adds the Dynamic Partitioning Keys: `storeId` and `customerId` to the S3 prefix.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const extendedS3Stream = new aws.kinesis.FirehoseDeliveryStream("extended_s3_stream", {
///     extendedS3Configuration: {
///         dynamicPartitioningConfiguration: {
///             enabled: true,
///         },
///         processingConfiguration: {
///             processors: [{
///                 parameters: [
///                     {
///                         parameterName: "JsonParsingEngine",
///                         parameterValue: "JQ-1.6",
///                     },
///                     {
///                         parameterName: "MetadataExtractionQuery",
///                         parameterValue: "{store_id:.store_id,customer_id:.customer_id}",
///                     },
///                 ],
///                 type: "MetadataExtraction",
///             }],
///             enabled: true,
///         },
///         roleArn: firehoseRole.arn,
///         bucketArn: bucket.arn,
///         bufferingSize: 64,
///         prefix: "data/store_id=!{partitionKeyFromQuery:store_id}/customer_id=!{partitionKeyFromQuery:customer_id}/year=!{timestamp:yyyy}/month=!{timestamp:MM}/day=!{timestamp:dd}/hour=!{timestamp:HH}/",
///         errorOutputPrefix: "errors/year=!{timestamp:yyyy}/month=!{timestamp:MM}/day=!{timestamp:dd}/hour=!{timestamp:HH}/!{firehose:error-output-type}/",
///     },
///     name: "kinesis-firehose-extended-s3-test-stream",
///     destination: "extended_s3",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// extended_s3_stream = aws.kinesis.FirehoseDeliveryStream("extended_s3_stream",
///     extended_s3_configuration={
///         "dynamic_partitioning_configuration": {
///             "enabled": True,
///         },
///         "processing_configuration": {
///             "processors": [{
///                 "parameters": [
///                     {
///                         "parameter_name": "JsonParsingEngine",
///                         "parameter_value": "JQ-1.6",
///                     },
///                     {
///                         "parameter_name": "MetadataExtractionQuery",
///                         "parameter_value": "{store_id:.store_id,customer_id:.customer_id}",
///                     },
///                 ],
///                 "type": "MetadataExtraction",
///             }],
///             "enabled": True,
///         },
///         "role_arn": firehose_role["arn"],
///         "bucket_arn": bucket["arn"],
///         "buffering_size": 64,
///         "prefix": "data/store_id=!{partitionKeyFromQuery:store_id}/customer_id=!{partitionKeyFromQuery:customer_id}/year=!{timestamp:yyyy}/month=!{timestamp:MM}/day=!{timestamp:dd}/hour=!{timestamp:HH}/",
///         "error_output_prefix": "errors/year=!{timestamp:yyyy}/month=!{timestamp:MM}/day=!{timestamp:dd}/hour=!{timestamp:HH}/!{firehose:error-output-type}/",
///     },
///     name="kinesis-firehose-extended-s3-test-stream",
///     destination="extended_s3")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var extendedS3Stream = new Aws.Kinesis.FirehoseDeliveryStream("extended_s3_stream", new()
///     {
///         ExtendedS3Configuration = new Aws.Kinesis.Inputs.FirehoseDeliveryStreamExtendedS3ConfigurationArgs
///         {
///             DynamicPartitioningConfiguration = new Aws.Kinesis.Inputs.FirehoseDeliveryStreamExtendedS3ConfigurationDynamicPartitioningConfigurationArgs
///             {
///                 Enabled = true,
///             },
///             ProcessingConfiguration = new Aws.Kinesis.Inputs.FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationArgs
///             {
///                 Processors = new[]
///                 {
///                     new Aws.Kinesis.Inputs.FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationProcessorArgs
///                     {
///                         Parameters = new[]
///                         {
///                             new Aws.Kinesis.Inputs.FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationProcessorParameterArgs
///                             {
///                                 ParameterName = "JsonParsingEngine",
///                                 ParameterValue = "JQ-1.6",
///                             },
///                             new Aws.Kinesis.Inputs.FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationProcessorParameterArgs
///                             {
///                                 ParameterName = "MetadataExtractionQuery",
///                                 ParameterValue = "{store_id:.store_id,customer_id:.customer_id}",
///                             },
///                         },
///                         Type = "MetadataExtraction",
///                     },
///                 },
///                 Enabled = true,
///             },
///             RoleArn = firehoseRole.Arn,
///             BucketArn = bucket.Arn,
///             BufferingSize = 64,
///             Prefix = "data/store_id=!{partitionKeyFromQuery:store_id}/customer_id=!{partitionKeyFromQuery:customer_id}/year=!{timestamp:yyyy}/month=!{timestamp:MM}/day=!{timestamp:dd}/hour=!{timestamp:HH}/",
///             ErrorOutputPrefix = "errors/year=!{timestamp:yyyy}/month=!{timestamp:MM}/day=!{timestamp:dd}/hour=!{timestamp:HH}/!{firehose:error-output-type}/",
///         },
///         Name = "kinesis-firehose-extended-s3-test-stream",
///         Destination = "extended_s3",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kinesis"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := kinesis.NewFirehoseDeliveryStream(ctx, "extended_s3_stream", &kinesis.FirehoseDeliveryStreamArgs{
/// 			ExtendedS3Configuration: &kinesis.FirehoseDeliveryStreamExtendedS3ConfigurationArgs{
/// 				DynamicPartitioningConfiguration: &kinesis.FirehoseDeliveryStreamExtendedS3ConfigurationDynamicPartitioningConfigurationArgs{
/// 					Enabled: pulumi.Bool(true),
/// 				},
/// 				ProcessingConfiguration: &kinesis.FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationArgs{
/// 					Processors: kinesis.FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationProcessorArray{
/// 						&kinesis.FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationProcessorArgs{
/// 							Parameters: kinesis.FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationProcessorParameterArray{
/// 								&kinesis.FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationProcessorParameterArgs{
/// 									ParameterName:  pulumi.String("JsonParsingEngine"),
/// 									ParameterValue: pulumi.String("JQ-1.6"),
/// 								},
/// 								&kinesis.FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationProcessorParameterArgs{
/// 									ParameterName:  pulumi.String("MetadataExtractionQuery"),
/// 									ParameterValue: pulumi.String("{store_id:.store_id,customer_id:.customer_id}"),
/// 								},
/// 							},
/// 							Type: pulumi.String("MetadataExtraction"),
/// 						},
/// 					},
/// 					Enabled: pulumi.Bool(true),
/// 				},
/// 				RoleArn:           pulumi.Any(firehoseRole.Arn),
/// 				BucketArn:         pulumi.Any(bucket.Arn),
/// 				BufferingSize:     pulumi.Int(64),
/// 				Prefix:            pulumi.String("data/store_id=!{partitionKeyFromQuery:store_id}/customer_id=!{partitionKeyFromQuery:customer_id}/year=!{timestamp:yyyy}/month=!{timestamp:MM}/day=!{timestamp:dd}/hour=!{timestamp:HH}/"),
/// 				ErrorOutputPrefix: pulumi.String("errors/year=!{timestamp:yyyy}/month=!{timestamp:MM}/day=!{timestamp:dd}/hour=!{timestamp:HH}/!{firehose:error-output-type}/"),
/// 			},
/// 			Name:        pulumi.String("kinesis-firehose-extended-s3-test-stream"),
/// 			Destination: pulumi.String("extended_s3"),
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
/// resource "aws_kinesis_firehosedeliverystream" "extended_s3_stream" {
///   extended_s3_configuration = {
///     dynamic_partitioning_configuration = {
///       enabled = "true"
///     }
///     processing_configuration = {
///       processors = [{
///         "parameters" = [{
///           "parameterName"  = "JsonParsingEngine"
///           "parameterValue" = "JQ-1.6"
///           }, {
///           "parameterName"  = "MetadataExtractionQuery"
///           "parameterValue" = "{store_id:.store_id,customer_id:.customer_id}"
///         }]
///         "type" = "MetadataExtraction"
///       }]
///       enabled = "true"
///     }
///     role_arn            = firehoseRole.arn
///     bucket_arn          = bucket.arn
///     buffering_size      = 64
///     prefix              = "data/store_id=!{partitionKeyFromQuery:store_id}/customer_id=!{partitionKeyFromQuery:customer_id}/year=!{timestamp:yyyy}/month=!{timestamp:MM}/day=!{timestamp:dd}/hour=!{timestamp:HH}/"
///     error_output_prefix = "errors/year=!{timestamp:yyyy}/month=!{timestamp:MM}/day=!{timestamp:dd}/hour=!{timestamp:HH}/!{firehose:error-output-type}/"
///   }
///   # https://docs.aws.amazon.com/firehose/latest/dev/dynamic-partitioning.html
///   # Example prefix using partitionKeyFromQuery, applicable to JQ processor
///   name        = "kinesis-firehose-extended-s3-test-stream"
///   destination = "extended_s3"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.kinesis.FirehoseDeliveryStream;
/// import com.pulumi.aws.kinesis.FirehoseDeliveryStreamArgs;
/// import com.pulumi.aws.kinesis.inputs.FirehoseDeliveryStreamExtendedS3ConfigurationArgs;
/// import com.pulumi.aws.kinesis.inputs.FirehoseDeliveryStreamExtendedS3ConfigurationDynamicPartitioningConfigurationArgs;
/// import com.pulumi.aws.kinesis.inputs.FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationArgs;
/// import com.pulumi.aws.kinesis.inputs.FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationProcessorArgs;
/// import com.pulumi.aws.kinesis.inputs.FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationProcessorParameterArgs;
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
///         var extendedS3Stream = new FirehoseDeliveryStream("extendedS3Stream", FirehoseDeliveryStreamArgs.builder()
///             .extendedS3Configuration(FirehoseDeliveryStreamExtendedS3ConfigurationArgs.builder()
///                 .dynamicPartitioningConfiguration(FirehoseDeliveryStreamExtendedS3ConfigurationDynamicPartitioningConfigurationArgs.builder()
///                     .enabled(true)
///                     .build())
///                 .processingConfiguration(FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationArgs.builder()
///                     .processors(FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationProcessorArgs.builder()
///                         .parameters(
///                             FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationProcessorParameterArgs.builder()
///                                 .parameterName("JsonParsingEngine")
///                                 .parameterValue("JQ-1.6")
///                                 .build(),
///                             FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationProcessorParameterArgs.builder()
///                                 .parameterName("MetadataExtractionQuery")
///                                 .parameterValue("{store_id:.store_id,customer_id:.customer_id}")
///                                 .build())
///                         .type("MetadataExtraction")
///                         .build())
///                     .enabled(true)
///                     .build())
///                 .roleArn(firehoseRole.arn())
///                 .bucketArn(bucket.arn())
///                 .bufferingSize(64)
///                 .prefix("data/store_id=!{partitionKeyFromQuery:store_id}/customer_id=!{partitionKeyFromQuery:customer_id}/year=!{timestamp:yyyy}/month=!{timestamp:MM}/day=!{timestamp:dd}/hour=!{timestamp:HH}/")
///                 .errorOutputPrefix("errors/year=!{timestamp:yyyy}/month=!{timestamp:MM}/day=!{timestamp:dd}/hour=!{timestamp:HH}/!{firehose:error-output-type}/")
///                 .build())
///             .name("kinesis-firehose-extended-s3-test-stream")
///             .destination("extended_s3")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   extendedS3Stream:
///     type: aws:kinesis:FirehoseDeliveryStream
///     name: extended_s3_stream
///     properties:
///       extendedS3Configuration:
///         dynamicPartitioningConfiguration:
///           enabled: 'true'
///         processingConfiguration:
///           processors:
///             - parameters:
///                 - parameterName: JsonParsingEngine
///                   parameterValue: JQ-1.6
///                 - parameterName: MetadataExtractionQuery
///                   parameterValue: '{store_id:.store_id,customer_id:.customer_id}'
///               type: MetadataExtraction
///           enabled: 'true'
///         roleArn: ${firehoseRole.arn}
///         bucketArn: ${bucket.arn}
///         bufferingSize: 64
///         prefix: data/store_id=!{partitionKeyFromQuery:store_id}/customer_id=!{partitionKeyFromQuery:customer_id}/year=!{timestamp:yyyy}/month=!{timestamp:MM}/day=!{timestamp:dd}/hour=!{timestamp:HH}/
///         errorOutputPrefix: errors/year=!{timestamp:yyyy}/month=!{timestamp:MM}/day=!{timestamp:dd}/hour=!{timestamp:HH}/!{firehose:error-output-type}/
///       name: kinesis-firehose-extended-s3-test-stream
///       destination: extended_s3
/// ```
///
///
/// ### Redshift Destination
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const testCluster = new aws.redshift.Cluster("test_cluster", {
///     clusterIdentifier: "tf-redshift-cluster",
///     databaseName: "test",
///     masterUsername: "testuser",
///     masterPassword: "T3stPass",
///     nodeType: "dc1.large",
///     clusterType: "single-node",
/// });
/// const testStream = new aws.kinesis.FirehoseDeliveryStream("test_stream", {
///     redshiftConfiguration: {
///         s3Configuration: {
///             roleArn: firehoseRole.arn,
///             bucketArn: bucket.arn,
///             bufferingSize: 10,
///             bufferingInterval: 400,
///             compressionFormat: "GZIP",
///         },
///         s3BackupConfiguration: {
///             roleArn: firehoseRole.arn,
///             bucketArn: bucket.arn,
///             bufferingSize: 15,
///             bufferingInterval: 300,
///             compressionFormat: "GZIP",
///         },
///         roleArn: firehoseRole.arn,
///         clusterJdbcurl: pulumi.interpolate`jdbc:redshift://${testCluster.endpoint}/${testCluster.databaseName}`,
///         username: "testuser",
///         password: "T3stPass",
///         dataTableName: "test-table",
///         copyOptions: "delimiter '|'",
///         dataTableColumns: "test-col",
///         s3BackupMode: "Enabled",
///     },
///     name: "kinesis-firehose-test-stream",
///     destination: "redshift",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test_cluster = aws.redshift.Cluster("test_cluster",
///     cluster_identifier="tf-redshift-cluster",
///     database_name="test",
///     master_username="testuser",
///     master_password="T3stPass",
///     node_type="dc1.large",
///     cluster_type="single-node")
/// test_stream = aws.kinesis.FirehoseDeliveryStream("test_stream",
///     redshift_configuration={
///         "s3_configuration": {
///             "role_arn": firehose_role["arn"],
///             "bucket_arn": bucket["arn"],
///             "buffering_size": 10,
///             "buffering_interval": 400,
///             "compression_format": "GZIP",
///         },
///         "s3_backup_configuration": {
///             "role_arn": firehose_role["arn"],
///             "bucket_arn": bucket["arn"],
///             "buffering_size": 15,
///             "buffering_interval": 300,
///             "compression_format": "GZIP",
///         },
///         "role_arn": firehose_role["arn"],
///         "cluster_jdbcurl": pulumi.Output.all(
///             endpoint=test_cluster.endpoint,
///             database_name=test_cluster.database_name
/// ).apply(lambda resolved_outputs: f"jdbc:redshift://{resolved_outputs['endpoint']}/{resolved_outputs['database_name']}")
/// ,
///         "username": "testuser",
///         "password": "T3stPass",
///         "data_table_name": "test-table",
///         "copy_options": "delimiter '|'",
///         "data_table_columns": "test-col",
///         "s3_backup_mode": "Enabled",
///     },
///     name="kinesis-firehose-test-stream",
///     destination="redshift")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var testCluster = new Aws.RedShift.Cluster("test_cluster", new()
///     {
///         ClusterIdentifier = "tf-redshift-cluster",
///         DatabaseName = "test",
///         MasterUsername = "testuser",
///         MasterPassword = "T3stPass",
///         NodeType = "dc1.large",
///         ClusterType = "single-node",
///     });
///
///     var testStream = new Aws.Kinesis.FirehoseDeliveryStream("test_stream", new()
///     {
///         RedshiftConfiguration = new Aws.Kinesis.Inputs.FirehoseDeliveryStreamRedshiftConfigurationArgs
///         {
///             S3Configuration = new Aws.Kinesis.Inputs.FirehoseDeliveryStreamRedshiftConfigurationS3ConfigurationArgs
///             {
///                 RoleArn = firehoseRole.Arn,
///                 BucketArn = bucket.Arn,
///                 BufferingSize = 10,
///                 BufferingInterval = 400,
///                 CompressionFormat = "GZIP",
///             },
///             S3BackupConfiguration = new Aws.Kinesis.Inputs.FirehoseDeliveryStreamRedshiftConfigurationS3BackupConfigurationArgs
///             {
///                 RoleArn = firehoseRole.Arn,
///                 BucketArn = bucket.Arn,
///                 BufferingSize = 15,
///                 BufferingInterval = 300,
///                 CompressionFormat = "GZIP",
///             },
///             RoleArn = firehoseRole.Arn,
///             ClusterJdbcurl = Output.Tuple(testCluster.Endpoint, testCluster.DatabaseName).Apply(values =>
///             {
///                 var endpoint = values.Item1;
///                 var databaseName = values.Item2;
///                 return $"jdbc:redshift://{endpoint}/{databaseName}";
///             }),
///             Username = "testuser",
///             Password = "T3stPass",
///             DataTableName = "test-table",
///             CopyOptions = "delimiter '|'",
///             DataTableColumns = "test-col",
///             S3BackupMode = "Enabled",
///         },
///         Name = "kinesis-firehose-test-stream",
///         Destination = "redshift",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kinesis"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/redshift"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		testCluster, err := redshift.NewCluster(ctx, "test_cluster", &redshift.ClusterArgs{
/// 			ClusterIdentifier: pulumi.String("tf-redshift-cluster"),
/// 			DatabaseName:      pulumi.String("test"),
/// 			MasterUsername:    pulumi.String("testuser"),
/// 			MasterPassword:    pulumi.String("T3stPass"),
/// 			NodeType:          pulumi.String("dc1.large"),
/// 			ClusterType:       pulumi.String("single-node"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = kinesis.NewFirehoseDeliveryStream(ctx, "test_stream", &kinesis.FirehoseDeliveryStreamArgs{
/// 			RedshiftConfiguration: &kinesis.FirehoseDeliveryStreamRedshiftConfigurationArgs{
/// 				S3Configuration: &kinesis.FirehoseDeliveryStreamRedshiftConfigurationS3ConfigurationArgs{
/// 					RoleArn:           pulumi.Any(firehoseRole.Arn),
/// 					BucketArn:         pulumi.Any(bucket.Arn),
/// 					BufferingSize:     pulumi.Int(10),
/// 					BufferingInterval: pulumi.Int(400),
/// 					CompressionFormat: pulumi.String("GZIP"),
/// 				},
/// 				S3BackupConfiguration: &kinesis.FirehoseDeliveryStreamRedshiftConfigurationS3BackupConfigurationArgs{
/// 					RoleArn:           pulumi.Any(firehoseRole.Arn),
/// 					BucketArn:         pulumi.Any(bucket.Arn),
/// 					BufferingSize:     pulumi.Int(15),
/// 					BufferingInterval: pulumi.Int(300),
/// 					CompressionFormat: pulumi.String("GZIP"),
/// 				},
/// 				RoleArn: pulumi.Any(firehoseRole.Arn),
/// 				ClusterJdbcurl: pulumi.All(testCluster.Endpoint, testCluster.DatabaseName).ApplyT(func(_args []interface{}) (string, error) {
/// 					endpoint := _args[0].(string)
/// 					databaseName := _args[1].(string)
/// 					return fmt.Sprintf("jdbc:redshift://%v/%v", endpoint, databaseName), nil
/// 				}).(pulumi.StringOutput),
/// 				Username:         pulumi.String("testuser"),
/// 				Password:         pulumi.String("T3stPass"),
/// 				DataTableName:    pulumi.String("test-table"),
/// 				CopyOptions:      pulumi.String("delimiter '|'"),
/// 				DataTableColumns: pulumi.String("test-col"),
/// 				S3BackupMode:     pulumi.String("Enabled"),
/// 			},
/// 			Name:        pulumi.String("kinesis-firehose-test-stream"),
/// 			Destination: pulumi.String("redshift"),
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
/// resource "aws_redshift_cluster" "test_cluster" {
///   cluster_identifier = "tf-redshift-cluster"
///   database_name      = "test"
///   master_username    = "testuser"
///   master_password    = "T3stPass"
///   node_type          = "dc1.large"
///   cluster_type       = "single-node"
/// }
/// resource "aws_kinesis_firehosedeliverystream" "test_stream" {
///   redshift_configuration = {
///     s3_configuration = {
///       role_arn           = firehoseRole.arn
///       bucket_arn         = bucket.arn
///       buffering_size     = 10
///       buffering_interval = 400
///       compression_format = "GZIP"
///     }
///     s3_backup_configuration = {
///       role_arn           = firehoseRole.arn
///       bucket_arn         = bucket.arn
///       buffering_size     = 15
///       buffering_interval = 300
///       compression_format = "GZIP"
///     }
///     role_arn           = firehoseRole.arn
///     cluster_jdbcurl    ="jdbc:redshift://${aws_redshift_cluster.test_cluster.endpoint}/${aws_redshift_cluster.test_cluster.database_name}"
///     username           = "testuser"
///     password           = "T3stPass"
///     data_table_name    = "test-table"
///     copy_options       = "delimiter '|'"
///     data_table_columns = "test-col"
///     s3_backup_mode     = "Enabled"
///   }
///   # the default delimiter
///   name        = "kinesis-firehose-test-stream"
///   destination = "redshift"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.redshift.Cluster;
/// import com.pulumi.aws.redshift.ClusterArgs;
/// import com.pulumi.aws.kinesis.FirehoseDeliveryStream;
/// import com.pulumi.aws.kinesis.FirehoseDeliveryStreamArgs;
/// import com.pulumi.aws.kinesis.inputs.FirehoseDeliveryStreamRedshiftConfigurationArgs;
/// import com.pulumi.aws.kinesis.inputs.FirehoseDeliveryStreamRedshiftConfigurationS3ConfigurationArgs;
/// import com.pulumi.aws.kinesis.inputs.FirehoseDeliveryStreamRedshiftConfigurationS3BackupConfigurationArgs;
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
///         var testCluster = new Cluster("testCluster", ClusterArgs.builder()
///             .clusterIdentifier("tf-redshift-cluster")
///             .databaseName("test")
///             .masterUsername("testuser")
///             .masterPassword("T3stPass")
///             .nodeType("dc1.large")
///             .clusterType("single-node")
///             .build());
///
///         var testStream = new FirehoseDeliveryStream("testStream", FirehoseDeliveryStreamArgs.builder()
///             .redshiftConfiguration(FirehoseDeliveryStreamRedshiftConfigurationArgs.builder()
///                 .s3Configuration(FirehoseDeliveryStreamRedshiftConfigurationS3ConfigurationArgs.builder()
///                     .roleArn(firehoseRole.arn())
///                     .bucketArn(bucket.arn())
///                     .bufferingSize(10)
///                     .bufferingInterval(400)
///                     .compressionFormat("GZIP")
///                     .build())
///                 .s3BackupConfiguration(FirehoseDeliveryStreamRedshiftConfigurationS3BackupConfigurationArgs.builder()
///                     .roleArn(firehoseRole.arn())
///                     .bucketArn(bucket.arn())
///                     .bufferingSize(15)
///                     .bufferingInterval(300)
///                     .compressionFormat("GZIP")
///                     .build())
///                 .roleArn(firehoseRole.arn())
///                 .clusterJdbcurl(Output.tuple(testCluster.endpoint(), testCluster.databaseName()).applyValue(values -> {
///                     var endpoint = values.t1;
///                     var databaseName = values.t2;
///                     return String.format("jdbc:redshift://%s/%s", endpoint,databaseName);
///                 }))
///                 .username("testuser")
///                 .password("T3stPass")
///                 .dataTableName("test-table")
///                 .copyOptions("delimiter '|'")
///                 .dataTableColumns("test-col")
///                 .s3BackupMode("Enabled")
///                 .build())
///             .name("kinesis-firehose-test-stream")
///             .destination("redshift")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   testCluster:
///     type: aws:redshift:Cluster
///     name: test_cluster
///     properties:
///       clusterIdentifier: tf-redshift-cluster
///       databaseName: test
///       masterUsername: testuser
///       masterPassword: T3stPass
///       nodeType: dc1.large
///       clusterType: single-node
///   testStream:
///     type: aws:kinesis:FirehoseDeliveryStream
///     name: test_stream
///     properties:
///       redshiftConfiguration:
///         s3Configuration:
///           roleArn: ${firehoseRole.arn}
///           bucketArn: ${bucket.arn}
///           bufferingSize: 10
///           bufferingInterval: 400
///           compressionFormat: GZIP
///         s3BackupConfiguration:
///           roleArn: ${firehoseRole.arn}
///           bucketArn: ${bucket.arn}
///           bufferingSize: 15
///           bufferingInterval: 300
///           compressionFormat: GZIP
///         roleArn: ${firehoseRole.arn}
///         clusterJdbcurl: jdbc:redshift://${testCluster.endpoint}/${testCluster.databaseName}
///         username: testuser
///         password: T3stPass
///         dataTableName: test-table
///         copyOptions: delimiter '|'
///         dataTableColumns: test-col
///         s3BackupMode: Enabled
///       name: kinesis-firehose-test-stream
///       destination: redshift
/// ```
///
///
/// ### Elasticsearch Destination
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const testCluster = new aws.elasticsearch.Domain("test_cluster", {domainName: "firehose-es-test"});
/// const testStream = new aws.kinesis.FirehoseDeliveryStream("test_stream", {
///     elasticsearchConfiguration: {
///         s3Configuration: {
///             roleArn: firehoseRole.arn,
///             bucketArn: bucket.arn,
///             bufferingSize: 10,
///             bufferingInterval: 400,
///             compressionFormat: "GZIP",
///         },
///         processingConfiguration: {
///             processors: [{
///                 parameters: [{
///                     parameterName: "LambdaArn",
///                     parameterValue: `${lambdaProcessor.arn}:$LATEST`,
///                 }],
///                 type: "Lambda",
///             }],
///             enabled: true,
///         },
///         domainArn: testCluster.arn,
///         roleArn: firehoseRole.arn,
///         indexName: "test",
///         typeName: "test",
///     },
///     name: "kinesis-firehose-test-stream",
///     destination: "elasticsearch",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test_cluster = aws.elasticsearch.Domain("test_cluster", domain_name="firehose-es-test")
/// test_stream = aws.kinesis.FirehoseDeliveryStream("test_stream",
///     elasticsearch_configuration={
///         "s3_configuration": {
///             "role_arn": firehose_role["arn"],
///             "bucket_arn": bucket["arn"],
///             "buffering_size": 10,
///             "buffering_interval": 400,
///             "compression_format": "GZIP",
///         },
///         "processing_configuration": {
///             "processors": [{
///                 "parameters": [{
///                     "parameter_name": "LambdaArn",
///                     "parameter_value": f"{lambda_processor['arn']}:$LATEST",
///                 }],
///                 "type": "Lambda",
///             }],
///             "enabled": True,
///         },
///         "domain_arn": test_cluster.arn,
///         "role_arn": firehose_role["arn"],
///         "index_name": "test",
///         "type_name": "test",
///     },
///     name="kinesis-firehose-test-stream",
///     destination="elasticsearch")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var testCluster = new Aws.ElasticSearch.Domain("test_cluster", new()
///     {
///         DomainName = "firehose-es-test",
///     });
///
///     var testStream = new Aws.Kinesis.FirehoseDeliveryStream("test_stream", new()
///     {
///         ElasticsearchConfiguration = new Aws.Kinesis.Inputs.FirehoseDeliveryStreamElasticsearchConfigurationArgs
///         {
///             S3Configuration = new Aws.Kinesis.Inputs.FirehoseDeliveryStreamElasticsearchConfigurationS3ConfigurationArgs
///             {
///                 RoleArn = firehoseRole.Arn,
///                 BucketArn = bucket.Arn,
///                 BufferingSize = 10,
///                 BufferingInterval = 400,
///                 CompressionFormat = "GZIP",
///             },
///             ProcessingConfiguration = new Aws.Kinesis.Inputs.FirehoseDeliveryStreamElasticsearchConfigurationProcessingConfigurationArgs
///             {
///                 Processors = new[]
///                 {
///                     new Aws.Kinesis.Inputs.FirehoseDeliveryStreamElasticsearchConfigurationProcessingConfigurationProcessorArgs
///                     {
///                         Parameters = new[]
///                         {
///                             new Aws.Kinesis.Inputs.FirehoseDeliveryStreamElasticsearchConfigurationProcessingConfigurationProcessorParameterArgs
///                             {
///                                 ParameterName = "LambdaArn",
///                                 ParameterValue = $"{lambdaProcessor.Arn}:$LATEST",
///                             },
///                         },
///                         Type = "Lambda",
///                     },
///                 },
///                 Enabled = true,
///             },
///             DomainArn = testCluster.Arn,
///             RoleArn = firehoseRole.Arn,
///             IndexName = "test",
///             TypeName = "test",
///         },
///         Name = "kinesis-firehose-test-stream",
///         Destination = "elasticsearch",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/elasticsearch"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kinesis"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		testCluster, err := elasticsearch.NewDomain(ctx, "test_cluster", &elasticsearch.DomainArgs{
/// 			DomainName: pulumi.String("firehose-es-test"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = kinesis.NewFirehoseDeliveryStream(ctx, "test_stream", &kinesis.FirehoseDeliveryStreamArgs{
/// 			ElasticsearchConfiguration: &kinesis.FirehoseDeliveryStreamElasticsearchConfigurationArgs{
/// 				S3Configuration: &kinesis.FirehoseDeliveryStreamElasticsearchConfigurationS3ConfigurationArgs{
/// 					RoleArn:           pulumi.Any(firehoseRole.Arn),
/// 					BucketArn:         pulumi.Any(bucket.Arn),
/// 					BufferingSize:     pulumi.Int(10),
/// 					BufferingInterval: pulumi.Int(400),
/// 					CompressionFormat: pulumi.String("GZIP"),
/// 				},
/// 				ProcessingConfiguration: &kinesis.FirehoseDeliveryStreamElasticsearchConfigurationProcessingConfigurationArgs{
/// 					Processors: kinesis.FirehoseDeliveryStreamElasticsearchConfigurationProcessingConfigurationProcessorArray{
/// 						&kinesis.FirehoseDeliveryStreamElasticsearchConfigurationProcessingConfigurationProcessorArgs{
/// 							Parameters: kinesis.FirehoseDeliveryStreamElasticsearchConfigurationProcessingConfigurationProcessorParameterArray{
/// 								&kinesis.FirehoseDeliveryStreamElasticsearchConfigurationProcessingConfigurationProcessorParameterArgs{
/// 									ParameterName:  pulumi.String("LambdaArn"),
/// 									ParameterValue: pulumi.Sprintf("%v:$LATEST", lambdaProcessor.Arn),
/// 								},
/// 							},
/// 							Type: pulumi.String("Lambda"),
/// 						},
/// 					},
/// 					Enabled: pulumi.Bool(true),
/// 				},
/// 				DomainArn: testCluster.Arn,
/// 				RoleArn:   pulumi.Any(firehoseRole.Arn),
/// 				IndexName: pulumi.String("test"),
/// 				TypeName:  pulumi.String("test"),
/// 			},
/// 			Name:        pulumi.String("kinesis-firehose-test-stream"),
/// 			Destination: pulumi.String("elasticsearch"),
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
/// resource "aws_elasticsearch_domain" "test_cluster" {
///   domain_name = "firehose-es-test"
/// }
/// resource "aws_kinesis_firehosedeliverystream" "test_stream" {
///   elasticsearch_configuration = {
///     s3_configuration = {
///       role_arn           = firehoseRole.arn
///       bucket_arn         = bucket.arn
///       buffering_size     = 10
///       buffering_interval = 400
///       compression_format = "GZIP"
///     }
///     processing_configuration = {
///       processors = [{
///         "parameters" = [{
///           "parameterName"  = "LambdaArn"
///           "parameterValue" ="${lambdaProcessor.arn}:$LATEST"
///         }]
///         "type" = "Lambda"
///       }]
///       enabled = "true"
///     }
///     domain_arn = aws_elasticsearch_domain.test_cluster.arn
///     role_arn   = firehoseRole.arn
///     index_name = "test"
///     type_name  = "test"
///   }
///   name        = "kinesis-firehose-test-stream"
///   destination = "elasticsearch"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.elasticsearch.Domain;
/// import com.pulumi.aws.elasticsearch.DomainArgs;
/// import com.pulumi.aws.kinesis.FirehoseDeliveryStream;
/// import com.pulumi.aws.kinesis.FirehoseDeliveryStreamArgs;
/// import com.pulumi.aws.kinesis.inputs.FirehoseDeliveryStreamElasticsearchConfigurationArgs;
/// import com.pulumi.aws.kinesis.inputs.FirehoseDeliveryStreamElasticsearchConfigurationS3ConfigurationArgs;
/// import com.pulumi.aws.kinesis.inputs.FirehoseDeliveryStreamElasticsearchConfigurationProcessingConfigurationArgs;
/// import com.pulumi.aws.kinesis.inputs.FirehoseDeliveryStreamElasticsearchConfigurationProcessingConfigurationProcessorArgs;
/// import com.pulumi.aws.kinesis.inputs.FirehoseDeliveryStreamElasticsearchConfigurationProcessingConfigurationProcessorParameterArgs;
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
///         var testCluster = new Domain("testCluster", DomainArgs.builder()
///             .domainName("firehose-es-test")
///             .build());
///
///         var testStream = new FirehoseDeliveryStream("testStream", FirehoseDeliveryStreamArgs.builder()
///             .elasticsearchConfiguration(FirehoseDeliveryStreamElasticsearchConfigurationArgs.builder()
///                 .s3Configuration(FirehoseDeliveryStreamElasticsearchConfigurationS3ConfigurationArgs.builder()
///                     .roleArn(firehoseRole.arn())
///                     .bucketArn(bucket.arn())
///                     .bufferingSize(10)
///                     .bufferingInterval(400)
///                     .compressionFormat("GZIP")
///                     .build())
///                 .processingConfiguration(FirehoseDeliveryStreamElasticsearchConfigurationProcessingConfigurationArgs.builder()
///                     .processors(FirehoseDeliveryStreamElasticsearchConfigurationProcessingConfigurationProcessorArgs.builder()
///                         .parameters(FirehoseDeliveryStreamElasticsearchConfigurationProcessingConfigurationProcessorParameterArgs.builder()
///                             .parameterName("LambdaArn")
///                             .parameterValue(String.format("%s:$LATEST", lambdaProcessor.arn()))
///                             .build())
///                         .type("Lambda")
///                         .build())
///                     .enabled(true)
///                     .build())
///                 .domainArn(testCluster.arn())
///                 .roleArn(firehoseRole.arn())
///                 .indexName("test")
///                 .typeName("test")
///                 .build())
///             .name("kinesis-firehose-test-stream")
///             .destination("elasticsearch")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   testCluster:
///     type: aws:elasticsearch:Domain
///     name: test_cluster
///     properties:
///       domainName: firehose-es-test
///   testStream:
///     type: aws:kinesis:FirehoseDeliveryStream
///     name: test_stream
///     properties:
///       elasticsearchConfiguration:
///         s3Configuration:
///           roleArn: ${firehoseRole.arn}
///           bucketArn: ${bucket.arn}
///           bufferingSize: 10
///           bufferingInterval: 400
///           compressionFormat: GZIP
///         processingConfiguration:
///           processors:
///             - parameters:
///                 - parameterName: LambdaArn
///                   parameterValue: ${lambdaProcessor.arn}:$LATEST
///               type: Lambda
///           enabled: 'true'
///         domainArn: ${testCluster.arn}
///         roleArn: ${firehoseRole.arn}
///         indexName: test
///         typeName: test
///       name: kinesis-firehose-test-stream
///       destination: elasticsearch
/// ```
///
///
/// ### Elasticsearch Destination With VPC
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const testCluster = new aws.elasticsearch.Domain("test_cluster", {
///     clusterConfig: {
///         instanceCount: 2,
///         zoneAwarenessEnabled: true,
///         instanceType: "t2.small.elasticsearch",
///     },
///     ebsOptions: {
///         ebsEnabled: true,
///         volumeSize: 10,
///     },
///     vpcOptions: {
///         securityGroupIds: [first.id],
///         subnetIds: [
///             firstAwsSubnet.id,
///             second.id,
///         ],
///     },
///     domainName: "es-test",
/// });
/// const firehose_elasticsearch = aws.iam.getPolicyDocumentOutput({
///     statements: [
///         {
///             effect: "Allow",
///             actions: ["es:*"],
///             resources: [
///                 testCluster.arn,
///                 pulumi.interpolate`${testCluster.arn}/*`,
///             ],
///         },
///         {
///             effect: "Allow",
///             actions: [
///                 "ec2:DescribeVpcs",
///                 "ec2:DescribeVpcAttribute",
///                 "ec2:DescribeSubnets",
///                 "ec2:DescribeSecurityGroups",
///                 "ec2:DescribeNetworkInterfaces",
///                 "ec2:CreateNetworkInterface",
///                 "ec2:CreateNetworkInterfacePermission",
///                 "ec2:DeleteNetworkInterface",
///             ],
///             resources: ["*"],
///         },
///     ],
/// });
/// const firehose_elasticsearchRolePolicy = new aws.iam.RolePolicy("firehose-elasticsearch", {
///     name: "elasticsearch",
///     role: firehose.id,
///     policy: firehose_elasticsearch.json,
/// });
/// const test = new aws.kinesis.FirehoseDeliveryStream("test", {
///     elasticsearchConfiguration: {
///         s3Configuration: {
///             roleArn: firehose.arn,
///             bucketArn: bucket.arn,
///         },
///         vpcConfig: {
///             subnetIds: [
///                 firstAwsSubnet.id,
///                 second.id,
///             ],
///             securityGroupIds: [first.id],
///             roleArn: firehose.arn,
///         },
///         domainArn: testCluster.arn,
///         roleArn: firehose.arn,
///         indexName: "test",
///         typeName: "test",
///     },
///     name: "kinesis-firehose-es",
///     destination: "elasticsearch",
/// }, {
///     dependsOn: [firehose_elasticsearchRolePolicy],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test_cluster = aws.elasticsearch.Domain("test_cluster",
///     cluster_config={
///         "instance_count": 2,
///         "zone_awareness_enabled": True,
///         "instance_type": "t2.small.elasticsearch",
///     },
///     ebs_options={
///         "ebs_enabled": True,
///         "volume_size": 10,
///     },
///     vpc_options={
///         "security_group_ids": [first["id"]],
///         "subnet_ids": [
///             first_aws_subnet["id"],
///             second["id"],
///         ],
///     },
///     domain_name="es-test")
/// firehose_elasticsearch = aws.iam.get_policy_document_output(statements=[
///     {
///         "effect": "Allow",
///         "actions": ["es:*"],
///         "resources": [
///             test_cluster.arn,
///             test_cluster.arn.apply(lambda arn: f"{arn}/*"),
///         ],
///     },
///     {
///         "effect": "Allow",
///         "actions": [
///             "ec2:DescribeVpcs",
///             "ec2:DescribeVpcAttribute",
///             "ec2:DescribeSubnets",
///             "ec2:DescribeSecurityGroups",
///             "ec2:DescribeNetworkInterfaces",
///             "ec2:CreateNetworkInterface",
///             "ec2:CreateNetworkInterfacePermission",
///             "ec2:DeleteNetworkInterface",
///         ],
///         "resources": ["*"],
///     },
/// ])
/// firehose_elasticsearch_role_policy = aws.iam.RolePolicy("firehose-elasticsearch",
///     name="elasticsearch",
///     role=firehose["id"],
///     policy=firehose_elasticsearch.json)
/// test = aws.kinesis.FirehoseDeliveryStream("test",
///     elasticsearch_configuration={
///         "s3_configuration": {
///             "role_arn": firehose["arn"],
///             "bucket_arn": bucket["arn"],
///         },
///         "vpc_config": {
///             "subnet_ids": [
///                 first_aws_subnet["id"],
///                 second["id"],
///             ],
///             "security_group_ids": [first["id"]],
///             "role_arn": firehose["arn"],
///         },
///         "domain_arn": test_cluster.arn,
///         "role_arn": firehose["arn"],
///         "index_name": "test",
///         "type_name": "test",
///     },
///     name="kinesis-firehose-es",
///     destination="elasticsearch",
///     opts = pulumi.ResourceOptions(depends_on=[firehose_elasticsearch_role_policy]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var testCluster = new Aws.ElasticSearch.Domain("test_cluster", new()
///     {
///         ClusterConfig = new Aws.ElasticSearch.Inputs.DomainClusterConfigArgs
///         {
///             InstanceCount = 2,
///             ZoneAwarenessEnabled = true,
///             InstanceType = "t2.small.elasticsearch",
///         },
///         EbsOptions = new Aws.ElasticSearch.Inputs.DomainEbsOptionsArgs
///         {
///             EbsEnabled = true,
///             VolumeSize = 10,
///         },
///         VpcOptions = new Aws.ElasticSearch.Inputs.DomainVpcOptionsArgs
///         {
///             SecurityGroupIds = new[]
///             {
///                 first.Id,
///             },
///             SubnetIds = new[]
///             {
///                 firstAwsSubnet.Id,
///                 second.Id,
///             },
///         },
///         DomainName = "es-test",
///     });
///
///     var firehose_elasticsearch = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Effect = "Allow",
///                 Actions = new[]
///                 {
///                     "es:*",
///                 },
///                 Resources = new[]
///                 {
///                     testCluster.Arn,
///                     $"{testCluster.Arn}/*",
///                 },
///             },
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Effect = "Allow",
///                 Actions = new[]
///                 {
///                     "ec2:DescribeVpcs",
///                     "ec2:DescribeVpcAttribute",
///                     "ec2:DescribeSubnets",
///                     "ec2:DescribeSecurityGroups",
///                     "ec2:DescribeNetworkInterfaces",
///                     "ec2:CreateNetworkInterface",
///                     "ec2:CreateNetworkInterfacePermission",
///                     "ec2:DeleteNetworkInterface",
///                 },
///                 Resources = new[]
///                 {
///                     "*",
///                 },
///             },
///         },
///     });
///
///     var firehose_elasticsearchRolePolicy = new Aws.Iam.RolePolicy("firehose-elasticsearch", new()
///     {
///         Name = "elasticsearch",
///         Role = firehose.Id,
///         Policy = firehose_elasticsearch.Apply(firehose_elasticsearch => firehose_elasticsearch.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json)),
///     });
///
///     var test = new Aws.Kinesis.FirehoseDeliveryStream("test", new()
///     {
///         ElasticsearchConfiguration = new Aws.Kinesis.Inputs.FirehoseDeliveryStreamElasticsearchConfigurationArgs
///         {
///             S3Configuration = new Aws.Kinesis.Inputs.FirehoseDeliveryStreamElasticsearchConfigurationS3ConfigurationArgs
///             {
///                 RoleArn = firehose.Arn,
///                 BucketArn = bucket.Arn,
///             },
///             VpcConfig = new Aws.Kinesis.Inputs.FirehoseDeliveryStreamElasticsearchConfigurationVpcConfigArgs
///             {
///                 SubnetIds = new[]
///                 {
///                     firstAwsSubnet.Id,
///                     second.Id,
///                 },
///                 SecurityGroupIds = new[]
///                 {
///                     first.Id,
///                 },
///                 RoleArn = firehose.Arn,
///             },
///             DomainArn = testCluster.Arn,
///             RoleArn = firehose.Arn,
///             IndexName = "test",
///             TypeName = "test",
///         },
///         Name = "kinesis-firehose-es",
///         Destination = "elasticsearch",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             firehose_elasticsearchRolePolicy,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/elasticsearch"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kinesis"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		testCluster, err := elasticsearch.NewDomain(ctx, "test_cluster", &elasticsearch.DomainArgs{
/// 			ClusterConfig: &elasticsearch.DomainClusterConfigArgs{
/// 				InstanceCount:        pulumi.Int(2),
/// 				ZoneAwarenessEnabled: pulumi.Bool(true),
/// 				InstanceType:         pulumi.String("t2.small.elasticsearch"),
/// 			},
/// 			EbsOptions: &elasticsearch.DomainEbsOptionsArgs{
/// 				EbsEnabled: pulumi.Bool(true),
/// 				VolumeSize: pulumi.Int(10),
/// 			},
/// 			VpcOptions: &elasticsearch.DomainVpcOptionsArgs{
/// 				SecurityGroupIds: pulumi.StringArray{
/// 					first.Id,
/// 				},
/// 				SubnetIds: pulumi.StringArray{
/// 					firstAwsSubnet.Id,
/// 					second.Id,
/// 				},
/// 			},
/// 			DomainName: pulumi.String("es-test"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		firehose_elasticsearch := iam.GetPolicyDocumentOutput(ctx, iam.GetPolicyDocumentOutputArgs{
/// 			Statements: iam.GetPolicyDocumentStatementArray{
/// 				&iam.GetPolicyDocumentStatementArgs{
/// 					Effect: pulumi.String("Allow"),
/// 					Actions: pulumi.StringArray{
/// 						pulumi.String("es:*"),
/// 					},
/// 					Resources: pulumi.StringArray{
/// 						testCluster.Arn,
/// 						testCluster.Arn.ApplyT(func(arn string) (string, error) {
/// 							return fmt.Sprintf("%v/*", arn), nil
/// 						}).(pulumi.StringOutput),
/// 					},
/// 				},
/// 				&iam.GetPolicyDocumentStatementArgs{
/// 					Effect: pulumi.String("Allow"),
/// 					Actions: pulumi.StringArray{
/// 						pulumi.String("ec2:DescribeVpcs"),
/// 						pulumi.String("ec2:DescribeVpcAttribute"),
/// 						pulumi.String("ec2:DescribeSubnets"),
/// 						pulumi.String("ec2:DescribeSecurityGroups"),
/// 						pulumi.String("ec2:DescribeNetworkInterfaces"),
/// 						pulumi.String("ec2:CreateNetworkInterface"),
/// 						pulumi.String("ec2:CreateNetworkInterfacePermission"),
/// 						pulumi.String("ec2:DeleteNetworkInterface"),
/// 					},
/// 					Resources: pulumi.StringArray{
/// 						pulumi.String("*"),
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		firehose_elasticsearchRolePolicy, err := iam.NewRolePolicy(ctx, "firehose-elasticsearch", &iam.RolePolicyArgs{
/// 			Name:   pulumi.String("elasticsearch"),
/// 			Role:   pulumi.Any(firehose.Id),
/// 			Policy: firehose_elasticsearch.Json(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = kinesis.NewFirehoseDeliveryStream(ctx, "test", &kinesis.FirehoseDeliveryStreamArgs{
/// 			ElasticsearchConfiguration: &kinesis.FirehoseDeliveryStreamElasticsearchConfigurationArgs{
/// 				S3Configuration: &kinesis.FirehoseDeliveryStreamElasticsearchConfigurationS3ConfigurationArgs{
/// 					RoleArn:   pulumi.Any(firehose.Arn),
/// 					BucketArn: pulumi.Any(bucket.Arn),
/// 				},
/// 				VpcConfig: &kinesis.FirehoseDeliveryStreamElasticsearchConfigurationVpcConfigArgs{
/// 					SubnetIds: pulumi.StringArray{
/// 						firstAwsSubnet.Id,
/// 						second.Id,
/// 					},
/// 					SecurityGroupIds: pulumi.StringArray{
/// 						first.Id,
/// 					},
/// 					RoleArn: pulumi.Any(firehose.Arn),
/// 				},
/// 				DomainArn: testCluster.Arn,
/// 				RoleArn:   pulumi.Any(firehose.Arn),
/// 				IndexName: pulumi.String("test"),
/// 				TypeName:  pulumi.String("test"),
/// 			},
/// 			Name:        pulumi.String("kinesis-firehose-es"),
/// 			Destination: pulumi.String("elasticsearch"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			firehose_elasticsearchRolePolicy,
/// 		}))
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
/// data "aws_iam_getpolicydocument" "firehose-elasticsearch" {
///   statements {
///     effect    = "Allow"
///     actions   = ["es:*"]
///     resources = [aws_elasticsearch_domain.test_cluster.arn, "${aws_elasticsearch_domain.test_cluster.arn}/*"]
///   }
///   statements {
///     effect    = "Allow"
///     actions   = ["ec2:DescribeVpcs", "ec2:DescribeVpcAttribute", "ec2:DescribeSubnets", "ec2:DescribeSecurityGroups", "ec2:DescribeNetworkInterfaces", "ec2:CreateNetworkInterface", "ec2:CreateNetworkInterfacePermission", "ec2:DeleteNetworkInterface"]
///     resources = ["*"]
///   }
/// }
///
/// resource "aws_elasticsearch_domain" "test_cluster" {
///   cluster_config = {
///     instance_count         = 2
///     zone_awareness_enabled = true
///     instance_type          = "t2.small.elasticsearch"
///   }
///   ebs_options = {
///     ebs_enabled = true
///     volume_size = 10
///   }
///   vpc_options = {
///     security_group_ids = [first.id]
///     subnet_ids         = [firstAwsSubnet.id, second.id]
///   }
///   domain_name = "es-test"
/// }
/// resource "aws_iam_rolepolicy" "firehose-elasticsearch" {
///   name   = "elasticsearch"
///   role   = firehose.id
///   policy = data.aws_iam_getpolicydocument.firehose-elasticsearch.json
/// }
/// resource "aws_kinesis_firehosedeliverystream" "test" {
///   depends_on = [aws_iam_rolepolicy.firehose-elasticsearch]
///   elasticsearch_configuration = {
///     s3_configuration = {
///       role_arn   = firehose.arn
///       bucket_arn = bucket.arn
///     }
///     vpc_config = {
///       subnet_ids         = [firstAwsSubnet.id, second.id]
///       security_group_ids = [first.id]
///       role_arn           = firehose.arn
///     }
///     domain_arn = aws_elasticsearch_domain.test_cluster.arn
///     role_arn   = firehose.arn
///     index_name = "test"
///     type_name  = "test"
///   }
///   name        = "kinesis-firehose-es"
///   destination = "elasticsearch"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.elasticsearch.Domain;
/// import com.pulumi.aws.elasticsearch.DomainArgs;
/// import com.pulumi.aws.elasticsearch.inputs.DomainClusterConfigArgs;
/// import com.pulumi.aws.elasticsearch.inputs.DomainEbsOptionsArgs;
/// import com.pulumi.aws.elasticsearch.inputs.DomainVpcOptionsArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementArgs;
/// import com.pulumi.aws.iam.RolePolicy;
/// import com.pulumi.aws.iam.RolePolicyArgs;
/// import com.pulumi.aws.kinesis.FirehoseDeliveryStream;
/// import com.pulumi.aws.kinesis.FirehoseDeliveryStreamArgs;
/// import com.pulumi.aws.kinesis.inputs.FirehoseDeliveryStreamElasticsearchConfigurationArgs;
/// import com.pulumi.aws.kinesis.inputs.FirehoseDeliveryStreamElasticsearchConfigurationS3ConfigurationArgs;
/// import com.pulumi.aws.kinesis.inputs.FirehoseDeliveryStreamElasticsearchConfigurationVpcConfigArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var testCluster = new Domain("testCluster", DomainArgs.builder()
///             .clusterConfig(DomainClusterConfigArgs.builder()
///                 .instanceCount(2)
///                 .zoneAwarenessEnabled(true)
///                 .instanceType("t2.small.elasticsearch")
///                 .build())
///             .ebsOptions(DomainEbsOptionsArgs.builder()
///                 .ebsEnabled(true)
///                 .volumeSize(10)
///                 .build())
///             .vpcOptions(DomainVpcOptionsArgs.builder()
///                 .securityGroupIds(first.id())
///                 .subnetIds(
///                     firstAwsSubnet.id(),
///                     second.id())
///                 .build())
///             .domainName("es-test")
///             .build());
///
///         final var firehose-elasticsearch = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(
///                 GetPolicyDocumentStatementArgs.builder()
///                     .effect("Allow")
///                     .actions("es:*")
///                     .resources(
///                         testCluster.arn(),
///                         testCluster.arn().applyValue(_arn -> String.format("%s/*", _arn)))
///                     .build(),
///                 GetPolicyDocumentStatementArgs.builder()
///                     .effect("Allow")
///                     .actions(
///                         "ec2:DescribeVpcs",
///                         "ec2:DescribeVpcAttribute",
///                         "ec2:DescribeSubnets",
///                         "ec2:DescribeSecurityGroups",
///                         "ec2:DescribeNetworkInterfaces",
///                         "ec2:CreateNetworkInterface",
///                         "ec2:CreateNetworkInterfacePermission",
///                         "ec2:DeleteNetworkInterface")
///                     .resources("*")
///                     .build())
///             .build());
///
///         var firehose_elasticsearchRolePolicy = new RolePolicy("firehose-elasticsearchRolePolicy", RolePolicyArgs.builder()
///             .name("elasticsearch")
///             .role(firehose.id())
///             .policy(firehose_elasticsearch.applyValue(_firehose_elasticsearch -> _firehose_elasticsearch.json()))
///             .build());
///
///         var test = new FirehoseDeliveryStream("test", FirehoseDeliveryStreamArgs.builder()
///             .elasticsearchConfiguration(FirehoseDeliveryStreamElasticsearchConfigurationArgs.builder()
///                 .s3Configuration(FirehoseDeliveryStreamElasticsearchConfigurationS3ConfigurationArgs.builder()
///                     .roleArn(firehose.arn())
///                     .bucketArn(bucket.arn())
///                     .build())
///                 .vpcConfig(FirehoseDeliveryStreamElasticsearchConfigurationVpcConfigArgs.builder()
///                     .subnetIds(
///                         firstAwsSubnet.id(),
///                         second.id())
///                     .securityGroupIds(first.id())
///                     .roleArn(firehose.arn())
///                     .build())
///                 .domainArn(testCluster.arn())
///                 .roleArn(firehose.arn())
///                 .indexName("test")
///                 .typeName("test")
///                 .build())
///             .name("kinesis-firehose-es")
///             .destination("elasticsearch")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(firehose_elasticsearchRolePolicy)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   testCluster:
///     type: aws:elasticsearch:Domain
///     name: test_cluster
///     properties:
///       clusterConfig:
///         instanceCount: 2
///         zoneAwarenessEnabled: true
///         instanceType: t2.small.elasticsearch
///       ebsOptions:
///         ebsEnabled: true
///         volumeSize: 10
///       vpcOptions:
///         securityGroupIds:
///           - ${first.id}
///         subnetIds:
///           - ${firstAwsSubnet.id}
///           - ${second.id}
///       domainName: es-test
///   firehose-elasticsearchRolePolicy:
///     type: aws:iam:RolePolicy
///     name: firehose-elasticsearch
///     properties:
///       name: elasticsearch
///       role: ${firehose.id}
///       policy: ${["firehose-elasticsearch"].json}
///   test:
///     type: aws:kinesis:FirehoseDeliveryStream
///     properties:
///       elasticsearchConfiguration:
///         s3Configuration:
///           roleArn: ${firehose.arn}
///           bucketArn: ${bucket.arn}
///         vpcConfig:
///           subnetIds:
///             - ${firstAwsSubnet.id}
///             - ${second.id}
///           securityGroupIds:
///             - ${first.id}
///           roleArn: ${firehose.arn}
///         domainArn: ${testCluster.arn}
///         roleArn: ${firehose.arn}
///         indexName: test
///         typeName: test
///       name: kinesis-firehose-es
///       destination: elasticsearch
///     options:
///       dependsOn:
///         - ${["firehose-elasticsearchRolePolicy"]}
/// variables:
///   firehose-elasticsearch:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - effect: Allow
///             actions:
///               - es:*
///             resources:
///               - ${testCluster.arn}
///               - ${testCluster.arn}/*
///           - effect: Allow
///             actions:
///               - ec2:DescribeVpcs
///               - ec2:DescribeVpcAttribute
///               - ec2:DescribeSubnets
///               - ec2:DescribeSecurityGroups
///               - ec2:DescribeNetworkInterfaces
///               - ec2:CreateNetworkInterface
///               - ec2:CreateNetworkInterfacePermission
///               - ec2:DeleteNetworkInterface
///             resources:
///               - '*'
/// ```
///
///
/// ### OpenSearch Destination
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const testCluster = new aws.opensearch.Domain("test_cluster", {domainName: "firehose-os-test"});
/// const testStream = new aws.kinesis.FirehoseDeliveryStream("test_stream", {
///     opensearchConfiguration: {
///         s3Configuration: {
///             roleArn: firehoseRole.arn,
///             bucketArn: bucket.arn,
///             bufferingSize: 10,
///             bufferingInterval: 400,
///             compressionFormat: "GZIP",
///         },
///         processingConfiguration: {
///             processors: [{
///                 parameters: [{
///                     parameterName: "LambdaArn",
///                     parameterValue: `${lambdaProcessor.arn}:$LATEST`,
///                 }],
///                 type: "Lambda",
///             }],
///             enabled: true,
///         },
///         domainArn: testCluster.arn,
///         roleArn: firehoseRole.arn,
///         indexName: "test",
///     },
///     name: "kinesis-firehose-test-stream",
///     destination: "opensearch",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test_cluster = aws.opensearch.Domain("test_cluster", domain_name="firehose-os-test")
/// test_stream = aws.kinesis.FirehoseDeliveryStream("test_stream",
///     opensearch_configuration={
///         "s3_configuration": {
///             "role_arn": firehose_role["arn"],
///             "bucket_arn": bucket["arn"],
///             "buffering_size": 10,
///             "buffering_interval": 400,
///             "compression_format": "GZIP",
///         },
///         "processing_configuration": {
///             "processors": [{
///                 "parameters": [{
///                     "parameter_name": "LambdaArn",
///                     "parameter_value": f"{lambda_processor['arn']}:$LATEST",
///                 }],
///                 "type": "Lambda",
///             }],
///             "enabled": True,
///         },
///         "domain_arn": test_cluster.arn,
///         "role_arn": firehose_role["arn"],
///         "index_name": "test",
///     },
///     name="kinesis-firehose-test-stream",
///     destination="opensearch")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var testCluster = new Aws.OpenSearch.Domain("test_cluster", new()
///     {
///         DomainName = "firehose-os-test",
///     });
///
///     var testStream = new Aws.Kinesis.FirehoseDeliveryStream("test_stream", new()
///     {
///         OpensearchConfiguration = new Aws.Kinesis.Inputs.FirehoseDeliveryStreamOpensearchConfigurationArgs
///         {
///             S3Configuration = new Aws.Kinesis.Inputs.FirehoseDeliveryStreamOpensearchConfigurationS3ConfigurationArgs
///             {
///                 RoleArn = firehoseRole.Arn,
///                 BucketArn = bucket.Arn,
///                 BufferingSize = 10,
///                 BufferingInterval = 400,
///                 CompressionFormat = "GZIP",
///             },
///             ProcessingConfiguration = new Aws.Kinesis.Inputs.FirehoseDeliveryStreamOpensearchConfigurationProcessingConfigurationArgs
///             {
///                 Processors = new[]
///                 {
///                     new Aws.Kinesis.Inputs.FirehoseDeliveryStreamOpensearchConfigurationProcessingConfigurationProcessorArgs
///                     {
///                         Parameters = new[]
///                         {
///                             new Aws.Kinesis.Inputs.FirehoseDeliveryStreamOpensearchConfigurationProcessingConfigurationProcessorParameterArgs
///                             {
///                                 ParameterName = "LambdaArn",
///                                 ParameterValue = $"{lambdaProcessor.Arn}:$LATEST",
///                             },
///                         },
///                         Type = "Lambda",
///                     },
///                 },
///                 Enabled = true,
///             },
///             DomainArn = testCluster.Arn,
///             RoleArn = firehoseRole.Arn,
///             IndexName = "test",
///         },
///         Name = "kinesis-firehose-test-stream",
///         Destination = "opensearch",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kinesis"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/opensearch"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		testCluster, err := opensearch.NewDomain(ctx, "test_cluster", &opensearch.DomainArgs{
/// 			DomainName: pulumi.String("firehose-os-test"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = kinesis.NewFirehoseDeliveryStream(ctx, "test_stream", &kinesis.FirehoseDeliveryStreamArgs{
/// 			OpensearchConfiguration: &kinesis.FirehoseDeliveryStreamOpensearchConfigurationArgs{
/// 				S3Configuration: &kinesis.FirehoseDeliveryStreamOpensearchConfigurationS3ConfigurationArgs{
/// 					RoleArn:           pulumi.Any(firehoseRole.Arn),
/// 					BucketArn:         pulumi.Any(bucket.Arn),
/// 					BufferingSize:     pulumi.Int(10),
/// 					BufferingInterval: pulumi.Int(400),
/// 					CompressionFormat: pulumi.String("GZIP"),
/// 				},
/// 				ProcessingConfiguration: &kinesis.FirehoseDeliveryStreamOpensearchConfigurationProcessingConfigurationArgs{
/// 					Processors: kinesis.FirehoseDeliveryStreamOpensearchConfigurationProcessingConfigurationProcessorArray{
/// 						&kinesis.FirehoseDeliveryStreamOpensearchConfigurationProcessingConfigurationProcessorArgs{
/// 							Parameters: kinesis.FirehoseDeliveryStreamOpensearchConfigurationProcessingConfigurationProcessorParameterArray{
/// 								&kinesis.FirehoseDeliveryStreamOpensearchConfigurationProcessingConfigurationProcessorParameterArgs{
/// 									ParameterName:  pulumi.String("LambdaArn"),
/// 									ParameterValue: pulumi.Sprintf("%v:$LATEST", lambdaProcessor.Arn),
/// 								},
/// 							},
/// 							Type: pulumi.String("Lambda"),
/// 						},
/// 					},
/// 					Enabled: pulumi.Bool(true),
/// 				},
/// 				DomainArn: testCluster.Arn,
/// 				RoleArn:   pulumi.Any(firehoseRole.Arn),
/// 				IndexName: pulumi.String("test"),
/// 			},
/// 			Name:        pulumi.String("kinesis-firehose-test-stream"),
/// 			Destination: pulumi.String("opensearch"),
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
/// resource "aws_opensearch_domain" "test_cluster" {
///   domain_name = "firehose-os-test"
/// }
/// resource "aws_kinesis_firehosedeliverystream" "test_stream" {
///   opensearch_configuration = {
///     s3_configuration = {
///       role_arn           = firehoseRole.arn
///       bucket_arn         = bucket.arn
///       buffering_size     = 10
///       buffering_interval = 400
///       compression_format = "GZIP"
///     }
///     processing_configuration = {
///       processors = [{
///         "parameters" = [{
///           "parameterName"  = "LambdaArn"
///           "parameterValue" ="${lambdaProcessor.arn}:$LATEST"
///         }]
///         "type" = "Lambda"
///       }]
///       enabled = "true"
///     }
///     domain_arn = aws_opensearch_domain.test_cluster.arn
///     role_arn   = firehoseRole.arn
///     index_name = "test"
///   }
///   name        = "kinesis-firehose-test-stream"
///   destination = "opensearch"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.opensearch.Domain;
/// import com.pulumi.aws.opensearch.DomainArgs;
/// import com.pulumi.aws.kinesis.FirehoseDeliveryStream;
/// import com.pulumi.aws.kinesis.FirehoseDeliveryStreamArgs;
/// import com.pulumi.aws.kinesis.inputs.FirehoseDeliveryStreamOpensearchConfigurationArgs;
/// import com.pulumi.aws.kinesis.inputs.FirehoseDeliveryStreamOpensearchConfigurationS3ConfigurationArgs;
/// import com.pulumi.aws.kinesis.inputs.FirehoseDeliveryStreamOpensearchConfigurationProcessingConfigurationArgs;
/// import com.pulumi.aws.kinesis.inputs.FirehoseDeliveryStreamOpensearchConfigurationProcessingConfigurationProcessorArgs;
/// import com.pulumi.aws.kinesis.inputs.FirehoseDeliveryStreamOpensearchConfigurationProcessingConfigurationProcessorParameterArgs;
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
///         var testCluster = new Domain("testCluster", DomainArgs.builder()
///             .domainName("firehose-os-test")
///             .build());
///
///         var testStream = new FirehoseDeliveryStream("testStream", FirehoseDeliveryStreamArgs.builder()
///             .opensearchConfiguration(FirehoseDeliveryStreamOpensearchConfigurationArgs.builder()
///                 .s3Configuration(FirehoseDeliveryStreamOpensearchConfigurationS3ConfigurationArgs.builder()
///                     .roleArn(firehoseRole.arn())
///                     .bucketArn(bucket.arn())
///                     .bufferingSize(10)
///                     .bufferingInterval(400)
///                     .compressionFormat("GZIP")
///                     .build())
///                 .processingConfiguration(FirehoseDeliveryStreamOpensearchConfigurationProcessingConfigurationArgs.builder()
///                     .processors(FirehoseDeliveryStreamOpensearchConfigurationProcessingConfigurationProcessorArgs.builder()
///                         .parameters(FirehoseDeliveryStreamOpensearchConfigurationProcessingConfigurationProcessorParameterArgs.builder()
///                             .parameterName("LambdaArn")
///                             .parameterValue(String.format("%s:$LATEST", lambdaProcessor.arn()))
///                             .build())
///                         .type("Lambda")
///                         .build())
///                     .enabled(true)
///                     .build())
///                 .domainArn(testCluster.arn())
///                 .roleArn(firehoseRole.arn())
///                 .indexName("test")
///                 .build())
///             .name("kinesis-firehose-test-stream")
///             .destination("opensearch")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   testCluster:
///     type: aws:opensearch:Domain
///     name: test_cluster
///     properties:
///       domainName: firehose-os-test
///   testStream:
///     type: aws:kinesis:FirehoseDeliveryStream
///     name: test_stream
///     properties:
///       opensearchConfiguration:
///         s3Configuration:
///           roleArn: ${firehoseRole.arn}
///           bucketArn: ${bucket.arn}
///           bufferingSize: 10
///           bufferingInterval: 400
///           compressionFormat: GZIP
///         processingConfiguration:
///           processors:
///             - parameters:
///                 - parameterName: LambdaArn
///                   parameterValue: ${lambdaProcessor.arn}:$LATEST
///               type: Lambda
///           enabled: 'true'
///         domainArn: ${testCluster.arn}
///         roleArn: ${firehoseRole.arn}
///         indexName: test
///       name: kinesis-firehose-test-stream
///       destination: opensearch
/// ```
///
///
/// ### OpenSearch Destination With VPC
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const testCluster = new aws.opensearch.Domain("test_cluster", {
///     clusterConfig: {
///         instanceCount: 2,
///         zoneAwarenessEnabled: true,
///         instanceType: "m4.large.search",
///     },
///     ebsOptions: {
///         ebsEnabled: true,
///         volumeSize: 10,
///     },
///     vpcOptions: {
///         securityGroupIds: [first.id],
///         subnetIds: [
///             firstAwsSubnet.id,
///             second.id,
///         ],
///     },
///     domainName: "es-test",
/// });
/// const firehose_opensearch = new aws.iam.RolePolicy("firehose-opensearch", {
///     name: "opensearch",
///     role: firehose.id,
///     policy: pulumi.interpolate`{
///   \"Version\": \"2012-10-17\",
///   \"Statement\": [
///     {
///       \"Effect\": \"Allow\",
///       \"Action\": [
///         \"es:*\"
///       ],
///       \"Resource\": [
///         \"${testCluster.arn}\",
///         \"${testCluster.arn}/*\"
///       ]
///         },
///         {
///           \"Effect\": \"Allow\",
///           \"Action\": [
///             \"ec2:DescribeVpcs\",
///             \"ec2:DescribeVpcAttribute\",
///             \"ec2:DescribeSubnets\",
///             \"ec2:DescribeSecurityGroups\",
///             \"ec2:DescribeNetworkInterfaces\",
///             \"ec2:CreateNetworkInterface\",
///             \"ec2:CreateNetworkInterfacePermission\",
///             \"ec2:DeleteNetworkInterface\"
///           ],
///           \"Resource\": [
///             \"*\"
///           ]
///         }
///   ]
/// }
/// `,
/// });
/// const test = new aws.kinesis.FirehoseDeliveryStream("test", {
///     opensearchConfiguration: {
///         s3Configuration: {
///             roleArn: firehose.arn,
///             bucketArn: bucket.arn,
///         },
///         vpcConfig: {
///             subnetIds: [
///                 firstAwsSubnet.id,
///                 second.id,
///             ],
///             securityGroupIds: [first.id],
///             roleArn: firehose.arn,
///         },
///         domainArn: testCluster.arn,
///         roleArn: firehose.arn,
///         indexName: "test",
///     },
///     name: "pulumi-kinesis-firehose-os",
///     destination: "opensearch",
/// }, {
///     dependsOn: [firehose_opensearch],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test_cluster = aws.opensearch.Domain("test_cluster",
///     cluster_config={
///         "instance_count": 2,
///         "zone_awareness_enabled": True,
///         "instance_type": "m4.large.search",
///     },
///     ebs_options={
///         "ebs_enabled": True,
///         "volume_size": 10,
///     },
///     vpc_options={
///         "security_group_ids": [first["id"]],
///         "subnet_ids": [
///             first_aws_subnet["id"],
///             second["id"],
///         ],
///     },
///     domain_name="es-test")
/// firehose_opensearch = aws.iam.RolePolicy("firehose-opensearch",
///     name="opensearch",
///     role=firehose["id"],
///     policy=test_cluster.arn.apply(lambda arn: f"""{{
///   \"Version\": \"2012-10-17\",
///   \"Statement\": [
///     {{
///       \"Effect\": \"Allow\",
///       \"Action\": [
///         \"es:*\"
///       ],
///       \"Resource\": [
///         \"{arn}\",
///         \"{arn}/*\"
///       ]
///         }},
///         {{
///           \"Effect\": \"Allow\",
///           \"Action\": [
///             \"ec2:DescribeVpcs\",
///             \"ec2:DescribeVpcAttribute\",
///             \"ec2:DescribeSubnets\",
///             \"ec2:DescribeSecurityGroups\",
///             \"ec2:DescribeNetworkInterfaces\",
///             \"ec2:CreateNetworkInterface\",
///             \"ec2:CreateNetworkInterfacePermission\",
///             \"ec2:DeleteNetworkInterface\"
///           ],
///           \"Resource\": [
///             \"*\"
///           ]
///         }}
///   ]
/// }}
/// """))
/// test = aws.kinesis.FirehoseDeliveryStream("test",
///     opensearch_configuration={
///         "s3_configuration": {
///             "role_arn": firehose["arn"],
///             "bucket_arn": bucket["arn"],
///         },
///         "vpc_config": {
///             "subnet_ids": [
///                 first_aws_subnet["id"],
///                 second["id"],
///             ],
///             "security_group_ids": [first["id"]],
///             "role_arn": firehose["arn"],
///         },
///         "domain_arn": test_cluster.arn,
///         "role_arn": firehose["arn"],
///         "index_name": "test",
///     },
///     name="pulumi-kinesis-firehose-os",
///     destination="opensearch",
///     opts = pulumi.ResourceOptions(depends_on=[firehose_opensearch]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var testCluster = new Aws.OpenSearch.Domain("test_cluster", new()
///     {
///         ClusterConfig = new Aws.OpenSearch.Inputs.DomainClusterConfigArgs
///         {
///             InstanceCount = 2,
///             ZoneAwarenessEnabled = true,
///             InstanceType = "m4.large.search",
///         },
///         EbsOptions = new Aws.OpenSearch.Inputs.DomainEbsOptionsArgs
///         {
///             EbsEnabled = true,
///             VolumeSize = 10,
///         },
///         VpcOptions = new Aws.OpenSearch.Inputs.DomainVpcOptionsArgs
///         {
///             SecurityGroupIds = new[]
///             {
///                 first.Id,
///             },
///             SubnetIds = new[]
///             {
///                 firstAwsSubnet.Id,
///                 second.Id,
///             },
///         },
///         DomainName = "es-test",
///     });
///
///     var firehose_opensearch = new Aws.Iam.RolePolicy("firehose-opensearch", new()
///     {
///         Name = "opensearch",
///         Role = firehose.Id,
///         Policy = testCluster.Arn.Apply(arn => @$"{{
///   \""Version\"": \""2012-10-17\"",
///   \""Statement\"": [
///     {{
///       \""Effect\"": \""Allow\"",
///       \""Action\"": [
///         \""es:*\""
///       ],
///       \""Resource\"": [
///         \""{arn}\"",
///         \""{arn}/*\""
///       ]
///         }},
///         {{
///           \""Effect\"": \""Allow\"",
///           \""Action\"": [
///             \""ec2:DescribeVpcs\"",
///             \""ec2:DescribeVpcAttribute\"",
///             \""ec2:DescribeSubnets\"",
///             \""ec2:DescribeSecurityGroups\"",
///             \""ec2:DescribeNetworkInterfaces\"",
///             \""ec2:CreateNetworkInterface\"",
///             \""ec2:CreateNetworkInterfacePermission\"",
///             \""ec2:DeleteNetworkInterface\""
///           ],
///           \""Resource\"": [
///             \""*\""
///           ]
///         }}
///   ]
/// }}
/// "),
///     });
///
///     var test = new Aws.Kinesis.FirehoseDeliveryStream("test", new()
///     {
///         OpensearchConfiguration = new Aws.Kinesis.Inputs.FirehoseDeliveryStreamOpensearchConfigurationArgs
///         {
///             S3Configuration = new Aws.Kinesis.Inputs.FirehoseDeliveryStreamOpensearchConfigurationS3ConfigurationArgs
///             {
///                 RoleArn = firehose.Arn,
///                 BucketArn = bucket.Arn,
///             },
///             VpcConfig = new Aws.Kinesis.Inputs.FirehoseDeliveryStreamOpensearchConfigurationVpcConfigArgs
///             {
///                 SubnetIds = new[]
///                 {
///                     firstAwsSubnet.Id,
///                     second.Id,
///                 },
///                 SecurityGroupIds = new[]
///                 {
///                     first.Id,
///                 },
///                 RoleArn = firehose.Arn,
///             },
///             DomainArn = testCluster.Arn,
///             RoleArn = firehose.Arn,
///             IndexName = "test",
///         },
///         Name = "pulumi-kinesis-firehose-os",
///         Destination = "opensearch",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             firehose_opensearch,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kinesis"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/opensearch"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		testCluster, err := opensearch.NewDomain(ctx, "test_cluster", &opensearch.DomainArgs{
/// 			ClusterConfig: &opensearch.DomainClusterConfigArgs{
/// 				InstanceCount:        pulumi.Int(2),
/// 				ZoneAwarenessEnabled: pulumi.Bool(true),
/// 				InstanceType:         pulumi.String("m4.large.search"),
/// 			},
/// 			EbsOptions: &opensearch.DomainEbsOptionsArgs{
/// 				EbsEnabled: pulumi.Bool(true),
/// 				VolumeSize: pulumi.Int(10),
/// 			},
/// 			VpcOptions: &opensearch.DomainVpcOptionsArgs{
/// 				SecurityGroupIds: pulumi.StringArray{
/// 					first.Id,
/// 				},
/// 				SubnetIds: pulumi.StringArray{
/// 					firstAwsSubnet.Id,
/// 					second.Id,
/// 				},
/// 			},
/// 			DomainName: pulumi.String("es-test"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		firehose_opensearch, err := iam.NewRolePolicy(ctx, "firehose-opensearch", &iam.RolePolicyArgs{
/// 			Name: pulumi.String("opensearch"),
/// 			Role: pulumi.Any(firehose.Id),
/// 			Policy: testCluster.Arn.ApplyT(func(arn string) (string, error) {
/// 				return fmt.Sprintf(`{
///   \"Version\": \"2012-10-17\",
///   \"Statement\": [
///     {
///       \"Effect\": \"Allow\",
///       \"Action\": [
///         \"es:*\"
///       ],
///       \"Resource\": [
///         \"%v\",
///         \"%v/*\"
///       ]
///         },
///         {
///           \"Effect\": \"Allow\",
///           \"Action\": [
///             \"ec2:DescribeVpcs\",
///             \"ec2:DescribeVpcAttribute\",
///             \"ec2:DescribeSubnets\",
///             \"ec2:DescribeSecurityGroups\",
///             \"ec2:DescribeNetworkInterfaces\",
///             \"ec2:CreateNetworkInterface\",
///             \"ec2:CreateNetworkInterfacePermission\",
///             \"ec2:DeleteNetworkInterface\"
///           ],
///           \"Resource\": [
///             \"*\"
///           ]
///         }
///   ]
/// }
/// `, arn, arn), nil
/// 			}).(pulumi.StringOutput),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = kinesis.NewFirehoseDeliveryStream(ctx, "test", &kinesis.FirehoseDeliveryStreamArgs{
/// 			OpensearchConfiguration: &kinesis.FirehoseDeliveryStreamOpensearchConfigurationArgs{
/// 				S3Configuration: &kinesis.FirehoseDeliveryStreamOpensearchConfigurationS3ConfigurationArgs{
/// 					RoleArn:   pulumi.Any(firehose.Arn),
/// 					BucketArn: pulumi.Any(bucket.Arn),
/// 				},
/// 				VpcConfig: &kinesis.FirehoseDeliveryStreamOpensearchConfigurationVpcConfigArgs{
/// 					SubnetIds: pulumi.StringArray{
/// 						firstAwsSubnet.Id,
/// 						second.Id,
/// 					},
/// 					SecurityGroupIds: pulumi.StringArray{
/// 						first.Id,
/// 					},
/// 					RoleArn: pulumi.Any(firehose.Arn),
/// 				},
/// 				DomainArn: testCluster.Arn,
/// 				RoleArn:   pulumi.Any(firehose.Arn),
/// 				IndexName: pulumi.String("test"),
/// 			},
/// 			Name:        pulumi.String("pulumi-kinesis-firehose-os"),
/// 			Destination: pulumi.String("opensearch"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			firehose_opensearch,
/// 		}))
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
/// resource "aws_opensearch_domain" "test_cluster" {
///   cluster_config = {
///     instance_count         = 2
///     zone_awareness_enabled = true
///     instance_type          = "m4.large.search"
///   }
///   ebs_options = {
///     ebs_enabled = true
///     volume_size = 10
///   }
///   vpc_options = {
///     security_group_ids = [first.id]
///     subnet_ids         = [firstAwsSubnet.id, second.id]
///   }
///   domain_name = "es-test"
/// }
/// resource "aws_iam_rolepolicy" "firehose-opensearch" {
///   name   = "opensearch"
///   role   = firehose.id
///   policy ="{
///   \"Version\": \"2012-10-17\",
///   \"Statement\": [
///     {
///       \"Effect\": \"Allow\",
///       \"Action\": [
///         \"es:*\"
///       ],
///       \"Resource\": [
///         \"${aws_opensearch_domain.test_cluster.arn}\",
///         \"${aws_opensearch_domain.test_cluster.arn}/*\"
///       ]
///         },
///         {
///           \"Effect\": \"Allow\",
///           \"Action\": [
///             \"ec2:DescribeVpcs\",
///             \"ec2:DescribeVpcAttribute\",
///             \"ec2:DescribeSubnets\",
///             \"ec2:DescribeSecurityGroups\",
///             \"ec2:DescribeNetworkInterfaces\",
///             \"ec2:CreateNetworkInterface\",
///             \"ec2:CreateNetworkInterfacePermission\",
///             \"ec2:DeleteNetworkInterface\"
///           ],
///           \"Resource\": [
///             \"*\"
///           ]
///         }
///   ]
/// }
/// "
/// }
/// resource "aws_kinesis_firehosedeliverystream" "test" {
///   depends_on = [aws_iam_rolepolicy.firehose-opensearch]
///   opensearch_configuration = {
///     s3_configuration = {
///       role_arn   = firehose.arn
///       bucket_arn = bucket.arn
///     }
///     vpc_config = {
///       subnet_ids         = [firstAwsSubnet.id, second.id]
///       security_group_ids = [first.id]
///       role_arn           = firehose.arn
///     }
///     domain_arn = aws_opensearch_domain.test_cluster.arn
///     role_arn   = firehose.arn
///     index_name = "test"
///   }
///   name        = "pulumi-kinesis-firehose-os"
///   destination = "opensearch"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.opensearch.Domain;
/// import com.pulumi.aws.opensearch.DomainArgs;
/// import com.pulumi.aws.opensearch.inputs.DomainClusterConfigArgs;
/// import com.pulumi.aws.opensearch.inputs.DomainEbsOptionsArgs;
/// import com.pulumi.aws.opensearch.inputs.DomainVpcOptionsArgs;
/// import com.pulumi.aws.iam.RolePolicy;
/// import com.pulumi.aws.iam.RolePolicyArgs;
/// import com.pulumi.aws.kinesis.FirehoseDeliveryStream;
/// import com.pulumi.aws.kinesis.FirehoseDeliveryStreamArgs;
/// import com.pulumi.aws.kinesis.inputs.FirehoseDeliveryStreamOpensearchConfigurationArgs;
/// import com.pulumi.aws.kinesis.inputs.FirehoseDeliveryStreamOpensearchConfigurationS3ConfigurationArgs;
/// import com.pulumi.aws.kinesis.inputs.FirehoseDeliveryStreamOpensearchConfigurationVpcConfigArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var testCluster = new Domain("testCluster", DomainArgs.builder()
///             .clusterConfig(DomainClusterConfigArgs.builder()
///                 .instanceCount(2)
///                 .zoneAwarenessEnabled(true)
///                 .instanceType("m4.large.search")
///                 .build())
///             .ebsOptions(DomainEbsOptionsArgs.builder()
///                 .ebsEnabled(true)
///                 .volumeSize(10)
///                 .build())
///             .vpcOptions(DomainVpcOptionsArgs.builder()
///                 .securityGroupIds(first.id())
///                 .subnetIds(
///                     firstAwsSubnet.id(),
///                     second.id())
///                 .build())
///             .domainName("es-test")
///             .build());
///
///         var firehose_opensearch = new RolePolicy("firehose-opensearch", RolePolicyArgs.builder()
///             .name("opensearch")
///             .role(firehose.id())
///             .policy(testCluster.arn().applyValue(_arn -> """
/// {
///   \"Version\": \"2012-10-17\",
///   \"Statement\": [
///     {
///       \"Effect\": \"Allow\",
///       \"Action\": [
///         \"es:*\"
///       ],
///       \"Resource\": [
///         \"%s\",
///         \"%s/*\"
///       ]
///         },
///         {
///           \"Effect\": \"Allow\",
///           \"Action\": [
///             \"ec2:DescribeVpcs\",
///             \"ec2:DescribeVpcAttribute\",
///             \"ec2:DescribeSubnets\",
///             \"ec2:DescribeSecurityGroups\",
///             \"ec2:DescribeNetworkInterfaces\",
///             \"ec2:CreateNetworkInterface\",
///             \"ec2:CreateNetworkInterfacePermission\",
///             \"ec2:DeleteNetworkInterface\"
///           ],
///           \"Resource\": [
///             \"*\"
///           ]
///         }
///   ]
/// }
/// ", _arn,_arn)))
///             .build());
///
///         var test = new FirehoseDeliveryStream("test", FirehoseDeliveryStreamArgs.builder()
///             .opensearchConfiguration(FirehoseDeliveryStreamOpensearchConfigurationArgs.builder()
///                 .s3Configuration(FirehoseDeliveryStreamOpensearchConfigurationS3ConfigurationArgs.builder()
///                     .roleArn(firehose.arn())
///                     .bucketArn(bucket.arn())
///                     .build())
///                 .vpcConfig(FirehoseDeliveryStreamOpensearchConfigurationVpcConfigArgs.builder()
///                     .subnetIds(
///                         firstAwsSubnet.id(),
///                         second.id())
///                     .securityGroupIds(first.id())
///                     .roleArn(firehose.arn())
///                     .build())
///                 .domainArn(testCluster.arn())
///                 .roleArn(firehose.arn())
///                 .indexName("test")
///                 .build())
///             .name("pulumi-kinesis-firehose-os")
///             .destination("opensearch")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(firehose_opensearch)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   testCluster:
///     type: aws:opensearch:Domain
///     name: test_cluster
///     properties:
///       clusterConfig:
///         instanceCount: 2
///         zoneAwarenessEnabled: true
///         instanceType: m4.large.search
///       ebsOptions:
///         ebsEnabled: true
///         volumeSize: 10
///       vpcOptions:
///         securityGroupIds:
///           - ${first.id}
///         subnetIds:
///           - ${firstAwsSubnet.id}
///           - ${second.id}
///       domainName: es-test
///   firehose-opensearch:
///     type: aws:iam:RolePolicy
///     properties:
///       name: opensearch
///       role: ${firehose.id}
///       policy: |
///         {
///           \"Version\": \"2012-10-17\",
///           \"Statement\": [
///             {
///               \"Effect\": \"Allow\",
///               \"Action\": [
///                 \"es:*\"
///               ],
///               \"Resource\": [
///                 \"${testCluster.arn}\",
///                 \"${testCluster.arn}/*\"
///               ]
///                 },
///                 {
///                   \"Effect\": \"Allow\",
///                   \"Action\": [
///                     \"ec2:DescribeVpcs\",
///                     \"ec2:DescribeVpcAttribute\",
///                     \"ec2:DescribeSubnets\",
///                     \"ec2:DescribeSecurityGroups\",
///                     \"ec2:DescribeNetworkInterfaces\",
///                     \"ec2:CreateNetworkInterface\",
///                     \"ec2:CreateNetworkInterfacePermission\",
///                     \"ec2:DeleteNetworkInterface\"
///                   ],
///                   \"Resource\": [
///                     \"*\"
///                   ]
///                 }
///           ]
///         }
///   test:
///     type: aws:kinesis:FirehoseDeliveryStream
///     properties:
///       opensearchConfiguration:
///         s3Configuration:
///           roleArn: ${firehose.arn}
///           bucketArn: ${bucket.arn}
///         vpcConfig:
///           subnetIds:
///             - ${firstAwsSubnet.id}
///             - ${second.id}
///           securityGroupIds:
///             - ${first.id}
///           roleArn: ${firehose.arn}
///         domainArn: ${testCluster.arn}
///         roleArn: ${firehose.arn}
///         indexName: test
///       name: pulumi-kinesis-firehose-os
///       destination: opensearch
///     options:
///       dependsOn:
///         - ${["firehose-opensearch"]}
/// ```
///
///
/// ### OpenSearch Serverless Destination
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const testCollection = new aws.opensearch.ServerlessCollection("test_collection", {name: "firehose-osserverless-test"});
/// const testStream = new aws.kinesis.FirehoseDeliveryStream("test_stream", {
///     opensearchserverlessConfiguration: {
///         s3Configuration: {
///             roleArn: firehoseRole.arn,
///             bucketArn: bucket.arn,
///             bufferingSize: 10,
///             bufferingInterval: 400,
///             compressionFormat: "GZIP",
///         },
///         processingConfiguration: {
///             processors: [{
///                 parameters: [{
///                     parameterName: "LambdaArn",
///                     parameterValue: `${lambdaProcessor.arn}:$LATEST`,
///                 }],
///                 type: "Lambda",
///             }],
///             enabled: true,
///         },
///         collectionEndpoint: testCollection.collectionEndpoint,
///         roleArn: firehoseRole.arn,
///         indexName: "test",
///     },
///     name: "kinesis-firehose-test-stream",
///     destination: "opensearchserverless",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test_collection = aws.opensearch.ServerlessCollection("test_collection", name="firehose-osserverless-test")
/// test_stream = aws.kinesis.FirehoseDeliveryStream("test_stream",
///     opensearchserverless_configuration={
///         "s3_configuration": {
///             "role_arn": firehose_role["arn"],
///             "bucket_arn": bucket["arn"],
///             "buffering_size": 10,
///             "buffering_interval": 400,
///             "compression_format": "GZIP",
///         },
///         "processing_configuration": {
///             "processors": [{
///                 "parameters": [{
///                     "parameter_name": "LambdaArn",
///                     "parameter_value": f"{lambda_processor['arn']}:$LATEST",
///                 }],
///                 "type": "Lambda",
///             }],
///             "enabled": True,
///         },
///         "collection_endpoint": test_collection.collection_endpoint,
///         "role_arn": firehose_role["arn"],
///         "index_name": "test",
///     },
///     name="kinesis-firehose-test-stream",
///     destination="opensearchserverless")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var testCollection = new Aws.OpenSearch.ServerlessCollection("test_collection", new()
///     {
///         Name = "firehose-osserverless-test",
///     });
///
///     var testStream = new Aws.Kinesis.FirehoseDeliveryStream("test_stream", new()
///     {
///         OpensearchserverlessConfiguration = new Aws.Kinesis.Inputs.FirehoseDeliveryStreamOpensearchserverlessConfigurationArgs
///         {
///             S3Configuration = new Aws.Kinesis.Inputs.FirehoseDeliveryStreamOpensearchserverlessConfigurationS3ConfigurationArgs
///             {
///                 RoleArn = firehoseRole.Arn,
///                 BucketArn = bucket.Arn,
///                 BufferingSize = 10,
///                 BufferingInterval = 400,
///                 CompressionFormat = "GZIP",
///             },
///             ProcessingConfiguration = new Aws.Kinesis.Inputs.FirehoseDeliveryStreamOpensearchserverlessConfigurationProcessingConfigurationArgs
///             {
///                 Processors = new[]
///                 {
///                     new Aws.Kinesis.Inputs.FirehoseDeliveryStreamOpensearchserverlessConfigurationProcessingConfigurationProcessorArgs
///                     {
///                         Parameters = new[]
///                         {
///                             new Aws.Kinesis.Inputs.FirehoseDeliveryStreamOpensearchserverlessConfigurationProcessingConfigurationProcessorParameterArgs
///                             {
///                                 ParameterName = "LambdaArn",
///                                 ParameterValue = $"{lambdaProcessor.Arn}:$LATEST",
///                             },
///                         },
///                         Type = "Lambda",
///                     },
///                 },
///                 Enabled = true,
///             },
///             CollectionEndpoint = testCollection.CollectionEndpoint,
///             RoleArn = firehoseRole.Arn,
///             IndexName = "test",
///         },
///         Name = "kinesis-firehose-test-stream",
///         Destination = "opensearchserverless",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kinesis"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/opensearch"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		testCollection, err := opensearch.NewServerlessCollection(ctx, "test_collection", &opensearch.ServerlessCollectionArgs{
/// 			Name: pulumi.String("firehose-osserverless-test"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = kinesis.NewFirehoseDeliveryStream(ctx, "test_stream", &kinesis.FirehoseDeliveryStreamArgs{
/// 			OpensearchserverlessConfiguration: &kinesis.FirehoseDeliveryStreamOpensearchserverlessConfigurationArgs{
/// 				S3Configuration: &kinesis.FirehoseDeliveryStreamOpensearchserverlessConfigurationS3ConfigurationArgs{
/// 					RoleArn:           pulumi.Any(firehoseRole.Arn),
/// 					BucketArn:         pulumi.Any(bucket.Arn),
/// 					BufferingSize:     pulumi.Int(10),
/// 					BufferingInterval: pulumi.Int(400),
/// 					CompressionFormat: pulumi.String("GZIP"),
/// 				},
/// 				ProcessingConfiguration: &kinesis.FirehoseDeliveryStreamOpensearchserverlessConfigurationProcessingConfigurationArgs{
/// 					Processors: kinesis.FirehoseDeliveryStreamOpensearchserverlessConfigurationProcessingConfigurationProcessorArray{
/// 						&kinesis.FirehoseDeliveryStreamOpensearchserverlessConfigurationProcessingConfigurationProcessorArgs{
/// 							Parameters: kinesis.FirehoseDeliveryStreamOpensearchserverlessConfigurationProcessingConfigurationProcessorParameterArray{
/// 								&kinesis.FirehoseDeliveryStreamOpensearchserverlessConfigurationProcessingConfigurationProcessorParameterArgs{
/// 									ParameterName:  pulumi.String("LambdaArn"),
/// 									ParameterValue: pulumi.Sprintf("%v:$LATEST", lambdaProcessor.Arn),
/// 								},
/// 							},
/// 							Type: pulumi.String("Lambda"),
/// 						},
/// 					},
/// 					Enabled: pulumi.Bool(true),
/// 				},
/// 				CollectionEndpoint: testCollection.CollectionEndpoint,
/// 				RoleArn:            pulumi.Any(firehoseRole.Arn),
/// 				IndexName:          pulumi.String("test"),
/// 			},
/// 			Name:        pulumi.String("kinesis-firehose-test-stream"),
/// 			Destination: pulumi.String("opensearchserverless"),
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
/// resource "aws_opensearch_serverlesscollection" "test_collection" {
///   name = "firehose-osserverless-test"
/// }
/// resource "aws_kinesis_firehosedeliverystream" "test_stream" {
///   opensearchserverless_configuration = {
///     s3_configuration = {
///       role_arn           = firehoseRole.arn
///       bucket_arn         = bucket.arn
///       buffering_size     = 10
///       buffering_interval = 400
///       compression_format = "GZIP"
///     }
///     processing_configuration = {
///       processors = [{
///         "parameters" = [{
///           "parameterName"  = "LambdaArn"
///           "parameterValue" ="${lambdaProcessor.arn}:$LATEST"
///         }]
///         "type" = "Lambda"
///       }]
///       enabled = "true"
///     }
///     collection_endpoint = aws_opensearch_serverlesscollection.test_collection.collection_endpoint
///     role_arn            = firehoseRole.arn
///     index_name          = "test"
///   }
///   name        = "kinesis-firehose-test-stream"
///   destination = "opensearchserverless"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.opensearch.ServerlessCollection;
/// import com.pulumi.aws.opensearch.ServerlessCollectionArgs;
/// import com.pulumi.aws.kinesis.FirehoseDeliveryStream;
/// import com.pulumi.aws.kinesis.FirehoseDeliveryStreamArgs;
/// import com.pulumi.aws.kinesis.inputs.FirehoseDeliveryStreamOpensearchserverlessConfigurationArgs;
/// import com.pulumi.aws.kinesis.inputs.FirehoseDeliveryStreamOpensearchserverlessConfigurationS3ConfigurationArgs;
/// import com.pulumi.aws.kinesis.inputs.FirehoseDeliveryStreamOpensearchserverlessConfigurationProcessingConfigurationArgs;
/// import com.pulumi.aws.kinesis.inputs.FirehoseDeliveryStreamOpensearchserverlessConfigurationProcessingConfigurationProcessorArgs;
/// import com.pulumi.aws.kinesis.inputs.FirehoseDeliveryStreamOpensearchserverlessConfigurationProcessingConfigurationProcessorParameterArgs;
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
///         var testCollection = new ServerlessCollection("testCollection", ServerlessCollectionArgs.builder()
///             .name("firehose-osserverless-test")
///             .build());
///
///         var testStream = new FirehoseDeliveryStream("testStream", FirehoseDeliveryStreamArgs.builder()
///             .opensearchserverlessConfiguration(FirehoseDeliveryStreamOpensearchserverlessConfigurationArgs.builder()
///                 .s3Configuration(FirehoseDeliveryStreamOpensearchserverlessConfigurationS3ConfigurationArgs.builder()
///                     .roleArn(firehoseRole.arn())
///                     .bucketArn(bucket.arn())
///                     .bufferingSize(10)
///                     .bufferingInterval(400)
///                     .compressionFormat("GZIP")
///                     .build())
///                 .processingConfiguration(FirehoseDeliveryStreamOpensearchserverlessConfigurationProcessingConfigurationArgs.builder()
///                     .processors(FirehoseDeliveryStreamOpensearchserverlessConfigurationProcessingConfigurationProcessorArgs.builder()
///                         .parameters(FirehoseDeliveryStreamOpensearchserverlessConfigurationProcessingConfigurationProcessorParameterArgs.builder()
///                             .parameterName("LambdaArn")
///                             .parameterValue(String.format("%s:$LATEST", lambdaProcessor.arn()))
///                             .build())
///                         .type("Lambda")
///                         .build())
///                     .enabled(true)
///                     .build())
///                 .collectionEndpoint(testCollection.collectionEndpoint())
///                 .roleArn(firehoseRole.arn())
///                 .indexName("test")
///                 .build())
///             .name("kinesis-firehose-test-stream")
///             .destination("opensearchserverless")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   testCollection:
///     type: aws:opensearch:ServerlessCollection
///     name: test_collection
///     properties:
///       name: firehose-osserverless-test
///   testStream:
///     type: aws:kinesis:FirehoseDeliveryStream
///     name: test_stream
///     properties:
///       opensearchserverlessConfiguration:
///         s3Configuration:
///           roleArn: ${firehoseRole.arn}
///           bucketArn: ${bucket.arn}
///           bufferingSize: 10
///           bufferingInterval: 400
///           compressionFormat: GZIP
///         processingConfiguration:
///           processors:
///             - parameters:
///                 - parameterName: LambdaArn
///                   parameterValue: ${lambdaProcessor.arn}:$LATEST
///               type: Lambda
///           enabled: 'true'
///         collectionEndpoint: ${testCollection.collectionEndpoint}
///         roleArn: ${firehoseRole.arn}
///         indexName: test
///       name: kinesis-firehose-test-stream
///       destination: opensearchserverless
/// ```
///
///
/// ### Iceberg Destination
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.getCallerIdentity({});
/// const currentGetPartition = aws.getPartition({});
/// const currentGetRegion = aws.getRegion({});
/// const bucket = new aws.s3.Bucket("bucket", {
///     bucket: "test-bucket",
///     forceDestroy: true,
/// });
/// const test = new aws.glue.CatalogDatabase("test", {name: "test"});
/// const testCatalogTable = new aws.glue.CatalogTable("test", {
///     openTableFormatInput: {
///         icebergInput: {
///             metadataOperation: "CREATE",
///             version: "2",
///         },
///     },
///     storageDescriptor: {
///         columns: [{
///             name: "my_column_1",
///             type: "int",
///         }],
///         location: pulumi.interpolate`s3://${bucket.id}`,
///     },
///     name: "test",
///     databaseName: test.name,
///     parameters: {
///         format: "parquet",
///     },
///     tableType: "EXTERNAL_TABLE",
/// });
/// const testStream = new aws.kinesis.FirehoseDeliveryStream("test_stream", {
///     icebergConfiguration: {
///         s3Configuration: {
///             roleArn: firehoseRole.arn,
///             bucketArn: bucket.arn,
///         },
///         processingConfiguration: {
///             processors: [{
///                 parameters: [{
///                     parameterName: "LambdaArn",
///                     parameterValue: `${lambdaProcessor.arn}:$LATEST`,
///                 }],
///                 type: "Lambda",
///             }],
///             enabled: true,
///         },
///         destinationTableConfigurations: [{
///             databaseName: test.name,
///             tableName: testCatalogTable.name,
///         }],
///         roleArn: firehoseRole.arn,
///         catalogArn: Promise.all([currentGetPartition, currentGetRegion, current]).then(([currentGetPartition, currentGetRegion, current]) => `arn:${currentGetPartition.partition}:glue:${currentGetRegion.region}:${current.accountId}:catalog`),
///         bufferingSize: 10,
///         bufferingInterval: 400,
///     },
///     name: "kinesis-firehose-test-stream",
///     destination: "iceberg",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// current = aws.get_caller_identity()
/// current_get_partition = aws.get_partition()
/// current_get_region = aws.get_region()
/// bucket = aws.s3.Bucket("bucket",
///     bucket="test-bucket",
///     force_destroy=True)
/// test = aws.glue.CatalogDatabase("test", name="test")
/// test_catalog_table = aws.glue.CatalogTable("test",
///     open_table_format_input={
///         "iceberg_input": {
///             "metadata_operation": "CREATE",
///             "version": "2",
///         },
///     },
///     storage_descriptor={
///         "columns": [{
///             "name": "my_column_1",
///             "type": "int",
///         }],
///         "location": bucket.id.apply(lambda id: f"s3://{id}"),
///     },
///     name="test",
///     database_name=test.name,
///     parameters={
///         "format": "parquet",
///     },
///     table_type="EXTERNAL_TABLE")
/// test_stream = aws.kinesis.FirehoseDeliveryStream("test_stream",
///     iceberg_configuration={
///         "s3_configuration": {
///             "role_arn": firehose_role["arn"],
///             "bucket_arn": bucket.arn,
///         },
///         "processing_configuration": {
///             "processors": [{
///                 "parameters": [{
///                     "parameter_name": "LambdaArn",
///                     "parameter_value": f"{lambda_processor['arn']}:$LATEST",
///                 }],
///                 "type": "Lambda",
///             }],
///             "enabled": True,
///         },
///         "destination_table_configurations": [{
///             "database_name": test.name,
///             "table_name": test_catalog_table.name,
///         }],
///         "role_arn": firehose_role["arn"],
///         "catalog_arn": f"arn:{current_get_partition.partition}:glue:{current_get_region.region}:{current.account_id}:catalog",
///         "buffering_size": 10,
///         "buffering_interval": 400,
///     },
///     name="kinesis-firehose-test-stream",
///     destination="iceberg")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = Aws.GetCallerIdentity.Invoke();
///
///     var currentGetPartition = Aws.GetPartition.Invoke();
///
///     var currentGetRegion = Aws.GetRegion.Invoke();
///
///     var bucket = new Aws.S3.Bucket("bucket", new()
///     {
///         BucketName = "test-bucket",
///         ForceDestroy = true,
///     });
///
///     var test = new Aws.Glue.CatalogDatabase("test", new()
///     {
///         Name = "test",
///     });
///
///     var testCatalogTable = new Aws.Glue.CatalogTable("test", new()
///     {
///         OpenTableFormatInput = new Aws.Glue.Inputs.CatalogTableOpenTableFormatInputArgs
///         {
///             IcebergInput = new Aws.Glue.Inputs.CatalogTableOpenTableFormatInputIcebergInputArgs
///             {
///                 MetadataOperation = "CREATE",
///                 Version = "2",
///             },
///         },
///         StorageDescriptor = new Aws.Glue.Inputs.CatalogTableStorageDescriptorArgs
///         {
///             Columns = new[]
///             {
///                 new Aws.Glue.Inputs.CatalogTableStorageDescriptorColumnArgs
///                 {
///                     Name = "my_column_1",
///                     Type = "int",
///                 },
///             },
///             Location = bucket.Id.Apply(id => $"s3://{id}"),
///         },
///         Name = "test",
///         DatabaseName = test.Name,
///         Parameters =
///         {
///             { "format", "parquet" },
///         },
///         TableType = "EXTERNAL_TABLE",
///     });
///
///     var testStream = new Aws.Kinesis.FirehoseDeliveryStream("test_stream", new()
///     {
///         IcebergConfiguration = new Aws.Kinesis.Inputs.FirehoseDeliveryStreamIcebergConfigurationArgs
///         {
///             S3Configuration = new Aws.Kinesis.Inputs.FirehoseDeliveryStreamIcebergConfigurationS3ConfigurationArgs
///             {
///                 RoleArn = firehoseRole.Arn,
///                 BucketArn = bucket.Arn,
///             },
///             ProcessingConfiguration = new Aws.Kinesis.Inputs.FirehoseDeliveryStreamIcebergConfigurationProcessingConfigurationArgs
///             {
///                 Processors = new[]
///                 {
///                     new Aws.Kinesis.Inputs.FirehoseDeliveryStreamIcebergConfigurationProcessingConfigurationProcessorArgs
///                     {
///                         Parameters = new[]
///                         {
///                             new Aws.Kinesis.Inputs.FirehoseDeliveryStreamIcebergConfigurationProcessingConfigurationProcessorParameterArgs
///                             {
///                                 ParameterName = "LambdaArn",
///                                 ParameterValue = $"{lambdaProcessor.Arn}:$LATEST",
///                             },
///                         },
///                         Type = "Lambda",
///                     },
///                 },
///                 Enabled = true,
///             },
///             DestinationTableConfigurations = new[]
///             {
///                 new Aws.Kinesis.Inputs.FirehoseDeliveryStreamIcebergConfigurationDestinationTableConfigurationArgs
///                 {
///                     DatabaseName = test.Name,
///                     TableName = testCatalogTable.Name,
///                 },
///             },
///             RoleArn = firehoseRole.Arn,
///             CatalogArn = Output.Tuple(currentGetPartition, currentGetRegion, current).Apply(values =>
///             {
///                 var currentGetPartition = values.Item1;
///                 var currentGetRegion = values.Item2;
///                 var current = values.Item3;
///                 return $"arn:{currentGetPartition.Apply(getPartitionResult => getPartitionResult.Partition)}:glue:{currentGetRegion.Apply(getRegionResult => getRegionResult.Region)}:{current.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId)}:catalog";
///             }),
///             BufferingSize = 10,
///             BufferingInterval = 400,
///         },
///         Name = "kinesis-firehose-test-stream",
///         Destination = "iceberg",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/glue"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kinesis"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := aws.GetCallerIdentity(ctx, &aws.GetCallerIdentityArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		currentGetPartition, err := aws.GetPartition(ctx, &aws.GetPartitionArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		currentGetRegion, err := aws.GetRegion(ctx, &aws.GetRegionArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		bucket, err := s3.NewBucket(ctx, "bucket", &s3.BucketArgs{
/// 			Bucket:       pulumi.String("test-bucket"),
/// 			ForceDestroy: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		test, err := glue.NewCatalogDatabase(ctx, "test", &glue.CatalogDatabaseArgs{
/// 			Name: pulumi.String("test"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		testCatalogTable, err := glue.NewCatalogTable(ctx, "test", &glue.CatalogTableArgs{
/// 			OpenTableFormatInput: &glue.CatalogTableOpenTableFormatInputArgs{
/// 				IcebergInput: &glue.CatalogTableOpenTableFormatInputIcebergInputArgs{
/// 					MetadataOperation: pulumi.String("CREATE"),
/// 					Version:           pulumi.String("2"),
/// 				},
/// 			},
/// 			StorageDescriptor: &glue.CatalogTableStorageDescriptorArgs{
/// 				Columns: glue.CatalogTableStorageDescriptorColumnArray{
/// 					&glue.CatalogTableStorageDescriptorColumnArgs{
/// 						Name: pulumi.String("my_column_1"),
/// 						Type: pulumi.String("int"),
/// 					},
/// 				},
/// 				Location: bucket.ID().ApplyT(func(id pulumi.ID) (string, error) {
/// 					return fmt.Sprintf("s3://%v", id), nil
/// 				}).(pulumi.StringOutput),
/// 			},
/// 			Name:         pulumi.String("test"),
/// 			DatabaseName: test.Name,
/// 			Parameters: pulumi.StringMap{
/// 				"format": pulumi.String("parquet"),
/// 			},
/// 			TableType: pulumi.String("EXTERNAL_TABLE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = kinesis.NewFirehoseDeliveryStream(ctx, "test_stream", &kinesis.FirehoseDeliveryStreamArgs{
/// 			IcebergConfiguration: &kinesis.FirehoseDeliveryStreamIcebergConfigurationArgs{
/// 				S3Configuration: &kinesis.FirehoseDeliveryStreamIcebergConfigurationS3ConfigurationArgs{
/// 					RoleArn:   pulumi.Any(firehoseRole.Arn),
/// 					BucketArn: bucket.Arn,
/// 				},
/// 				ProcessingConfiguration: &kinesis.FirehoseDeliveryStreamIcebergConfigurationProcessingConfigurationArgs{
/// 					Processors: kinesis.FirehoseDeliveryStreamIcebergConfigurationProcessingConfigurationProcessorArray{
/// 						&kinesis.FirehoseDeliveryStreamIcebergConfigurationProcessingConfigurationProcessorArgs{
/// 							Parameters: kinesis.FirehoseDeliveryStreamIcebergConfigurationProcessingConfigurationProcessorParameterArray{
/// 								&kinesis.FirehoseDeliveryStreamIcebergConfigurationProcessingConfigurationProcessorParameterArgs{
/// 									ParameterName:  pulumi.String("LambdaArn"),
/// 									ParameterValue: pulumi.Sprintf("%v:$LATEST", lambdaProcessor.Arn),
/// 								},
/// 							},
/// 							Type: pulumi.String("Lambda"),
/// 						},
/// 					},
/// 					Enabled: pulumi.Bool(true),
/// 				},
/// 				DestinationTableConfigurations: kinesis.FirehoseDeliveryStreamIcebergConfigurationDestinationTableConfigurationArray{
/// 					&kinesis.FirehoseDeliveryStreamIcebergConfigurationDestinationTableConfigurationArgs{
/// 						DatabaseName: test.Name,
/// 						TableName:    testCatalogTable.Name,
/// 					},
/// 				},
/// 				RoleArn:           pulumi.Any(firehoseRole.Arn),
/// 				CatalogArn:        pulumi.Sprintf("arn:%v:glue:%v:%v:catalog", currentGetPartition.Partition, currentGetRegion.Region, current.AccountId),
/// 				BufferingSize:     pulumi.Int(10),
/// 				BufferingInterval: pulumi.Int(400),
/// 			},
/// 			Name:        pulumi.String("kinesis-firehose-test-stream"),
/// 			Destination: pulumi.String("iceberg"),
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
/// data "aws_getcalleridentity" "current" {
/// }
/// data "aws_getpartition" "currentGetPartition" {
/// }
/// data "aws_getregion" "currentGetRegion" {
/// }
///
/// resource "aws_s3_bucket" "bucket" {
///   bucket        = "test-bucket"
///   force_destroy = true
/// }
/// resource "aws_glue_catalogdatabase" "test" {
///   name = "test"
/// }
/// resource "aws_glue_catalogtable" "test" {
///   open_table_format_input = {
///     iceberg_input = {
///       metadata_operation = "CREATE"
///       version            = 2
///     }
///   }
///   storage_descriptor = {
///     columns = [{
///       "name" = "my_column_1"
///       "type" = "int"
///     }]
///     location ="s3://${aws_s3_bucket.bucket.id}"
///   }
///   name          = "test"
///   database_name = aws_glue_catalogdatabase.test.name
///   parameters = {
///     "format" = "parquet"
///   }
///   table_type = "EXTERNAL_TABLE"
/// }
/// resource "aws_kinesis_firehosedeliverystream" "test_stream" {
///   iceberg_configuration = {
///     s3_configuration = {
///       role_arn   = firehoseRole.arn
///       bucket_arn = aws_s3_bucket.bucket.arn
///     }
///     processing_configuration = {
///       processors = [{
///         "parameters" = [{
///           "parameterName"  = "LambdaArn"
///           "parameterValue" ="${lambdaProcessor.arn}:$LATEST"
///         }]
///         "type" = "Lambda"
///       }]
///       enabled = "true"
///     }
///     destination_table_configurations = [{
///       "databaseName" = aws_glue_catalogdatabase.test.name
///       "tableName"    = aws_glue_catalogtable.test.name
///     }]
///     role_arn           = firehoseRole.arn
///     catalog_arn        ="arn:${data.aws_getpartition.currentGetPartition.partition}:glue:${data.aws_getregion.currentGetRegion.region}:${data.aws_getcalleridentity.current.account_id}:catalog"
///     buffering_size     = 10
///     buffering_interval = 400
///   }
///   name        = "kinesis-firehose-test-stream"
///   destination = "iceberg"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetCallerIdentityArgs;
/// import com.pulumi.aws.inputs.GetPartitionArgs;
/// import com.pulumi.aws.inputs.GetRegionArgs;
/// import com.pulumi.aws.s3.Bucket;
/// import com.pulumi.aws.s3.BucketArgs;
/// import com.pulumi.aws.glue.CatalogDatabase;
/// import com.pulumi.aws.glue.CatalogDatabaseArgs;
/// import com.pulumi.aws.glue.CatalogTable;
/// import com.pulumi.aws.glue.CatalogTableArgs;
/// import com.pulumi.aws.glue.inputs.CatalogTableOpenTableFormatInputArgs;
/// import com.pulumi.aws.glue.inputs.CatalogTableOpenTableFormatInputIcebergInputArgs;
/// import com.pulumi.aws.glue.inputs.CatalogTableStorageDescriptorArgs;
/// import com.pulumi.aws.glue.inputs.CatalogTableStorageDescriptorColumnArgs;
/// import com.pulumi.aws.kinesis.FirehoseDeliveryStream;
/// import com.pulumi.aws.kinesis.FirehoseDeliveryStreamArgs;
/// import com.pulumi.aws.kinesis.inputs.FirehoseDeliveryStreamIcebergConfigurationArgs;
/// import com.pulumi.aws.kinesis.inputs.FirehoseDeliveryStreamIcebergConfigurationS3ConfigurationArgs;
/// import com.pulumi.aws.kinesis.inputs.FirehoseDeliveryStreamIcebergConfigurationProcessingConfigurationArgs;
/// import com.pulumi.aws.kinesis.inputs.FirehoseDeliveryStreamIcebergConfigurationProcessingConfigurationProcessorArgs;
/// import com.pulumi.aws.kinesis.inputs.FirehoseDeliveryStreamIcebergConfigurationProcessingConfigurationProcessorParameterArgs;
/// import com.pulumi.aws.kinesis.inputs.FirehoseDeliveryStreamIcebergConfigurationDestinationTableConfigurationArgs;
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
///         final var current = AwsFunctions.getCallerIdentity(GetCallerIdentityArgs.builder()
///             .build());
///
///         final var currentGetPartition = AwsFunctions.getPartition(GetPartitionArgs.builder()
///             .build());
///
///         final var currentGetRegion = AwsFunctions.getRegion(GetRegionArgs.builder()
///             .build());
///
///         var bucket = new Bucket("bucket", BucketArgs.builder()
///             .bucket("test-bucket")
///             .forceDestroy(true)
///             .build());
///
///         var test = new CatalogDatabase("test", CatalogDatabaseArgs.builder()
///             .name("test")
///             .build());
///
///         var testCatalogTable = new CatalogTable("testCatalogTable", CatalogTableArgs.builder()
///             .openTableFormatInput(CatalogTableOpenTableFormatInputArgs.builder()
///                 .icebergInput(CatalogTableOpenTableFormatInputIcebergInputArgs.builder()
///                     .metadataOperation("CREATE")
///                     .version("2")
///                     .build())
///                 .build())
///             .storageDescriptor(CatalogTableStorageDescriptorArgs.builder()
///                 .columns(CatalogTableStorageDescriptorColumnArgs.builder()
///                     .name("my_column_1")
///                     .type("int")
///                     .build())
///                 .location(bucket.id().applyValue(_id -> String.format("s3://%s", _id)))
///                 .build())
///             .name("test")
///             .databaseName(test.name())
///             .parameters(Map.of("format", "parquet"))
///             .tableType("EXTERNAL_TABLE")
///             .build());
///
///         var testStream = new FirehoseDeliveryStream("testStream", FirehoseDeliveryStreamArgs.builder()
///             .icebergConfiguration(FirehoseDeliveryStreamIcebergConfigurationArgs.builder()
///                 .s3Configuration(FirehoseDeliveryStreamIcebergConfigurationS3ConfigurationArgs.builder()
///                     .roleArn(firehoseRole.arn())
///                     .bucketArn(bucket.arn())
///                     .build())
///                 .processingConfiguration(FirehoseDeliveryStreamIcebergConfigurationProcessingConfigurationArgs.builder()
///                     .processors(FirehoseDeliveryStreamIcebergConfigurationProcessingConfigurationProcessorArgs.builder()
///                         .parameters(FirehoseDeliveryStreamIcebergConfigurationProcessingConfigurationProcessorParameterArgs.builder()
///                             .parameterName("LambdaArn")
///                             .parameterValue(String.format("%s:$LATEST", lambdaProcessor.arn()))
///                             .build())
///                         .type("Lambda")
///                         .build())
///                     .enabled(true)
///                     .build())
///                 .destinationTableConfigurations(FirehoseDeliveryStreamIcebergConfigurationDestinationTableConfigurationArgs.builder()
///                     .databaseName(test.name())
///                     .tableName(testCatalogTable.name())
///                     .build())
///                 .roleArn(firehoseRole.arn())
///                 .catalogArn(String.format("arn:%s:glue:%s:%s:catalog", currentGetPartition.partition(),currentGetRegion.region(),current.accountId()))
///                 .bufferingSize(10)
///                 .bufferingInterval(400)
///                 .build())
///             .name("kinesis-firehose-test-stream")
///             .destination("iceberg")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   bucket:
///     type: aws:s3:Bucket
///     properties:
///       bucket: test-bucket
///       forceDestroy: true
///   test:
///     type: aws:glue:CatalogDatabase
///     properties:
///       name: test
///   testCatalogTable:
///     type: aws:glue:CatalogTable
///     name: test
///     properties:
///       openTableFormatInput:
///         icebergInput:
///           metadataOperation: CREATE
///           version: 2
///       storageDescriptor:
///         columns:
///           - name: my_column_1
///             type: int
///         location: s3://${bucket.id}
///       name: test
///       databaseName: ${test.name}
///       parameters:
///         format: parquet
///       tableType: EXTERNAL_TABLE
///   testStream:
///     type: aws:kinesis:FirehoseDeliveryStream
///     name: test_stream
///     properties:
///       icebergConfiguration:
///         s3Configuration:
///           roleArn: ${firehoseRole.arn}
///           bucketArn: ${bucket.arn}
///         processingConfiguration:
///           processors:
///             - parameters:
///                 - parameterName: LambdaArn
///                   parameterValue: ${lambdaProcessor.arn}:$LATEST
///               type: Lambda
///           enabled: 'true'
///         destinationTableConfigurations:
///           - databaseName: ${test.name}
///             tableName: ${testCatalogTable.name}
///         roleArn: ${firehoseRole.arn}
///         catalogArn: arn:${currentGetPartition.partition}:glue:${currentGetRegion.region}:${current.accountId}:catalog
///         bufferingSize: 10
///         bufferingInterval: 400
///       name: kinesis-firehose-test-stream
///       destination: iceberg
/// variables:
///   current:
///     fn::invoke:
///       function: aws:getCallerIdentity
///       arguments: {}
///   currentGetPartition:
///     fn::invoke:
///       function: aws:getPartition
///       arguments: {}
///   currentGetRegion:
///     fn::invoke:
///       function: aws:getRegion
///       arguments: {}
/// ```
///
///
/// ### Splunk Destination
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const testStream = new aws.kinesis.FirehoseDeliveryStream("test_stream", {
///     splunkConfiguration: {
///         s3Configuration: {
///             roleArn: firehose.arn,
///             bucketArn: bucket.arn,
///             bufferingSize: 10,
///             bufferingInterval: 400,
///             compressionFormat: "GZIP",
///         },
///         hecEndpoint: "https://http-inputs-mydomain.splunkcloud.com:443",
///         hecToken: "51D4DA16-C61B-4F5F-8EC7-ED4301342A4A",
///         hecAcknowledgmentTimeout: 600,
///         hecEndpointType: "Event",
///         s3BackupMode: "FailedEventsOnly",
///     },
///     name: "kinesis-firehose-test-stream",
///     destination: "splunk",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test_stream = aws.kinesis.FirehoseDeliveryStream("test_stream",
///     splunk_configuration={
///         "s3_configuration": {
///             "role_arn": firehose["arn"],
///             "bucket_arn": bucket["arn"],
///             "buffering_size": 10,
///             "buffering_interval": 400,
///             "compression_format": "GZIP",
///         },
///         "hec_endpoint": "https://http-inputs-mydomain.splunkcloud.com:443",
///         "hec_token": "51D4DA16-C61B-4F5F-8EC7-ED4301342A4A",
///         "hec_acknowledgment_timeout": 600,
///         "hec_endpoint_type": "Event",
///         "s3_backup_mode": "FailedEventsOnly",
///     },
///     name="kinesis-firehose-test-stream",
///     destination="splunk")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var testStream = new Aws.Kinesis.FirehoseDeliveryStream("test_stream", new()
///     {
///         SplunkConfiguration = new Aws.Kinesis.Inputs.FirehoseDeliveryStreamSplunkConfigurationArgs
///         {
///             S3Configuration = new Aws.Kinesis.Inputs.FirehoseDeliveryStreamSplunkConfigurationS3ConfigurationArgs
///             {
///                 RoleArn = firehose.Arn,
///                 BucketArn = bucket.Arn,
///                 BufferingSize = 10,
///                 BufferingInterval = 400,
///                 CompressionFormat = "GZIP",
///             },
///             HecEndpoint = "https://http-inputs-mydomain.splunkcloud.com:443",
///             HecToken = "51D4DA16-C61B-4F5F-8EC7-ED4301342A4A",
///             HecAcknowledgmentTimeout = 600,
///             HecEndpointType = "Event",
///             S3BackupMode = "FailedEventsOnly",
///         },
///         Name = "kinesis-firehose-test-stream",
///         Destination = "splunk",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kinesis"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := kinesis.NewFirehoseDeliveryStream(ctx, "test_stream", &kinesis.FirehoseDeliveryStreamArgs{
/// 			SplunkConfiguration: &kinesis.FirehoseDeliveryStreamSplunkConfigurationArgs{
/// 				S3Configuration: &kinesis.FirehoseDeliveryStreamSplunkConfigurationS3ConfigurationArgs{
/// 					RoleArn:           pulumi.Any(firehose.Arn),
/// 					BucketArn:         pulumi.Any(bucket.Arn),
/// 					BufferingSize:     pulumi.Int(10),
/// 					BufferingInterval: pulumi.Int(400),
/// 					CompressionFormat: pulumi.String("GZIP"),
/// 				},
/// 				HecEndpoint:              pulumi.String("https://http-inputs-mydomain.splunkcloud.com:443"),
/// 				HecToken:                 pulumi.String("51D4DA16-C61B-4F5F-8EC7-ED4301342A4A"),
/// 				HecAcknowledgmentTimeout: pulumi.Int(600),
/// 				HecEndpointType:          pulumi.String("Event"),
/// 				S3BackupMode:             pulumi.String("FailedEventsOnly"),
/// 			},
/// 			Name:        pulumi.String("kinesis-firehose-test-stream"),
/// 			Destination: pulumi.String("splunk"),
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
/// resource "aws_kinesis_firehosedeliverystream" "test_stream" {
///   splunk_configuration = {
///     s3_configuration = {
///       role_arn           = firehose.arn
///       bucket_arn         = bucket.arn
///       buffering_size     = 10
///       buffering_interval = 400
///       compression_format = "GZIP"
///     }
///     hec_endpoint               = "https://http-inputs-mydomain.splunkcloud.com:443"
///     hec_token                  = "51D4DA16-C61B-4F5F-8EC7-ED4301342A4A"
///     hec_acknowledgment_timeout = 600
///     hec_endpoint_type          = "Event"
///     s3_backup_mode             = "FailedEventsOnly"
///   }
///   name        = "kinesis-firehose-test-stream"
///   destination = "splunk"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.kinesis.FirehoseDeliveryStream;
/// import com.pulumi.aws.kinesis.FirehoseDeliveryStreamArgs;
/// import com.pulumi.aws.kinesis.inputs.FirehoseDeliveryStreamSplunkConfigurationArgs;
/// import com.pulumi.aws.kinesis.inputs.FirehoseDeliveryStreamSplunkConfigurationS3ConfigurationArgs;
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
///         var testStream = new FirehoseDeliveryStream("testStream", FirehoseDeliveryStreamArgs.builder()
///             .splunkConfiguration(FirehoseDeliveryStreamSplunkConfigurationArgs.builder()
///                 .s3Configuration(FirehoseDeliveryStreamSplunkConfigurationS3ConfigurationArgs.builder()
///                     .roleArn(firehose.arn())
///                     .bucketArn(bucket.arn())
///                     .bufferingSize(10)
///                     .bufferingInterval(400)
///                     .compressionFormat("GZIP")
///                     .build())
///                 .hecEndpoint("https://http-inputs-mydomain.splunkcloud.com:443")
///                 .hecToken("51D4DA16-C61B-4F5F-8EC7-ED4301342A4A")
///                 .hecAcknowledgmentTimeout(600)
///                 .hecEndpointType("Event")
///                 .s3BackupMode("FailedEventsOnly")
///                 .build())
///             .name("kinesis-firehose-test-stream")
///             .destination("splunk")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   testStream:
///     type: aws:kinesis:FirehoseDeliveryStream
///     name: test_stream
///     properties:
///       splunkConfiguration:
///         s3Configuration:
///           roleArn: ${firehose.arn}
///           bucketArn: ${bucket.arn}
///           bufferingSize: 10
///           bufferingInterval: 400
///           compressionFormat: GZIP
///         hecEndpoint: https://http-inputs-mydomain.splunkcloud.com:443
///         hecToken: 51D4DA16-C61B-4F5F-8EC7-ED4301342A4A
///         hecAcknowledgmentTimeout: 600
///         hecEndpointType: Event
///         s3BackupMode: FailedEventsOnly
///       name: kinesis-firehose-test-stream
///       destination: splunk
/// ```
///
///
/// ### HTTP Endpoint (e.g., New Relic, Datadog) Destination
///
/// The HTTP endpoint destination can be used with any vendor that exposes a compatible HTTP intake, including [New Relic](https://docs.newrelic.com/docs/infrastructure/amazon-integrations/connect/aws-firehose/) and [Datadog](https://docs.datadoghq.com/integrations/amazon_kinesis_data_firehose/). Refer to each vendor's documentation for the correct intake URL and authentication requirements.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const testStream = new aws.kinesis.FirehoseDeliveryStream("test_stream", {
///     httpEndpointConfiguration: {
///         s3Configuration: {
///             roleArn: firehose.arn,
///             bucketArn: bucket.arn,
///             bufferingSize: 10,
///             bufferingInterval: 400,
///             compressionFormat: "GZIP",
///         },
///         requestConfiguration: {
///             commonAttributes: [
///                 {
///                     name: "testname",
///                     value: "testvalue",
///                 },
///                 {
///                     name: "testname2",
///                     value: "testvalue2",
///                 },
///             ],
///             contentEncoding: "GZIP",
///         },
///         url: "https://aws-api.newrelic.com/firehose/v1",
///         name: "New Relic",
///         accessKey: "my-key",
///         bufferingSize: 15,
///         bufferingInterval: 600,
///         roleArn: firehose.arn,
///         s3BackupMode: "FailedDataOnly",
///     },
///     name: "kinesis-firehose-test-stream",
///     destination: "http_endpoint",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test_stream = aws.kinesis.FirehoseDeliveryStream("test_stream",
///     http_endpoint_configuration={
///         "s3_configuration": {
///             "role_arn": firehose["arn"],
///             "bucket_arn": bucket["arn"],
///             "buffering_size": 10,
///             "buffering_interval": 400,
///             "compression_format": "GZIP",
///         },
///         "request_configuration": {
///             "common_attributes": [
///                 {
///                     "name": "testname",
///                     "value": "testvalue",
///                 },
///                 {
///                     "name": "testname2",
///                     "value": "testvalue2",
///                 },
///             ],
///             "content_encoding": "GZIP",
///         },
///         "url": "https://aws-api.newrelic.com/firehose/v1",
///         "name": "New Relic",
///         "access_key": "my-key",
///         "buffering_size": 15,
///         "buffering_interval": 600,
///         "role_arn": firehose["arn"],
///         "s3_backup_mode": "FailedDataOnly",
///     },
///     name="kinesis-firehose-test-stream",
///     destination="http_endpoint")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var testStream = new Aws.Kinesis.FirehoseDeliveryStream("test_stream", new()
///     {
///         HttpEndpointConfiguration = new Aws.Kinesis.Inputs.FirehoseDeliveryStreamHttpEndpointConfigurationArgs
///         {
///             S3Configuration = new Aws.Kinesis.Inputs.FirehoseDeliveryStreamHttpEndpointConfigurationS3ConfigurationArgs
///             {
///                 RoleArn = firehose.Arn,
///                 BucketArn = bucket.Arn,
///                 BufferingSize = 10,
///                 BufferingInterval = 400,
///                 CompressionFormat = "GZIP",
///             },
///             RequestConfiguration = new Aws.Kinesis.Inputs.FirehoseDeliveryStreamHttpEndpointConfigurationRequestConfigurationArgs
///             {
///                 CommonAttributes = new[]
///                 {
///                     new Aws.Kinesis.Inputs.FirehoseDeliveryStreamHttpEndpointConfigurationRequestConfigurationCommonAttributeArgs
///                     {
///                         Name = "testname",
///                         Value = "testvalue",
///                     },
///                     new Aws.Kinesis.Inputs.FirehoseDeliveryStreamHttpEndpointConfigurationRequestConfigurationCommonAttributeArgs
///                     {
///                         Name = "testname2",
///                         Value = "testvalue2",
///                     },
///                 },
///                 ContentEncoding = "GZIP",
///             },
///             Url = "https://aws-api.newrelic.com/firehose/v1",
///             Name = "New Relic",
///             AccessKey = "my-key",
///             BufferingSize = 15,
///             BufferingInterval = 600,
///             RoleArn = firehose.Arn,
///             S3BackupMode = "FailedDataOnly",
///         },
///         Name = "kinesis-firehose-test-stream",
///         Destination = "http_endpoint",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kinesis"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := kinesis.NewFirehoseDeliveryStream(ctx, "test_stream", &kinesis.FirehoseDeliveryStreamArgs{
/// 			HttpEndpointConfiguration: &kinesis.FirehoseDeliveryStreamHttpEndpointConfigurationArgs{
/// 				S3Configuration: &kinesis.FirehoseDeliveryStreamHttpEndpointConfigurationS3ConfigurationArgs{
/// 					RoleArn:           pulumi.Any(firehose.Arn),
/// 					BucketArn:         pulumi.Any(bucket.Arn),
/// 					BufferingSize:     pulumi.Int(10),
/// 					BufferingInterval: pulumi.Int(400),
/// 					CompressionFormat: pulumi.String("GZIP"),
/// 				},
/// 				RequestConfiguration: &kinesis.FirehoseDeliveryStreamHttpEndpointConfigurationRequestConfigurationArgs{
/// 					CommonAttributes: kinesis.FirehoseDeliveryStreamHttpEndpointConfigurationRequestConfigurationCommonAttributeArray{
/// 						&kinesis.FirehoseDeliveryStreamHttpEndpointConfigurationRequestConfigurationCommonAttributeArgs{
/// 							Name:  pulumi.String("testname"),
/// 							Value: pulumi.String("testvalue"),
/// 						},
/// 						&kinesis.FirehoseDeliveryStreamHttpEndpointConfigurationRequestConfigurationCommonAttributeArgs{
/// 							Name:  pulumi.String("testname2"),
/// 							Value: pulumi.String("testvalue2"),
/// 						},
/// 					},
/// 					ContentEncoding: pulumi.String("GZIP"),
/// 				},
/// 				Url:               pulumi.String("https://aws-api.newrelic.com/firehose/v1"),
/// 				Name:              pulumi.String("New Relic"),
/// 				AccessKey:         pulumi.String("my-key"),
/// 				BufferingSize:     pulumi.Int(15),
/// 				BufferingInterval: pulumi.Int(600),
/// 				RoleArn:           pulumi.Any(firehose.Arn),
/// 				S3BackupMode:      pulumi.String("FailedDataOnly"),
/// 			},
/// 			Name:        pulumi.String("kinesis-firehose-test-stream"),
/// 			Destination: pulumi.String("http_endpoint"),
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
/// resource "aws_kinesis_firehosedeliverystream" "test_stream" {
///   http_endpoint_configuration = {
///     s3_configuration = {
///       role_arn           = firehose.arn
///       bucket_arn         = bucket.arn
///       buffering_size     = 10
///       buffering_interval = 400
///       compression_format = "GZIP"
///     }
///     request_configuration = {
///       common_attributes = [{
///         "name"  = "testname"
///         "value" = "testvalue"
///         }, {
///         "name"  = "testname2"
///         "value" = "testvalue2"
///       }]
///       content_encoding = "GZIP"
///     }
///     url                = "https://aws-api.newrelic.com/firehose/v1"
///     name               = "New Relic"
///     access_key         = "my-key"
///     buffering_size     = 15
///     buffering_interval = 600
///     role_arn           = firehose.arn
///     s3_backup_mode     = "FailedDataOnly"
///   }
///   name        = "kinesis-firehose-test-stream"
///   destination = "http_endpoint"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.kinesis.FirehoseDeliveryStream;
/// import com.pulumi.aws.kinesis.FirehoseDeliveryStreamArgs;
/// import com.pulumi.aws.kinesis.inputs.FirehoseDeliveryStreamHttpEndpointConfigurationArgs;
/// import com.pulumi.aws.kinesis.inputs.FirehoseDeliveryStreamHttpEndpointConfigurationS3ConfigurationArgs;
/// import com.pulumi.aws.kinesis.inputs.FirehoseDeliveryStreamHttpEndpointConfigurationRequestConfigurationArgs;
/// import com.pulumi.aws.kinesis.inputs.FirehoseDeliveryStreamHttpEndpointConfigurationRequestConfigurationCommonAttributeArgs;
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
///         var testStream = new FirehoseDeliveryStream("testStream", FirehoseDeliveryStreamArgs.builder()
///             .httpEndpointConfiguration(FirehoseDeliveryStreamHttpEndpointConfigurationArgs.builder()
///                 .s3Configuration(FirehoseDeliveryStreamHttpEndpointConfigurationS3ConfigurationArgs.builder()
///                     .roleArn(firehose.arn())
///                     .bucketArn(bucket.arn())
///                     .bufferingSize(10)
///                     .bufferingInterval(400)
///                     .compressionFormat("GZIP")
///                     .build())
///                 .requestConfiguration(FirehoseDeliveryStreamHttpEndpointConfigurationRequestConfigurationArgs.builder()
///                     .commonAttributes(
///                         FirehoseDeliveryStreamHttpEndpointConfigurationRequestConfigurationCommonAttributeArgs.builder()
///                             .name("testname")
///                             .value("testvalue")
///                             .build(),
///                         FirehoseDeliveryStreamHttpEndpointConfigurationRequestConfigurationCommonAttributeArgs.builder()
///                             .name("testname2")
///                             .value("testvalue2")
///                             .build())
///                     .contentEncoding("GZIP")
///                     .build())
///                 .url("https://aws-api.newrelic.com/firehose/v1")
///                 .name("New Relic")
///                 .accessKey("my-key")
///                 .bufferingSize(15)
///                 .bufferingInterval(600)
///                 .roleArn(firehose.arn())
///                 .s3BackupMode("FailedDataOnly")
///                 .build())
///             .name("kinesis-firehose-test-stream")
///             .destination("http_endpoint")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   testStream:
///     type: aws:kinesis:FirehoseDeliveryStream
///     name: test_stream
///     properties:
///       httpEndpointConfiguration:
///         s3Configuration:
///           roleArn: ${firehose.arn}
///           bucketArn: ${bucket.arn}
///           bufferingSize: 10
///           bufferingInterval: 400
///           compressionFormat: GZIP
///         requestConfiguration:
///           commonAttributes:
///             - name: testname
///               value: testvalue
///             - name: testname2
///               value: testvalue2
///           contentEncoding: GZIP
///         url: https://aws-api.newrelic.com/firehose/v1
///         name: New Relic
///         accessKey: my-key
///         bufferingSize: 15
///         bufferingInterval: 600
///         roleArn: ${firehose.arn}
///         s3BackupMode: FailedDataOnly
///       name: kinesis-firehose-test-stream
///       destination: http_endpoint
/// ```
///
///
/// ### Snowflake Destination
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const exampleSnowflakeDestination = new aws.kinesis.FirehoseDeliveryStream("example_snowflake_destination", {
///     snowflakeConfiguration: {
///         s3Configuration: {
///             roleArn: firehose.arn,
///             bucketArn: bucket.arn,
///             bufferingSize: 10,
///             bufferingInterval: 400,
///             compressionFormat: "GZIP",
///         },
///         accountUrl: "https://example.snowflakecomputing.com",
///         bufferingSize: 15,
///         bufferingInterval: 600,
///         database: "example-db",
///         privateKey: "...",
///         roleArn: firehose.arn,
///         schema: "example-schema",
///         table: "example-table",
///         user: "example-usr",
///     },
///     name: "example-snowflake-destination",
///     destination: "snowflake",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_snowflake_destination = aws.kinesis.FirehoseDeliveryStream("example_snowflake_destination",
///     snowflake_configuration={
///         "s3_configuration": {
///             "role_arn": firehose["arn"],
///             "bucket_arn": bucket["arn"],
///             "buffering_size": 10,
///             "buffering_interval": 400,
///             "compression_format": "GZIP",
///         },
///         "account_url": "https://example.snowflakecomputing.com",
///         "buffering_size": 15,
///         "buffering_interval": 600,
///         "database": "example-db",
///         "private_key": "...",
///         "role_arn": firehose["arn"],
///         "schema": "example-schema",
///         "table": "example-table",
///         "user": "example-usr",
///     },
///     name="example-snowflake-destination",
///     destination="snowflake")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleSnowflakeDestination = new Aws.Kinesis.FirehoseDeliveryStream("example_snowflake_destination", new()
///     {
///         SnowflakeConfiguration = new Aws.Kinesis.Inputs.FirehoseDeliveryStreamSnowflakeConfigurationArgs
///         {
///             S3Configuration = new Aws.Kinesis.Inputs.FirehoseDeliveryStreamSnowflakeConfigurationS3ConfigurationArgs
///             {
///                 RoleArn = firehose.Arn,
///                 BucketArn = bucket.Arn,
///                 BufferingSize = 10,
///                 BufferingInterval = 400,
///                 CompressionFormat = "GZIP",
///             },
///             AccountUrl = "https://example.snowflakecomputing.com",
///             BufferingSize = 15,
///             BufferingInterval = 600,
///             Database = "example-db",
///             PrivateKey = "...",
///             RoleArn = firehose.Arn,
///             Schema = "example-schema",
///             Table = "example-table",
///             User = "example-usr",
///         },
///         Name = "example-snowflake-destination",
///         Destination = "snowflake",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kinesis"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := kinesis.NewFirehoseDeliveryStream(ctx, "example_snowflake_destination", &kinesis.FirehoseDeliveryStreamArgs{
/// 			SnowflakeConfiguration: &kinesis.FirehoseDeliveryStreamSnowflakeConfigurationArgs{
/// 				S3Configuration: &kinesis.FirehoseDeliveryStreamSnowflakeConfigurationS3ConfigurationArgs{
/// 					RoleArn:           pulumi.Any(firehose.Arn),
/// 					BucketArn:         pulumi.Any(bucket.Arn),
/// 					BufferingSize:     pulumi.Int(10),
/// 					BufferingInterval: pulumi.Int(400),
/// 					CompressionFormat: pulumi.String("GZIP"),
/// 				},
/// 				AccountUrl:        pulumi.String("https://example.snowflakecomputing.com"),
/// 				BufferingSize:     pulumi.Int(15),
/// 				BufferingInterval: pulumi.Int(600),
/// 				Database:          pulumi.String("example-db"),
/// 				PrivateKey:        pulumi.String("..."),
/// 				RoleArn:           pulumi.Any(firehose.Arn),
/// 				Schema:            pulumi.String("example-schema"),
/// 				Table:             pulumi.String("example-table"),
/// 				User:              pulumi.String("example-usr"),
/// 			},
/// 			Name:        pulumi.String("example-snowflake-destination"),
/// 			Destination: pulumi.String("snowflake"),
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
/// resource "aws_kinesis_firehosedeliverystream" "example_snowflake_destination" {
///   snowflake_configuration = {
///     s3_configuration = {
///       role_arn           = firehose.arn
///       bucket_arn         = bucket.arn
///       buffering_size     = 10
///       buffering_interval = 400
///       compression_format = "GZIP"
///     }
///     account_url        = "https://example.snowflakecomputing.com"
///     buffering_size     = 15
///     buffering_interval = 600
///     database           = "example-db"
///     private_key        = "..."
///     role_arn           = firehose.arn
///     schema             = "example-schema"
///     table              = "example-table"
///     user               = "example-usr"
///   }
///   name        = "example-snowflake-destination"
///   destination = "snowflake"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.kinesis.FirehoseDeliveryStream;
/// import com.pulumi.aws.kinesis.FirehoseDeliveryStreamArgs;
/// import com.pulumi.aws.kinesis.inputs.FirehoseDeliveryStreamSnowflakeConfigurationArgs;
/// import com.pulumi.aws.kinesis.inputs.FirehoseDeliveryStreamSnowflakeConfigurationS3ConfigurationArgs;
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
///         var exampleSnowflakeDestination = new FirehoseDeliveryStream("exampleSnowflakeDestination", FirehoseDeliveryStreamArgs.builder()
///             .snowflakeConfiguration(FirehoseDeliveryStreamSnowflakeConfigurationArgs.builder()
///                 .s3Configuration(FirehoseDeliveryStreamSnowflakeConfigurationS3ConfigurationArgs.builder()
///                     .roleArn(firehose.arn())
///                     .bucketArn(bucket.arn())
///                     .bufferingSize(10)
///                     .bufferingInterval(400)
///                     .compressionFormat("GZIP")
///                     .build())
///                 .accountUrl("https://example.snowflakecomputing.com")
///                 .bufferingSize(15)
///                 .bufferingInterval(600)
///                 .database("example-db")
///                 .privateKey("...")
///                 .roleArn(firehose.arn())
///                 .schema("example-schema")
///                 .table("example-table")
///                 .user("example-usr")
///                 .build())
///             .name("example-snowflake-destination")
///             .destination("snowflake")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleSnowflakeDestination:
///     type: aws:kinesis:FirehoseDeliveryStream
///     name: example_snowflake_destination
///     properties:
///       snowflakeConfiguration:
///         s3Configuration:
///           roleArn: ${firehose.arn}
///           bucketArn: ${bucket.arn}
///           bufferingSize: 10
///           bufferingInterval: 400
///           compressionFormat: GZIP
///         accountUrl: https://example.snowflakecomputing.com
///         bufferingSize: 15
///         bufferingInterval: 600
///         database: example-db
///         privateKey: '...'
///         roleArn: ${firehose.arn}
///         schema: example-schema
///         table: example-table
///         user: example-usr
///       name: example-snowflake-destination
///       destination: snowflake
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) ARN of the delivery stream.
///
///
/// Using `pulumi import`, import Kinesis Firehose Delivery Streams using `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:kinesis/firehoseDeliveryStream:FirehoseDeliveryStream example arn:aws:firehose:us-east-1:123456789012:deliverystream/example-delivery-stream
/// ```
///
/// Note: Import does not work for stream destination `s3`. Consider using `extendedS3` since `s3` destination is deprecated.
class FirehoseDeliveryStream extends pulumi.CustomResource {
  /// ARN specifying the Stream
  late final pulumi.Output<String> arn;
  /// This is the destination to where the data is delivered. The only options are `s3` (Deprecated, use `extendedS3` instead), `extendedS3`, `redshift`, `elasticsearch`, `splunk`, `httpEndpoint`, `opensearch`, `opensearchserverless` and `snowflake`.
  late final pulumi.Output<String> destination;
  late final pulumi.Output<String> destinationId;
  /// Configuration options when `destination` is `elasticsearch`. See `elasticsearchConfiguration` block below for details.
  late final pulumi.Output<FirehoseDeliveryStreamElasticsearchConfiguration?> elasticsearchConfiguration;
  /// Enhanced configuration options for the s3 destination. See `extendedS3Configuration` block below for details.
  late final pulumi.Output<FirehoseDeliveryStreamExtendedS3Configuration?> extendedS3Configuration;
  /// Configuration options when `destination` is `httpEndpoint`. Requires the user to also specify an `s3Configuration` block.  See `httpEndpointConfiguration` block below for details.
  late final pulumi.Output<FirehoseDeliveryStreamHttpEndpointConfiguration?> httpEndpointConfiguration;
  /// Configuration options when `destination` is `iceberg`. See `icebergConfiguration` block below for details.
  late final pulumi.Output<FirehoseDeliveryStreamIcebergConfiguration?> icebergConfiguration;
  /// Stream and role ARNs for a Kinesis data stream used as the source for a delivery stream. See `kinesisSourceConfiguration` block below for details.
  late final pulumi.Output<FirehoseDeliveryStreamKinesisSourceConfiguration?> kinesisSourceConfiguration;
  /// The configuration for the Amazon MSK cluster to be used as the source for a delivery stream. See `mskSourceConfiguration` block below for details.
  late final pulumi.Output<FirehoseDeliveryStreamMskSourceConfiguration?> mskSourceConfiguration;
  /// A name to identify the stream. This is unique to the AWS account and region the Stream is created in. When using for WAF logging, name must be prefixed with `aws-waf-logs-`. See [AWS Documentation](https://docs.aws.amazon.com/waf/latest/developerguide/waf-policies.html#waf-policies-logging-config) for more details.
  late final pulumi.Output<String> name;
  /// Configuration options when `destination` is `opensearch`. See `opensearchConfiguration` block below for details.
  late final pulumi.Output<FirehoseDeliveryStreamOpensearchConfiguration?> opensearchConfiguration;
  /// Configuration options when `destination` is `opensearchserverless`. See `opensearchserverlessConfiguration` block below for details.
  late final pulumi.Output<FirehoseDeliveryStreamOpensearchserverlessConfiguration?> opensearchserverlessConfiguration;
  /// Configuration options when `destination` is `redshift`. Requires the user to also specify an `s3Configuration` block. See `redshiftConfiguration` block below for details.
  late final pulumi.Output<FirehoseDeliveryStreamRedshiftConfiguration?> redshiftConfiguration;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Encrypt at rest options. See `serverSideEncryption` block below for details.
  late final pulumi.Output<FirehoseDeliveryStreamServerSideEncryption?> serverSideEncryption;
  /// Configuration options when `destination` is `snowflake`. See `snowflakeConfiguration` block below for details.
  late final pulumi.Output<FirehoseDeliveryStreamSnowflakeConfiguration?> snowflakeConfiguration;
  /// Configuration options when `destination` is `splunk`. See `splunkConfiguration` block below for details.
  ///
  /// **NOTE:** Server-side encryption should not be enabled when a kinesis stream is configured as the source of the firehose delivery stream.
  late final pulumi.Output<FirehoseDeliveryStreamSplunkConfiguration?> splunkConfiguration;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<String> versionId;

  /// Creates a new [FirehoseDeliveryStream].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FirehoseDeliveryStream]. {@macro pulumi_kinesis_firehose_delivery_stream_firehose_delivery_stream_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FirehoseDeliveryStream(
    String name, {
    FirehoseDeliveryStreamArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:kinesis/firehoseDeliveryStream:FirehoseDeliveryStream',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    destination = registerOutput<String>('destination');
    destinationId = registerOutput<String>('destinationId');
    elasticsearchConfiguration = registerOutput<FirehoseDeliveryStreamElasticsearchConfiguration?>('elasticsearchConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FirehoseDeliveryStreamElasticsearchConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    extendedS3Configuration = registerOutput<FirehoseDeliveryStreamExtendedS3Configuration?>('extendedS3Configuration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FirehoseDeliveryStreamExtendedS3Configuration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    httpEndpointConfiguration = registerOutput<FirehoseDeliveryStreamHttpEndpointConfiguration?>('httpEndpointConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FirehoseDeliveryStreamHttpEndpointConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    icebergConfiguration = registerOutput<FirehoseDeliveryStreamIcebergConfiguration?>('icebergConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FirehoseDeliveryStreamIcebergConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kinesisSourceConfiguration = registerOutput<FirehoseDeliveryStreamKinesisSourceConfiguration?>('kinesisSourceConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FirehoseDeliveryStreamKinesisSourceConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    mskSourceConfiguration = registerOutput<FirehoseDeliveryStreamMskSourceConfiguration?>('mskSourceConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FirehoseDeliveryStreamMskSourceConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    opensearchConfiguration = registerOutput<FirehoseDeliveryStreamOpensearchConfiguration?>('opensearchConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FirehoseDeliveryStreamOpensearchConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    opensearchserverlessConfiguration = registerOutput<FirehoseDeliveryStreamOpensearchserverlessConfiguration?>('opensearchserverlessConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FirehoseDeliveryStreamOpensearchserverlessConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    redshiftConfiguration = registerOutput<FirehoseDeliveryStreamRedshiftConfiguration?>('redshiftConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FirehoseDeliveryStreamRedshiftConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    serverSideEncryption = registerOutput<FirehoseDeliveryStreamServerSideEncryption?>('serverSideEncryption', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FirehoseDeliveryStreamServerSideEncryption.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    snowflakeConfiguration = registerOutput<FirehoseDeliveryStreamSnowflakeConfiguration?>('snowflakeConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FirehoseDeliveryStreamSnowflakeConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    splunkConfiguration = registerOutput<FirehoseDeliveryStreamSplunkConfiguration?>('splunkConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FirehoseDeliveryStreamSplunkConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    versionId = registerOutput<String>('versionId');
  }

  /// Gets an existing [FirehoseDeliveryStream] resource's state with the given [name] and [id].
  static FirehoseDeliveryStream get(
    String name,
    pulumi.Input<String> id, {
    FirehoseDeliveryStreamState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return FirehoseDeliveryStream._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  FirehoseDeliveryStream._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:kinesis/firehoseDeliveryStream:FirehoseDeliveryStream',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    destination = registerOutput<String>('destination');
    destinationId = registerOutput<String>('destinationId');
    elasticsearchConfiguration = registerOutput<FirehoseDeliveryStreamElasticsearchConfiguration?>('elasticsearchConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FirehoseDeliveryStreamElasticsearchConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    extendedS3Configuration = registerOutput<FirehoseDeliveryStreamExtendedS3Configuration?>('extendedS3Configuration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FirehoseDeliveryStreamExtendedS3Configuration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    httpEndpointConfiguration = registerOutput<FirehoseDeliveryStreamHttpEndpointConfiguration?>('httpEndpointConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FirehoseDeliveryStreamHttpEndpointConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    icebergConfiguration = registerOutput<FirehoseDeliveryStreamIcebergConfiguration?>('icebergConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FirehoseDeliveryStreamIcebergConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kinesisSourceConfiguration = registerOutput<FirehoseDeliveryStreamKinesisSourceConfiguration?>('kinesisSourceConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FirehoseDeliveryStreamKinesisSourceConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    mskSourceConfiguration = registerOutput<FirehoseDeliveryStreamMskSourceConfiguration?>('mskSourceConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FirehoseDeliveryStreamMskSourceConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    opensearchConfiguration = registerOutput<FirehoseDeliveryStreamOpensearchConfiguration?>('opensearchConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FirehoseDeliveryStreamOpensearchConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    opensearchserverlessConfiguration = registerOutput<FirehoseDeliveryStreamOpensearchserverlessConfiguration?>('opensearchserverlessConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FirehoseDeliveryStreamOpensearchserverlessConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    redshiftConfiguration = registerOutput<FirehoseDeliveryStreamRedshiftConfiguration?>('redshiftConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FirehoseDeliveryStreamRedshiftConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    serverSideEncryption = registerOutput<FirehoseDeliveryStreamServerSideEncryption?>('serverSideEncryption', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FirehoseDeliveryStreamServerSideEncryption.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    snowflakeConfiguration = registerOutput<FirehoseDeliveryStreamSnowflakeConfiguration?>('snowflakeConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FirehoseDeliveryStreamSnowflakeConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    splunkConfiguration = registerOutput<FirehoseDeliveryStreamSplunkConfiguration?>('splunkConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FirehoseDeliveryStreamSplunkConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    versionId = registerOutput<String>('versionId');
  }

  /// Creates a typed reference to an existing [FirehoseDeliveryStream] resource.
  FirehoseDeliveryStream.reference(String urn)
    : super(
        'aws:kinesis/firehoseDeliveryStream:FirehoseDeliveryStream',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    destination = registerOutput<String>('destination');
    destinationId = registerOutput<String>('destinationId');
    elasticsearchConfiguration = registerOutput<FirehoseDeliveryStreamElasticsearchConfiguration?>('elasticsearchConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FirehoseDeliveryStreamElasticsearchConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    extendedS3Configuration = registerOutput<FirehoseDeliveryStreamExtendedS3Configuration?>('extendedS3Configuration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FirehoseDeliveryStreamExtendedS3Configuration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    httpEndpointConfiguration = registerOutput<FirehoseDeliveryStreamHttpEndpointConfiguration?>('httpEndpointConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FirehoseDeliveryStreamHttpEndpointConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    icebergConfiguration = registerOutput<FirehoseDeliveryStreamIcebergConfiguration?>('icebergConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FirehoseDeliveryStreamIcebergConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kinesisSourceConfiguration = registerOutput<FirehoseDeliveryStreamKinesisSourceConfiguration?>('kinesisSourceConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FirehoseDeliveryStreamKinesisSourceConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    mskSourceConfiguration = registerOutput<FirehoseDeliveryStreamMskSourceConfiguration?>('mskSourceConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FirehoseDeliveryStreamMskSourceConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    opensearchConfiguration = registerOutput<FirehoseDeliveryStreamOpensearchConfiguration?>('opensearchConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FirehoseDeliveryStreamOpensearchConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    opensearchserverlessConfiguration = registerOutput<FirehoseDeliveryStreamOpensearchserverlessConfiguration?>('opensearchserverlessConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FirehoseDeliveryStreamOpensearchserverlessConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    redshiftConfiguration = registerOutput<FirehoseDeliveryStreamRedshiftConfiguration?>('redshiftConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FirehoseDeliveryStreamRedshiftConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    serverSideEncryption = registerOutput<FirehoseDeliveryStreamServerSideEncryption?>('serverSideEncryption', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FirehoseDeliveryStreamServerSideEncryption.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    snowflakeConfiguration = registerOutput<FirehoseDeliveryStreamSnowflakeConfiguration?>('snowflakeConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FirehoseDeliveryStreamSnowflakeConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    splunkConfiguration = registerOutput<FirehoseDeliveryStreamSplunkConfiguration?>('splunkConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FirehoseDeliveryStreamSplunkConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    versionId = registerOutput<String>('versionId');
  }
}
