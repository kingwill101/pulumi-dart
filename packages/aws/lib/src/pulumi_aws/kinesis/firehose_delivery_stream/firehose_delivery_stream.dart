import 'package:pulumi/pulumi.dart';
import '../firehose_delivery_stream_elasticsearch_configuration/firehose_delivery_stream_elasticsearch_configuration.dart';
import '../firehose_delivery_stream_extended_s3_configuration/firehose_delivery_stream_extended_s3_configuration.dart';
import '../firehose_delivery_stream_http_endpoint_configuration/firehose_delivery_stream_http_endpoint_configuration.dart';
import '../firehose_delivery_stream_iceberg_configuration/firehose_delivery_stream_iceberg_configuration.dart';
import '../firehose_delivery_stream_kinesis_source_configuration/firehose_delivery_stream_kinesis_source_configuration.dart';
import '../firehose_delivery_stream_msk_source_configuration/firehose_delivery_stream_msk_source_configuration.dart';
import '../firehose_delivery_stream_opensearch_configuration/firehose_delivery_stream_opensearch_configuration.dart';
import '../firehose_delivery_stream_opensearchserverless_configuration/firehose_delivery_stream_opensearchserverless_configuration.dart';
import '../firehose_delivery_stream_redshift_configuration/firehose_delivery_stream_redshift_configuration.dart';
import '../firehose_delivery_stream_server_side_encryption/firehose_delivery_stream_server_side_encryption.dart';
import '../firehose_delivery_stream_snowflake_configuration/firehose_delivery_stream_snowflake_configuration.dart';
import '../firehose_delivery_stream_splunk_configuration/firehose_delivery_stream_splunk_configuration.dart';
import 'firehose_delivery_stream_args.dart';

