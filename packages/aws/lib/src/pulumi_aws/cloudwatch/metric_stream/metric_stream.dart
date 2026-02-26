import 'package:pulumi/pulumi.dart';
import '../metric_stream_exclude_filter/metric_stream_exclude_filter.dart';
import '../metric_stream_include_filter/metric_stream_include_filter.dart';
import '../metric_stream_statistics_configuration/metric_stream_statistics_configuration.dart';
import 'metric_stream_args.dart';

/// Provides a CloudWatch Metric Stream resource.
///
/// ## Example Usage
///
/// ### Filters
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// // https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-metric-streams-trustpolicy.html
/// const streamsAssumeRole = aws.iam.getPolicyDocument({
/// statements: [{
/// effect: "Allow",
/// principals: [{
/// type: "Service",
/// identifiers: ["streams.metrics.cloudwatch.amazonaws.com"],
/// }],
/// actions: ["sts:AssumeRole"],
/// }],
/// });
/// const metricStreamToFirehoseRole = new aws.iam.Role("metric_stream_to_firehose", {
/// name: "metric_stream_to_firehose_role",
/// assumeRolePolicy: streamsAssumeRole.then(streamsAssumeRole => streamsAssumeRole.json),
/// });
/// const bucket = new aws.s3.Bucket("bucket", {bucket: "metric-stream-test-bucket"});
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
/// const firehoseToS3Role = new aws.iam.Role("firehose_to_s3", {assumeRolePolicy: firehoseAssumeRole.then(firehoseAssumeRole => firehoseAssumeRole.json)});
/// const s3Stream = new aws.kinesis.FirehoseDeliveryStream("s3_stream", {
/// name: "metric-stream-test-stream",
/// destination: "extended_s3",
/// extendedS3Configuration: {
/// roleArn: firehoseToS3Role.arn,
/// bucketArn: bucket.arn,
/// },
/// });
/// const main = new aws.cloudwatch.MetricStream("main", {
/// name: "my-metric-stream",
/// roleArn: metricStreamToFirehoseRole.arn,
/// firehoseArn: s3Stream.arn,
/// outputFormat: "json",
/// includeFilters: [
/// {
/// namespace: "AWS/EC2",
/// metricNames: [
/// "CPUUtilization",
/// "NetworkOut",
/// ],
/// },
/// {
/// namespace: "AWS/EBS",
/// metricNames: [],
/// },
/// ],
/// });
/// // https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-metric-streams-trustpolicy.html
/// const metricStreamToFirehose = aws.iam.getPolicyDocumentOutput({
/// statements: [{
/// effect: "Allow",
/// actions: [
/// "firehose:PutRecord",
/// "firehose:PutRecordBatch",
/// ],
/// resources: [s3Stream.arn],
/// }],
/// });
/// const metricStreamToFirehoseRolePolicy = new aws.iam.RolePolicy("metric_stream_to_firehose", {
/// name: "default",
/// role: metricStreamToFirehoseRole.id,
/// policy: metricStreamToFirehose.apply(metricStreamToFirehose => metricStreamToFirehose.json),
/// });
/// const bucketAcl = new aws.s3.BucketAcl("bucket_acl", {
/// bucket: bucket.id,
/// acl: "private",
/// });
/// const firehoseToS3 = aws.iam.getPolicyDocumentOutput({
/// statements: [{
/// effect: "Allow",
/// actions: [
/// "s3:AbortMultipartUpload",
/// "s3:GetBucketLocation",
/// "s3:GetObject",
/// "s3:ListBucket",
/// "s3:ListBucketMultipartUploads",
/// "s3:PutObject",
/// ],
/// resources: [
/// bucket.arn,
/// pulumi.interpolate`${bucket.arn}/*`,
/// ],
/// }],
/// });
/// const firehoseToS3RolePolicy = new aws.iam.RolePolicy("firehose_to_s3", {
/// name: "default",
/// role: firehoseToS3Role.id,
/// policy: firehoseToS3.apply(firehoseToS3 => firehoseToS3.json),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// # https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-metric-streams-trustpolicy.html
/// streams_assume_role = aws.iam.get_policy_document(statements=[{
/// "effect": "Allow",
/// "principals": [{
/// "type": "Service",
/// "identifiers": ["streams.metrics.cloudwatch.amazonaws.com"],
/// }],
/// "actions": ["sts:AssumeRole"],
/// }])
/// metric_stream_to_firehose_role = aws.iam.Role("metric_stream_to_firehose",
/// name="metric_stream_to_firehose_role",
/// assume_role_policy=streams_assume_role.json)
/// bucket = aws.s3.Bucket("bucket", bucket="metric-stream-test-bucket")
/// firehose_assume_role = aws.iam.get_policy_document(statements=[{
/// "effect": "Allow",
/// "principals": [{
/// "type": "Service",
/// "identifiers": ["firehose.amazonaws.com"],
/// }],
/// "actions": ["sts:AssumeRole"],
/// }])
/// firehose_to_s3_role = aws.iam.Role("firehose_to_s3", assume_role_policy=firehose_assume_role.json)
/// s3_stream = aws.kinesis.FirehoseDeliveryStream("s3_stream",
/// name="metric-stream-test-stream",
/// destination="extended_s3",
/// extended_s3_configuration={
/// "role_arn": firehose_to_s3_role.arn,
/// "bucket_arn": bucket.arn,
/// })
/// main = aws.cloudwatch.MetricStream("main",
/// name="my-metric-stream",
/// role_arn=metric_stream_to_firehose_role.arn,
/// firehose_arn=s3_stream.arn,
/// output_format="json",
/// include_filters=[
/// {
/// "namespace": "AWS/EC2",
/// "metric_names": [
/// "CPUUtilization",
/// "NetworkOut",
/// ],
/// },
/// {
/// "namespace": "AWS/EBS",
/// "metric_names": [],
/// },
/// ])
/// # https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-metric-streams-trustpolicy.html
/// metric_stream_to_firehose = aws.iam.get_policy_document_output(statements=[{
/// "effect": "Allow",
/// "actions": [
/// "firehose:PutRecord",
/// "firehose:PutRecordBatch",
/// ],
/// "resources": [s3_stream.arn],
/// }])
/// metric_stream_to_firehose_role_policy = aws.iam.RolePolicy("metric_stream_to_firehose",
/// name="default",
/// role=metric_stream_to_firehose_role.id,
/// policy=metric_stream_to_firehose.json)
/// bucket_acl = aws.s3.BucketAcl("bucket_acl",
/// bucket=bucket.id,
/// acl="private")
/// firehose_to_s3 = aws.iam.get_policy_document_output(statements=[{
/// "effect": "Allow",
/// "actions": [
/// "s3:AbortMultipartUpload",
/// "s3:GetBucketLocation",
/// "s3:GetObject",
/// "s3:ListBucket",
/// "s3:ListBucketMultipartUploads",
/// "s3:PutObject",
/// ],
/// "resources": [
/// bucket.arn,
/// bucket.arn.apply(lambda arn: f"{arn}/*"),
/// ],
/// }])
/// firehose_to_s3_role_policy = aws.iam.RolePolicy("firehose_to_s3",
/// name="default",
/// role=firehose_to_s3_role.id,
/// policy=firehose_to_s3.json)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// // https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-metric-streams-trustpolicy.html
/// var streamsAssumeRole = Aws.Iam.GetPolicyDocument.Invoke(new()
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
/// "streams.metrics.cloudwatch.amazonaws.com",
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
/// var metricStreamToFirehoseRole = new Aws.Iam.Role("metric_stream_to_firehose", new()
/// {
/// Name = "metric_stream_to_firehose_role",
/// AssumeRolePolicy = streamsAssumeRole.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
/// });
///
/// var bucket = new Aws.S3.Bucket("bucket", new()
/// {
/// BucketName = "metric-stream-test-bucket",
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
/// var firehoseToS3Role = new Aws.Iam.Role("firehose_to_s3", new()
/// {
/// AssumeRolePolicy = firehoseAssumeRole.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
/// });
///
/// var s3Stream = new Aws.Kinesis.FirehoseDeliveryStream("s3_stream", new()
/// {
/// Name = "metric-stream-test-stream",
/// Destination = "extended_s3",
/// ExtendedS3Configuration = new Aws.Kinesis.Inputs.FirehoseDeliveryStreamExtendedS3ConfigurationArgs
/// {
/// RoleArn = firehoseToS3Role.Arn,
/// BucketArn = bucket.Arn,
/// },
/// });
///
/// var main = new Aws.CloudWatch.MetricStream("main", new()
/// {
/// Name = "my-metric-stream",
/// RoleArn = metricStreamToFirehoseRole.Arn,
/// FirehoseArn = s3Stream.Arn,
/// OutputFormat = "json",
/// IncludeFilters = new[]
/// {
/// new Aws.CloudWatch.Inputs.MetricStreamIncludeFilterArgs
/// {
/// Namespace = "AWS/EC2",
/// MetricNames = new[]
/// {
/// "CPUUtilization",
/// "NetworkOut",
/// },
/// },
/// new Aws.CloudWatch.Inputs.MetricStreamIncludeFilterArgs
/// {
/// Namespace = "AWS/EBS",
/// MetricNames = new() { },
/// },
/// },
/// });
///
/// // https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-metric-streams-trustpolicy.html
/// var metricStreamToFirehose = Aws.Iam.GetPolicyDocument.Invoke(new()
/// {
/// Statements = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
/// {
/// Effect = "Allow",
/// Actions = new[]
/// {
/// "firehose:PutRecord",
/// "firehose:PutRecordBatch",
/// },
/// Resources = new[]
/// {
/// s3Stream.Arn,
/// },
/// },
/// },
/// });
///
/// var metricStreamToFirehoseRolePolicy = new Aws.Iam.RolePolicy("metric_stream_to_firehose", new()
/// {
/// Name = "default",
/// Role = metricStreamToFirehoseRole.Id,
/// Policy = metricStreamToFirehose.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
/// });
///
/// var bucketAcl = new Aws.S3.BucketAcl("bucket_acl", new()
/// {
/// Bucket = bucket.Id,
/// Acl = "private",
/// });
///
/// var firehoseToS3 = Aws.Iam.GetPolicyDocument.Invoke(new()
/// {
/// Statements = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
/// {
/// Effect = "Allow",
/// Actions = new[]
/// {
/// "s3:AbortMultipartUpload",
/// "s3:GetBucketLocation",
/// "s3:GetObject",
/// "s3:ListBucket",
/// "s3:ListBucketMultipartUploads",
/// "s3:PutObject",
/// },
/// Resources = new[]
/// {
/// bucket.Arn,
/// $"{bucket.Arn}/*",
/// },
/// },
/// },
/// });
///
/// var firehoseToS3RolePolicy = new Aws.Iam.RolePolicy("firehose_to_s3", new()
/// {
/// Name = "default",
/// Role = firehoseToS3Role.Id,
/// Policy = firehoseToS3.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kinesis"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// // https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-metric-streams-trustpolicy.html
/// streamsAssumeRole, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// Statements: []iam.GetPolicyDocumentStatement{
/// {
/// Effect: pulumi.StringRef("Allow"),
/// Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// {
/// Type: "Service",
/// Identifiers: []string{
/// "streams.metrics.cloudwatch.amazonaws.com",
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
/// metricStreamToFirehoseRole, err := iam.NewRole(ctx, "metric_stream_to_firehose", &iam.RoleArgs{
/// Name:             pulumi.String("metric_stream_to_firehose_role"),
/// AssumeRolePolicy: pulumi.String(streamsAssumeRole.Json),
/// })
/// if err != nil {
/// return err
/// }
/// bucket, err := s3.NewBucket(ctx, "bucket", &s3.BucketArgs{
/// Bucket: pulumi.String("metric-stream-test-bucket"),
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
/// firehoseToS3Role, err := iam.NewRole(ctx, "firehose_to_s3", &iam.RoleArgs{
/// AssumeRolePolicy: pulumi.String(firehoseAssumeRole.Json),
/// })
/// if err != nil {
/// return err
/// }
/// s3Stream, err := kinesis.NewFirehoseDeliveryStream(ctx, "s3_stream", &kinesis.FirehoseDeliveryStreamArgs{
/// Name:        pulumi.String("metric-stream-test-stream"),
/// Destination: pulumi.String("extended_s3"),
/// ExtendedS3Configuration: &kinesis.FirehoseDeliveryStreamExtendedS3ConfigurationArgs{
/// RoleArn:   firehoseToS3Role.Arn,
/// BucketArn: bucket.Arn,
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = cloudwatch.NewMetricStream(ctx, "main", &cloudwatch.MetricStreamArgs{
/// Name:         pulumi.String("my-metric-stream"),
/// RoleArn:      metricStreamToFirehoseRole.Arn,
/// FirehoseArn:  s3Stream.Arn,
/// OutputFormat: pulumi.String("json"),
/// IncludeFilters: cloudwatch.MetricStreamIncludeFilterArray{
/// &cloudwatch.MetricStreamIncludeFilterArgs{
/// Namespace: pulumi.String("AWS/EC2"),
/// MetricNames: pulumi.StringArray{
/// pulumi.String("CPUUtilization"),
/// pulumi.String("NetworkOut"),
/// },
/// },
/// &cloudwatch.MetricStreamIncludeFilterArgs{
/// Namespace:   pulumi.String("AWS/EBS"),
/// MetricNames: pulumi.StringArray{},
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// // https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-metric-streams-trustpolicy.html
/// metricStreamToFirehose := iam.GetPolicyDocumentOutput(ctx, iam.GetPolicyDocumentOutputArgs{
/// Statements: iam.GetPolicyDocumentStatementArray{
/// &iam.GetPolicyDocumentStatementArgs{
/// Effect: pulumi.String("Allow"),
/// Actions: pulumi.StringArray{
/// pulumi.String("firehose:PutRecord"),
/// pulumi.String("firehose:PutRecordBatch"),
/// },
/// Resources: pulumi.StringArray{
/// s3Stream.Arn,
/// },
/// },
/// },
/// }, nil)
/// _, err = iam.NewRolePolicy(ctx, "metric_stream_to_firehose", &iam.RolePolicyArgs{
/// Name: pulumi.String("default"),
/// Role: metricStreamToFirehoseRole.ID(),
/// Policy: pulumi.String(metricStreamToFirehose.ApplyT(func(metricStreamToFirehose iam.GetPolicyDocumentResult) (*string, error) {
/// return &metricStreamToFirehose.Json, nil
/// }).(pulumi.StringPtrOutput)),
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
/// firehoseToS3 := iam.GetPolicyDocumentOutput(ctx, iam.GetPolicyDocumentOutputArgs{
/// Statements: iam.GetPolicyDocumentStatementArray{
/// &iam.GetPolicyDocumentStatementArgs{
/// Effect: pulumi.String("Allow"),
/// Actions: pulumi.StringArray{
/// pulumi.String("s3:AbortMultipartUpload"),
/// pulumi.String("s3:GetBucketLocation"),
/// pulumi.String("s3:GetObject"),
/// pulumi.String("s3:ListBucket"),
/// pulumi.String("s3:ListBucketMultipartUploads"),
/// pulumi.String("s3:PutObject"),
/// },
/// Resources: pulumi.StringArray{
/// bucket.Arn,
/// bucket.Arn.ApplyT(func(arn string) (string, error) {
/// return fmt.Sprintf("%v/*", arn), nil
/// }).(pulumi.StringOutput),
/// },
/// },
/// },
/// }, nil)
/// _, err = iam.NewRolePolicy(ctx, "firehose_to_s3", &iam.RolePolicyArgs{
/// Name: pulumi.String("default"),
/// Role: firehoseToS3Role.ID(),
/// Policy: pulumi.String(firehoseToS3.ApplyT(func(firehoseToS3 iam.GetPolicyDocumentResult) (*string, error) {
/// return &firehoseToS3.Json, nil
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
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.s3.Bucket;
/// import com.pulumi.aws.s3.BucketArgs;
/// import com.pulumi.aws.kinesis.FirehoseDeliveryStream;
/// import com.pulumi.aws.kinesis.FirehoseDeliveryStreamArgs;
/// import com.pulumi.aws.kinesis.inputs.FirehoseDeliveryStreamExtendedS3ConfigurationArgs;
/// import com.pulumi.aws.cloudwatch.MetricStream;
/// import com.pulumi.aws.cloudwatch.MetricStreamArgs;
/// import com.pulumi.aws.cloudwatch.inputs.MetricStreamIncludeFilterArgs;
/// import com.pulumi.aws.iam.RolePolicy;
/// import com.pulumi.aws.iam.RolePolicyArgs;
/// import com.pulumi.aws.s3.BucketAcl;
/// import com.pulumi.aws.s3.BucketAclArgs;
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
/// // https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-metric-streams-trustpolicy.html
/// final var streamsAssumeRole = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
/// .statements(GetPolicyDocumentStatementArgs.builder()
/// .effect("Allow")
/// .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
/// .type("Service")
/// .identifiers("streams.metrics.cloudwatch.amazonaws.com")
/// .build())
/// .actions("sts:AssumeRole")
/// .build())
/// .build());
///
/// var metricStreamToFirehoseRole = new Role("metricStreamToFirehoseRole", RoleArgs.builder()
/// .name("metric_stream_to_firehose_role")
/// .assumeRolePolicy(streamsAssumeRole.json())
/// .build());
///
/// var bucket = new Bucket("bucket", BucketArgs.builder()
/// .bucket("metric-stream-test-bucket")
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
/// var firehoseToS3Role = new Role("firehoseToS3Role", RoleArgs.builder()
/// .assumeRolePolicy(firehoseAssumeRole.json())
/// .build());
///
/// var s3Stream = new FirehoseDeliveryStream("s3Stream", FirehoseDeliveryStreamArgs.builder()
/// .name("metric-stream-test-stream")
/// .destination("extended_s3")
/// .extendedS3Configuration(FirehoseDeliveryStreamExtendedS3ConfigurationArgs.builder()
/// .roleArn(firehoseToS3Role.arn())
/// .bucketArn(bucket.arn())
/// .build())
/// .build());
///
/// var main = new MetricStream("main", MetricStreamArgs.builder()
/// .name("my-metric-stream")
/// .roleArn(metricStreamToFirehoseRole.arn())
/// .firehoseArn(s3Stream.arn())
/// .outputFormat("json")
/// .includeFilters(
/// MetricStreamIncludeFilterArgs.builder()
/// .namespace("AWS/EC2")
/// .metricNames(
/// "CPUUtilization",
/// "NetworkOut")
/// .build(),
/// MetricStreamIncludeFilterArgs.builder()
/// .namespace("AWS/EBS")
/// .metricNames()
/// .build())
/// .build());
///
/// // https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-metric-streams-trustpolicy.html
/// final var metricStreamToFirehose = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
/// .statements(GetPolicyDocumentStatementArgs.builder()
/// .effect("Allow")
/// .actions(
/// "firehose:PutRecord",
/// "firehose:PutRecordBatch")
/// .resources(s3Stream.arn())
/// .build())
/// .build());
///
/// var metricStreamToFirehoseRolePolicy = new RolePolicy("metricStreamToFirehoseRolePolicy", RolePolicyArgs.builder()
/// .name("default")
/// .role(metricStreamToFirehoseRole.id())
/// .policy(metricStreamToFirehose.applyValue(_metricStreamToFirehose -> _metricStreamToFirehose.json()))
/// .build());
///
/// var bucketAcl = new BucketAcl("bucketAcl", BucketAclArgs.builder()
/// .bucket(bucket.id())
/// .acl("private")
/// .build());
///
/// final var firehoseToS3 = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
/// .statements(GetPolicyDocumentStatementArgs.builder()
/// .effect("Allow")
/// .actions(
/// "s3:AbortMultipartUpload",
/// "s3:GetBucketLocation",
/// "s3:GetObject",
/// "s3:ListBucket",
/// "s3:ListBucketMultipartUploads",
/// "s3:PutObject")
/// .resources(
/// bucket.arn(),
/// bucket.arn().applyValue(_arn -> String.format("%s/*", _arn)))
/// .build())
/// .build());
///
/// var firehoseToS3RolePolicy = new RolePolicy("firehoseToS3RolePolicy", RolePolicyArgs.builder()
/// .name("default")
/// .role(firehoseToS3Role.id())
/// .policy(firehoseToS3.applyValue(_firehoseToS3 -> _firehoseToS3.json()))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// main:
/// type: aws:cloudwatch:MetricStream
/// properties:
/// name: my-metric-stream
/// roleArn: ${metricStreamToFirehoseRole.arn}
/// firehoseArn: ${s3Stream.arn}
/// outputFormat: json
/// includeFilters:
/// - namespace: AWS/EC2
/// metricNames:
/// - CPUUtilization
/// - NetworkOut
/// - namespace: AWS/EBS
/// metricNames: []
/// metricStreamToFirehoseRole:
/// type: aws:iam:Role
/// name: metric_stream_to_firehose
/// properties:
/// name: metric_stream_to_firehose_role
/// assumeRolePolicy: ${streamsAssumeRole.json}
/// metricStreamToFirehoseRolePolicy:
/// type: aws:iam:RolePolicy
/// name: metric_stream_to_firehose
/// properties:
/// name: default
/// role: ${metricStreamToFirehoseRole.id}
/// policy: ${metricStreamToFirehose.json}
/// bucket:
/// type: aws:s3:Bucket
/// properties:
/// bucket: metric-stream-test-bucket
/// bucketAcl:
/// type: aws:s3:BucketAcl
/// name: bucket_acl
/// properties:
/// bucket: ${bucket.id}
/// acl: private
/// firehoseToS3Role:
/// type: aws:iam:Role
/// name: firehose_to_s3
/// properties:
/// assumeRolePolicy: ${firehoseAssumeRole.json}
/// firehoseToS3RolePolicy:
/// type: aws:iam:RolePolicy
/// name: firehose_to_s3
/// properties:
/// name: default
/// role: ${firehoseToS3Role.id}
/// policy: ${firehoseToS3.json}
/// s3Stream:
/// type: aws:kinesis:FirehoseDeliveryStream
/// name: s3_stream
/// properties:
/// name: metric-stream-test-stream
/// destination: extended_s3
/// extendedS3Configuration:
/// roleArn: ${firehoseToS3Role.arn}
/// bucketArn: ${bucket.arn}
/// variables:
/// # https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-metric-streams-trustpolicy.html
/// streamsAssumeRole:
/// fn::invoke:
/// function: aws:iam:getPolicyDocument
/// arguments:
/// statements:
/// - effect: Allow
/// principals:
/// - type: Service
/// identifiers:
/// - streams.metrics.cloudwatch.amazonaws.com
/// actions:
/// - sts:AssumeRole
/// # https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-metric-streams-trustpolicy.html
/// metricStreamToFirehose:
/// fn::invoke:
/// function: aws:iam:getPolicyDocument
/// arguments:
/// statements:
/// - effect: Allow
/// actions:
/// - firehose:PutRecord
/// - firehose:PutRecordBatch
/// resources:
/// - ${s3Stream.arn}
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
/// firehoseToS3:
/// fn::invoke:
/// function: aws:iam:getPolicyDocument
/// arguments:
/// statements:
/// - effect: Allow
/// actions:
/// - s3:AbortMultipartUpload
/// - s3:GetBucketLocation
/// - s3:GetObject
/// - s3:ListBucket
/// - s3:ListBucketMultipartUploads
/// - s3:PutObject
/// resources:
/// - ${bucket.arn}
/// - ${bucket.arn}/*
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Additional Statistics
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const main = new aws.cloudwatch.MetricStream("main", {
/// name: "my-metric-stream",
/// roleArn: metricStreamToFirehose.arn,
/// firehoseArn: s3Stream.arn,
/// outputFormat: "json",
/// statisticsConfigurations: [
/// {
/// additionalStatistics: [
/// "p1",
/// "tm99",
/// ],
/// includeMetrics: [{
/// metricName: "CPUUtilization",
/// namespace: "AWS/EC2",
/// }],
/// },
/// {
/// additionalStatistics: ["TS(50.5:)"],
/// includeMetrics: [{
/// metricName: "CPUUtilization",
/// namespace: "AWS/EC2",
/// }],
/// },
/// ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// main = aws.cloudwatch.MetricStream("main",
/// name="my-metric-stream",
/// role_arn=metric_stream_to_firehose["arn"],
/// firehose_arn=s3_stream["arn"],
/// output_format="json",
/// statistics_configurations=[
/// {
/// "additional_statistics": [
/// "p1",
/// "tm99",
/// ],
/// "include_metrics": [{
/// "metric_name": "CPUUtilization",
/// "namespace": "AWS/EC2",
/// }],
/// },
/// {
/// "additional_statistics": ["TS(50.5:)"],
/// "include_metrics": [{
/// "metric_name": "CPUUtilization",
/// "namespace": "AWS/EC2",
/// }],
/// },
/// ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var main = new Aws.CloudWatch.MetricStream("main", new()
/// {
/// Name = "my-metric-stream",
/// RoleArn = metricStreamToFirehose.Arn,
/// FirehoseArn = s3Stream.Arn,
/// OutputFormat = "json",
/// StatisticsConfigurations = new[]
/// {
/// new Aws.CloudWatch.Inputs.MetricStreamStatisticsConfigurationArgs
/// {
/// AdditionalStatistics = new[]
/// {
/// "p1",
/// "tm99",
/// },
/// IncludeMetrics = new[]
/// {
/// new Aws.CloudWatch.Inputs.MetricStreamStatisticsConfigurationIncludeMetricArgs
/// {
/// MetricName = "CPUUtilization",
/// Namespace = "AWS/EC2",
/// },
/// },
/// },
/// new Aws.CloudWatch.Inputs.MetricStreamStatisticsConfigurationArgs
/// {
/// AdditionalStatistics = new[]
/// {
/// "TS(50.5:)",
/// },
/// IncludeMetrics = new[]
/// {
/// new Aws.CloudWatch.Inputs.MetricStreamStatisticsConfigurationIncludeMetricArgs
/// {
/// MetricName = "CPUUtilization",
/// Namespace = "AWS/EC2",
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := cloudwatch.NewMetricStream(ctx, "main", &cloudwatch.MetricStreamArgs{
/// Name:         pulumi.String("my-metric-stream"),
/// RoleArn:      pulumi.Any(metricStreamToFirehose.Arn),
/// FirehoseArn:  pulumi.Any(s3Stream.Arn),
/// OutputFormat: pulumi.String("json"),
/// StatisticsConfigurations: cloudwatch.MetricStreamStatisticsConfigurationArray{
/// &cloudwatch.MetricStreamStatisticsConfigurationArgs{
/// AdditionalStatistics: pulumi.StringArray{
/// pulumi.String("p1"),
/// pulumi.String("tm99"),
/// },
/// IncludeMetrics: cloudwatch.MetricStreamStatisticsConfigurationIncludeMetricArray{
/// &cloudwatch.MetricStreamStatisticsConfigurationIncludeMetricArgs{
/// MetricName: pulumi.String("CPUUtilization"),
/// Namespace:  pulumi.String("AWS/EC2"),
/// },
/// },
/// },
/// &cloudwatch.MetricStreamStatisticsConfigurationArgs{
/// AdditionalStatistics: pulumi.StringArray{
/// pulumi.String("TS(50.5:)"),
/// },
/// IncludeMetrics: cloudwatch.MetricStreamStatisticsConfigurationIncludeMetricArray{
/// &cloudwatch.MetricStreamStatisticsConfigurationIncludeMetricArgs{
/// MetricName: pulumi.String("CPUUtilization"),
/// Namespace:  pulumi.String("AWS/EC2"),
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
/// import com.pulumi.aws.cloudwatch.MetricStream;
/// import com.pulumi.aws.cloudwatch.MetricStreamArgs;
/// import com.pulumi.aws.cloudwatch.inputs.MetricStreamStatisticsConfigurationArgs;
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
/// var main = new MetricStream("main", MetricStreamArgs.builder()
/// .name("my-metric-stream")
/// .roleArn(metricStreamToFirehose.arn())
/// .firehoseArn(s3Stream.arn())
/// .outputFormat("json")
/// .statisticsConfigurations(
/// MetricStreamStatisticsConfigurationArgs.builder()
/// .additionalStatistics(
/// "p1",
/// "tm99")
/// .includeMetrics(MetricStreamStatisticsConfigurationIncludeMetricArgs.builder()
/// .metricName("CPUUtilization")
/// .namespace("AWS/EC2")
/// .build())
/// .build(),
/// MetricStreamStatisticsConfigurationArgs.builder()
/// .additionalStatistics("TS(50.5:)")
/// .includeMetrics(MetricStreamStatisticsConfigurationIncludeMetricArgs.builder()
/// .metricName("CPUUtilization")
/// .namespace("AWS/EC2")
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// main:
/// type: aws:cloudwatch:MetricStream
/// properties:
/// name: my-metric-stream
/// roleArn: ${metricStreamToFirehose.arn}
/// firehoseArn: ${s3Stream.arn}
/// outputFormat: json
/// statisticsConfigurations:
/// - additionalStatistics:
/// - p1
/// - tm99
/// includeMetrics:
/// - metricName: CPUUtilization
/// namespace: AWS/EC2
/// - additionalStatistics:
/// - TS(50.5:)
/// includeMetrics:
/// - metricName: CPUUtilization
/// namespace: AWS/EC2
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import CloudWatch metric streams using the <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:cloudwatch/metricStream:MetricStream sample sample-stream-name
/// ```
class MetricStream extends CustomResource {
  /// ARN of the metric stream.
  late final Output<String> arn;

  /// Date and time in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) that the metric stream was created.
  late final Output<String> creationDate;

  /// List of exclusive metric filters. If you specify this parameter, the stream sends metrics from all metric namespaces except for the namespaces and the conditional metric names that you specify here. If you don't specify metric names or provide empty metric names whole metric namespace is excluded. Conflicts with <span pulumi-lang-nodejs="`includeFilter`" pulumi-lang-dotnet="`IncludeFilter`" pulumi-lang-go="`includeFilter`" pulumi-lang-python="`include_filter`" pulumi-lang-yaml="`includeFilter`" pulumi-lang-java="`includeFilter`">`include_filter`</span>.
  late final Output<List<MetricStreamExcludeFilter>?> excludeFilters;

  /// ARN of the Amazon Kinesis Firehose delivery stream to use for this metric stream.
  late final Output<String> firehoseArn;

  /// List of inclusive metric filters. If you specify this parameter, the stream sends only the conditional metric names from the metric namespaces that you specify here. If you don't specify metric names or provide empty metric names whole metric namespace is included. Conflicts with <span pulumi-lang-nodejs="`excludeFilter`" pulumi-lang-dotnet="`ExcludeFilter`" pulumi-lang-go="`excludeFilter`" pulumi-lang-python="`exclude_filter`" pulumi-lang-yaml="`excludeFilter`" pulumi-lang-java="`excludeFilter`">`exclude_filter`</span>.
  late final Output<List<MetricStreamIncludeFilter>?> includeFilters;

  /// If you are creating a metric stream in a monitoring account, specify true to include metrics from source accounts that are linked to this monitoring account, in the metric stream. The default is false. For more information about linking accounts, see [CloudWatch cross-account observability](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Unified-Cross-Account.html).
  late final Output<bool?> includeLinkedAccountsMetrics;

  /// Date and time in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) that the metric stream was last updated.
  late final Output<String> lastUpdateDate;

  /// Friendly name of the metric stream. If omitted, the provider will assign a random, unique name. Conflicts with <span pulumi-lang-nodejs="`namePrefix`" pulumi-lang-dotnet="`NamePrefix`" pulumi-lang-go="`namePrefix`" pulumi-lang-python="`name_prefix`" pulumi-lang-yaml="`namePrefix`" pulumi-lang-java="`namePrefix`">`name_prefix`</span>.
  late final Output<String> name;

  /// Creates a unique friendly name beginning with the specified prefix. Conflicts with <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>.
  late final Output<String> namePrefix;

  /// Output format for the stream. Possible values are <span pulumi-lang-nodejs="`json`" pulumi-lang-dotnet="`Json`" pulumi-lang-go="`json`" pulumi-lang-python="`json`" pulumi-lang-yaml="`json`" pulumi-lang-java="`json`">`json`</span>, `opentelemetry0.7`, and `opentelemetry1.0`. For more information about output formats, see [Metric streams output formats](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-metric-streams-formats.html).
  ///
  /// The following arguments are optional:
  late final Output<String> outputFormat;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// ARN of the IAM role that this metric stream will use to access Amazon Kinesis Firehose resources. For more information about role permissions, see [Trust between CloudWatch and Kinesis Data Firehose](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-metric-streams-trustpolicy.html).
  late final Output<String> roleArn;

  /// State of the metric stream. Possible values are <span pulumi-lang-nodejs="`running`" pulumi-lang-dotnet="`Running`" pulumi-lang-go="`running`" pulumi-lang-python="`running`" pulumi-lang-yaml="`running`" pulumi-lang-java="`running`">`running`</span> and <span pulumi-lang-nodejs="`stopped`" pulumi-lang-dotnet="`Stopped`" pulumi-lang-go="`stopped`" pulumi-lang-python="`stopped`" pulumi-lang-yaml="`stopped`" pulumi-lang-java="`stopped`">`stopped`</span>.
  late final Output<String> state;

  /// For each entry in this array, you specify one or more metrics and the list of additional statistics to stream for those metrics. The additional statistics that you can stream depend on the stream's <span pulumi-lang-nodejs="`outputFormat`" pulumi-lang-dotnet="`OutputFormat`" pulumi-lang-go="`outputFormat`" pulumi-lang-python="`output_format`" pulumi-lang-yaml="`outputFormat`" pulumi-lang-java="`outputFormat`">`output_format`</span>. If the OutputFormat is <span pulumi-lang-nodejs="`json`" pulumi-lang-dotnet="`Json`" pulumi-lang-go="`json`" pulumi-lang-python="`json`" pulumi-lang-yaml="`json`" pulumi-lang-java="`json`">`json`</span>, you can stream any additional statistic that is supported by CloudWatch, listed in [CloudWatch statistics definitions](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/Statistics-definitions.html.html). If the OutputFormat is `opentelemetry0.7` or `opentelemetry1.0`, you can stream percentile statistics (p99 etc.). See details below.
  late final Output<List<MetricStreamStatisticsConfiguration>?>
      statisticsConfigurations;

  /// Map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  MetricStream(
    String name, {
    MetricStreamArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatch/metricStream:MetricStream',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.creationDate = Output.createUnknown<String>();
    this.excludeFilters =
        Output.createUnknown<List<MetricStreamExcludeFilter>?>();
    this.firehoseArn = Output.createUnknown<String>();
    this.includeFilters =
        Output.createUnknown<List<MetricStreamIncludeFilter>?>();
    this.includeLinkedAccountsMetrics = Output.createUnknown<bool?>();
    this.lastUpdateDate = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.namePrefix = Output.createUnknown<String>();
    this.outputFormat = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.roleArn = Output.createUnknown<String>();
    this.state = Output.createUnknown<String>();
    this.statisticsConfigurations =
        Output.createUnknown<List<MetricStreamStatisticsConfiguration>?>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
  }
}