/// Provides a Kinesis Firehose Delivery Stream resource. Amazon Kinesis Firehose is a fully managed, elastic service to easily deliver real-time data streams to destinations such as Amazon S3 , Amazon Redshift and Snowflake.
///
/// For more details, see the [Amazon Kinesis Firehose Documentation](https://aws.amazon.com/documentation/firehose/).
///
/// ## Example Usage
///
/// ### Extended S3 Destination
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const bucket = new aws.s3.Bucket("bucket", {bucket: "tf-test-bucket"});
/// const firehoseAssumeRole = aws.iam.getPolicyDocument({
/// statements: [{
/// effect: "Allow",
/// principals: [{
/// type: "Service",
/// identifiers: ["firehose.amazonaws.com"],
/// }],
/// actions: ["sts:AssumeRole"],
/// }],
/// });
/// const firehoseRole = new aws.iam.Role("firehose_role", {
/// name: "firehose_test_role",
/// assumeRolePolicy: firehoseAssumeRole.then(firehoseAssumeRole => firehoseAssumeRole.json),
/// });
/// const lambdaAssumeRole = aws.iam.getPolicyDocument({
/// statements: [{
/// effect: "Allow",
/// principals: [{
/// type: "Service",
/// identifiers: ["lambda.amazonaws.com"],
/// }],
/// actions: ["sts:AssumeRole"],
/// }],
/// });
/// const lambdaIam = new aws.iam.Role("lambda_iam", {
/// name: "lambda_iam",
/// assumeRolePolicy: lambdaAssumeRole.then(lambdaAssumeRole => lambdaAssumeRole.json),
/// });
/// const lambdaProcessor = new aws.lambda.Function("lambda_processor", {
/// code: new pulumi.asset.FileArchive("lambda.zip"),
/// name: "firehose_lambda_processor",
/// role: lambdaIam.arn,
/// handler: "exports.handler",
/// runtime: aws.lambda.Runtime.NodeJS20dX,
/// });
/// const extendedS3Stream = new aws.kinesis.FirehoseDeliveryStream("extended_s3_stream", {
/// name: "kinesis-firehose-extended-s3-test-stream",
/// destination: "extended_s3",
/// extendedS3Configuration: {
/// roleArn: firehoseRole.arn,
/// bucketArn: bucket.arn,
/// processingConfiguration: {
/// enabled: true,
/// processors: [{
/// type: "Lambda",
/// parameters: [{
/// parameterName: "LambdaArn",
/// parameterValue: pulumi.interpolate`${lambdaProcessor.arn}:$LATEST`,
/// }],
/// }],
/// },
/// },
/// });
/// const bucketAcl = new aws.s3.BucketAcl("bucket_acl", {
/// bucket: bucket.id,
/// acl: "private",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// bucket = aws.s3.Bucket("bucket", bucket="tf-test-bucket")
/// firehose_assume_role = aws.iam.get_policy_document(statements=[{
/// "effect": "Allow",
/// "principals": [{
/// "type": "Service",
/// "identifiers": ["firehose.amazonaws.com"],
/// }],
/// "actions": ["sts:AssumeRole"],
/// }])
/// firehose_role = aws.iam.Role("firehose_role",
/// name="firehose_test_role",
/// assume_role_policy=firehose_assume_role.json)
/// lambda_assume_role = aws.iam.get_policy_document(statements=[{
/// "effect": "Allow",
/// "principals": [{
/// "type": "Service",
/// "identifiers": ["lambda.amazonaws.com"],
/// }],
/// "actions": ["sts:AssumeRole"],
/// }])
/// lambda_iam = aws.iam.Role("lambda_iam",
/// name="lambda_iam",
/// assume_role_policy=lambda_assume_role.json)
/// lambda_processor = aws.lambda_.Function("lambda_processor",
/// code=pulumi.FileArchive("lambda.zip"),
/// name="firehose_lambda_processor",
/// role=lambda_iam.arn,
/// handler="exports.handler",
/// runtime=aws.lambda_.Runtime.NODE_JS20D_X)
/// extended_s3_stream = aws.kinesis.FirehoseDeliveryStream("extended_s3_stream",
/// name="kinesis-firehose-extended-s3-test-stream",
/// destination="extended_s3",
/// extended_s3_configuration={
/// "role_arn": firehose_role.arn,
/// "bucket_arn": bucket.arn,
/// "processing_configuration": {
/// "enabled": True,
/// "processors": [{
/// "type": "Lambda",
/// "parameters": [{
/// "parameter_name": "LambdaArn",
/// "parameter_value": lambda_processor.arn.apply(lambda arn: f"{arn}:$LATEST"),
/// }],
/// }],
/// },
/// })
/// bucket_acl = aws.s3.BucketAcl("bucket_acl",
/// bucket=bucket.id,
/// acl="private")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var bucket = new Aws.S3.Bucket("bucket", new()
/// {
/// BucketName = "tf-test-bucket",
/// });
///
/// var firehoseAssumeRole = Aws.Iam.GetPolicyDocument.Invoke(new()
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
/// "firehose.amazonaws.com",
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
/// var firehoseRole = new Aws.Iam.Role("firehose_role", new()
/// {
/// Name = "firehose_test_role",
/// AssumeRolePolicy = firehoseAssumeRole.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
/// });
///
/// var lambdaAssumeRole = Aws.Iam.GetPolicyDocument.Invoke(new()
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
/// "lambda.amazonaws.com",
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
/// var lambdaIam = new Aws.Iam.Role("lambda_iam", new()
/// {
/// Name = "lambda_iam",
/// AssumeRolePolicy = lambdaAssumeRole.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
/// });
///
/// var lambdaProcessor = new Aws.Lambda.Function("lambda_processor", new()
/// {
/// Code = new FileArchive("lambda.zip"),
/// Name = "firehose_lambda_processor",
/// Role = lambdaIam.Arn,
/// Handler = "exports.handler",
/// Runtime = Aws.Lambda.Runtime.NodeJS20dX,
/// });
///
/// var extendedS3Stream = new Aws.Kinesis.FirehoseDeliveryStream("extended_s3_stream", new()
/// {
/// Name = "kinesis-firehose-extended-s3-test-stream",
/// Destination = "extended_s3",
/// ExtendedS3Configuration = new Aws.Kinesis.Inputs.FirehoseDeliveryStreamExtendedS3ConfigurationArgs
/// {
/// RoleArn = firehoseRole.Arn,
/// BucketArn = bucket.Arn,
/// ProcessingConfiguration = new Aws.Kinesis.Inputs.FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationArgs
/// {
/// Enabled = true,
/// Processors = new[]
/// {
/// new Aws.Kinesis.Inputs.FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationProcessorArgs
/// {
/// Type = "Lambda",
/// Parameters = new[]
/// {
/// new Aws.Kinesis.Inputs.FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationProcessorParameterArgs
/// {
/// ParameterName = "LambdaArn",
/// ParameterValue = lambdaProcessor.Arn.Apply(arn => $"{arn}:$LATEST"),
/// },
/// },
/// },
/// },
/// },
/// },
/// });
///
/// var bucketAcl = new Aws.S3.BucketAcl("bucket_acl", new()
/// {
/// Bucket = bucket.Id,
/// Acl = "private",
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kinesis"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// bucket, err := s3.NewBucket(ctx, "bucket", &s3.BucketArgs{
/// Bucket: pulumi.String("tf-test-bucket"),
/// })
/// if err != nil {
/// return err
/// }
/// firehoseAssumeRole, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// Statements: []iam.GetPolicyDocumentStatement{
/// {
/// Effect: pulumi.StringRef("Allow"),
/// Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// {
/// Type: "Service",
/// Identifiers: []string{
/// "firehose.amazonaws.com",
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
/// firehoseRole, err := iam.NewRole(ctx, "firehose_role", &iam.RoleArgs{
/// Name:             pulumi.String("firehose_test_role"),
/// AssumeRolePolicy: pulumi.String(firehoseAssumeRole.Json),
/// })
/// if err != nil {
/// return err
/// }
/// lambdaAssumeRole, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// Statements: []iam.GetPolicyDocumentStatement{
/// {
/// Effect: pulumi.StringRef("Allow"),
/// Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// {
/// Type: "Service",
/// Identifiers: []string{
/// "lambda.amazonaws.com",
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
/// lambdaIam, err := iam.NewRole(ctx, "lambda_iam", &iam.RoleArgs{
/// Name:             pulumi.String("lambda_iam"),
/// AssumeRolePolicy: pulumi.String(lambdaAssumeRole.Json),
/// })
/// if err != nil {
/// return err
/// }
/// lambdaProcessor, err := lambda.NewFunction(ctx, "lambda_processor", &lambda.FunctionArgs{
/// Code:    pulumi.NewFileArchive("lambda.zip"),
/// Name:    pulumi.String("firehose_lambda_processor"),
/// Role:    lambdaIam.Arn,
/// Handler: pulumi.String("exports.handler"),
/// Runtime: pulumi.String(lambda.RuntimeNodeJS20dX),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = kinesis.NewFirehoseDeliveryStream(ctx, "extended_s3_stream", &kinesis.FirehoseDeliveryStreamArgs{
/// Name:        pulumi.String("kinesis-firehose-extended-s3-test-stream"),
/// Destination: pulumi.String("extended_s3"),
/// ExtendedS3Configuration: &kinesis.FirehoseDeliveryStreamExtendedS3ConfigurationArgs{
/// RoleArn:   firehoseRole.Arn,
/// BucketArn: bucket.Arn,
/// ProcessingConfiguration: &kinesis.FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationArgs{
/// Enabled: pulumi.Bool(true),
/// Processors: kinesis.FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationProcessorArray{
/// &kinesis.FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationProcessorArgs{
/// Type: pulumi.String("Lambda"),
/// Parameters: kinesis.FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationProcessorParameterArray{
/// &kinesis.FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationProcessorParameterArgs{
/// ParameterName: pulumi.String("LambdaArn"),
/// ParameterValue: lambdaProcessor.Arn.ApplyT(func(arn string) (string, error) {
/// return fmt.Sprintf("%v:$LATEST", arn), nil
/// }).(pulumi.StringOutput),
/// },
/// },
/// },
/// },
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = s3.NewBucketAcl(ctx, "bucket_acl", &s3.BucketAclArgs{
/// Bucket: bucket.ID(),
/// Acl:    pulumi.String("private"),
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
/// import com.pulumi.aws.s3.Bucket;
/// import com.pulumi.aws.s3.BucketArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.lambda.Function;
/// import com.pulumi.aws.lambda.FunctionArgs;
/// import com.pulumi.aws.kinesis.FirehoseDeliveryStream;
/// import com.pulumi.aws.kinesis.FirehoseDeliveryStreamArgs;
/// import com.pulumi.aws.kinesis.inputs.FirehoseDeliveryStreamExtendedS3ConfigurationArgs;
/// import com.pulumi.aws.kinesis.inputs.FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationArgs;
/// import com.pulumi.aws.s3.BucketAcl;
/// import com.pulumi.aws.s3.BucketAclArgs;
/// import com.pulumi.asset.FileArchive;
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
/// var bucket = new Bucket("bucket", BucketArgs.builder()
/// .bucket("tf-test-bucket")
/// .build());
///
/// final var firehoseAssumeRole = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
/// .statements(GetPolicyDocumentStatementArgs.builder()
/// .effect("Allow")
/// .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
/// .type("Service")
/// .identifiers("firehose.amazonaws.com")
/// .build())
/// .actions("sts:AssumeRole")
/// .build())
/// .build());
///
/// var firehoseRole = new Role("firehoseRole", RoleArgs.builder()
/// .name("firehose_test_role")
/// .assumeRolePolicy(firehoseAssumeRole.json())
/// .build());
///
/// final var lambdaAssumeRole = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
/// .statements(GetPolicyDocumentStatementArgs.builder()
/// .effect("Allow")
/// .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
/// .type("Service")
/// .identifiers("lambda.amazonaws.com")
/// .build())
/// .actions("sts:AssumeRole")
/// .build())
/// .build());
///
/// var lambdaIam = new Role("lambdaIam", RoleArgs.builder()
/// .name("lambda_iam")
/// .assumeRolePolicy(lambdaAssumeRole.json())
/// .build());
///
/// var lambdaProcessor = new Function("lambdaProcessor", FunctionArgs.builder()
/// .code(new FileArchive("lambda.zip"))
/// .name("firehose_lambda_processor")
/// .role(lambdaIam.arn())
/// .handler("exports.handler")
/// .runtime("nodejs20.x")
/// .build());
///
/// var extendedS3Stream = new FirehoseDeliveryStream("extendedS3Stream", FirehoseDeliveryStreamArgs.builder()
/// .name("kinesis-firehose-extended-s3-test-stream")
/// .destination("extended_s3")
/// .extendedS3Configuration(FirehoseDeliveryStreamExtendedS3ConfigurationArgs.builder()
/// .roleArn(firehoseRole.arn())
/// .bucketArn(bucket.arn())
/// .processingConfiguration(FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationArgs.builder()
/// .enabled(true)
/// .processors(FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationProcessorArgs.builder()
/// .type("Lambda")
/// .parameters(FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationProcessorParameterArgs.builder()
/// .parameterName("LambdaArn")
/// .parameterValue(lambdaProcessor.arn().applyValue(_arn -> String.format("%s:$LATEST", _arn)))
/// .build())
/// .build())
/// .build())
/// .build())
/// .build());
///
/// var bucketAcl = new BucketAcl("bucketAcl", BucketAclArgs.builder()
/// .bucket(bucket.id())
/// .acl("private")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// extendedS3Stream:
/// type: aws:kinesis:FirehoseDeliveryStream
/// name: extended_s3_stream
/// properties:
/// name: kinesis-firehose-extended-s3-test-stream
/// destination: extended_s3
/// extendedS3Configuration:
/// roleArn: ${firehoseRole.arn}
/// bucketArn: ${bucket.arn}
/// processingConfiguration:
/// enabled: 'true'
/// processors:
/// - type: Lambda
/// parameters:
/// - parameterName: LambdaArn
/// parameterValue: ${lambdaProcessor.arn}:$LATEST
/// bucket:
/// type: aws:s3:Bucket
/// properties:
/// bucket: tf-test-bucket
/// bucketAcl:
/// type: aws:s3:BucketAcl
/// name: bucket_acl
/// properties:
/// bucket: ${bucket.id}
/// acl: private
/// firehoseRole:
/// type: aws:iam:Role
/// name: firehose_role
/// properties:
/// name: firehose_test_role
/// assumeRolePolicy: ${firehoseAssumeRole.json}
/// lambdaIam:
/// type: aws:iam:Role
/// name: lambda_iam
/// properties:
/// name: lambda_iam
/// assumeRolePolicy: ${lambdaAssumeRole.json}
/// lambdaProcessor:
/// type: aws:lambda:Function
/// name: lambda_processor
/// properties:
/// code:
/// fn::FileArchive: lambda.zip
/// name: firehose_lambda_processor
/// role: ${lambdaIam.arn}
/// handler: exports.handler
/// runtime: nodejs20.x
/// variables:
/// firehoseAssumeRole:
/// fn::invoke:
/// function: aws:iam:getPolicyDocument
/// arguments:
/// statements:
/// - effect: Allow
/// principals:
/// - type: Service
/// identifiers:
/// - firehose.amazonaws.com
/// actions:
/// - sts:AssumeRole
/// lambdaAssumeRole:
/// fn::invoke:
/// function: aws:iam:getPolicyDocument
/// arguments:
/// statements:
/// - effect: Allow
/// principals:
/// - type: Service
/// identifiers:
/// - lambda.amazonaws.com
/// actions:
/// - sts:AssumeRole
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Extended S3 Destination with dynamic partitioning
///
/// These examples use built-in Firehose functionality, rather than requiring a lambda.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const extendedS3Stream = new aws.kinesis.FirehoseDeliveryStream("extended_s3_stream", {
/// name: "kinesis-firehose-extended-s3-test-stream",
/// destination: "extended_s3",
/// extendedS3Configuration: {
/// roleArn: firehoseRole.arn,
/// bucketArn: bucket.arn,
/// bufferingSize: 64,
/// dynamicPartitioningConfiguration: {
/// enabled: true,
/// },
/// prefix: "data/customer_id=!{partitionKeyFromQuery:customer_id}/year=!{timestamp:yyyy}/month=!{timestamp:MM}/day=!{timestamp:dd}/hour=!{timestamp:HH}/",
/// errorOutputPrefix: "errors/year=!{timestamp:yyyy}/month=!{timestamp:MM}/day=!{timestamp:dd}/hour=!{timestamp:HH}/!{firehose:error-output-type}/",
/// processingConfiguration: {
/// enabled: true,
/// processors: [
/// {
/// type: "RecordDeAggregation",
/// parameters: [{
/// parameterName: "SubRecordType",
/// parameterValue: "JSON",
/// }],
/// },
/// {
/// type: "AppendDelimiterToRecord",
/// },
/// {
/// type: "MetadataExtraction",
/// parameters: [
/// {
/// parameterName: "JsonParsingEngine",
/// parameterValue: "JQ-1.6",
/// },
/// {
/// parameterName: "MetadataExtractionQuery",
/// parameterValue: "{customer_id:.customer_id}",
/// },
/// ],
/// },
/// ],
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// extended_s3_stream = aws.kinesis.FirehoseDeliveryStream("extended_s3_stream",
/// name="kinesis-firehose-extended-s3-test-stream",
/// destination="extended_s3",
/// extended_s3_configuration={
/// "role_arn": firehose_role["arn"],
/// "bucket_arn": bucket["arn"],
/// "buffering_size": 64,
/// "dynamic_partitioning_configuration": {
/// "enabled": True,
/// },
/// "prefix": "data/customer_id=!{partitionKeyFromQuery:customer_id}/year=!{timestamp:yyyy}/month=!{timestamp:MM}/day=!{timestamp:dd}/hour=!{timestamp:HH}/",
/// "error_output_prefix": "errors/year=!{timestamp:yyyy}/month=!{timestamp:MM}/day=!{timestamp:dd}/hour=!{timestamp:HH}/!{firehose:error-output-type}/",
/// "processing_configuration": {
/// "enabled": True,
/// "processors": [
/// {
/// "type": "RecordDeAggregation",
/// "parameters": [{
/// "parameter_name": "SubRecordType",
/// "parameter_value": "JSON",
/// }],
/// },
/// {
/// "type": "AppendDelimiterToRecord",
/// },
/// {
/// "type": "MetadataExtraction",
/// "parameters": [
/// {
/// "parameter_name": "JsonParsingEngine",
/// "parameter_value": "JQ-1.6",
/// },
/// {
/// "parameter_name": "MetadataExtractionQuery",
/// "parameter_value": "{customer_id:.customer_id}",
/// },
/// ],
/// },
/// ],
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
/// var extendedS3Stream = new Aws.Kinesis.FirehoseDeliveryStream("extended_s3_stream", new()
/// {
/// Name = "kinesis-firehose-extended-s3-test-stream",
/// Destination = "extended_s3",
/// ExtendedS3Configuration = new Aws.Kinesis.Inputs.FirehoseDeliveryStreamExtendedS3ConfigurationArgs
/// {
/// RoleArn = firehoseRole.Arn,
/// BucketArn = bucket.Arn,
/// BufferingSize = 64,
/// DynamicPartitioningConfiguration = new Aws.Kinesis.Inputs.FirehoseDeliveryStreamExtendedS3ConfigurationDynamicPartitioningConfigurationArgs
/// {
/// Enabled = true,
/// },
/// Prefix = "data/customer_id=!{partitionKeyFromQuery:customer_id}/year=!{timestamp:yyyy}/month=!{timestamp:MM}/day=!{timestamp:dd}/hour=!{timestamp:HH}/",
/// ErrorOutputPrefix = "errors/year=!{timestamp:yyyy}/month=!{timestamp:MM}/day=!{timestamp:dd}/hour=!{timestamp:HH}/!{firehose:error-output-type}/",
/// ProcessingConfiguration = new Aws.Kinesis.Inputs.FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationArgs
/// {
/// Enabled = true,
/// Processors = new[]
/// {
/// new Aws.Kinesis.Inputs.FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationProcessorArgs
/// {
/// Type = "RecordDeAggregation",
/// Parameters = new[]
/// {
/// new Aws.Kinesis.Inputs.FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationProcessorParameterArgs
/// {
/// ParameterName = "SubRecordType",
/// ParameterValue = "JSON",
/// },
/// },
/// },
/// new Aws.Kinesis.Inputs.FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationProcessorArgs
/// {
/// Type = "AppendDelimiterToRecord",
/// },
/// new Aws.Kinesis.Inputs.FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationProcessorArgs
/// {
/// Type = "MetadataExtraction",
/// Parameters = new[]
/// {
/// new Aws.Kinesis.Inputs.FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationProcessorParameterArgs
/// {
/// ParameterName = "JsonParsingEngine",
/// ParameterValue = "JQ-1.6",
/// },
/// new Aws.Kinesis.Inputs.FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationProcessorParameterArgs
/// {
/// ParameterName = "MetadataExtractionQuery",
/// ParameterValue = "{customer_id:.customer_id}",
/// },
/// },
/// },
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kinesis"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := kinesis.NewFirehoseDeliveryStream(ctx, "extended_s3_stream", &kinesis.FirehoseDeliveryStreamArgs{
/// Name:        pulumi.String("kinesis-firehose-extended-s3-test-stream"),
/// Destination: pulumi.String("extended_s3"),
/// ExtendedS3Configuration: &kinesis.FirehoseDeliveryStreamExtendedS3ConfigurationArgs{
/// RoleArn:       pulumi.Any(firehoseRole.Arn),
/// BucketArn:     pulumi.Any(bucket.Arn),
/// BufferingSize: pulumi.Int(64),
/// DynamicPartitioningConfiguration: &kinesis.FirehoseDeliveryStreamExtendedS3ConfigurationDynamicPartitioningConfigurationArgs{
/// Enabled: pulumi.Bool(true),
/// },
/// Prefix:            pulumi.String("data/customer_id=!{partitionKeyFromQuery:customer_id}/year=!{timestamp:yyyy}/month=!{timestamp:MM}/day=!{timestamp:dd}/hour=!{timestamp:HH}/"),
/// ErrorOutputPrefix: pulumi.String("errors/year=!{timestamp:yyyy}/month=!{timestamp:MM}/day=!{timestamp:dd}/hour=!{timestamp:HH}/!{firehose:error-output-type}/"),
/// ProcessingConfiguration: &kinesis.FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationArgs{
/// Enabled: pulumi.Bool(true),
/// Processors: kinesis.FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationProcessorArray{
/// &kinesis.FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationProcessorArgs{
/// Type: pulumi.String("RecordDeAggregation"),
/// Parameters: kinesis.FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationProcessorParameterArray{
/// &kinesis.FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationProcessorParameterArgs{
/// ParameterName:  pulumi.String("SubRecordType"),
/// ParameterValue: pulumi.String("JSON"),
/// },
/// },
/// },
/// &kinesis.FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationProcessorArgs{
/// Type: pulumi.String("AppendDelimiterToRecord"),
/// },
/// &kinesis.FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationProcessorArgs{
/// Type: pulumi.String("MetadataExtraction"),
/// Parameters: kinesis.FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationProcessorParameterArray{
/// &kinesis.FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationProcessorParameterArgs{
/// ParameterName:  pulumi.String("JsonParsingEngine"),
/// ParameterValue: pulumi.String("JQ-1.6"),
/// },
/// &kinesis.FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationProcessorParameterArgs{
/// ParameterName:  pulumi.String("MetadataExtractionQuery"),
/// ParameterValue: pulumi.String("{customer_id:.customer_id}"),
/// },
/// },
/// },
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
/// import com.pulumi.aws.kinesis.FirehoseDeliveryStream;
/// import com.pulumi.aws.kinesis.FirehoseDeliveryStreamArgs;
/// import com.pulumi.aws.kinesis.inputs.FirehoseDeliveryStreamExtendedS3ConfigurationArgs;
/// import com.pulumi.aws.kinesis.inputs.FirehoseDeliveryStreamExtendedS3ConfigurationDynamicPartitioningConfigurationArgs;
/// import com.pulumi.aws.kinesis.inputs.FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationArgs;
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
/// var extendedS3Stream = new FirehoseDeliveryStream("extendedS3Stream", FirehoseDeliveryStreamArgs.builder()
/// .name("kinesis-firehose-extended-s3-test-stream")
/// .destination("extended_s3")
/// .extendedS3Configuration(FirehoseDeliveryStreamExtendedS3ConfigurationArgs.builder()
/// .roleArn(firehoseRole.arn())
/// .bucketArn(bucket.arn())
/// .bufferingSize(64)
/// .dynamicPartitioningConfiguration(FirehoseDeliveryStreamExtendedS3ConfigurationDynamicPartitioningConfigurationArgs.builder()
/// .enabled(true)
/// .build())
/// .prefix("data/customer_id=!{partitionKeyFromQuery:customer_id}/year=!{timestamp:yyyy}/month=!{timestamp:MM}/day=!{timestamp:dd}/hour=!{timestamp:HH}/")
/// .errorOutputPrefix("errors/year=!{timestamp:yyyy}/month=!{timestamp:MM}/day=!{timestamp:dd}/hour=!{timestamp:HH}/!{firehose:error-output-type}/")
/// .processingConfiguration(FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationArgs.builder()
/// .enabled(true)
/// .processors(
/// FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationProcessorArgs.builder()
/// .type("RecordDeAggregation")
/// .parameters(FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationProcessorParameterArgs.builder()
/// .parameterName("SubRecordType")
/// .parameterValue("JSON")
/// .build())
/// .build(),
/// FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationProcessorArgs.builder()
/// .type("AppendDelimiterToRecord")
/// .build(),
/// FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationProcessorArgs.builder()
/// .type("MetadataExtraction")
/// .parameters(
/// FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationProcessorParameterArgs.builder()
/// .parameterName("JsonParsingEngine")
/// .parameterValue("JQ-1.6")
/// .build(),
/// FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationProcessorParameterArgs.builder()
/// .parameterName("MetadataExtractionQuery")
/// .parameterValue("{customer_id:.customer_id}")
/// .build())
/// .build())
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// extendedS3Stream:
/// type: aws:kinesis:FirehoseDeliveryStream
/// name: extended_s3_stream
/// properties:
/// name: kinesis-firehose-extended-s3-test-stream
/// destination: extended_s3
/// extendedS3Configuration:
/// roleArn: ${firehoseRole.arn}
/// bucketArn: ${bucket.arn}
/// bufferingSize: 64
/// dynamicPartitioningConfiguration:
/// enabled: 'true'
/// prefix: data/customer_id=!{partitionKeyFromQuery:customer_id}/year=!{timestamp:yyyy}/month=!{timestamp:MM}/day=!{timestamp:dd}/hour=!{timestamp:HH}/
/// errorOutputPrefix: errors/year=!{timestamp:yyyy}/month=!{timestamp:MM}/day=!{timestamp:dd}/hour=!{timestamp:HH}/!{firehose:error-output-type}/
/// processingConfiguration:
/// enabled: 'true'
/// processors:
/// - type: RecordDeAggregation
/// parameters:
/// - parameterName: SubRecordType
/// parameterValue: JSON
/// - type: AppendDelimiterToRecord
/// - type: MetadataExtraction
/// parameters:
/// - parameterName: JsonParsingEngine
/// parameterValue: JQ-1.6
/// - parameterName: MetadataExtractionQuery
/// parameterValue: '{customer_id:.customer_id}'
/// ```
/// <!--End PulumiCodeChooser -->
///
/// Multiple Dynamic Partitioning Keys (maximum of 50) can be added by comma separating the <span pulumi-lang-nodejs="`parameterValue`" pulumi-lang-dotnet="`ParameterValue`" pulumi-lang-go="`parameterValue`" pulumi-lang-python="`parameter_value`" pulumi-lang-yaml="`parameterValue`" pulumi-lang-java="`parameterValue`">`parameter_value`</span>.
///
/// The following example adds the Dynamic Partitioning Keys: <span pulumi-lang-nodejs="`storeId`" pulumi-lang-dotnet="`StoreId`" pulumi-lang-go="`storeId`" pulumi-lang-python="`store_id`" pulumi-lang-yaml="`storeId`" pulumi-lang-java="`storeId`">`store_id`</span> and <span pulumi-lang-nodejs="`customerId`" pulumi-lang-dotnet="`CustomerId`" pulumi-lang-go="`customerId`" pulumi-lang-python="`customer_id`" pulumi-lang-yaml="`customerId`" pulumi-lang-java="`customerId`">`customer_id`</span> to the S3 prefix.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const extendedS3Stream = new aws.kinesis.FirehoseDeliveryStream("extended_s3_stream", {
/// name: "kinesis-firehose-extended-s3-test-stream",
/// destination: "extended_s3",
/// extendedS3Configuration: {
/// roleArn: firehoseRole.arn,
/// bucketArn: bucket.arn,
/// bufferingSize: 64,
/// dynamicPartitioningConfiguration: {
/// enabled: true,
/// },
/// prefix: "data/store_id=!{partitionKeyFromQuery:store_id}/customer_id=!{partitionKeyFromQuery:customer_id}/year=!{timestamp:yyyy}/month=!{timestamp:MM}/day=!{timestamp:dd}/hour=!{timestamp:HH}/",
/// errorOutputPrefix: "errors/year=!{timestamp:yyyy}/month=!{timestamp:MM}/day=!{timestamp:dd}/hour=!{timestamp:HH}/!{firehose:error-output-type}/",
/// processingConfiguration: {
/// enabled: true,
/// processors: [{
/// type: "MetadataExtraction",
/// parameters: [
/// {
/// parameterName: "JsonParsingEngine",
/// parameterValue: "JQ-1.6",
/// },
/// {
/// parameterName: "MetadataExtractionQuery",
/// parameterValue: "{store_id:.store_id,customer_id:.customer_id}",
/// },
/// ],
/// }],
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// extended_s3_stream = aws.kinesis.FirehoseDeliveryStream("extended_s3_stream",
/// name="kinesis-firehose-extended-s3-test-stream",
/// destination="extended_s3",
/// extended_s3_configuration={
/// "role_arn": firehose_role["arn"],
/// "bucket_arn": bucket["arn"],
/// "buffering_size": 64,
/// "dynamic_partitioning_configuration": {
/// "enabled": True,
/// },
/// "prefix": "data/store_id=!{partitionKeyFromQuery:store_id}/customer_id=!{partitionKeyFromQuery:customer_id}/year=!{timestamp:yyyy}/month=!{timestamp:MM}/day=!{timestamp:dd}/hour=!{timestamp:HH}/",
/// "error_output_prefix": "errors/year=!{timestamp:yyyy}/month=!{timestamp:MM}/day=!{timestamp:dd}/hour=!{timestamp:HH}/!{firehose:error-output-type}/",
/// "processing_configuration": {
/// "enabled": True,
/// "processors": [{
/// "type": "MetadataExtraction",
/// "parameters": [
/// {
/// "parameter_name": "JsonParsingEngine",
/// "parameter_value": "JQ-1.6",
/// },
/// {
/// "parameter_name": "MetadataExtractionQuery",
/// "parameter_value": "{store_id:.store_id,customer_id:.customer_id}",
/// },
/// ],
/// }],
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
/// var extendedS3Stream = new Aws.Kinesis.FirehoseDeliveryStream("extended_s3_stream", new()
/// {
/// Name = "kinesis-firehose-extended-s3-test-stream",
/// Destination = "extended_s3",
/// ExtendedS3Configuration = new Aws.Kinesis.Inputs.FirehoseDeliveryStreamExtendedS3ConfigurationArgs
/// {
/// RoleArn = firehoseRole.Arn,
/// BucketArn = bucket.Arn,
/// BufferingSize = 64,
/// DynamicPartitioningConfiguration = new Aws.Kinesis.Inputs.FirehoseDeliveryStreamExtendedS3ConfigurationDynamicPartitioningConfigurationArgs
/// {
/// Enabled = true,
/// },
/// Prefix = "data/store_id=!{partitionKeyFromQuery:store_id}/customer_id=!{partitionKeyFromQuery:customer_id}/year=!{timestamp:yyyy}/month=!{timestamp:MM}/day=!{timestamp:dd}/hour=!{timestamp:HH}/",
/// ErrorOutputPrefix = "errors/year=!{timestamp:yyyy}/month=!{timestamp:MM}/day=!{timestamp:dd}/hour=!{timestamp:HH}/!{firehose:error-output-type}/",
/// ProcessingConfiguration = new Aws.Kinesis.Inputs.FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationArgs
/// {
/// Enabled = true,
/// Processors = new[]
/// {
/// new Aws.Kinesis.Inputs.FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationProcessorArgs
/// {
/// Type = "MetadataExtraction",
/// Parameters = new[]
/// {
/// new Aws.Kinesis.Inputs.FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationProcessorParameterArgs
/// {
/// ParameterName = "JsonParsingEngine",
/// ParameterValue = "JQ-1.6",
/// },
/// new Aws.Kinesis.Inputs.FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationProcessorParameterArgs
/// {
/// ParameterName = "MetadataExtractionQuery",
/// ParameterValue = "{store_id:.store_id,customer_id:.customer_id}",
/// },
/// },
/// },
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kinesis"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := kinesis.NewFirehoseDeliveryStream(ctx, "extended_s3_stream", &kinesis.FirehoseDeliveryStreamArgs{
/// Name:        pulumi.String("kinesis-firehose-extended-s3-test-stream"),
/// Destination: pulumi.String("extended_s3"),
/// ExtendedS3Configuration: &kinesis.FirehoseDeliveryStreamExtendedS3ConfigurationArgs{
/// RoleArn:       pulumi.Any(firehoseRole.Arn),
/// BucketArn:     pulumi.Any(bucket.Arn),
/// BufferingSize: pulumi.Int(64),
/// DynamicPartitioningConfiguration: &kinesis.FirehoseDeliveryStreamExtendedS3ConfigurationDynamicPartitioningConfigurationArgs{
/// Enabled: pulumi.Bool(true),
/// },
/// Prefix:            pulumi.String("data/store_id=!{partitionKeyFromQuery:store_id}/customer_id=!{partitionKeyFromQuery:customer_id}/year=!{timestamp:yyyy}/month=!{timestamp:MM}/day=!{timestamp:dd}/hour=!{timestamp:HH}/"),
/// ErrorOutputPrefix: pulumi.String("errors/year=!{timestamp:yyyy}/month=!{timestamp:MM}/day=!{timestamp:dd}/hour=!{timestamp:HH}/!{firehose:error-output-type}/"),
/// ProcessingConfiguration: &kinesis.FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationArgs{
/// Enabled: pulumi.Bool(true),
/// Processors: kinesis.FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationProcessorArray{
/// &kinesis.FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationProcessorArgs{
/// Type: pulumi.String("MetadataExtraction"),
/// Parameters: kinesis.FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationProcessorParameterArray{
/// &kinesis.FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationProcessorParameterArgs{
/// ParameterName:  pulumi.String("JsonParsingEngine"),
/// ParameterValue: pulumi.String("JQ-1.6"),
/// },
/// &kinesis.FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationProcessorParameterArgs{
/// ParameterName:  pulumi.String("MetadataExtractionQuery"),
/// ParameterValue: pulumi.String("{store_id:.store_id,customer_id:.customer_id}"),
/// },
/// },
/// },
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
/// import com.pulumi.aws.kinesis.FirehoseDeliveryStream;
/// import com.pulumi.aws.kinesis.FirehoseDeliveryStreamArgs;
/// import com.pulumi.aws.kinesis.inputs.FirehoseDeliveryStreamExtendedS3ConfigurationArgs;
/// import com.pulumi.aws.kinesis.inputs.FirehoseDeliveryStreamExtendedS3ConfigurationDynamicPartitioningConfigurationArgs;
/// import com.pulumi.aws.kinesis.inputs.FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationArgs;
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
/// var extendedS3Stream = new FirehoseDeliveryStream("extendedS3Stream", FirehoseDeliveryStreamArgs.builder()
/// .name("kinesis-firehose-extended-s3-test-stream")
/// .destination("extended_s3")
/// .extendedS3Configuration(FirehoseDeliveryStreamExtendedS3ConfigurationArgs.builder()
/// .roleArn(firehoseRole.arn())
/// .bucketArn(bucket.arn())
/// .bufferingSize(64)
/// .dynamicPartitioningConfiguration(FirehoseDeliveryStreamExtendedS3ConfigurationDynamicPartitioningConfigurationArgs.builder()
/// .enabled(true)
/// .build())
/// .prefix("data/store_id=!{partitionKeyFromQuery:store_id}/customer_id=!{partitionKeyFromQuery:customer_id}/year=!{timestamp:yyyy}/month=!{timestamp:MM}/day=!{timestamp:dd}/hour=!{timestamp:HH}/")
/// .errorOutputPrefix("errors/year=!{timestamp:yyyy}/month=!{timestamp:MM}/day=!{timestamp:dd}/hour=!{timestamp:HH}/!{firehose:error-output-type}/")
/// .processingConfiguration(FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationArgs.builder()
/// .enabled(true)
/// .processors(FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationProcessorArgs.builder()
/// .type("MetadataExtraction")
/// .parameters(
/// FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationProcessorParameterArgs.builder()
/// .parameterName("JsonParsingEngine")
/// .parameterValue("JQ-1.6")
/// .build(),
/// FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfigurationProcessorParameterArgs.builder()
/// .parameterName("MetadataExtractionQuery")
/// .parameterValue("{store_id:.store_id,customer_id:.customer_id}")
/// .build())
/// .build())
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// extendedS3Stream:
/// type: aws:kinesis:FirehoseDeliveryStream
/// name: extended_s3_stream
/// properties:
/// name: kinesis-firehose-extended-s3-test-stream
/// destination: extended_s3
/// extendedS3Configuration:
/// roleArn: ${firehoseRole.arn}
/// bucketArn: ${bucket.arn}
/// bufferingSize: 64
/// dynamicPartitioningConfiguration:
/// enabled: 'true'
/// prefix: data/store_id=!{partitionKeyFromQuery:store_id}/customer_id=!{partitionKeyFromQuery:customer_id}/year=!{timestamp:yyyy}/month=!{timestamp:MM}/day=!{timestamp:dd}/hour=!{timestamp:HH}/
/// errorOutputPrefix: errors/year=!{timestamp:yyyy}/month=!{timestamp:MM}/day=!{timestamp:dd}/hour=!{timestamp:HH}/!{firehose:error-output-type}/
/// processingConfiguration:
/// enabled: 'true'
/// processors:
/// - type: MetadataExtraction
/// parameters:
/// - parameterName: JsonParsingEngine
/// parameterValue: JQ-1.6
/// - parameterName: MetadataExtractionQuery
/// parameterValue: '{store_id:.store_id,customer_id:.customer_id}'
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Redshift Destination
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const testCluster = new aws.redshift.Cluster("test_cluster", {
/// clusterIdentifier: "tf-redshift-cluster",
/// databaseName: "test",
/// masterUsername: "testuser",
/// masterPassword: "T3stPass",
/// nodeType: "dc1.large",
/// clusterType: "single-node",
/// });
/// const testStream = new aws.kinesis.FirehoseDeliveryStream("test_stream", {
/// name: "kinesis-firehose-test-stream",
/// destination: "redshift",
/// redshiftConfiguration: {
/// roleArn: firehoseRole.arn,
/// clusterJdbcurl: pulumi.interpolate`jdbc:redshift://${testCluster.endpoint}/${testCluster.databaseName}`,
/// username: "testuser",
/// password: "T3stPass",
/// dataTableName: "test-table",
/// copyOptions: "delimiter '|'",
/// dataTableColumns: "test-col",
/// s3BackupMode: "Enabled",
/// s3Configuration: {
/// roleArn: firehoseRole.arn,
/// bucketArn: bucket.arn,
/// bufferingSize: 10,
/// bufferingInterval: 400,
/// compressionFormat: "GZIP",
/// },
/// s3BackupConfiguration: {
/// roleArn: firehoseRole.arn,
/// bucketArn: bucket.arn,
/// bufferingSize: 15,
/// bufferingInterval: 300,
/// compressionFormat: "GZIP",
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test_cluster = aws.redshift.Cluster("test_cluster",
/// cluster_identifier="tf-redshift-cluster",
/// database_name="test",
/// master_username="testuser",
/// master_password="T3stPass",
/// node_type="dc1.large",
/// cluster_type="single-node")
/// test_stream = aws.kinesis.FirehoseDeliveryStream("test_stream",
/// name="kinesis-firehose-test-stream",
/// destination="redshift",
/// redshift_configuration={
/// "role_arn": firehose_role["arn"],
/// "cluster_jdbcurl": pulumi.Output.all(
/// endpoint=test_cluster.endpoint,
/// database_name=test_cluster.database_name
/// ).apply(lambda resolved_outputs: f"jdbc:redshift://{resolved_outputs['endpoint']}/{resolved_outputs['database_name']}")
/// ,
/// "username": "testuser",
/// "password": "T3stPass",
/// "data_table_name": "test-table",
/// "copy_options": "delimiter '|'",
/// "data_table_columns": "test-col",
/// "s3_backup_mode": "Enabled",
/// "s3_configuration": {
/// "role_arn": firehose_role["arn"],
/// "bucket_arn": bucket["arn"],
/// "buffering_size": 10,
/// "buffering_interval": 400,
/// "compression_format": "GZIP",
/// },
/// "s3_backup_configuration": {
/// "role_arn": firehose_role["arn"],
/// "bucket_arn": bucket["arn"],
/// "buffering_size": 15,
/// "buffering_interval": 300,
/// "compression_format": "GZIP",
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
/// var testCluster = new Aws.RedShift.Cluster("test_cluster", new()
/// {
/// ClusterIdentifier = "tf-redshift-cluster",
/// DatabaseName = "test",
/// MasterUsername = "testuser",
/// MasterPassword = "T3stPass",
/// NodeType = "dc1.large",
/// ClusterType = "single-node",
/// });
///
/// var testStream = new Aws.Kinesis.FirehoseDeliveryStream("test_stream", new()
/// {
/// Name = "kinesis-firehose-test-stream",
/// Destination = "redshift",
/// RedshiftConfiguration = new Aws.Kinesis.Inputs.FirehoseDeliveryStreamRedshiftConfigurationArgs
/// {
/// RoleArn = firehoseRole.Arn,
/// ClusterJdbcurl = Output.Tuple(testCluster.Endpoint, testCluster.DatabaseName).Apply(values =>
/// {
/// var endpoint = values.Item1;
/// var databaseName = values.Item2;
/// return $"jdbc:redshift://{endpoint}/{databaseName}";
/// }),
/// Username = "testuser",
/// Password = "T3stPass",
/// DataTableName = "test-table",
/// CopyOptions = "delimiter '|'",
/// DataTableColumns = "test-col",
/// S3BackupMode = "Enabled",
/// S3Configuration = new Aws.Kinesis.Inputs.FirehoseDeliveryStreamRedshiftConfigurationS3ConfigurationArgs
/// {
/// RoleArn = firehoseRole.Arn,
/// BucketArn = bucket.Arn,
/// BufferingSize = 10,
/// BufferingInterval = 400,
/// CompressionFormat = "GZIP",
/// },
/// S3BackupConfiguration = new Aws.Kinesis.Inputs.FirehoseDeliveryStreamRedshiftConfigurationS3BackupConfigurationArgs
/// {
/// RoleArn = firehoseRole.Arn,
/// BucketArn = bucket.Arn,
/// BufferingSize = 15,
/// BufferingInterval = 300,
/// CompressionFormat = "GZIP",
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kinesis"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/redshift"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// testCluster, err := redshift.NewCluster(ctx, "test_cluster", &redshift.ClusterArgs{
/// ClusterIdentifier: pulumi.String("tf-redshift-cluster"),
/// DatabaseName:      pulumi.String("test"),
/// MasterUsername:    pulumi.String("testuser"),
/// MasterPassword:    pulumi.String("T3stPass"),
/// NodeType:          pulumi.String("dc1.large"),
/// ClusterType:       pulumi.String("single-node"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = kinesis.NewFirehoseDeliveryStream(ctx, "test_stream", &kinesis.FirehoseDeliveryStreamArgs{
/// Name:        pulumi.String("kinesis-firehose-test-stream"),
/// Destination: pulumi.String("redshift"),
/// RedshiftConfiguration: &kinesis.FirehoseDeliveryStreamRedshiftConfigurationArgs{
/// RoleArn: pulumi.Any(firehoseRole.Arn),
/// ClusterJdbcurl: pulumi.All(testCluster.Endpoint, testCluster.DatabaseName).ApplyT(func(_args []interface{}) (string, error) {
/// endpoint := _args[0].(string)
/// databaseName := _args[1].(string)
/// return fmt.Sprintf("jdbc:redshift://%v/%v", endpoint, databaseName), nil
/// }).(pulumi.StringOutput),
/// Username:         pulumi.String("testuser"),
/// Password:         pulumi.String("T3stPass"),
/// DataTableName:    pulumi.String("test-table"),
/// CopyOptions:      pulumi.String("delimiter '|'"),
/// DataTableColumns: pulumi.String("test-col"),
/// S3BackupMode:     pulumi.String("Enabled"),
/// S3Configuration: &kinesis.FirehoseDeliveryStreamRedshiftConfigurationS3ConfigurationArgs{
/// RoleArn:           pulumi.Any(firehoseRole.Arn),
/// BucketArn:         pulumi.Any(bucket.Arn),
/// BufferingSize:     pulumi.Int(10),
/// BufferingInterval: pulumi.Int(400),
/// CompressionFormat: pulumi.String("GZIP"),
/// },
/// S3BackupConfiguration: &kinesis.FirehoseDeliveryStreamRedshiftConfigurationS3BackupConfigurationArgs{
/// RoleArn:           pulumi.Any(firehoseRole.Arn),
/// BucketArn:         pulumi.Any(bucket.Arn),
/// BufferingSize:     pulumi.Int(15),
/// BufferingInterval: pulumi.Int(300),
/// CompressionFormat: pulumi.String("GZIP"),
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
/// import com.pulumi.aws.redshift.Cluster;
/// import com.pulumi.aws.redshift.ClusterArgs;
/// import com.pulumi.aws.kinesis.FirehoseDeliveryStream;
/// import com.pulumi.aws.kinesis.FirehoseDeliveryStreamArgs;
/// import com.pulumi.aws.kinesis.inputs.FirehoseDeliveryStreamRedshiftConfigurationArgs;
/// import com.pulumi.aws.kinesis.inputs.FirehoseDeliveryStreamRedshiftConfigurationS3ConfigurationArgs;
/// import com.pulumi.aws.kinesis.inputs.FirehoseDeliveryStreamRedshiftConfigurationS3BackupConfigurationArgs;
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
/// var testCluster = new Cluster("testCluster", ClusterArgs.builder()
/// .clusterIdentifier("tf-redshift-cluster")
/// .databaseName("test")
/// .masterUsername("testuser")
/// .masterPassword("T3stPass")
/// .nodeType("dc1.large")
/// .clusterType("single-node")
/// .build());
///
/// var testStream = new FirehoseDeliveryStream("testStream", FirehoseDeliveryStreamArgs.builder()
/// .name("kinesis-firehose-test-stream")
/// .destination("redshift")
/// .redshiftConfiguration(FirehoseDeliveryStreamRedshiftConfigurationArgs.builder()
/// .roleArn(firehoseRole.arn())
/// .clusterJdbcurl(Output.tuple(testCluster.endpoint(), testCluster.databaseName()).applyValue(values -> {
/// var endpoint = values.t1;
/// var databaseName = values.t2;
/// return String.format("jdbc:redshift://%s/%s", endpoint,databaseName);
/// }))
/// .username("testuser")
/// .password("T3stPass")
/// .dataTableName("test-table")
/// .copyOptions("delimiter '|'")
/// .dataTableColumns("test-col")
/// .s3BackupMode("Enabled")
/// .s3Configuration(FirehoseDeliveryStreamRedshiftConfigurationS3ConfigurationArgs.builder()
/// .roleArn(firehoseRole.arn())
/// .bucketArn(bucket.arn())
/// .bufferingSize(10)
/// .bufferingInterval(400)
/// .compressionFormat("GZIP")
/// .build())
/// .s3BackupConfiguration(FirehoseDeliveryStreamRedshiftConfigurationS3BackupConfigurationArgs.builder()
/// .roleArn(firehoseRole.arn())
/// .bucketArn(bucket.arn())
/// .bufferingSize(15)
/// .bufferingInterval(300)
/// .compressionFormat("GZIP")
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// testCluster:
/// type: aws:redshift:Cluster
/// name: test_cluster
/// properties:
/// clusterIdentifier: tf-redshift-cluster
/// databaseName: test
/// masterUsername: testuser
/// masterPassword: T3stPass
/// nodeType: dc1.large
/// clusterType: single-node
/// testStream:
/// type: aws:kinesis:FirehoseDeliveryStream
/// name: test_stream
/// properties:
/// name: kinesis-firehose-test-stream
/// destination: redshift
/// redshiftConfiguration:
/// roleArn: ${firehoseRole.arn}
/// clusterJdbcurl: jdbc:redshift://${testCluster.endpoint}/${testCluster.databaseName}
/// username: testuser
/// password: T3stPass
/// dataTableName: test-table
/// copyOptions: delimiter '|'
/// dataTableColumns: test-col
/// s3BackupMode: Enabled
/// s3Configuration:
/// roleArn: ${firehoseRole.arn}
/// bucketArn: ${bucket.arn}
/// bufferingSize: 10
/// bufferingInterval: 400
/// compressionFormat: GZIP
/// s3BackupConfiguration:
/// roleArn: ${firehoseRole.arn}
/// bucketArn: ${bucket.arn}
/// bufferingSize: 15
/// bufferingInterval: 300
/// compressionFormat: GZIP
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Elasticsearch Destination
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const testCluster = new aws.elasticsearch.Domain("test_cluster", {domainName: "firehose-es-test"});
/// const testStream = new aws.kinesis.FirehoseDeliveryStream("test_stream", {
/// name: "kinesis-firehose-test-stream",
/// destination: "elasticsearch",
/// elasticsearchConfiguration: {
/// domainArn: testCluster.arn,
/// roleArn: firehoseRole.arn,
/// indexName: "test",
/// typeName: "test",
/// s3Configuration: {
/// roleArn: firehoseRole.arn,
/// bucketArn: bucket.arn,
/// bufferingSize: 10,
/// bufferingInterval: 400,
/// compressionFormat: "GZIP",
/// },
/// processingConfiguration: {
/// enabled: true,
/// processors: [{
/// type: "Lambda",
/// parameters: [{
/// parameterName: "LambdaArn",
/// parameterValue: `${lambdaProcessor.arn}:$LATEST`,
/// }],
/// }],
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test_cluster = aws.elasticsearch.Domain("test_cluster", domain_name="firehose-es-test")
/// test_stream = aws.kinesis.FirehoseDeliveryStream("test_stream",
/// name="kinesis-firehose-test-stream",
/// destination="elasticsearch",
/// elasticsearch_configuration={
/// "domain_arn": test_cluster.arn,
/// "role_arn": firehose_role["arn"],
/// "index_name": "test",
/// "type_name": "test",
/// "s3_configuration": {
/// "role_arn": firehose_role["arn"],
/// "bucket_arn": bucket["arn"],
/// "buffering_size": 10,
/// "buffering_interval": 400,
/// "compression_format": "GZIP",
/// },
/// "processing_configuration": {
/// "enabled": True,
/// "processors": [{
/// "type": "Lambda",
/// "parameters": [{
/// "parameter_name": "LambdaArn",
/// "parameter_value": f"{lambda_processor['arn']}:$LATEST",
/// }],
/// }],
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
/// var testCluster = new Aws.ElasticSearch.Domain("test_cluster", new()
/// {
/// DomainName = "firehose-es-test",
/// });
///
/// var testStream = new Aws.Kinesis.FirehoseDeliveryStream("test_stream", new()
/// {
/// Name = "kinesis-firehose-test-stream",
/// Destination = "elasticsearch",
/// ElasticsearchConfiguration = new Aws.Kinesis.Inputs.FirehoseDeliveryStreamElasticsearchConfigurationArgs
/// {
/// DomainArn = testCluster.Arn,
/// RoleArn = firehoseRole.Arn,
/// IndexName = "test",
/// TypeName = "test",
/// S3Configuration = new Aws.Kinesis.Inputs.FirehoseDeliveryStreamElasticsearchConfigurationS3ConfigurationArgs
/// {
/// RoleArn = firehoseRole.Arn,
/// BucketArn = bucket.Arn,
/// BufferingSize = 10,
/// BufferingInterval = 400,
/// CompressionFormat = "GZIP",
/// },
/// ProcessingConfiguration = new Aws.Kinesis.Inputs.FirehoseDeliveryStreamElasticsearchConfigurationProcessingConfigurationArgs
/// {
/// Enabled = true,
/// Processors = new[]
/// {
/// new Aws.Kinesis.Inputs.FirehoseDeliveryStreamElasticsearchConfigurationProcessingConfigurationProcessorArgs
/// {
/// Type = "Lambda",
/// Parameters = new[]
/// {
/// new Aws.Kinesis.Inputs.FirehoseDeliveryStreamElasticsearchConfigurationProcessingConfigurationProcessorParameterArgs
/// {
/// ParameterName = "LambdaArn",
/// ParameterValue = $"{lambdaProcessor.Arn}:$LATEST",
/// },
/// },
/// },
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/elasticsearch"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kinesis"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// testCluster, err := elasticsearch.NewDomain(ctx, "test_cluster", &elasticsearch.DomainArgs{
/// DomainName: pulumi.String("firehose-es-test"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = kinesis.NewFirehoseDeliveryStream(ctx, "test_stream", &kinesis.FirehoseDeliveryStreamArgs{
/// Name:        pulumi.String("kinesis-firehose-test-stream"),
/// Destination: pulumi.String("elasticsearch"),
/// ElasticsearchConfiguration: &kinesis.FirehoseDeliveryStreamElasticsearchConfigurationArgs{
/// DomainArn: testCluster.Arn,
/// RoleArn:   pulumi.Any(firehoseRole.Arn),
/// IndexName: pulumi.String("test"),
/// TypeName:  pulumi.String("test"),
/// S3Configuration: &kinesis.FirehoseDeliveryStreamElasticsearchConfigurationS3ConfigurationArgs{
/// RoleArn:           pulumi.Any(firehoseRole.Arn),
/// BucketArn:         pulumi.Any(bucket.Arn),
/// BufferingSize:     pulumi.Int(10),
/// BufferingInterval: pulumi.Int(400),
/// CompressionFormat: pulumi.String("GZIP"),
/// },
/// ProcessingConfiguration: &kinesis.FirehoseDeliveryStreamElasticsearchConfigurationProcessingConfigurationArgs{
/// Enabled: pulumi.Bool(true),
/// Processors: kinesis.FirehoseDeliveryStreamElasticsearchConfigurationProcessingConfigurationProcessorArray{
/// &kinesis.FirehoseDeliveryStreamElasticsearchConfigurationProcessingConfigurationProcessorArgs{
/// Type: pulumi.String("Lambda"),
/// Parameters: kinesis.FirehoseDeliveryStreamElasticsearchConfigurationProcessingConfigurationProcessorParameterArray{
/// &kinesis.FirehoseDeliveryStreamElasticsearchConfigurationProcessingConfigurationProcessorParameterArgs{
/// ParameterName:  pulumi.String("LambdaArn"),
/// ParameterValue: pulumi.Sprintf("%v:$LATEST", lambdaProcessor.Arn),
/// },
/// },
/// },
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
/// import com.pulumi.aws.elasticsearch.Domain;
/// import com.pulumi.aws.elasticsearch.DomainArgs;
/// import com.pulumi.aws.kinesis.FirehoseDeliveryStream;
/// import com.pulumi.aws.kinesis.FirehoseDeliveryStreamArgs;
/// import com.pulumi.aws.kinesis.inputs.FirehoseDeliveryStreamElasticsearchConfigurationArgs;
/// import com.pulumi.aws.kinesis.inputs.FirehoseDeliveryStreamElasticsearchConfigurationS3ConfigurationArgs;
/// import com.pulumi.aws.kinesis.inputs.FirehoseDeliveryStreamElasticsearchConfigurationProcessingConfigurationArgs;
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
/// var testCluster = new Domain("testCluster", DomainArgs.builder()
/// .domainName("firehose-es-test")
/// .build());
///
/// var testStream = new FirehoseDeliveryStream("testStream", FirehoseDeliveryStreamArgs.builder()
/// .name("kinesis-firehose-test-stream")
/// .destination("elasticsearch")
/// .elasticsearchConfiguration(FirehoseDeliveryStreamElasticsearchConfigurationArgs.builder()
/// .domainArn(testCluster.arn())
/// .roleArn(firehoseRole.arn())
/// .indexName("test")
/// .typeName("test")
/// .s3Configuration(FirehoseDeliveryStreamElasticsearchConfigurationS3ConfigurationArgs.builder()
/// .roleArn(firehoseRole.arn())
/// .bucketArn(bucket.arn())
/// .bufferingSize(10)
/// .bufferingInterval(400)
/// .compressionFormat("GZIP")
/// .build())
/// .processingConfiguration(FirehoseDeliveryStreamElasticsearchConfigurationProcessingConfigurationArgs.builder()
/// .enabled(true)
/// .processors(FirehoseDeliveryStreamElasticsearchConfigurationProcessingConfigurationProcessorArgs.builder()
/// .type("Lambda")
/// .parameters(FirehoseDeliveryStreamElasticsearchConfigurationProcessingConfigurationProcessorParameterArgs.builder()
/// .parameterName("LambdaArn")
/// .parameterValue(String.format("%s:$LATEST", lambdaProcessor.arn()))
/// .build())
/// .build())
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// testCluster:
/// type: aws:elasticsearch:Domain
/// name: test_cluster
/// properties:
/// domainName: firehose-es-test
/// testStream:
/// type: aws:kinesis:FirehoseDeliveryStream
/// name: test_stream
/// properties:
/// name: kinesis-firehose-test-stream
/// destination: elasticsearch
/// elasticsearchConfiguration:
/// domainArn: ${testCluster.arn}
/// roleArn: ${firehoseRole.arn}
/// indexName: test
/// typeName: test
/// s3Configuration:
/// roleArn: ${firehoseRole.arn}
/// bucketArn: ${bucket.arn}
/// bufferingSize: 10
/// bufferingInterval: 400
/// compressionFormat: GZIP
/// processingConfiguration:
/// enabled: 'true'
/// processors:
/// - type: Lambda
/// parameters:
/// - parameterName: LambdaArn
/// parameterValue: ${lambdaProcessor.arn}:$LATEST
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Elasticsearch Destination With VPC
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const testCluster = new aws.elasticsearch.Domain("test_cluster", {
/// domainName: "es-test",
/// clusterConfig: {
/// instanceCount: 2,
/// zoneAwarenessEnabled: true,
/// instanceType: "t2.small.elasticsearch",
/// },
/// ebsOptions: {
/// ebsEnabled: true,
/// volumeSize: 10,
/// },
/// vpcOptions: {
/// securityGroupIds: [first.id],
/// subnetIds: [
/// firstAwsSubnet.id,
/// second.id,
/// ],
/// },
/// });
/// const firehose_elasticsearch = aws.iam.getPolicyDocumentOutput({
/// statements: [
/// {
/// effect: "Allow",
/// actions: ["es:*"],
/// resources: [
/// testCluster.arn,
/// pulumi.interpolate`${testCluster.arn}/*`,
/// ],
/// },
/// {
/// effect: "Allow",
/// actions: [
/// "ec2:DescribeVpcs",
/// "ec2:DescribeVpcAttribute",
/// "ec2:DescribeSubnets",
/// "ec2:DescribeSecurityGroups",
/// "ec2:DescribeNetworkInterfaces",
/// "ec2:CreateNetworkInterface",
/// "ec2:CreateNetworkInterfacePermission",
/// "ec2:DeleteNetworkInterface",
/// ],
/// resources: ["*"],
/// },
/// ],
/// });
/// const firehose_elasticsearchRolePolicy = new aws.iam.RolePolicy("firehose-elasticsearch", {
/// name: "elasticsearch",
/// role: firehose.id,
/// policy: firehose_elasticsearch.apply(firehose_elasticsearch => firehose_elasticsearch.json),
/// });
/// const test = new aws.kinesis.FirehoseDeliveryStream("test", {
/// name: "kinesis-firehose-es",
/// destination: "elasticsearch",
/// elasticsearchConfiguration: {
/// domainArn: testCluster.arn,
/// roleArn: firehose.arn,
/// indexName: "test",
/// typeName: "test",
/// s3Configuration: {
/// roleArn: firehose.arn,
/// bucketArn: bucket.arn,
/// },
/// vpcConfig: {
/// subnetIds: [
/// firstAwsSubnet.id,
/// second.id,
/// ],
/// securityGroupIds: [first.id],
/// roleArn: firehose.arn,
/// },
/// },
/// }, {
/// dependsOn: [firehose_elasticsearchRolePolicy],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test_cluster = aws.elasticsearch.Domain("test_cluster",
/// domain_name="es-test",
/// cluster_config={
/// "instance_count": 2,
/// "zone_awareness_enabled": True,
/// "instance_type": "t2.small.elasticsearch",
/// },
/// ebs_options={
/// "ebs_enabled": True,
/// "volume_size": 10,
/// },
/// vpc_options={
/// "security_group_ids": [first["id"]],
/// "subnet_ids": [
/// first_aws_subnet["id"],
/// second["id"],
/// ],
/// })
/// firehose_elasticsearch = aws.iam.get_policy_document_output(statements=[
/// {
/// "effect": "Allow",
/// "actions": ["es:*"],
/// "resources": [
/// test_cluster.arn,
/// test_cluster.arn.apply(lambda arn: f"{arn}/*"),
/// ],
/// },
/// {
/// "effect": "Allow",
/// "actions": [
/// "ec2:DescribeVpcs",
/// "ec2:DescribeVpcAttribute",
/// "ec2:DescribeSubnets",
/// "ec2:DescribeSecurityGroups",
/// "ec2:DescribeNetworkInterfaces",
/// "ec2:CreateNetworkInterface",
/// "ec2:CreateNetworkInterfacePermission",
/// "ec2:DeleteNetworkInterface",
/// ],
/// "resources": ["*"],
/// },
/// ])
/// firehose_elasticsearch_role_policy = aws.iam.RolePolicy("firehose-elasticsearch",
/// name="elasticsearch",
/// role=firehose["id"],
/// policy=firehose_elasticsearch.json)
/// test = aws.kinesis.FirehoseDeliveryStream("test",
/// name="kinesis-firehose-es",
/// destination="elasticsearch",
/// elasticsearch_configuration={
/// "domain_arn": test_cluster.arn,
/// "role_arn": firehose["arn"],
/// "index_name": "test",
/// "type_name": "test",
/// "s3_configuration": {
/// "role_arn": firehose["arn"],
/// "bucket_arn": bucket["arn"],
/// },
/// "vpc_config": {
/// "subnet_ids": [
/// first_aws_subnet["id"],
/// second["id"],
/// ],
/// "security_group_ids": [first["id"]],
/// "role_arn": firehose["arn"],
/// },
/// },
/// opts = pulumi.ResourceOptions(depends_on=[firehose_elasticsearch_role_policy]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var testCluster = new Aws.ElasticSearch.Domain("test_cluster", new()
/// {
/// DomainName = "es-test",
/// ClusterConfig = new Aws.ElasticSearch.Inputs.DomainClusterConfigArgs
/// {
/// InstanceCount = 2,
/// ZoneAwarenessEnabled = true,
/// InstanceType = "t2.small.elasticsearch",
/// },
/// EbsOptions = new Aws.ElasticSearch.Inputs.DomainEbsOptionsArgs
/// {
/// EbsEnabled = true,
/// VolumeSize = 10,
/// },
/// VpcOptions = new Aws.ElasticSearch.Inputs.DomainVpcOptionsArgs
/// {
/// SecurityGroupIds = new[]
/// {
/// first.Id,
/// },
/// SubnetIds = new[]
/// {
/// firstAwsSubnet.Id,
/// second.Id,
/// },
/// },
/// });
///
/// var firehose_elasticsearch = Aws.Iam.GetPolicyDocument.Invoke(new()
/// {
/// Statements = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
/// {
/// Effect = "Allow",
/// Actions = new[]
/// {
/// "es:*",
/// },
/// Resources = new[]
/// {
/// testCluster.Arn,
/// $"{testCluster.Arn}/*",
/// },
/// },
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
/// {
/// Effect = "Allow",
/// Actions = new[]
/// {
/// "ec2:DescribeVpcs",
/// "ec2:DescribeVpcAttribute",
/// "ec2:DescribeSubnets",
/// "ec2:DescribeSecurityGroups",
/// "ec2:DescribeNetworkInterfaces",
/// "ec2:CreateNetworkInterface",
/// "ec2:CreateNetworkInterfacePermission",
/// "ec2:DeleteNetworkInterface",
/// },
/// Resources = new[]
/// {
/// "*",
/// },
/// },
/// },
/// });
///
/// var firehose_elasticsearchRolePolicy = new Aws.Iam.RolePolicy("firehose-elasticsearch", new()
/// {
/// Name = "elasticsearch",
/// Role = firehose.Id,
/// Policy = firehose_elasticsearch.Apply(firehose_elasticsearch => firehose_elasticsearch.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json)),
/// });
///
/// var test = new Aws.Kinesis.FirehoseDeliveryStream("test", new()
/// {
/// Name = "kinesis-firehose-es",
/// Destination = "elasticsearch",
/// ElasticsearchConfiguration = new Aws.Kinesis.Inputs.FirehoseDeliveryStreamElasticsearchConfigurationArgs
/// {
/// DomainArn = testCluster.Arn,
/// RoleArn = firehose.Arn,
/// IndexName = "test",
/// TypeName = "test",
/// S3Configuration = new Aws.Kinesis.Inputs.FirehoseDeliveryStreamElasticsearchConfigurationS3ConfigurationArgs
/// {
/// RoleArn = firehose.Arn,
/// BucketArn = bucket.Arn,
/// },
/// VpcConfig = new Aws.Kinesis.Inputs.FirehoseDeliveryStreamElasticsearchConfigurationVpcConfigArgs
/// {
/// SubnetIds = new[]
/// {
/// firstAwsSubnet.Id,
/// second.Id,
/// },
/// SecurityGroupIds = new[]
/// {
/// first.Id,
/// },
/// RoleArn = firehose.Arn,
/// },
/// },
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// firehose_elasticsearchRolePolicy,
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/elasticsearch"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kinesis"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// testCluster, err := elasticsearch.NewDomain(ctx, "test_cluster", &elasticsearch.DomainArgs{
/// DomainName: pulumi.String("es-test"),
/// ClusterConfig: &elasticsearch.DomainClusterConfigArgs{
/// InstanceCount:        pulumi.Int(2),
/// ZoneAwarenessEnabled: pulumi.Bool(true),
/// InstanceType:         pulumi.String("t2.small.elasticsearch"),
/// },
/// EbsOptions: &elasticsearch.DomainEbsOptionsArgs{
/// EbsEnabled: pulumi.Bool(true),
/// VolumeSize: pulumi.Int(10),
/// },
/// VpcOptions: &elasticsearch.DomainVpcOptionsArgs{
/// SecurityGroupIds: pulumi.StringArray{
/// first.Id,
/// },
/// SubnetIds: pulumi.StringArray{
/// firstAwsSubnet.Id,
/// second.Id,
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// firehose_elasticsearch := iam.GetPolicyDocumentOutput(ctx, iam.GetPolicyDocumentOutputArgs{
/// Statements: iam.GetPolicyDocumentStatementArray{
/// &iam.GetPolicyDocumentStatementArgs{
/// Effect: pulumi.String("Allow"),
/// Actions: pulumi.StringArray{
/// pulumi.String("es:*"),
/// },
/// Resources: pulumi.StringArray{
/// testCluster.Arn,
/// testCluster.Arn.ApplyT(func(arn string) (string, error) {
/// return fmt.Sprintf("%v/*", arn), nil
/// }).(pulumi.StringOutput),
/// },
/// },
/// &iam.GetPolicyDocumentStatementArgs{
/// Effect: pulumi.String("Allow"),
/// Actions: pulumi.StringArray{
/// pulumi.String("ec2:DescribeVpcs"),
/// pulumi.String("ec2:DescribeVpcAttribute"),
/// pulumi.String("ec2:DescribeSubnets"),
/// pulumi.String("ec2:DescribeSecurityGroups"),
/// pulumi.String("ec2:DescribeNetworkInterfaces"),
/// pulumi.String("ec2:CreateNetworkInterface"),
/// pulumi.String("ec2:CreateNetworkInterfacePermission"),
/// pulumi.String("ec2:DeleteNetworkInterface"),
/// },
/// Resources: pulumi.StringArray{
/// pulumi.String("*"),
/// },
/// },
/// },
/// }, nil)
/// firehose_elasticsearchRolePolicy, err := iam.NewRolePolicy(ctx, "firehose-elasticsearch", &iam.RolePolicyArgs{
/// Name: pulumi.String("elasticsearch"),
/// Role: pulumi.Any(firehose.Id),
/// Policy: pulumi.String(firehose_elasticsearch.ApplyT(func(firehose_elasticsearch iam.GetPolicyDocumentResult) (*string, error) {
/// return &firehose_elasticsearch.Json, nil
/// }).(pulumi.StringPtrOutput)),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = kinesis.NewFirehoseDeliveryStream(ctx, "test", &kinesis.FirehoseDeliveryStreamArgs{
/// Name:        pulumi.String("kinesis-firehose-es"),
/// Destination: pulumi.String("elasticsearch"),
/// ElasticsearchConfiguration: &kinesis.FirehoseDeliveryStreamElasticsearchConfigurationArgs{
/// DomainArn: testCluster.Arn,
/// RoleArn:   pulumi.Any(firehose.Arn),
/// IndexName: pulumi.String("test"),
/// TypeName:  pulumi.String("test"),
/// S3Configuration: &kinesis.FirehoseDeliveryStreamElasticsearchConfigurationS3ConfigurationArgs{
/// RoleArn:   pulumi.Any(firehose.Arn),
/// BucketArn: pulumi.Any(bucket.Arn),
/// },
/// VpcConfig: &kinesis.FirehoseDeliveryStreamElasticsearchConfigurationVpcConfigArgs{
/// SubnetIds: pulumi.StringArray{
/// firstAwsSubnet.Id,
/// second.Id,
/// },
/// SecurityGroupIds: pulumi.StringArray{
/// first.Id,
/// },
/// RoleArn: pulumi.Any(firehose.Arn),
/// },
/// },
/// }, pulumi.DependsOn([]pulumi.Resource{
/// firehose_elasticsearchRolePolicy,
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
/// import com.pulumi.aws.elasticsearch.Domain;
/// import com.pulumi.aws.elasticsearch.DomainArgs;
/// import com.pulumi.aws.elasticsearch.inputs.DomainClusterConfigArgs;
/// import com.pulumi.aws.elasticsearch.inputs.DomainEbsOptionsArgs;
/// import com.pulumi.aws.elasticsearch.inputs.DomainVpcOptionsArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.RolePolicy;
/// import com.pulumi.aws.iam.RolePolicyArgs;
/// import com.pulumi.aws.kinesis.FirehoseDeliveryStream;
/// import com.pulumi.aws.kinesis.FirehoseDeliveryStreamArgs;
/// import com.pulumi.aws.kinesis.inputs.FirehoseDeliveryStreamElasticsearchConfigurationArgs;
/// import com.pulumi.aws.kinesis.inputs.FirehoseDeliveryStreamElasticsearchConfigurationS3ConfigurationArgs;
/// import com.pulumi.aws.kinesis.inputs.FirehoseDeliveryStreamElasticsearchConfigurationVpcConfigArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
/// var testCluster = new Domain("testCluster", DomainArgs.builder()
/// .domainName("es-test")
/// .clusterConfig(DomainClusterConfigArgs.builder()
/// .instanceCount(2)
/// .zoneAwarenessEnabled(true)
/// .instanceType("t2.small.elasticsearch")
/// .build())
/// .ebsOptions(DomainEbsOptionsArgs.builder()
/// .ebsEnabled(true)
/// .volumeSize(10)
/// .build())
/// .vpcOptions(DomainVpcOptionsArgs.builder()
/// .securityGroupIds(first.id())
/// .subnetIds(
/// firstAwsSubnet.id(),
/// second.id())
/// .build())
/// .build());
///
/// final var firehose-elasticsearch = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
/// .statements(
/// GetPolicyDocumentStatementArgs.builder()
/// .effect("Allow")
/// .actions("es:*")
/// .resources(
/// testCluster.arn(),
/// testCluster.arn().applyValue(_arn -> String.format("%s/*", _arn)))
/// .build(),
/// GetPolicyDocumentStatementArgs.builder()
/// .effect("Allow")
/// .actions(
/// "ec2:DescribeVpcs",
/// "ec2:DescribeVpcAttribute",
/// "ec2:DescribeSubnets",
/// "ec2:DescribeSecurityGroups",
/// "ec2:DescribeNetworkInterfaces",
/// "ec2:CreateNetworkInterface",
/// "ec2:CreateNetworkInterfacePermission",
/// "ec2:DeleteNetworkInterface")
/// .resources("*")
/// .build())
/// .build());
///
/// var firehose_elasticsearchRolePolicy = new RolePolicy("firehose-elasticsearchRolePolicy", RolePolicyArgs.builder()
/// .name("elasticsearch")
/// .role(firehose.id())
/// .policy(firehose_elasticsearch.applyValue(_firehose_elasticsearch -> _firehose_elasticsearch.json()))
/// .build());
///
/// var test = new FirehoseDeliveryStream("test", FirehoseDeliveryStreamArgs.builder()
/// .name("kinesis-firehose-es")
/// .destination("elasticsearch")
/// .elasticsearchConfiguration(FirehoseDeliveryStreamElasticsearchConfigurationArgs.builder()
/// .domainArn(testCluster.arn())
/// .roleArn(firehose.arn())
/// .indexName("test")
/// .typeName("test")
/// .s3Configuration(FirehoseDeliveryStreamElasticsearchConfigurationS3ConfigurationArgs.builder()
/// .roleArn(firehose.arn())
/// .bucketArn(bucket.arn())
/// .build())
/// .vpcConfig(FirehoseDeliveryStreamElasticsearchConfigurationVpcConfigArgs.builder()
/// .subnetIds(
/// firstAwsSubnet.id(),
/// second.id())
/// .securityGroupIds(first.id())
/// .roleArn(firehose.arn())
/// .build())
/// .build())
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(firehose_elasticsearchRolePolicy)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// testCluster:
/// type: aws:elasticsearch:Domain
/// name: test_cluster
/// properties:
/// domainName: es-test
/// clusterConfig:
/// instanceCount: 2
/// zoneAwarenessEnabled: true
/// instanceType: t2.small.elasticsearch
/// ebsOptions:
/// ebsEnabled: true
/// volumeSize: 10
/// vpcOptions:
/// securityGroupIds:
/// - ${first.id}
/// subnetIds:
/// - ${firstAwsSubnet.id}
/// - ${second.id}
/// firehose-elasticsearchRolePolicy:
/// type: aws:iam:RolePolicy
/// name: firehose-elasticsearch
/// properties:
/// name: elasticsearch
/// role: ${firehose.id}
/// policy: ${["firehose-elasticsearch"].json}
/// test:
/// type: aws:kinesis:FirehoseDeliveryStream
/// properties:
/// name: kinesis-firehose-es
/// destination: elasticsearch
/// elasticsearchConfiguration:
/// domainArn: ${testCluster.arn}
/// roleArn: ${firehose.arn}
/// indexName: test
/// typeName: test
/// s3Configuration:
/// roleArn: ${firehose.arn}
/// bucketArn: ${bucket.arn}
/// vpcConfig:
/// subnetIds:
/// - ${firstAwsSubnet.id}
/// - ${second.id}
/// securityGroupIds:
/// - ${first.id}
/// roleArn: ${firehose.arn}
/// options:
/// dependsOn:
/// - ${["firehose-elasticsearchRolePolicy"]}
/// variables:
/// firehose-elasticsearch:
/// fn::invoke:
/// function: aws:iam:getPolicyDocument
/// arguments:
/// statements:
/// - effect: Allow
/// actions:
/// - es:*
/// resources:
/// - ${testCluster.arn}
/// - ${testCluster.arn}/*
/// - effect: Allow
/// actions:
/// - ec2:DescribeVpcs
/// - ec2:DescribeVpcAttribute
/// - ec2:DescribeSubnets
/// - ec2:DescribeSecurityGroups
/// - ec2:DescribeNetworkInterfaces
/// - ec2:CreateNetworkInterface
/// - ec2:CreateNetworkInterfacePermission
/// - ec2:DeleteNetworkInterface
/// resources:
/// - '*'
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### OpenSearch Destination
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const testCluster = new aws.opensearch.Domain("test_cluster", {domainName: "firehose-os-test"});
/// const testStream = new aws.kinesis.FirehoseDeliveryStream("test_stream", {
/// name: "kinesis-firehose-test-stream",
/// destination: "opensearch",
/// opensearchConfiguration: {
/// domainArn: testCluster.arn,
/// roleArn: firehoseRole.arn,
/// indexName: "test",
/// s3Configuration: {
/// roleArn: firehoseRole.arn,
/// bucketArn: bucket.arn,
/// bufferingSize: 10,
/// bufferingInterval: 400,
/// compressionFormat: "GZIP",
/// },
/// processingConfiguration: {
/// enabled: true,
/// processors: [{
/// type: "Lambda",
/// parameters: [{
/// parameterName: "LambdaArn",
/// parameterValue: `${lambdaProcessor.arn}:$LATEST`,
/// }],
/// }],
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test_cluster = aws.opensearch.Domain("test_cluster", domain_name="firehose-os-test")
/// test_stream = aws.kinesis.FirehoseDeliveryStream("test_stream",
/// name="kinesis-firehose-test-stream",
/// destination="opensearch",
/// opensearch_configuration={
/// "domain_arn": test_cluster.arn,
/// "role_arn": firehose_role["arn"],
/// "index_name": "test",
/// "s3_configuration": {
/// "role_arn": firehose_role["arn"],
/// "bucket_arn": bucket["arn"],
/// "buffering_size": 10,
/// "buffering_interval": 400,
/// "compression_format": "GZIP",
/// },
/// "processing_configuration": {
/// "enabled": True,
/// "processors": [{
/// "type": "Lambda",
/// "parameters": [{
/// "parameter_name": "LambdaArn",
/// "parameter_value": f"{lambda_processor['arn']}:$LATEST",
/// }],
/// }],
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
/// var testCluster = new Aws.OpenSearch.Domain("test_cluster", new()
/// {
/// DomainName = "firehose-os-test",
/// });
///
/// var testStream = new Aws.Kinesis.FirehoseDeliveryStream("test_stream", new()
/// {
/// Name = "kinesis-firehose-test-stream",
/// Destination = "opensearch",
/// OpensearchConfiguration = new Aws.Kinesis.Inputs.FirehoseDeliveryStreamOpensearchConfigurationArgs
/// {
/// DomainArn = testCluster.Arn,
/// RoleArn = firehoseRole.Arn,
/// IndexName = "test",
/// S3Configuration = new Aws.Kinesis.Inputs.FirehoseDeliveryStreamOpensearchConfigurationS3ConfigurationArgs
/// {
/// RoleArn = firehoseRole.Arn,
/// BucketArn = bucket.Arn,
/// BufferingSize = 10,
/// BufferingInterval = 400,
/// CompressionFormat = "GZIP",
/// },
/// ProcessingConfiguration = new Aws.Kinesis.Inputs.FirehoseDeliveryStreamOpensearchConfigurationProcessingConfigurationArgs
/// {
/// Enabled = true,
/// Processors = new[]
/// {
/// new Aws.Kinesis.Inputs.FirehoseDeliveryStreamOpensearchConfigurationProcessingConfigurationProcessorArgs
/// {
/// Type = "Lambda",
/// Parameters = new[]
/// {
/// new Aws.Kinesis.Inputs.FirehoseDeliveryStreamOpensearchConfigurationProcessingConfigurationProcessorParameterArgs
/// {
/// ParameterName = "LambdaArn",
/// ParameterValue = $"{lambdaProcessor.Arn}:$LATEST",
/// },
/// },
/// },
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kinesis"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/opensearch"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// testCluster, err := opensearch.NewDomain(ctx, "test_cluster", &opensearch.DomainArgs{
/// DomainName: pulumi.String("firehose-os-test"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = kinesis.NewFirehoseDeliveryStream(ctx, "test_stream", &kinesis.FirehoseDeliveryStreamArgs{
/// Name:        pulumi.String("kinesis-firehose-test-stream"),
/// Destination: pulumi.String("opensearch"),
/// OpensearchConfiguration: &kinesis.FirehoseDeliveryStreamOpensearchConfigurationArgs{
/// DomainArn: testCluster.Arn,
/// RoleArn:   pulumi.Any(firehoseRole.Arn),
/// IndexName: pulumi.String("test"),
/// S3Configuration: &kinesis.FirehoseDeliveryStreamOpensearchConfigurationS3ConfigurationArgs{
/// RoleArn:           pulumi.Any(firehoseRole.Arn),
/// BucketArn:         pulumi.Any(bucket.Arn),
/// BufferingSize:     pulumi.Int(10),
/// BufferingInterval: pulumi.Int(400),
/// CompressionFormat: pulumi.String("GZIP"),
/// },
/// ProcessingConfiguration: &kinesis.FirehoseDeliveryStreamOpensearchConfigurationProcessingConfigurationArgs{
/// Enabled: pulumi.Bool(true),
/// Processors: kinesis.FirehoseDeliveryStreamOpensearchConfigurationProcessingConfigurationProcessorArray{
/// &kinesis.FirehoseDeliveryStreamOpensearchConfigurationProcessingConfigurationProcessorArgs{
/// Type: pulumi.String("Lambda"),
/// Parameters: kinesis.FirehoseDeliveryStreamOpensearchConfigurationProcessingConfigurationProcessorParameterArray{
/// &kinesis.FirehoseDeliveryStreamOpensearchConfigurationProcessingConfigurationProcessorParameterArgs{
/// ParameterName:  pulumi.String("LambdaArn"),
/// ParameterValue: pulumi.Sprintf("%v:$LATEST", lambdaProcessor.Arn),
/// },
/// },
/// },
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
/// import com.pulumi.aws.opensearch.Domain;
/// import com.pulumi.aws.opensearch.DomainArgs;
/// import com.pulumi.aws.kinesis.FirehoseDeliveryStream;
/// import com.pulumi.aws.kinesis.FirehoseDeliveryStreamArgs;
/// import com.pulumi.aws.kinesis.inputs.FirehoseDeliveryStreamOpensearchConfigurationArgs;
/// import com.pulumi.aws.kinesis.inputs.FirehoseDeliveryStreamOpensearchConfigurationS3ConfigurationArgs;
/// import com.pulumi.aws.kinesis.inputs.FirehoseDeliveryStreamOpensearchConfigurationProcessingConfigurationArgs;
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
/// var testCluster = new Domain("testCluster", DomainArgs.builder()
/// .domainName("firehose-os-test")
/// .build());
///
/// var testStream = new FirehoseDeliveryStream("testStream", FirehoseDeliveryStreamArgs.builder()
/// .name("kinesis-firehose-test-stream")
/// .destination("opensearch")
/// .opensearchConfiguration(FirehoseDeliveryStreamOpensearchConfigurationArgs.builder()
/// .domainArn(testCluster.arn())
/// .roleArn(firehoseRole.arn())
/// .indexName("test")
/// .s3Configuration(FirehoseDeliveryStreamOpensearchConfigurationS3ConfigurationArgs.builder()
/// .roleArn(firehoseRole.arn())
/// .bucketArn(bucket.arn())
/// .bufferingSize(10)
/// .bufferingInterval(400)
/// .compressionFormat("GZIP")
/// .build())
/// .processingConfiguration(FirehoseDeliveryStreamOpensearchConfigurationProcessingConfigurationArgs.builder()
/// .enabled(true)
/// .processors(FirehoseDeliveryStreamOpensearchConfigurationProcessingConfigurationProcessorArgs.builder()
/// .type("Lambda")
/// .parameters(FirehoseDeliveryStreamOpensearchConfigurationProcessingConfigurationProcessorParameterArgs.builder()
/// .parameterName("LambdaArn")
/// .parameterValue(String.format("%s:$LATEST", lambdaProcessor.arn()))
/// .build())
/// .build())
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// testCluster:
/// type: aws:opensearch:Domain
/// name: test_cluster
/// properties:
/// domainName: firehose-os-test
/// testStream:
/// type: aws:kinesis:FirehoseDeliveryStream
/// name: test_stream
/// properties:
/// name: kinesis-firehose-test-stream
/// destination: opensearch
/// opensearchConfiguration:
/// domainArn: ${testCluster.arn}
/// roleArn: ${firehoseRole.arn}
/// indexName: test
/// s3Configuration:
/// roleArn: ${firehoseRole.arn}
/// bucketArn: ${bucket.arn}
/// bufferingSize: 10
/// bufferingInterval: 400
/// compressionFormat: GZIP
/// processingConfiguration:
/// enabled: 'true'
/// processors:
/// - type: Lambda
/// parameters:
/// - parameterName: LambdaArn
/// parameterValue: ${lambdaProcessor.arn}:$LATEST
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### OpenSearch Destination With VPC
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const testCluster = new aws.opensearch.Domain("test_cluster", {
/// domainName: "es-test",
/// clusterConfig: {
/// instanceCount: 2,
/// zoneAwarenessEnabled: true,
/// instanceType: "m4.large.search",
/// },
/// ebsOptions: {
/// ebsEnabled: true,
/// volumeSize: 10,
/// },
/// vpcOptions: {
/// securityGroupIds: [first.id],
/// subnetIds: [
/// firstAwsSubnet.id,
/// second.id,
/// ],
/// },
/// });
/// const firehose_opensearch = new aws.iam.RolePolicy("firehose-opensearch", {
/// name: "opensearch",
/// role: firehose.id,
/// policy: pulumi.interpolate`{
/// \"Version\": \"2012-10-17\",
/// \"Statement\": [
/// {
/// \"Effect\": \"Allow\",
/// \"Action\": [
/// \"es:*\"
/// ],
/// \"Resource\": [
/// \"${testCluster.arn}\",
/// \"${testCluster.arn}/*\"
/// ]
/// },
/// {
/// \"Effect\": \"Allow\",
/// \"Action\": [
/// \"ec2:DescribeVpcs\",
/// \"ec2:DescribeVpcAttribute\",
/// \"ec2:DescribeSubnets\",
/// \"ec2:DescribeSecurityGroups\",
/// \"ec2:DescribeNetworkInterfaces\",
/// \"ec2:CreateNetworkInterface\",
/// \"ec2:CreateNetworkInterfacePermission\",
/// \"ec2:DeleteNetworkInterface\"
/// ],
/// \"Resource\": [
/// \"*\"
/// ]
/// }
/// ]
/// }
/// `,
/// });
/// const test = new aws.kinesis.FirehoseDeliveryStream("test", {
/// name: "pulumi-kinesis-firehose-os",
/// destination: "opensearch",
/// opensearchConfiguration: {
/// domainArn: testCluster.arn,
/// roleArn: firehose.arn,
/// indexName: "test",
/// s3Configuration: {
/// roleArn: firehose.arn,
/// bucketArn: bucket.arn,
/// },
/// vpcConfig: {
/// subnetIds: [
/// firstAwsSubnet.id,
/// second.id,
/// ],
/// securityGroupIds: [first.id],
/// roleArn: firehose.arn,
/// },
/// },
/// }, {
/// dependsOn: [firehose_opensearch],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test_cluster = aws.opensearch.Domain("test_cluster",
/// domain_name="es-test",
/// cluster_config={
/// "instance_count": 2,
/// "zone_awareness_enabled": True,
/// "instance_type": "m4.large.search",
/// },
/// ebs_options={
/// "ebs_enabled": True,
/// "volume_size": 10,
/// },
/// vpc_options={
/// "security_group_ids": [first["id"]],
/// "subnet_ids": [
/// first_aws_subnet["id"],
/// second["id"],
/// ],
/// })
/// firehose_opensearch = aws.iam.RolePolicy("firehose-opensearch",
/// name="opensearch",
/// role=firehose["id"],
/// policy=pulumi.Output.all(
/// testClusterArn=test_cluster.arn,
/// testClusterArn1=test_cluster.arn
/// ).apply(lambda resolved_outputs: f"""{{
/// \"Version\": \"2012-10-17\",
/// \"Statement\": [
/// {{
/// \"Effect\": \"Allow\",
/// \"Action\": [
/// \"es:*\"
/// ],
/// \"Resource\": [
/// \"{resolved_outputs['testClusterArn']}\",
/// \"{resolved_outputs['testClusterArn1']}/*\"
/// ]
/// }},
/// {{
/// \"Effect\": \"Allow\",
/// \"Action\": [
/// \"ec2:DescribeVpcs\",
/// \"ec2:DescribeVpcAttribute\",
/// \"ec2:DescribeSubnets\",
/// \"ec2:DescribeSecurityGroups\",
/// \"ec2:DescribeNetworkInterfaces\",
/// \"ec2:CreateNetworkInterface\",
/// \"ec2:CreateNetworkInterfacePermission\",
/// \"ec2:DeleteNetworkInterface\"
/// ],
/// \"Resource\": [
/// \"*\"
/// ]
/// }}
/// ]
/// }}
/// """)
/// )
/// test = aws.kinesis.FirehoseDeliveryStream("test",
/// name="pulumi-kinesis-firehose-os",
/// destination="opensearch",
/// opensearch_configuration={
/// "domain_arn": test_cluster.arn,
/// "role_arn": firehose["arn"],
/// "index_name": "test",
/// "s3_configuration": {
/// "role_arn": firehose["arn"],
/// "bucket_arn": bucket["arn"],
/// },
/// "vpc_config": {
/// "subnet_ids": [
/// first_aws_subnet["id"],
/// second["id"],
/// ],
/// "security_group_ids": [first["id"]],
/// "role_arn": firehose["arn"],
/// },
/// },
/// opts = pulumi.ResourceOptions(depends_on=[firehose_opensearch]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var testCluster = new Aws.OpenSearch.Domain("test_cluster", new()
/// {
/// DomainName = "es-test",
/// ClusterConfig = new Aws.OpenSearch.Inputs.DomainClusterConfigArgs
/// {
/// InstanceCount = 2,
/// ZoneAwarenessEnabled = true,
/// InstanceType = "m4.large.search",
/// },
/// EbsOptions = new Aws.OpenSearch.Inputs.DomainEbsOptionsArgs
/// {
/// EbsEnabled = true,
/// VolumeSize = 10,
/// },
/// VpcOptions = new Aws.OpenSearch.Inputs.DomainVpcOptionsArgs
/// {
/// SecurityGroupIds = new[]
/// {
/// first.Id,
/// },
/// SubnetIds = new[]
/// {
/// firstAwsSubnet.Id,
/// second.Id,
/// },
/// },
/// });
///
/// var firehose_opensearch = new Aws.Iam.RolePolicy("firehose-opensearch", new()
/// {
/// Name = "opensearch",
/// Role = firehose.Id,
/// Policy = Output.Tuple(testCluster.Arn, testCluster.Arn).Apply(values =>
/// {
/// var testClusterArn = values.Item1;
/// var testClusterArn1 = values.Item2;
/// return @$"{{
/// \""Version\"": \""2012-10-17\"",
/// \""Statement\"": [
/// {{
/// \""Effect\"": \""Allow\"",
/// \""Action\"": [
/// \""es:*\""
/// ],
/// \""Resource\"": [
/// \""{testClusterArn}\"",
/// \""{testClusterArn1}/*\""
/// ]
/// }},
/// {{
/// \""Effect\"": \""Allow\"",
/// \""Action\"": [
/// \""ec2:DescribeVpcs\"",
/// \""ec2:DescribeVpcAttribute\"",
/// \""ec2:DescribeSubnets\"",
/// \""ec2:DescribeSecurityGroups\"",
/// \""ec2:DescribeNetworkInterfaces\"",
/// \""ec2:CreateNetworkInterface\"",
/// \""ec2:CreateNetworkInterfacePermission\"",
/// \""ec2:DeleteNetworkInterface\""
/// ],
/// \""Resource\"": [
/// \""*\""
/// ]
/// }}
/// ]
/// }}
/// ";
/// }),
/// });
///
/// var test = new Aws.Kinesis.FirehoseDeliveryStream("test", new()
/// {
/// Name = "pulumi-kinesis-firehose-os",
/// Destination = "opensearch",
/// OpensearchConfiguration = new Aws.Kinesis.Inputs.FirehoseDeliveryStreamOpensearchConfigurationArgs
/// {
/// DomainArn = testCluster.Arn,
/// RoleArn = firehose.Arn,
/// IndexName = "test",
/// S3Configuration = new Aws.Kinesis.Inputs.FirehoseDeliveryStreamOpensearchConfigurationS3ConfigurationArgs
/// {
/// RoleArn = firehose.Arn,
/// BucketArn = bucket.Arn,
/// },
/// VpcConfig = new Aws.Kinesis.Inputs.FirehoseDeliveryStreamOpensearchConfigurationVpcConfigArgs
/// {
/// SubnetIds = new[]
/// {
/// firstAwsSubnet.Id,
/// second.Id,
/// },
/// SecurityGroupIds = new[]
/// {
/// first.Id,
/// },
/// RoleArn = firehose.Arn,
/// },
/// },
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// firehose_opensearch,
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kinesis"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/opensearch"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// testCluster, err := opensearch.NewDomain(ctx, "test_cluster", &opensearch.DomainArgs{
/// DomainName: pulumi.String("es-test"),
/// ClusterConfig: &opensearch.DomainClusterConfigArgs{
/// InstanceCount:        pulumi.Int(2),
/// ZoneAwarenessEnabled: pulumi.Bool(true),
/// InstanceType:         pulumi.String("m4.large.search"),
/// },
/// EbsOptions: &opensearch.DomainEbsOptionsArgs{
/// EbsEnabled: pulumi.Bool(true),
/// VolumeSize: pulumi.Int(10),
/// },
/// VpcOptions: &opensearch.DomainVpcOptionsArgs{
/// SecurityGroupIds: pulumi.StringArray{
/// first.Id,
/// },
/// SubnetIds: pulumi.StringArray{
/// firstAwsSubnet.Id,
/// second.Id,
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// firehose_opensearch, err := iam.NewRolePolicy(ctx, "firehose-opensearch", &iam.RolePolicyArgs{
/// Name: pulumi.String("opensearch"),
/// Role: pulumi.Any(firehose.Id),
/// Policy: pulumi.All(testCluster.Arn, testCluster.Arn).ApplyT(func(_args []interface{}) (string, error) {
/// testClusterArn := _args[0].(string)
/// testClusterArn1 := _args[1].(string)
/// return fmt.Sprintf(`{
/// \"Version\": \"2012-10-17\",
/// \"Statement\": [
/// {
/// \"Effect\": \"Allow\",
/// \"Action\": [
/// \"es:*\"
/// ],
/// \"Resource\": [
/// \"%v\",
/// \"%v/*\"
/// ]
/// },
/// {
/// \"Effect\": \"Allow\",
/// \"Action\": [
/// \"ec2:DescribeVpcs\",
/// \"ec2:DescribeVpcAttribute\",
/// \"ec2:DescribeSubnets\",
/// \"ec2:DescribeSecurityGroups\",
/// \"ec2:DescribeNetworkInterfaces\",
/// \"ec2:CreateNetworkInterface\",
/// \"ec2:CreateNetworkInterfacePermission\",
/// \"ec2:DeleteNetworkInterface\"
/// ],
/// \"Resource\": [
/// \"*\"
/// ]
/// }
/// ]
/// }
/// `, testClusterArn, testClusterArn1), nil
/// }).(pulumi.StringOutput),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = kinesis.NewFirehoseDeliveryStream(ctx, "test", &kinesis.FirehoseDeliveryStreamArgs{
/// Name:        pulumi.String("pulumi-kinesis-firehose-os"),
/// Destination: pulumi.String("opensearch"),
/// OpensearchConfiguration: &kinesis.FirehoseDeliveryStreamOpensearchConfigurationArgs{
/// DomainArn: testCluster.Arn,
/// RoleArn:   pulumi.Any(firehose.Arn),
/// IndexName: pulumi.String("test"),
/// S3Configuration: &kinesis.FirehoseDeliveryStreamOpensearchConfigurationS3ConfigurationArgs{
/// RoleArn:   pulumi.Any(firehose.Arn),
/// BucketArn: pulumi.Any(bucket.Arn),
/// },
/// VpcConfig: &kinesis.FirehoseDeliveryStreamOpensearchConfigurationVpcConfigArgs{
/// SubnetIds: pulumi.StringArray{
/// firstAwsSubnet.Id,
/// second.Id,
/// },
/// SecurityGroupIds: pulumi.StringArray{
/// first.Id,
/// },
/// RoleArn: pulumi.Any(firehose.Arn),
/// },
/// },
/// }, pulumi.DependsOn([]pulumi.Resource{
/// firehose_opensearch,
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
/// var testCluster = new Domain("testCluster", DomainArgs.builder()
/// .domainName("es-test")
/// .clusterConfig(DomainClusterConfigArgs.builder()
/// .instanceCount(2)
/// .zoneAwarenessEnabled(true)
/// .instanceType("m4.large.search")
/// .build())
/// .ebsOptions(DomainEbsOptionsArgs.builder()
/// .ebsEnabled(true)
/// .volumeSize(10)
/// .build())
/// .vpcOptions(DomainVpcOptionsArgs.builder()
/// .securityGroupIds(first.id())
/// .subnetIds(
/// firstAwsSubnet.id(),
/// second.id())
/// .build())
/// .build());
///
/// var firehose_opensearch = new RolePolicy("firehose-opensearch", RolePolicyArgs.builder()
/// .name("opensearch")
/// .role(firehose.id())
/// .policy(Output.tuple(testCluster.arn(), testCluster.arn()).applyValue(values -> {
/// var testClusterArn = values.t1;
/// var testClusterArn1 = values.t2;
/// return """
/// {
/// \"Version\": \"2012-10-17\",
/// \"Statement\": [
/// {
/// \"Effect\": \"Allow\",
/// \"Action\": [
/// \"es:*\"
/// ],
/// \"Resource\": [
/// \"%s\",
/// \"%s/*\"
/// ]
/// },
/// {
/// \"Effect\": \"Allow\",
/// \"Action\": [
/// \"ec2:DescribeVpcs\",
/// \"ec2:DescribeVpcAttribute\",
/// \"ec2:DescribeSubnets\",
/// \"ec2:DescribeSecurityGroups\",
/// \"ec2:DescribeNetworkInterfaces\",
/// \"ec2:CreateNetworkInterface\",
/// \"ec2:CreateNetworkInterfacePermission\",
/// \"ec2:DeleteNetworkInterface\"
/// ],
/// \"Resource\": [
/// \"*\"
/// ]
/// }
/// ]
/// }
/// ", testClusterArn,testClusterArn1);
/// }))
/// .build());
///
/// var test = new FirehoseDeliveryStream("test", FirehoseDeliveryStreamArgs.builder()
/// .name("pulumi-kinesis-firehose-os")
/// .destination("opensearch")
/// .opensearchConfiguration(FirehoseDeliveryStreamOpensearchConfigurationArgs.builder()
/// .domainArn(testCluster.arn())
/// .roleArn(firehose.arn())
/// .indexName("test")
/// .s3Configuration(FirehoseDeliveryStreamOpensearchConfigurationS3ConfigurationArgs.builder()
/// .roleArn(firehose.arn())
/// .bucketArn(bucket.arn())
/// .build())
/// .vpcConfig(FirehoseDeliveryStreamOpensearchConfigurationVpcConfigArgs.builder()
/// .subnetIds(
/// firstAwsSubnet.id(),
/// second.id())
/// .securityGroupIds(first.id())
/// .roleArn(firehose.arn())
/// .build())
/// .build())
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(firehose_opensearch)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// testCluster:
/// type: aws:opensearch:Domain
/// name: test_cluster
/// properties:
/// domainName: es-test
/// clusterConfig:
/// instanceCount: 2
/// zoneAwarenessEnabled: true
/// instanceType: m4.large.search
/// ebsOptions:
/// ebsEnabled: true
/// volumeSize: 10
/// vpcOptions:
/// securityGroupIds:
/// - ${first.id}
/// subnetIds:
/// - ${firstAwsSubnet.id}
/// - ${second.id}
/// firehose-opensearch:
/// type: aws:iam:RolePolicy
/// properties:
/// name: opensearch
/// role: ${firehose.id}
/// policy: |
/// {
/// \"Version\": \"2012-10-17\",
/// \"Statement\": [
/// {
/// \"Effect\": \"Allow\",
/// \"Action\": [
/// \"es:*\"
/// ],
/// \"Resource\": [
/// \"${testCluster.arn}\",
/// \"${testCluster.arn}/*\"
/// ]
/// },
/// {
/// \"Effect\": \"Allow\",
/// \"Action\": [
/// \"ec2:DescribeVpcs\",
/// \"ec2:DescribeVpcAttribute\",
/// \"ec2:DescribeSubnets\",
/// \"ec2:DescribeSecurityGroups\",
/// \"ec2:DescribeNetworkInterfaces\",
/// \"ec2:CreateNetworkInterface\",
/// \"ec2:CreateNetworkInterfacePermission\",
/// \"ec2:DeleteNetworkInterface\"
/// ],
/// \"Resource\": [
/// \"*\"
/// ]
/// }
/// ]
/// }
/// test:
/// type: aws:kinesis:FirehoseDeliveryStream
/// properties:
/// name: pulumi-kinesis-firehose-os
/// destination: opensearch
/// opensearchConfiguration:
/// domainArn: ${testCluster.arn}
/// roleArn: ${firehose.arn}
/// indexName: test
/// s3Configuration:
/// roleArn: ${firehose.arn}
/// bucketArn: ${bucket.arn}
/// vpcConfig:
/// subnetIds:
/// - ${firstAwsSubnet.id}
/// - ${second.id}
/// securityGroupIds:
/// - ${first.id}
/// roleArn: ${firehose.arn}
/// options:
/// dependsOn:
/// - ${["firehose-opensearch"]}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### OpenSearch Serverless Destination
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const testCollection = new aws.opensearch.ServerlessCollection("test_collection", {name: "firehose-osserverless-test"});
/// const testStream = new aws.kinesis.FirehoseDeliveryStream("test_stream", {
/// name: "kinesis-firehose-test-stream",
/// destination: "opensearchserverless",
/// opensearchserverlessConfiguration: {
/// collectionEndpoint: testCollection.collectionEndpoint,
/// roleArn: firehoseRole.arn,
/// indexName: "test",
/// s3Configuration: {
/// roleArn: firehoseRole.arn,
/// bucketArn: bucket.arn,
/// bufferingSize: 10,
/// bufferingInterval: 400,
/// compressionFormat: "GZIP",
/// },
/// processingConfiguration: {
/// enabled: true,
/// processors: [{
/// type: "Lambda",
/// parameters: [{
/// parameterName: "LambdaArn",
/// parameterValue: `${lambdaProcessor.arn}:$LATEST`,
/// }],
/// }],
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test_collection = aws.opensearch.ServerlessCollection("test_collection", name="firehose-osserverless-test")
/// test_stream = aws.kinesis.FirehoseDeliveryStream("test_stream",
/// name="kinesis-firehose-test-stream",
/// destination="opensearchserverless",
/// opensearchserverless_configuration={
/// "collection_endpoint": test_collection.collection_endpoint,
/// "role_arn": firehose_role["arn"],
/// "index_name": "test",
/// "s3_configuration": {
/// "role_arn": firehose_role["arn"],
/// "bucket_arn": bucket["arn"],
/// "buffering_size": 10,
/// "buffering_interval": 400,
/// "compression_format": "GZIP",
/// },
/// "processing_configuration": {
/// "enabled": True,
/// "processors": [{
/// "type": "Lambda",
/// "parameters": [{
/// "parameter_name": "LambdaArn",
/// "parameter_value": f"{lambda_processor['arn']}:$LATEST",
/// }],
/// }],
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
/// var testCollection = new Aws.OpenSearch.ServerlessCollection("test_collection", new()
/// {
/// Name = "firehose-osserverless-test",
/// });
///
/// var testStream = new Aws.Kinesis.FirehoseDeliveryStream("test_stream", new()
/// {
/// Name = "kinesis-firehose-test-stream",
/// Destination = "opensearchserverless",
/// OpensearchserverlessConfiguration = new Aws.Kinesis.Inputs.FirehoseDeliveryStreamOpensearchserverlessConfigurationArgs
/// {
/// CollectionEndpoint = testCollection.CollectionEndpoint,
/// RoleArn = firehoseRole.Arn,
/// IndexName = "test",
/// S3Configuration = new Aws.Kinesis.Inputs.FirehoseDeliveryStreamOpensearchserverlessConfigurationS3ConfigurationArgs
/// {
/// RoleArn = firehoseRole.Arn,
/// BucketArn = bucket.Arn,
/// BufferingSize = 10,
/// BufferingInterval = 400,
/// CompressionFormat = "GZIP",
/// },
/// ProcessingConfiguration = new Aws.Kinesis.Inputs.FirehoseDeliveryStreamOpensearchserverlessConfigurationProcessingConfigurationArgs
/// {
/// Enabled = true,
/// Processors = new[]
/// {
/// new Aws.Kinesis.Inputs.FirehoseDeliveryStreamOpensearchserverlessConfigurationProcessingConfigurationProcessorArgs
/// {
/// Type = "Lambda",
/// Parameters = new[]
/// {
/// new Aws.Kinesis.Inputs.FirehoseDeliveryStreamOpensearchserverlessConfigurationProcessingConfigurationProcessorParameterArgs
/// {
/// ParameterName = "LambdaArn",
/// ParameterValue = $"{lambdaProcessor.Arn}:$LATEST",
/// },
/// },
/// },
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kinesis"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/opensearch"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// testCollection, err := opensearch.NewServerlessCollection(ctx, "test_collection", &opensearch.ServerlessCollectionArgs{
/// Name: pulumi.String("firehose-osserverless-test"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = kinesis.NewFirehoseDeliveryStream(ctx, "test_stream", &kinesis.FirehoseDeliveryStreamArgs{
/// Name:        pulumi.String("kinesis-firehose-test-stream"),
/// Destination: pulumi.String("opensearchserverless"),
/// OpensearchserverlessConfiguration: &kinesis.FirehoseDeliveryStreamOpensearchserverlessConfigurationArgs{
/// CollectionEndpoint: testCollection.CollectionEndpoint,
/// RoleArn:            pulumi.Any(firehoseRole.Arn),
/// IndexName:          pulumi.String("test"),
/// S3Configuration: &kinesis.FirehoseDeliveryStreamOpensearchserverlessConfigurationS3ConfigurationArgs{
/// RoleArn:           pulumi.Any(firehoseRole.Arn),
/// BucketArn:         pulumi.Any(bucket.Arn),
/// BufferingSize:     pulumi.Int(10),
/// BufferingInterval: pulumi.Int(400),
/// CompressionFormat: pulumi.String("GZIP"),
/// },
/// ProcessingConfiguration: &kinesis.FirehoseDeliveryStreamOpensearchserverlessConfigurationProcessingConfigurationArgs{
/// Enabled: pulumi.Bool(true),
/// Processors: kinesis.FirehoseDeliveryStreamOpensearchserverlessConfigurationProcessingConfigurationProcessorArray{
/// &kinesis.FirehoseDeliveryStreamOpensearchserverlessConfigurationProcessingConfigurationProcessorArgs{
/// Type: pulumi.String("Lambda"),
/// Parameters: kinesis.FirehoseDeliveryStreamOpensearchserverlessConfigurationProcessingConfigurationProcessorParameterArray{
/// &kinesis.FirehoseDeliveryStreamOpensearchserverlessConfigurationProcessingConfigurationProcessorParameterArgs{
/// ParameterName:  pulumi.String("LambdaArn"),
/// ParameterValue: pulumi.Sprintf("%v:$LATEST", lambdaProcessor.Arn),
/// },
/// },
/// },
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
/// import com.pulumi.aws.opensearch.ServerlessCollection;
/// import com.pulumi.aws.opensearch.ServerlessCollectionArgs;
/// import com.pulumi.aws.kinesis.FirehoseDeliveryStream;
/// import com.pulumi.aws.kinesis.FirehoseDeliveryStreamArgs;
/// import com.pulumi.aws.kinesis.inputs.FirehoseDeliveryStreamOpensearchserverlessConfigurationArgs;
/// import com.pulumi.aws.kinesis.inputs.FirehoseDeliveryStreamOpensearchserverlessConfigurationS3ConfigurationArgs;
/// import com.pulumi.aws.kinesis.inputs.FirehoseDeliveryStreamOpensearchserverlessConfigurationProcessingConfigurationArgs;
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
/// var testCollection = new ServerlessCollection("testCollection", ServerlessCollectionArgs.builder()
/// .name("firehose-osserverless-test")
/// .build());
///
/// var testStream = new FirehoseDeliveryStream("testStream", FirehoseDeliveryStreamArgs.builder()
/// .name("kinesis-firehose-test-stream")
/// .destination("opensearchserverless")
/// .opensearchserverlessConfiguration(FirehoseDeliveryStreamOpensearchserverlessConfigurationArgs.builder()
/// .collectionEndpoint(testCollection.collectionEndpoint())
/// .roleArn(firehoseRole.arn())
/// .indexName("test")
/// .s3Configuration(FirehoseDeliveryStreamOpensearchserverlessConfigurationS3ConfigurationArgs.builder()
/// .roleArn(firehoseRole.arn())
/// .bucketArn(bucket.arn())
/// .bufferingSize(10)
/// .bufferingInterval(400)
/// .compressionFormat("GZIP")
/// .build())
/// .processingConfiguration(FirehoseDeliveryStreamOpensearchserverlessConfigurationProcessingConfigurationArgs.builder()
/// .enabled(true)
/// .processors(FirehoseDeliveryStreamOpensearchserverlessConfigurationProcessingConfigurationProcessorArgs.builder()
/// .type("Lambda")
/// .parameters(FirehoseDeliveryStreamOpensearchserverlessConfigurationProcessingConfigurationProcessorParameterArgs.builder()
/// .parameterName("LambdaArn")
/// .parameterValue(String.format("%s:$LATEST", lambdaProcessor.arn()))
/// .build())
/// .build())
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// testCollection:
/// type: aws:opensearch:ServerlessCollection
/// name: test_collection
/// properties:
/// name: firehose-osserverless-test
/// testStream:
/// type: aws:kinesis:FirehoseDeliveryStream
/// name: test_stream
/// properties:
/// name: kinesis-firehose-test-stream
/// destination: opensearchserverless
/// opensearchserverlessConfiguration:
/// collectionEndpoint: ${testCollection.collectionEndpoint}
/// roleArn: ${firehoseRole.arn}
/// indexName: test
/// s3Configuration:
/// roleArn: ${firehoseRole.arn}
/// bucketArn: ${bucket.arn}
/// bufferingSize: 10
/// bufferingInterval: 400
/// compressionFormat: GZIP
/// processingConfiguration:
/// enabled: 'true'
/// processors:
/// - type: Lambda
/// parameters:
/// - parameterName: LambdaArn
/// parameterValue: ${lambdaProcessor.arn}:$LATEST
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Iceberg Destination
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.getCallerIdentity({});
/// const currentGetPartition = aws.getPartition({});
/// const currentGetRegion = aws.getRegion({});
/// const bucket = new aws.s3.Bucket("bucket", {
/// bucket: "test-bucket",
/// forceDestroy: true,
/// });
/// const test = new aws.glue.CatalogDatabase("test", {name: "test"});
/// const testCatalogTable = new aws.glue.CatalogTable("test", {
/// name: "test",
/// databaseName: test.name,
/// parameters: {
/// format: "parquet",
/// },
/// tableType: "EXTERNAL_TABLE",
/// openTableFormatInput: {
/// icebergInput: {
/// metadataOperation: "CREATE",
/// version: "2",
/// },
/// },
/// storageDescriptor: {
/// location: pulumi.interpolate`s3://${bucket.id}`,
/// columns: [{
/// name: "my_column_1",
/// type: "int",
/// }],
/// },
/// });
/// const testStream = new aws.kinesis.FirehoseDeliveryStream("test_stream", {
/// name: "kinesis-firehose-test-stream",
/// destination: "iceberg",
/// icebergConfiguration: {
/// roleArn: firehoseRole.arn,
/// catalogArn: Promise.all([currentGetPartition, currentGetRegion, current]).then(([currentGetPartition, currentGetRegion, current]) => `arn:${currentGetPartition.partition}:glue:${currentGetRegion.region}:${current.accountId}:catalog`),
/// bufferingSize: 10,
/// bufferingInterval: 400,
/// s3Configuration: {
/// roleArn: firehoseRole.arn,
/// bucketArn: bucket.arn,
/// },
/// destinationTableConfigurations: [{
/// databaseName: test.name,
/// tableName: testCatalogTable.name,
/// }],
/// processingConfiguration: {
/// enabled: true,
/// processors: [{
/// type: "Lambda",
/// parameters: [{
/// parameterName: "LambdaArn",
/// parameterValue: `${lambdaProcessor.arn}:$LATEST`,
/// }],
/// }],
/// },
/// },
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
/// bucket="test-bucket",
/// force_destroy=True)
/// test = aws.glue.CatalogDatabase("test", name="test")
/// test_catalog_table = aws.glue.CatalogTable("test",
/// name="test",
/// database_name=test.name,
/// parameters={
/// "format": "parquet",
/// },
/// table_type="EXTERNAL_TABLE",
/// open_table_format_input={
/// "iceberg_input": {
/// "metadata_operation": "CREATE",
/// "version": "2",
/// },
/// },
/// storage_descriptor={
/// "location": bucket.id.apply(lambda id: f"s3://{id}"),
/// "columns": [{
/// "name": "my_column_1",
/// "type": "int",
/// }],
/// })
/// test_stream = aws.kinesis.FirehoseDeliveryStream("test_stream",
/// name="kinesis-firehose-test-stream",
/// destination="iceberg",
/// iceberg_configuration={
/// "role_arn": firehose_role["arn"],
/// "catalog_arn": f"arn:{current_get_partition.partition}:glue:{current_get_region.region}:{current.account_id}:catalog",
/// "buffering_size": 10,
/// "buffering_interval": 400,
/// "s3_configuration": {
/// "role_arn": firehose_role["arn"],
/// "bucket_arn": bucket.arn,
/// },
/// "destination_table_configurations": [{
/// "database_name": test.name,
/// "table_name": test_catalog_table.name,
/// }],
/// "processing_configuration": {
/// "enabled": True,
/// "processors": [{
/// "type": "Lambda",
/// "parameters": [{
/// "parameter_name": "LambdaArn",
/// "parameter_value": f"{lambda_processor['arn']}:$LATEST",
/// }],
/// }],
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
/// var current = Aws.GetCallerIdentity.Invoke();
///
/// var currentGetPartition = Aws.GetPartition.Invoke();
///
/// var currentGetRegion = Aws.GetRegion.Invoke();
///
/// var bucket = new Aws.S3.Bucket("bucket", new()
/// {
/// BucketName = "test-bucket",
/// ForceDestroy = true,
/// });
///
/// var test = new Aws.Glue.CatalogDatabase("test", new()
/// {
/// Name = "test",
/// });
///
/// var testCatalogTable = new Aws.Glue.CatalogTable("test", new()
/// {
/// Name = "test",
/// DatabaseName = test.Name,
/// Parameters =
/// {
/// { "format", "parquet" },
/// },
/// TableType = "EXTERNAL_TABLE",
/// OpenTableFormatInput = new Aws.Glue.Inputs.CatalogTableOpenTableFormatInputArgs
/// {
/// IcebergInput = new Aws.Glue.Inputs.CatalogTableOpenTableFormatInputIcebergInputArgs
/// {
/// MetadataOperation = "CREATE",
/// Version = "2",
/// },
/// },
/// StorageDescriptor = new Aws.Glue.Inputs.CatalogTableStorageDescriptorArgs
/// {
/// Location = bucket.Id.Apply(id => $"s3://{id}"),
/// Columns = new[]
/// {
/// new Aws.Glue.Inputs.CatalogTableStorageDescriptorColumnArgs
/// {
/// Name = "my_column_1",
/// Type = "int",
/// },
/// },
/// },
/// });
///
/// var testStream = new Aws.Kinesis.FirehoseDeliveryStream("test_stream", new()
/// {
/// Name = "kinesis-firehose-test-stream",
/// Destination = "iceberg",
/// IcebergConfiguration = new Aws.Kinesis.Inputs.FirehoseDeliveryStreamIcebergConfigurationArgs
/// {
/// RoleArn = firehoseRole.Arn,
/// CatalogArn = Output.Tuple(currentGetPartition, currentGetRegion, current).Apply(values =>
/// {
/// var currentGetPartition = values.Item1;
/// var currentGetRegion = values.Item2;
/// var current = values.Item3;
/// return $"arn:{currentGetPartition.Apply(getPartitionResult => getPartitionResult.Partition)}:glue:{currentGetRegion.Apply(getRegionResult => getRegionResult.Region)}:{current.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId)}:catalog";
/// }),
/// BufferingSize = 10,
/// BufferingInterval = 400,
/// S3Configuration = new Aws.Kinesis.Inputs.FirehoseDeliveryStreamIcebergConfigurationS3ConfigurationArgs
/// {
/// RoleArn = firehoseRole.Arn,
/// BucketArn = bucket.Arn,
/// },
/// DestinationTableConfigurations = new[]
/// {
/// new Aws.Kinesis.Inputs.FirehoseDeliveryStreamIcebergConfigurationDestinationTableConfigurationArgs
/// {
/// DatabaseName = test.Name,
/// TableName = testCatalogTable.Name,
/// },
/// },
/// ProcessingConfiguration = new Aws.Kinesis.Inputs.FirehoseDeliveryStreamIcebergConfigurationProcessingConfigurationArgs
/// {
/// Enabled = true,
/// Processors = new[]
/// {
/// new Aws.Kinesis.Inputs.FirehoseDeliveryStreamIcebergConfigurationProcessingConfigurationProcessorArgs
/// {
/// Type = "Lambda",
/// Parameters = new[]
/// {
/// new Aws.Kinesis.Inputs.FirehoseDeliveryStreamIcebergConfigurationProcessingConfigurationProcessorParameterArgs
/// {
/// ParameterName = "LambdaArn",
/// ParameterValue = $"{lambdaProcessor.Arn}:$LATEST",
/// },
/// },
/// },
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
/// "fmt"
///
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/glue"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kinesis"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// current, err := aws.GetCallerIdentity(ctx, &aws.GetCallerIdentityArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// currentGetPartition, err := aws.GetPartition(ctx, &aws.GetPartitionArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// currentGetRegion, err := aws.GetRegion(ctx, &aws.GetRegionArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// bucket, err := s3.NewBucket(ctx, "bucket", &s3.BucketArgs{
/// Bucket:       pulumi.String("test-bucket"),
/// ForceDestroy: pulumi.Bool(true),
/// })
/// if err != nil {
/// return err
/// }
/// test, err := glue.NewCatalogDatabase(ctx, "test", &glue.CatalogDatabaseArgs{
/// Name: pulumi.String("test"),
/// })
/// if err != nil {
/// return err
/// }
/// testCatalogTable, err := glue.NewCatalogTable(ctx, "test", &glue.CatalogTableArgs{
/// Name:         pulumi.String("test"),
/// DatabaseName: test.Name,
/// Parameters: pulumi.StringMap{
/// "format": pulumi.String("parquet"),
/// },
/// TableType: pulumi.String("EXTERNAL_TABLE"),
/// OpenTableFormatInput: &glue.CatalogTableOpenTableFormatInputArgs{
/// IcebergInput: &glue.CatalogTableOpenTableFormatInputIcebergInputArgs{
/// MetadataOperation: pulumi.String("CREATE"),
/// Version:           pulumi.String("2"),
/// },
/// },
/// StorageDescriptor: &glue.CatalogTableStorageDescriptorArgs{
/// Location: bucket.ID().ApplyT(func(id string) (string, error) {
/// return fmt.Sprintf("s3://%v", id), nil
/// }).(pulumi.StringOutput),
/// Columns: glue.CatalogTableStorageDescriptorColumnArray{
/// &glue.CatalogTableStorageDescriptorColumnArgs{
/// Name: pulumi.String("my_column_1"),
/// Type: pulumi.String("int"),
/// },
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = kinesis.NewFirehoseDeliveryStream(ctx, "test_stream", &kinesis.FirehoseDeliveryStreamArgs{
/// Name:        pulumi.String("kinesis-firehose-test-stream"),
/// Destination: pulumi.String("iceberg"),
/// IcebergConfiguration: &kinesis.FirehoseDeliveryStreamIcebergConfigurationArgs{
/// RoleArn:           pulumi.Any(firehoseRole.Arn),
/// CatalogArn:        pulumi.Sprintf("arn:%v:glue:%v:%v:catalog", currentGetPartition.Partition, currentGetRegion.Region, current.AccountId),
/// BufferingSize:     pulumi.Int(10),
/// BufferingInterval: pulumi.Int(400),
/// S3Configuration: &kinesis.FirehoseDeliveryStreamIcebergConfigurationS3ConfigurationArgs{
/// RoleArn:   pulumi.Any(firehoseRole.Arn),
/// BucketArn: bucket.Arn,
/// },
/// DestinationTableConfigurations: kinesis.FirehoseDeliveryStreamIcebergConfigurationDestinationTableConfigurationArray{
/// &kinesis.FirehoseDeliveryStreamIcebergConfigurationDestinationTableConfigurationArgs{
/// DatabaseName: test.Name,
/// TableName:    testCatalogTable.Name,
/// },
/// },
/// ProcessingConfiguration: &kinesis.FirehoseDeliveryStreamIcebergConfigurationProcessingConfigurationArgs{
/// Enabled: pulumi.Bool(true),
/// Processors: kinesis.FirehoseDeliveryStreamIcebergConfigurationProcessingConfigurationProcessorArray{
/// &kinesis.FirehoseDeliveryStreamIcebergConfigurationProcessingConfigurationProcessorArgs{
/// Type: pulumi.String("Lambda"),
/// Parameters: kinesis.FirehoseDeliveryStreamIcebergConfigurationProcessingConfigurationProcessorParameterArray{
/// &kinesis.FirehoseDeliveryStreamIcebergConfigurationProcessingConfigurationProcessorParameterArgs{
/// ParameterName:  pulumi.String("LambdaArn"),
/// ParameterValue: pulumi.Sprintf("%v:$LATEST", lambdaProcessor.Arn),
/// },
/// },
/// },
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
/// import com.pulumi.aws.kinesis.FirehoseDeliveryStream;
/// import com.pulumi.aws.kinesis.FirehoseDeliveryStreamArgs;
/// import com.pulumi.aws.kinesis.inputs.FirehoseDeliveryStreamIcebergConfigurationArgs;
/// import com.pulumi.aws.kinesis.inputs.FirehoseDeliveryStreamIcebergConfigurationS3ConfigurationArgs;
/// import com.pulumi.aws.kinesis.inputs.FirehoseDeliveryStreamIcebergConfigurationProcessingConfigurationArgs;
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
/// final var current = AwsFunctions.getCallerIdentity(GetCallerIdentityArgs.builder()
/// .build());
///
/// final var currentGetPartition = AwsFunctions.getPartition(GetPartitionArgs.builder()
/// .build());
///
/// final var currentGetRegion = AwsFunctions.getRegion(GetRegionArgs.builder()
/// .build());
///
/// var bucket = new Bucket("bucket", BucketArgs.builder()
/// .bucket("test-bucket")
/// .forceDestroy(true)
/// .build());
///
/// var test = new CatalogDatabase("test", CatalogDatabaseArgs.builder()
/// .name("test")
/// .build());
///
/// var testCatalogTable = new CatalogTable("testCatalogTable", CatalogTableArgs.builder()
/// .name("test")
/// .databaseName(test.name())
/// .parameters(Map.of("format", "parquet"))
/// .tableType("EXTERNAL_TABLE")
/// .openTableFormatInput(CatalogTableOpenTableFormatInputArgs.builder()
/// .icebergInput(CatalogTableOpenTableFormatInputIcebergInputArgs.builder()
/// .metadataOperation("CREATE")
/// .version("2")
/// .build())
/// .build())
/// .storageDescriptor(CatalogTableStorageDescriptorArgs.builder()
/// .location(bucket.id().applyValue(_id -> String.format("s3://%s", _id)))
/// .columns(CatalogTableStorageDescriptorColumnArgs.builder()
/// .name("my_column_1")
/// .type("int")
/// .build())
/// .build())
/// .build());
///
/// var testStream = new FirehoseDeliveryStream("testStream", FirehoseDeliveryStreamArgs.builder()
/// .name("kinesis-firehose-test-stream")
/// .destination("iceberg")
/// .icebergConfiguration(FirehoseDeliveryStreamIcebergConfigurationArgs.builder()
/// .roleArn(firehoseRole.arn())
/// .catalogArn(String.format("arn:%s:glue:%s:%s:catalog", currentGetPartition.partition(),currentGetRegion.region(),current.accountId()))
/// .bufferingSize(10)
/// .bufferingInterval(400)
/// .s3Configuration(FirehoseDeliveryStreamIcebergConfigurationS3ConfigurationArgs.builder()
/// .roleArn(firehoseRole.arn())
/// .bucketArn(bucket.arn())
/// .build())
/// .destinationTableConfigurations(FirehoseDeliveryStreamIcebergConfigurationDestinationTableConfigurationArgs.builder()
/// .databaseName(test.name())
/// .tableName(testCatalogTable.name())
/// .build())
/// .processingConfiguration(FirehoseDeliveryStreamIcebergConfigurationProcessingConfigurationArgs.builder()
/// .enabled(true)
/// .processors(FirehoseDeliveryStreamIcebergConfigurationProcessingConfigurationProcessorArgs.builder()
/// .type("Lambda")
/// .parameters(FirehoseDeliveryStreamIcebergConfigurationProcessingConfigurationProcessorParameterArgs.builder()
/// .parameterName("LambdaArn")
/// .parameterValue(String.format("%s:$LATEST", lambdaProcessor.arn()))
/// .build())
/// .build())
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// bucket:
/// type: aws:s3:Bucket
/// properties:
/// bucket: test-bucket
/// forceDestroy: true
/// test:
/// type: aws:glue:CatalogDatabase
/// properties:
/// name: test
/// testCatalogTable:
/// type: aws:glue:CatalogTable
/// name: test
/// properties:
/// name: test
/// databaseName: ${test.name}
/// parameters:
/// format: parquet
/// tableType: EXTERNAL_TABLE
/// openTableFormatInput:
/// icebergInput:
/// metadataOperation: CREATE
/// version: 2
/// storageDescriptor:
/// location: s3://${bucket.id}
/// columns:
/// - name: my_column_1
/// type: int
/// testStream:
/// type: aws:kinesis:FirehoseDeliveryStream
/// name: test_stream
/// properties:
/// name: kinesis-firehose-test-stream
/// destination: iceberg
/// icebergConfiguration:
/// roleArn: ${firehoseRole.arn}
/// catalogArn: arn:${currentGetPartition.partition}:glue:${currentGetRegion.region}:${current.accountId}:catalog
/// bufferingSize: 10
/// bufferingInterval: 400
/// s3Configuration:
/// roleArn: ${firehoseRole.arn}
/// bucketArn: ${bucket.arn}
/// destinationTableConfigurations:
/// - databaseName: ${test.name}
/// tableName: ${testCatalogTable.name}
/// processingConfiguration:
/// enabled: 'true'
/// processors:
/// - type: Lambda
/// parameters:
/// - parameterName: LambdaArn
/// parameterValue: ${lambdaProcessor.arn}:$LATEST
/// variables:
/// current:
/// fn::invoke:
/// function: aws:getCallerIdentity
/// arguments: {}
/// currentGetPartition:
/// fn::invoke:
/// function: aws:getPartition
/// arguments: {}
/// currentGetRegion:
/// fn::invoke:
/// function: aws:getRegion
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Splunk Destination
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const testStream = new aws.kinesis.FirehoseDeliveryStream("test_stream", {
/// name: "kinesis-firehose-test-stream",
/// destination: "splunk",
/// splunkConfiguration: {
/// hecEndpoint: "https://http-inputs-mydomain.splunkcloud.com:443",
/// hecToken: "51D4DA16-C61B-4F5F-8EC7-ED4301342A4A",
/// hecAcknowledgmentTimeout: 600,
/// hecEndpointType: "Event",
/// s3BackupMode: "FailedEventsOnly",
/// s3Configuration: {
/// roleArn: firehose.arn,
/// bucketArn: bucket.arn,
/// bufferingSize: 10,
/// bufferingInterval: 400,
/// compressionFormat: "GZIP",
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test_stream = aws.kinesis.FirehoseDeliveryStream("test_stream",
/// name="kinesis-firehose-test-stream",
/// destination="splunk",
/// splunk_configuration={
/// "hec_endpoint": "https://http-inputs-mydomain.splunkcloud.com:443",
/// "hec_token": "51D4DA16-C61B-4F5F-8EC7-ED4301342A4A",
/// "hec_acknowledgment_timeout": 600,
/// "hec_endpoint_type": "Event",
/// "s3_backup_mode": "FailedEventsOnly",
/// "s3_configuration": {
/// "role_arn": firehose["arn"],
/// "bucket_arn": bucket["arn"],
/// "buffering_size": 10,
/// "buffering_interval": 400,
/// "compression_format": "GZIP",
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
/// var testStream = new Aws.Kinesis.FirehoseDeliveryStream("test_stream", new()
/// {
/// Name = "kinesis-firehose-test-stream",
/// Destination = "splunk",
/// SplunkConfiguration = new Aws.Kinesis.Inputs.FirehoseDeliveryStreamSplunkConfigurationArgs
/// {
/// HecEndpoint = "https://http-inputs-mydomain.splunkcloud.com:443",
/// HecToken = "51D4DA16-C61B-4F5F-8EC7-ED4301342A4A",
/// HecAcknowledgmentTimeout = 600,
/// HecEndpointType = "Event",
/// S3BackupMode = "FailedEventsOnly",
/// S3Configuration = new Aws.Kinesis.Inputs.FirehoseDeliveryStreamSplunkConfigurationS3ConfigurationArgs
/// {
/// RoleArn = firehose.Arn,
/// BucketArn = bucket.Arn,
/// BufferingSize = 10,
/// BufferingInterval = 400,
/// CompressionFormat = "GZIP",
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kinesis"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := kinesis.NewFirehoseDeliveryStream(ctx, "test_stream", &kinesis.FirehoseDeliveryStreamArgs{
/// Name:        pulumi.String("kinesis-firehose-test-stream"),
/// Destination: pulumi.String("splunk"),
/// SplunkConfiguration: &kinesis.FirehoseDeliveryStreamSplunkConfigurationArgs{
/// HecEndpoint:              pulumi.String("https://http-inputs-mydomain.splunkcloud.com:443"),
/// HecToken:                 pulumi.String("51D4DA16-C61B-4F5F-8EC7-ED4301342A4A"),
/// HecAcknowledgmentTimeout: pulumi.Int(600),
/// HecEndpointType:          pulumi.String("Event"),
/// S3BackupMode:             pulumi.String("FailedEventsOnly"),
/// S3Configuration: &kinesis.FirehoseDeliveryStreamSplunkConfigurationS3ConfigurationArgs{
/// RoleArn:           pulumi.Any(firehose.Arn),
/// BucketArn:         pulumi.Any(bucket.Arn),
/// BufferingSize:     pulumi.Int(10),
/// BufferingInterval: pulumi.Int(400),
/// CompressionFormat: pulumi.String("GZIP"),
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
/// import com.pulumi.aws.kinesis.FirehoseDeliveryStream;
/// import com.pulumi.aws.kinesis.FirehoseDeliveryStreamArgs;
/// import com.pulumi.aws.kinesis.inputs.FirehoseDeliveryStreamSplunkConfigurationArgs;
/// import com.pulumi.aws.kinesis.inputs.FirehoseDeliveryStreamSplunkConfigurationS3ConfigurationArgs;
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
/// var testStream = new FirehoseDeliveryStream("testStream", FirehoseDeliveryStreamArgs.builder()
/// .name("kinesis-firehose-test-stream")
/// .destination("splunk")
/// .splunkConfiguration(FirehoseDeliveryStreamSplunkConfigurationArgs.builder()
/// .hecEndpoint("https://http-inputs-mydomain.splunkcloud.com:443")
/// .hecToken("51D4DA16-C61B-4F5F-8EC7-ED4301342A4A")
/// .hecAcknowledgmentTimeout(600)
/// .hecEndpointType("Event")
/// .s3BackupMode("FailedEventsOnly")
/// .s3Configuration(FirehoseDeliveryStreamSplunkConfigurationS3ConfigurationArgs.builder()
/// .roleArn(firehose.arn())
/// .bucketArn(bucket.arn())
/// .bufferingSize(10)
/// .bufferingInterval(400)
/// .compressionFormat("GZIP")
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// testStream:
/// type: aws:kinesis:FirehoseDeliveryStream
/// name: test_stream
/// properties:
/// name: kinesis-firehose-test-stream
/// destination: splunk
/// splunkConfiguration:
/// hecEndpoint: https://http-inputs-mydomain.splunkcloud.com:443
/// hecToken: 51D4DA16-C61B-4F5F-8EC7-ED4301342A4A
/// hecAcknowledgmentTimeout: 600
/// hecEndpointType: Event
/// s3BackupMode: FailedEventsOnly
/// s3Configuration:
/// roleArn: ${firehose.arn}
/// bucketArn: ${bucket.arn}
/// bufferingSize: 10
/// bufferingInterval: 400
/// compressionFormat: GZIP
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### HTTP Endpoint (e.g., New Relic) Destination
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const testStream = new aws.kinesis.FirehoseDeliveryStream("test_stream", {
/// name: "kinesis-firehose-test-stream",
/// destination: "http_endpoint",
/// httpEndpointConfiguration: {
/// url: "https://aws-api.newrelic.com/firehose/v1",
/// name: "New Relic",
/// accessKey: "my-key",
/// bufferingSize: 15,
/// bufferingInterval: 600,
/// roleArn: firehose.arn,
/// s3BackupMode: "FailedDataOnly",
/// s3Configuration: {
/// roleArn: firehose.arn,
/// bucketArn: bucket.arn,
/// bufferingSize: 10,
/// bufferingInterval: 400,
/// compressionFormat: "GZIP",
/// },
/// requestConfiguration: {
/// contentEncoding: "GZIP",
/// commonAttributes: [
/// {
/// name: "testname",
/// value: "testvalue",
/// },
/// {
/// name: "testname2",
/// value: "testvalue2",
/// },
/// ],
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test_stream = aws.kinesis.FirehoseDeliveryStream("test_stream",
/// name="kinesis-firehose-test-stream",
/// destination="http_endpoint",
/// http_endpoint_configuration={
/// "url": "https://aws-api.newrelic.com/firehose/v1",
/// "name": "New Relic",
/// "access_key": "my-key",
/// "buffering_size": 15,
/// "buffering_interval": 600,
/// "role_arn": firehose["arn"],
/// "s3_backup_mode": "FailedDataOnly",
/// "s3_configuration": {
/// "role_arn": firehose["arn"],
/// "bucket_arn": bucket["arn"],
/// "buffering_size": 10,
/// "buffering_interval": 400,
/// "compression_format": "GZIP",
/// },
/// "request_configuration": {
/// "content_encoding": "GZIP",
/// "common_attributes": [
/// {
/// "name": "testname",
/// "value": "testvalue",
/// },
/// {
/// "name": "testname2",
/// "value": "testvalue2",
/// },
/// ],
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
/// var testStream = new Aws.Kinesis.FirehoseDeliveryStream("test_stream", new()
/// {
/// Name = "kinesis-firehose-test-stream",
/// Destination = "http_endpoint",
/// HttpEndpointConfiguration = new Aws.Kinesis.Inputs.FirehoseDeliveryStreamHttpEndpointConfigurationArgs
/// {
/// Url = "https://aws-api.newrelic.com/firehose/v1",
/// Name = "New Relic",
/// AccessKey = "my-key",
/// BufferingSize = 15,
/// BufferingInterval = 600,
/// RoleArn = firehose.Arn,
/// S3BackupMode = "FailedDataOnly",
/// S3Configuration = new Aws.Kinesis.Inputs.FirehoseDeliveryStreamHttpEndpointConfigurationS3ConfigurationArgs
/// {
/// RoleArn = firehose.Arn,
/// BucketArn = bucket.Arn,
/// BufferingSize = 10,
/// BufferingInterval = 400,
/// CompressionFormat = "GZIP",
/// },
/// RequestConfiguration = new Aws.Kinesis.Inputs.FirehoseDeliveryStreamHttpEndpointConfigurationRequestConfigurationArgs
/// {
/// ContentEncoding = "GZIP",
/// CommonAttributes = new[]
/// {
/// new Aws.Kinesis.Inputs.FirehoseDeliveryStreamHttpEndpointConfigurationRequestConfigurationCommonAttributeArgs
/// {
/// Name = "testname",
/// Value = "testvalue",
/// },
/// new Aws.Kinesis.Inputs.FirehoseDeliveryStreamHttpEndpointConfigurationRequestConfigurationCommonAttributeArgs
/// {
/// Name = "testname2",
/// Value = "testvalue2",
/// },
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kinesis"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := kinesis.NewFirehoseDeliveryStream(ctx, "test_stream", &kinesis.FirehoseDeliveryStreamArgs{
/// Name:        pulumi.String("kinesis-firehose-test-stream"),
/// Destination: pulumi.String("http_endpoint"),
/// HttpEndpointConfiguration: &kinesis.FirehoseDeliveryStreamHttpEndpointConfigurationArgs{
/// Url:               pulumi.String("https://aws-api.newrelic.com/firehose/v1"),
/// Name:              pulumi.String("New Relic"),
/// AccessKey:         pulumi.String("my-key"),
/// BufferingSize:     pulumi.Int(15),
/// BufferingInterval: pulumi.Int(600),
/// RoleArn:           pulumi.Any(firehose.Arn),
/// S3BackupMode:      pulumi.String("FailedDataOnly"),
/// S3Configuration: &kinesis.FirehoseDeliveryStreamHttpEndpointConfigurationS3ConfigurationArgs{
/// RoleArn:           pulumi.Any(firehose.Arn),
/// BucketArn:         pulumi.Any(bucket.Arn),
/// BufferingSize:     pulumi.Int(10),
/// BufferingInterval: pulumi.Int(400),
/// CompressionFormat: pulumi.String("GZIP"),
/// },
/// RequestConfiguration: &kinesis.FirehoseDeliveryStreamHttpEndpointConfigurationRequestConfigurationArgs{
/// ContentEncoding: pulumi.String("GZIP"),
/// CommonAttributes: kinesis.FirehoseDeliveryStreamHttpEndpointConfigurationRequestConfigurationCommonAttributeArray{
/// &kinesis.FirehoseDeliveryStreamHttpEndpointConfigurationRequestConfigurationCommonAttributeArgs{
/// Name:  pulumi.String("testname"),
/// Value: pulumi.String("testvalue"),
/// },
/// &kinesis.FirehoseDeliveryStreamHttpEndpointConfigurationRequestConfigurationCommonAttributeArgs{
/// Name:  pulumi.String("testname2"),
/// Value: pulumi.String("testvalue2"),
/// },
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
/// import com.pulumi.aws.kinesis.FirehoseDeliveryStream;
/// import com.pulumi.aws.kinesis.FirehoseDeliveryStreamArgs;
/// import com.pulumi.aws.kinesis.inputs.FirehoseDeliveryStreamHttpEndpointConfigurationArgs;
/// import com.pulumi.aws.kinesis.inputs.FirehoseDeliveryStreamHttpEndpointConfigurationS3ConfigurationArgs;
/// import com.pulumi.aws.kinesis.inputs.FirehoseDeliveryStreamHttpEndpointConfigurationRequestConfigurationArgs;
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
/// var testStream = new FirehoseDeliveryStream("testStream", FirehoseDeliveryStreamArgs.builder()
/// .name("kinesis-firehose-test-stream")
/// .destination("http_endpoint")
/// .httpEndpointConfiguration(FirehoseDeliveryStreamHttpEndpointConfigurationArgs.builder()
/// .url("https://aws-api.newrelic.com/firehose/v1")
/// .name("New Relic")
/// .accessKey("my-key")
/// .bufferingSize(15)
/// .bufferingInterval(600)
/// .roleArn(firehose.arn())
/// .s3BackupMode("FailedDataOnly")
/// .s3Configuration(FirehoseDeliveryStreamHttpEndpointConfigurationS3ConfigurationArgs.builder()
/// .roleArn(firehose.arn())
/// .bucketArn(bucket.arn())
/// .bufferingSize(10)
/// .bufferingInterval(400)
/// .compressionFormat("GZIP")
/// .build())
/// .requestConfiguration(FirehoseDeliveryStreamHttpEndpointConfigurationRequestConfigurationArgs.builder()
/// .contentEncoding("GZIP")
/// .commonAttributes(
/// FirehoseDeliveryStreamHttpEndpointConfigurationRequestConfigurationCommonAttributeArgs.builder()
/// .name("testname")
/// .value("testvalue")
/// .build(),
/// FirehoseDeliveryStreamHttpEndpointConfigurationRequestConfigurationCommonAttributeArgs.builder()
/// .name("testname2")
/// .value("testvalue2")
/// .build())
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// testStream:
/// type: aws:kinesis:FirehoseDeliveryStream
/// name: test_stream
/// properties:
/// name: kinesis-firehose-test-stream
/// destination: http_endpoint
/// httpEndpointConfiguration:
/// url: https://aws-api.newrelic.com/firehose/v1
/// name: New Relic
/// accessKey: my-key
/// bufferingSize: 15
/// bufferingInterval: 600
/// roleArn: ${firehose.arn}
/// s3BackupMode: FailedDataOnly
/// s3Configuration:
/// roleArn: ${firehose.arn}
/// bucketArn: ${bucket.arn}
/// bufferingSize: 10
/// bufferingInterval: 400
/// compressionFormat: GZIP
/// requestConfiguration:
/// contentEncoding: GZIP
/// commonAttributes:
/// - name: testname
/// value: testvalue
/// - name: testname2
/// value: testvalue2
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Snowflake Destination
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const exampleSnowflakeDestination = new aws.kinesis.FirehoseDeliveryStream("example_snowflake_destination", {
/// name: "example-snowflake-destination",
/// destination: "snowflake",
/// snowflakeConfiguration: {
/// accountUrl: "https://example.snowflakecomputing.com",
/// bufferingSize: 15,
/// bufferingInterval: 600,
/// database: "example-db",
/// privateKey: "...",
/// roleArn: firehose.arn,
/// schema: "example-schema",
/// table: "example-table",
/// user: "example-usr",
/// s3Configuration: {
/// roleArn: firehose.arn,
/// bucketArn: bucket.arn,
/// bufferingSize: 10,
/// bufferingInterval: 400,
/// compressionFormat: "GZIP",
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_snowflake_destination = aws.kinesis.FirehoseDeliveryStream("example_snowflake_destination",
/// name="example-snowflake-destination",
/// destination="snowflake",
/// snowflake_configuration={
/// "account_url": "https://example.snowflakecomputing.com",
/// "buffering_size": 15,
/// "buffering_interval": 600,
/// "database": "example-db",
/// "private_key": "...",
/// "role_arn": firehose["arn"],
/// "schema": "example-schema",
/// "table": "example-table",
/// "user": "example-usr",
/// "s3_configuration": {
/// "role_arn": firehose["arn"],
/// "bucket_arn": bucket["arn"],
/// "buffering_size": 10,
/// "buffering_interval": 400,
/// "compression_format": "GZIP",
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
/// var exampleSnowflakeDestination = new Aws.Kinesis.FirehoseDeliveryStream("example_snowflake_destination", new()
/// {
/// Name = "example-snowflake-destination",
/// Destination = "snowflake",
/// SnowflakeConfiguration = new Aws.Kinesis.Inputs.FirehoseDeliveryStreamSnowflakeConfigurationArgs
/// {
/// AccountUrl = "https://example.snowflakecomputing.com",
/// BufferingSize = 15,
/// BufferingInterval = 600,
/// Database = "example-db",
/// PrivateKey = "...",
/// RoleArn = firehose.Arn,
/// Schema = "example-schema",
/// Table = "example-table",
/// User = "example-usr",
/// S3Configuration = new Aws.Kinesis.Inputs.FirehoseDeliveryStreamSnowflakeConfigurationS3ConfigurationArgs
/// {
/// RoleArn = firehose.Arn,
/// BucketArn = bucket.Arn,
/// BufferingSize = 10,
/// BufferingInterval = 400,
/// CompressionFormat = "GZIP",
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kinesis"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := kinesis.NewFirehoseDeliveryStream(ctx, "example_snowflake_destination", &kinesis.FirehoseDeliveryStreamArgs{
/// Name:        pulumi.String("example-snowflake-destination"),
/// Destination: pulumi.String("snowflake"),
/// SnowflakeConfiguration: &kinesis.FirehoseDeliveryStreamSnowflakeConfigurationArgs{
/// AccountUrl:        pulumi.String("https://example.snowflakecomputing.com"),
/// BufferingSize:     pulumi.Int(15),
/// BufferingInterval: pulumi.Int(600),
/// Database:          pulumi.String("example-db"),
/// PrivateKey:        pulumi.String("..."),
/// RoleArn:           pulumi.Any(firehose.Arn),
/// Schema:            pulumi.String("example-schema"),
/// Table:             pulumi.String("example-table"),
/// User:              pulumi.String("example-usr"),
/// S3Configuration: &kinesis.FirehoseDeliveryStreamSnowflakeConfigurationS3ConfigurationArgs{
/// RoleArn:           pulumi.Any(firehose.Arn),
/// BucketArn:         pulumi.Any(bucket.Arn),
/// BufferingSize:     pulumi.Int(10),
/// BufferingInterval: pulumi.Int(400),
/// CompressionFormat: pulumi.String("GZIP"),
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
/// import com.pulumi.aws.kinesis.FirehoseDeliveryStream;
/// import com.pulumi.aws.kinesis.FirehoseDeliveryStreamArgs;
/// import com.pulumi.aws.kinesis.inputs.FirehoseDeliveryStreamSnowflakeConfigurationArgs;
/// import com.pulumi.aws.kinesis.inputs.FirehoseDeliveryStreamSnowflakeConfigurationS3ConfigurationArgs;
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
/// var exampleSnowflakeDestination = new FirehoseDeliveryStream("exampleSnowflakeDestination", FirehoseDeliveryStreamArgs.builder()
/// .name("example-snowflake-destination")
/// .destination("snowflake")
/// .snowflakeConfiguration(FirehoseDeliveryStreamSnowflakeConfigurationArgs.builder()
/// .accountUrl("https://example.snowflakecomputing.com")
/// .bufferingSize(15)
/// .bufferingInterval(600)
/// .database("example-db")
/// .privateKey("...")
/// .roleArn(firehose.arn())
/// .schema("example-schema")
/// .table("example-table")
/// .user("example-usr")
/// .s3Configuration(FirehoseDeliveryStreamSnowflakeConfigurationS3ConfigurationArgs.builder()
/// .roleArn(firehose.arn())
/// .bucketArn(bucket.arn())
/// .bufferingSize(10)
/// .bufferingInterval(400)
/// .compressionFormat("GZIP")
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// exampleSnowflakeDestination:
/// type: aws:kinesis:FirehoseDeliveryStream
/// name: example_snowflake_destination
/// properties:
/// name: example-snowflake-destination
/// destination: snowflake
/// snowflakeConfiguration:
/// accountUrl: https://example.snowflakecomputing.com
/// bufferingSize: 15
/// bufferingInterval: 600
/// database: example-db
/// privateKey: '...'
/// roleArn: ${firehose.arn}
/// schema: example-schema
/// table: example-table
/// user: example-usr
/// s3Configuration:
/// roleArn: ${firehose.arn}
/// bucketArn: ${bucket.arn}
/// bufferingSize: 10
/// bufferingInterval: 400
/// compressionFormat: GZIP
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Kinesis Firehose Delivery streams using the stream ARN. For example:
///
/// ```sh
/// $ pulumi import aws:kinesis/firehoseDeliveryStream:FirehoseDeliveryStream foo arn:aws:firehose:us-east-1:XXX:deliverystream/example
/// ```
///
/// Note: Import does not work for stream destination <span pulumi-lang-nodejs="`s3`" pulumi-lang-dotnet="`S3`" pulumi-lang-go="`s3`" pulumi-lang-python="`s3`" pulumi-lang-yaml="`s3`" pulumi-lang-java="`s3`">`s3`</span>. Consider using <span pulumi-lang-nodejs="`extendedS3`" pulumi-lang-dotnet="`ExtendedS3`" pulumi-lang-go="`extendedS3`" pulumi-lang-python="`extended_s3`" pulumi-lang-yaml="`extendedS3`" pulumi-lang-java="`extendedS3`">`extended_s3`</span> since <span pulumi-lang-nodejs="`s3`" pulumi-lang-dotnet="`S3`" pulumi-lang-go="`s3`" pulumi-lang-python="`s3`" pulumi-lang-yaml="`s3`" pulumi-lang-java="`s3`">`s3`</span> destination is deprecated.
class FirehoseDeliveryStream extends CustomResource {
  /// The Amazon Resource Name (ARN) specifying the Stream
  late final Output<String> arn;

  /// This is the destination to where the data is delivered. The only options are <span pulumi-lang-nodejs="`s3`" pulumi-lang-dotnet="`S3`" pulumi-lang-go="`s3`" pulumi-lang-python="`s3`" pulumi-lang-yaml="`s3`" pulumi-lang-java="`s3`">`s3`</span> (Deprecated, use <span pulumi-lang-nodejs="`extendedS3`" pulumi-lang-dotnet="`ExtendedS3`" pulumi-lang-go="`extendedS3`" pulumi-lang-python="`extended_s3`" pulumi-lang-yaml="`extendedS3`" pulumi-lang-java="`extendedS3`">`extended_s3`</span> instead), <span pulumi-lang-nodejs="`extendedS3`" pulumi-lang-dotnet="`ExtendedS3`" pulumi-lang-go="`extendedS3`" pulumi-lang-python="`extended_s3`" pulumi-lang-yaml="`extendedS3`" pulumi-lang-java="`extendedS3`">`extended_s3`</span>, <span pulumi-lang-nodejs="`redshift`" pulumi-lang-dotnet="`Redshift`" pulumi-lang-go="`redshift`" pulumi-lang-python="`redshift`" pulumi-lang-yaml="`redshift`" pulumi-lang-java="`redshift`">`redshift`</span>, <span pulumi-lang-nodejs="`elasticsearch`" pulumi-lang-dotnet="`Elasticsearch`" pulumi-lang-go="`elasticsearch`" pulumi-lang-python="`elasticsearch`" pulumi-lang-yaml="`elasticsearch`" pulumi-lang-java="`elasticsearch`">`elasticsearch`</span>, <span pulumi-lang-nodejs="`splunk`" pulumi-lang-dotnet="`Splunk`" pulumi-lang-go="`splunk`" pulumi-lang-python="`splunk`" pulumi-lang-yaml="`splunk`" pulumi-lang-java="`splunk`">`splunk`</span>, <span pulumi-lang-nodejs="`httpEndpoint`" pulumi-lang-dotnet="`HttpEndpoint`" pulumi-lang-go="`httpEndpoint`" pulumi-lang-python="`http_endpoint`" pulumi-lang-yaml="`httpEndpoint`" pulumi-lang-java="`httpEndpoint`">`http_endpoint`</span>, <span pulumi-lang-nodejs="`opensearch`" pulumi-lang-dotnet="`Opensearch`" pulumi-lang-go="`opensearch`" pulumi-lang-python="`opensearch`" pulumi-lang-yaml="`opensearch`" pulumi-lang-java="`opensearch`">`opensearch`</span>, <span pulumi-lang-nodejs="`opensearchserverless`" pulumi-lang-dotnet="`Opensearchserverless`" pulumi-lang-go="`opensearchserverless`" pulumi-lang-python="`opensearchserverless`" pulumi-lang-yaml="`opensearchserverless`" pulumi-lang-java="`opensearchserverless`">`opensearchserverless`</span> and <span pulumi-lang-nodejs="`snowflake`" pulumi-lang-dotnet="`Snowflake`" pulumi-lang-go="`snowflake`" pulumi-lang-python="`snowflake`" pulumi-lang-yaml="`snowflake`" pulumi-lang-java="`snowflake`">`snowflake`</span>.
  late final Output<String> destination;
  late final Output<String> destinationId;

  /// Configuration options when <span pulumi-lang-nodejs="`destination`" pulumi-lang-dotnet="`Destination`" pulumi-lang-go="`destination`" pulumi-lang-python="`destination`" pulumi-lang-yaml="`destination`" pulumi-lang-java="`destination`">`destination`</span> is <span pulumi-lang-nodejs="`elasticsearch`" pulumi-lang-dotnet="`Elasticsearch`" pulumi-lang-go="`elasticsearch`" pulumi-lang-python="`elasticsearch`" pulumi-lang-yaml="`elasticsearch`" pulumi-lang-java="`elasticsearch`">`elasticsearch`</span>. See <span pulumi-lang-nodejs="`elasticsearchConfiguration`" pulumi-lang-dotnet="`ElasticsearchConfiguration`" pulumi-lang-go="`elasticsearchConfiguration`" pulumi-lang-python="`elasticsearch_configuration`" pulumi-lang-yaml="`elasticsearchConfiguration`" pulumi-lang-java="`elasticsearchConfiguration`">`elasticsearch_configuration`</span> block below for details.
  late final Output<FirehoseDeliveryStreamElasticsearchConfiguration?>
      elasticsearchConfiguration;

  /// Enhanced configuration options for the s3 destination. See <span pulumi-lang-nodejs="`extendedS3Configuration`" pulumi-lang-dotnet="`ExtendedS3Configuration`" pulumi-lang-go="`extendedS3Configuration`" pulumi-lang-python="`extended_s3_configuration`" pulumi-lang-yaml="`extendedS3Configuration`" pulumi-lang-java="`extendedS3Configuration`">`extended_s3_configuration`</span> block below for details.
  late final Output<FirehoseDeliveryStreamExtendedS3Configuration?>
      extendedS3Configuration;

  /// Configuration options when <span pulumi-lang-nodejs="`destination`" pulumi-lang-dotnet="`Destination`" pulumi-lang-go="`destination`" pulumi-lang-python="`destination`" pulumi-lang-yaml="`destination`" pulumi-lang-java="`destination`">`destination`</span> is <span pulumi-lang-nodejs="`httpEndpoint`" pulumi-lang-dotnet="`HttpEndpoint`" pulumi-lang-go="`httpEndpoint`" pulumi-lang-python="`http_endpoint`" pulumi-lang-yaml="`httpEndpoint`" pulumi-lang-java="`httpEndpoint`">`http_endpoint`</span>. Requires the user to also specify an <span pulumi-lang-nodejs="`s3Configuration`" pulumi-lang-dotnet="`S3Configuration`" pulumi-lang-go="`s3Configuration`" pulumi-lang-python="`s3_configuration`" pulumi-lang-yaml="`s3Configuration`" pulumi-lang-java="`s3Configuration`">`s3_configuration`</span> block.  See <span pulumi-lang-nodejs="`httpEndpointConfiguration`" pulumi-lang-dotnet="`HttpEndpointConfiguration`" pulumi-lang-go="`httpEndpointConfiguration`" pulumi-lang-python="`http_endpoint_configuration`" pulumi-lang-yaml="`httpEndpointConfiguration`" pulumi-lang-java="`httpEndpointConfiguration`">`http_endpoint_configuration`</span> block below for details.
  late final Output<FirehoseDeliveryStreamHttpEndpointConfiguration?>
      httpEndpointConfiguration;

  /// Configuration options when <span pulumi-lang-nodejs="`destination`" pulumi-lang-dotnet="`Destination`" pulumi-lang-go="`destination`" pulumi-lang-python="`destination`" pulumi-lang-yaml="`destination`" pulumi-lang-java="`destination`">`destination`</span> is <span pulumi-lang-nodejs="`iceberg`" pulumi-lang-dotnet="`Iceberg`" pulumi-lang-go="`iceberg`" pulumi-lang-python="`iceberg`" pulumi-lang-yaml="`iceberg`" pulumi-lang-java="`iceberg`">`iceberg`</span>. See <span pulumi-lang-nodejs="`icebergConfiguration`" pulumi-lang-dotnet="`IcebergConfiguration`" pulumi-lang-go="`icebergConfiguration`" pulumi-lang-python="`iceberg_configuration`" pulumi-lang-yaml="`icebergConfiguration`" pulumi-lang-java="`icebergConfiguration`">`iceberg_configuration`</span> block below for details.
  late final Output<FirehoseDeliveryStreamIcebergConfiguration?>
      icebergConfiguration;

  /// The stream and role Amazon Resource Names (ARNs) for a Kinesis data stream used as the source for a delivery stream. See <span pulumi-lang-nodejs="`kinesisSourceConfiguration`" pulumi-lang-dotnet="`KinesisSourceConfiguration`" pulumi-lang-go="`kinesisSourceConfiguration`" pulumi-lang-python="`kinesis_source_configuration`" pulumi-lang-yaml="`kinesisSourceConfiguration`" pulumi-lang-java="`kinesisSourceConfiguration`">`kinesis_source_configuration`</span> block below for details.
  late final Output<FirehoseDeliveryStreamKinesisSourceConfiguration?>
      kinesisSourceConfiguration;

  /// The configuration for the Amazon MSK cluster to be used as the source for a delivery stream. See <span pulumi-lang-nodejs="`mskSourceConfiguration`" pulumi-lang-dotnet="`MskSourceConfiguration`" pulumi-lang-go="`mskSourceConfiguration`" pulumi-lang-python="`msk_source_configuration`" pulumi-lang-yaml="`mskSourceConfiguration`" pulumi-lang-java="`mskSourceConfiguration`">`msk_source_configuration`</span> block below for details.
  late final Output<FirehoseDeliveryStreamMskSourceConfiguration?>
      mskSourceConfiguration;

  /// A name to identify the stream. This is unique to the AWS account and region the Stream is created in. When using for WAF logging, name must be prefixed with `aws-waf-logs-`. See [AWS Documentation](https://docs.aws.amazon.com/waf/latest/developerguide/waf-policies.html#waf-policies-logging-config) for more details.
  late final Output<String> name;

  /// Configuration options when <span pulumi-lang-nodejs="`destination`" pulumi-lang-dotnet="`Destination`" pulumi-lang-go="`destination`" pulumi-lang-python="`destination`" pulumi-lang-yaml="`destination`" pulumi-lang-java="`destination`">`destination`</span> is <span pulumi-lang-nodejs="`opensearch`" pulumi-lang-dotnet="`Opensearch`" pulumi-lang-go="`opensearch`" pulumi-lang-python="`opensearch`" pulumi-lang-yaml="`opensearch`" pulumi-lang-java="`opensearch`">`opensearch`</span>. See <span pulumi-lang-nodejs="`opensearchConfiguration`" pulumi-lang-dotnet="`OpensearchConfiguration`" pulumi-lang-go="`opensearchConfiguration`" pulumi-lang-python="`opensearch_configuration`" pulumi-lang-yaml="`opensearchConfiguration`" pulumi-lang-java="`opensearchConfiguration`">`opensearch_configuration`</span> block below for details.
  late final Output<FirehoseDeliveryStreamOpensearchConfiguration?>
      opensearchConfiguration;

  /// Configuration options when <span pulumi-lang-nodejs="`destination`" pulumi-lang-dotnet="`Destination`" pulumi-lang-go="`destination`" pulumi-lang-python="`destination`" pulumi-lang-yaml="`destination`" pulumi-lang-java="`destination`">`destination`</span> is <span pulumi-lang-nodejs="`opensearchserverless`" pulumi-lang-dotnet="`Opensearchserverless`" pulumi-lang-go="`opensearchserverless`" pulumi-lang-python="`opensearchserverless`" pulumi-lang-yaml="`opensearchserverless`" pulumi-lang-java="`opensearchserverless`">`opensearchserverless`</span>. See <span pulumi-lang-nodejs="`opensearchserverlessConfiguration`" pulumi-lang-dotnet="`OpensearchserverlessConfiguration`" pulumi-lang-go="`opensearchserverlessConfiguration`" pulumi-lang-python="`opensearchserverless_configuration`" pulumi-lang-yaml="`opensearchserverlessConfiguration`" pulumi-lang-java="`opensearchserverlessConfiguration`">`opensearchserverless_configuration`</span> block below for details.
  late final Output<FirehoseDeliveryStreamOpensearchserverlessConfiguration?>
      opensearchserverlessConfiguration;

  /// Configuration options when <span pulumi-lang-nodejs="`destination`" pulumi-lang-dotnet="`Destination`" pulumi-lang-go="`destination`" pulumi-lang-python="`destination`" pulumi-lang-yaml="`destination`" pulumi-lang-java="`destination`">`destination`</span> is <span pulumi-lang-nodejs="`redshift`" pulumi-lang-dotnet="`Redshift`" pulumi-lang-go="`redshift`" pulumi-lang-python="`redshift`" pulumi-lang-yaml="`redshift`" pulumi-lang-java="`redshift`">`redshift`</span>. Requires the user to also specify an <span pulumi-lang-nodejs="`s3Configuration`" pulumi-lang-dotnet="`S3Configuration`" pulumi-lang-go="`s3Configuration`" pulumi-lang-python="`s3_configuration`" pulumi-lang-yaml="`s3Configuration`" pulumi-lang-java="`s3Configuration`">`s3_configuration`</span> block. See <span pulumi-lang-nodejs="`redshiftConfiguration`" pulumi-lang-dotnet="`RedshiftConfiguration`" pulumi-lang-go="`redshiftConfiguration`" pulumi-lang-python="`redshift_configuration`" pulumi-lang-yaml="`redshiftConfiguration`" pulumi-lang-java="`redshiftConfiguration`">`redshift_configuration`</span> block below for details.
  late final Output<FirehoseDeliveryStreamRedshiftConfiguration?>
      redshiftConfiguration;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Encrypt at rest options. See <span pulumi-lang-nodejs="`serverSideEncryption`" pulumi-lang-dotnet="`ServerSideEncryption`" pulumi-lang-go="`serverSideEncryption`" pulumi-lang-python="`server_side_encryption`" pulumi-lang-yaml="`serverSideEncryption`" pulumi-lang-java="`serverSideEncryption`">`server_side_encryption`</span> block below for details.
  late final Output<FirehoseDeliveryStreamServerSideEncryption?>
      serverSideEncryption;

  /// Configuration options when <span pulumi-lang-nodejs="`destination`" pulumi-lang-dotnet="`Destination`" pulumi-lang-go="`destination`" pulumi-lang-python="`destination`" pulumi-lang-yaml="`destination`" pulumi-lang-java="`destination`">`destination`</span> is <span pulumi-lang-nodejs="`snowflake`" pulumi-lang-dotnet="`Snowflake`" pulumi-lang-go="`snowflake`" pulumi-lang-python="`snowflake`" pulumi-lang-yaml="`snowflake`" pulumi-lang-java="`snowflake`">`snowflake`</span>. See <span pulumi-lang-nodejs="`snowflakeConfiguration`" pulumi-lang-dotnet="`SnowflakeConfiguration`" pulumi-lang-go="`snowflakeConfiguration`" pulumi-lang-python="`snowflake_configuration`" pulumi-lang-yaml="`snowflakeConfiguration`" pulumi-lang-java="`snowflakeConfiguration`">`snowflake_configuration`</span> block below for details.
  late final Output<FirehoseDeliveryStreamSnowflakeConfiguration?>
      snowflakeConfiguration;

  /// Configuration options when <span pulumi-lang-nodejs="`destination`" pulumi-lang-dotnet="`Destination`" pulumi-lang-go="`destination`" pulumi-lang-python="`destination`" pulumi-lang-yaml="`destination`" pulumi-lang-java="`destination`">`destination`</span> is <span pulumi-lang-nodejs="`splunk`" pulumi-lang-dotnet="`Splunk`" pulumi-lang-go="`splunk`" pulumi-lang-python="`splunk`" pulumi-lang-yaml="`splunk`" pulumi-lang-java="`splunk`">`splunk`</span>. See <span pulumi-lang-nodejs="`splunkConfiguration`" pulumi-lang-dotnet="`SplunkConfiguration`" pulumi-lang-go="`splunkConfiguration`" pulumi-lang-python="`splunk_configuration`" pulumi-lang-yaml="`splunkConfiguration`" pulumi-lang-java="`splunkConfiguration`">`splunk_configuration`</span> block below for details.
  ///
  /// **NOTE:** Server-side encryption should not be enabled when a kinesis stream is configured as the source of the firehose delivery stream.
  late final Output<FirehoseDeliveryStreamSplunkConfiguration?>
      splunkConfiguration;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;
  late final Output<String> versionId;

  FirehoseDeliveryStream(
    String name, {
    FirehoseDeliveryStreamArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:kinesis/firehoseDeliveryStream:FirehoseDeliveryStream',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.destination = registerOutput<String>('destination');
    this.destinationId = registerOutput<String>('destinationId');
    this.elasticsearchConfiguration =
        registerOutput<FirehoseDeliveryStreamElasticsearchConfiguration?>(
            'elasticsearchConfiguration');
    this.extendedS3Configuration =
        registerOutput<FirehoseDeliveryStreamExtendedS3Configuration?>(
            'extendedS3Configuration');
    this.httpEndpointConfiguration =
        registerOutput<FirehoseDeliveryStreamHttpEndpointConfiguration?>(
            'httpEndpointConfiguration');
    this.icebergConfiguration =
        registerOutput<FirehoseDeliveryStreamIcebergConfiguration?>(
            'icebergConfiguration');
    this.kinesisSourceConfiguration =
        registerOutput<FirehoseDeliveryStreamKinesisSourceConfiguration?>(
            'kinesisSourceConfiguration');
    this.mskSourceConfiguration =
        registerOutput<FirehoseDeliveryStreamMskSourceConfiguration?>(
            'mskSourceConfiguration');
    this.name = registerOutput<String>('name');
    this.opensearchConfiguration =
        registerOutput<FirehoseDeliveryStreamOpensearchConfiguration?>(
            'opensearchConfiguration');
    this.opensearchserverlessConfiguration = registerOutput<
            FirehoseDeliveryStreamOpensearchserverlessConfiguration?>(
        'opensearchserverlessConfiguration');
    this.redshiftConfiguration =
        registerOutput<FirehoseDeliveryStreamRedshiftConfiguration?>(
            'redshiftConfiguration');
    this.region = registerOutput<String>('region');
    this.serverSideEncryption =
        registerOutput<FirehoseDeliveryStreamServerSideEncryption?>(
            'serverSideEncryption');
    this.snowflakeConfiguration =
        registerOutput<FirehoseDeliveryStreamSnowflakeConfiguration?>(
            'snowflakeConfiguration');
    this.splunkConfiguration =
        registerOutput<FirehoseDeliveryStreamSplunkConfiguration?>(
            'splunkConfiguration');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.versionId = registerOutput<String>('versionId');
  }
}
