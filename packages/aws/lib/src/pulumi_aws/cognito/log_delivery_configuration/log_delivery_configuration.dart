import 'package:pulumi/pulumi.dart';
import '../log_delivery_configuration_log_configuration/log_delivery_configuration_log_configuration.dart';
import 'log_delivery_configuration_args.dart';

/// Manages an AWS Cognito IDP (Identity Provider) Log Delivery Configuration.
///
/// ## Example Usage
///
/// ### Basic Usage with CloudWatch Logs
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.cognito.UserPool("example", {name: "example"});
/// const exampleLogGroup = new aws.cloudwatch.LogGroup("example", {name: "example"});
/// const exampleLogDeliveryConfiguration = new aws.cognito.LogDeliveryConfiguration("example", {
/// userPoolId: example.id,
/// logConfigurations: [{
/// eventSource: "userNotification",
/// logLevel: "ERROR",
/// cloudWatchLogsConfiguration: {
/// logGroupArn: exampleLogGroup.arn,
/// },
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cognito.UserPool("example", name="example")
/// example_log_group = aws.cloudwatch.LogGroup("example", name="example")
/// example_log_delivery_configuration = aws.cognito.LogDeliveryConfiguration("example",
/// user_pool_id=example.id,
/// log_configurations=[{
/// "event_source": "userNotification",
/// "log_level": "ERROR",
/// "cloud_watch_logs_configuration": {
/// "log_group_arn": example_log_group.arn,
/// },
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
/// var example = new Aws.Cognito.UserPool("example", new()
/// {
/// Name = "example",
/// });
///
/// var exampleLogGroup = new Aws.CloudWatch.LogGroup("example", new()
/// {
/// Name = "example",
/// });
///
/// var exampleLogDeliveryConfiguration = new Aws.Cognito.LogDeliveryConfiguration("example", new()
/// {
/// UserPoolId = example.Id,
/// LogConfigurations = new[]
/// {
/// new Aws.Cognito.Inputs.LogDeliveryConfigurationLogConfigurationArgs
/// {
/// EventSource = "userNotification",
/// LogLevel = "ERROR",
/// CloudWatchLogsConfiguration = new Aws.Cognito.Inputs.LogDeliveryConfigurationLogConfigurationCloudWatchLogsConfigurationArgs
/// {
/// LogGroupArn = exampleLogGroup.Arn,
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cognito"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := cognito.NewUserPool(ctx, "example", &cognito.UserPoolArgs{
/// Name: pulumi.String("example"),
/// })
/// if err != nil {
/// return err
/// }
/// exampleLogGroup, err := cloudwatch.NewLogGroup(ctx, "example", &cloudwatch.LogGroupArgs{
/// Name: pulumi.String("example"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = cognito.NewLogDeliveryConfiguration(ctx, "example", &cognito.LogDeliveryConfigurationArgs{
/// UserPoolId: example.ID(),
/// LogConfigurations: cognito.LogDeliveryConfigurationLogConfigurationArray{
/// &cognito.LogDeliveryConfigurationLogConfigurationArgs{
/// EventSource: pulumi.String("userNotification"),
/// LogLevel:    pulumi.String("ERROR"),
/// CloudWatchLogsConfiguration: &cognito.LogDeliveryConfigurationLogConfigurationCloudWatchLogsConfigurationArgs{
/// LogGroupArn: exampleLogGroup.Arn,
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
/// import com.pulumi.aws.cognito.UserPool;
/// import com.pulumi.aws.cognito.UserPoolArgs;
/// import com.pulumi.aws.cloudwatch.LogGroup;
/// import com.pulumi.aws.cloudwatch.LogGroupArgs;
/// import com.pulumi.aws.cognito.LogDeliveryConfiguration;
/// import com.pulumi.aws.cognito.LogDeliveryConfigurationArgs;
/// import com.pulumi.aws.cognito.inputs.LogDeliveryConfigurationLogConfigurationArgs;
/// import com.pulumi.aws.cognito.inputs.LogDeliveryConfigurationLogConfigurationCloudWatchLogsConfigurationArgs;
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
/// var example = new UserPool("example", UserPoolArgs.builder()
/// .name("example")
/// .build());
///
/// var exampleLogGroup = new LogGroup("exampleLogGroup", LogGroupArgs.builder()
/// .name("example")
/// .build());
///
/// var exampleLogDeliveryConfiguration = new LogDeliveryConfiguration("exampleLogDeliveryConfiguration", LogDeliveryConfigurationArgs.builder()
/// .userPoolId(example.id())
/// .logConfigurations(LogDeliveryConfigurationLogConfigurationArgs.builder()
/// .eventSource("userNotification")
/// .logLevel("ERROR")
/// .cloudWatchLogsConfiguration(LogDeliveryConfigurationLogConfigurationCloudWatchLogsConfigurationArgs.builder()
/// .logGroupArn(exampleLogGroup.arn())
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:cognito:UserPool
/// properties:
/// name: example
/// exampleLogGroup:
/// type: aws:cloudwatch:LogGroup
/// name: example
/// properties:
/// name: example
/// exampleLogDeliveryConfiguration:
/// type: aws:cognito:LogDeliveryConfiguration
/// name: example
/// properties:
/// userPoolId: ${example.id}
/// logConfigurations:
/// - eventSource: userNotification
/// logLevel: ERROR
/// cloudWatchLogsConfiguration:
/// logGroupArn: ${exampleLogGroup.arn}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Multiple Log Configurations with Different Destinations
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.cognito.UserPool("example", {name: "example"});
/// const exampleLogGroup = new aws.cloudwatch.LogGroup("example", {name: "example"});
/// const exampleBucket = new aws.s3.Bucket("example", {
/// bucket: "example-bucket",
/// forceDestroy: true,
/// });
/// const firehose = new aws.iam.Role("firehose", {
/// name: "firehose-role",
/// assumeRolePolicy: JSON.stringify({
/// Version: "2012-10-17",
/// Statement: [{
/// Action: "sts:AssumeRole",
/// Effect: "Allow",
/// Principal: {
/// Service: "firehose.amazonaws.com",
/// },
/// }],
/// }),
/// });
/// const firehoseRolePolicy = new aws.iam.RolePolicy("firehose", {
/// name: "firehose-policy",
/// role: firehose.id,
/// policy: pulumi.jsonStringify({
/// Version: "2012-10-17",
/// Statement: [{
/// Effect: "Allow",
/// Action: [
/// "s3:AbortMultipartUpload",
/// "s3:GetBucketLocation",
/// "s3:GetObject",
/// "s3:ListBucket",
/// "s3:ListBucketMultipartUploads",
/// "s3:PutObject",
/// ],
/// Resource: [
/// exampleBucket.arn,
/// pulumi.interpolate`${exampleBucket.arn}/*`,
/// ],
/// }],
/// }),
/// });
/// const exampleFirehoseDeliveryStream = new aws.kinesis.FirehoseDeliveryStream("example", {
/// name: "example-stream",
/// destination: "extended_s3",
/// extendedS3Configuration: {
/// roleArn: firehose.arn,
/// bucketArn: exampleBucket.arn,
/// },
/// });
/// const exampleLogDeliveryConfiguration = new aws.cognito.LogDeliveryConfiguration("example", {
/// userPoolId: example.id,
/// logConfigurations: [
/// {
/// eventSource: "userNotification",
/// logLevel: "INFO",
/// cloudWatchLogsConfiguration: {
/// logGroupArn: exampleLogGroup.arn,
/// },
/// },
/// {
/// eventSource: "userAuthEvents",
/// logLevel: "ERROR",
/// firehoseConfiguration: {
/// streamArn: exampleFirehoseDeliveryStream.arn,
/// },
/// },
/// ],
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example = aws.cognito.UserPool("example", name="example")
/// example_log_group = aws.cloudwatch.LogGroup("example", name="example")
/// example_bucket = aws.s3.Bucket("example",
/// bucket="example-bucket",
/// force_destroy=True)
/// firehose = aws.iam.Role("firehose",
/// name="firehose-role",
/// assume_role_policy=json.dumps({
/// "Version": "2012-10-17",
/// "Statement": [{
/// "Action": "sts:AssumeRole",
/// "Effect": "Allow",
/// "Principal": {
/// "Service": "firehose.amazonaws.com",
/// },
/// }],
/// }))
/// firehose_role_policy = aws.iam.RolePolicy("firehose",
/// name="firehose-policy",
/// role=firehose.id,
/// policy=pulumi.Output.json_dumps({
/// "Version": "2012-10-17",
/// "Statement": [{
/// "Effect": "Allow",
/// "Action": [
/// "s3:AbortMultipartUpload",
/// "s3:GetBucketLocation",
/// "s3:GetObject",
/// "s3:ListBucket",
/// "s3:ListBucketMultipartUploads",
/// "s3:PutObject",
/// ],
/// "Resource": [
/// example_bucket.arn,
/// example_bucket.arn.apply(lambda arn: f"{arn}/*"),
/// ],
/// }],
/// }))
/// example_firehose_delivery_stream = aws.kinesis.FirehoseDeliveryStream("example",
/// name="example-stream",
/// destination="extended_s3",
/// extended_s3_configuration={
/// "role_arn": firehose.arn,
/// "bucket_arn": example_bucket.arn,
/// })
/// example_log_delivery_configuration = aws.cognito.LogDeliveryConfiguration("example",
/// user_pool_id=example.id,
/// log_configurations=[
/// {
/// "event_source": "userNotification",
/// "log_level": "INFO",
/// "cloud_watch_logs_configuration": {
/// "log_group_arn": example_log_group.arn,
/// },
/// },
/// {
/// "event_source": "userAuthEvents",
/// "log_level": "ERROR",
/// "firehose_configuration": {
/// "stream_arn": example_firehose_delivery_stream.arn,
/// },
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
/// var example = new Aws.Cognito.UserPool("example", new()
/// {
/// Name = "example",
/// });
///
/// var exampleLogGroup = new Aws.CloudWatch.LogGroup("example", new()
/// {
/// Name = "example",
/// });
///
/// var exampleBucket = new Aws.S3.Bucket("example", new()
/// {
/// BucketName = "example-bucket",
/// ForceDestroy = true,
/// });
///
/// var firehose = new Aws.Iam.Role("firehose", new()
/// {
/// Name = "firehose-role",
/// AssumeRolePolicy = JsonSerializer.Serialize(new Dictionary<string, object?>
/// {
/// ["Version"] = "2012-10-17",
/// ["Statement"] = new[]
/// {
/// new Dictionary<string, object?>
/// {
/// ["Action"] = "sts:AssumeRole",
/// ["Effect"] = "Allow",
/// ["Principal"] = new Dictionary<string, object?>
/// {
/// ["Service"] = "firehose.amazonaws.com",
/// },
/// },
/// },
/// }),
/// });
///
/// var firehoseRolePolicy = new Aws.Iam.RolePolicy("firehose", new()
/// {
/// Name = "firehose-policy",
/// Role = firehose.Id,
/// Policy = Output.JsonSerialize(Output.Create(new Dictionary<string, object?>
/// {
/// ["Version"] = "2012-10-17",
/// ["Statement"] = new[]
/// {
/// new Dictionary<string, object?>
/// {
/// ["Effect"] = "Allow",
/// ["Action"] = new[]
/// {
/// "s3:AbortMultipartUpload",
/// "s3:GetBucketLocation",
/// "s3:GetObject",
/// "s3:ListBucket",
/// "s3:ListBucketMultipartUploads",
/// "s3:PutObject",
/// },
/// ["Resource"] = new[]
/// {
/// exampleBucket.Arn,
/// exampleBucket.Arn.Apply(arn => $"{arn}/*"),
/// },
/// },
/// },
/// })),
/// });
///
/// var exampleFirehoseDeliveryStream = new Aws.Kinesis.FirehoseDeliveryStream("example", new()
/// {
/// Name = "example-stream",
/// Destination = "extended_s3",
/// ExtendedS3Configuration = new Aws.Kinesis.Inputs.FirehoseDeliveryStreamExtendedS3ConfigurationArgs
/// {
/// RoleArn = firehose.Arn,
/// BucketArn = exampleBucket.Arn,
/// },
/// });
///
/// var exampleLogDeliveryConfiguration = new Aws.Cognito.LogDeliveryConfiguration("example", new()
/// {
/// UserPoolId = example.Id,
/// LogConfigurations = new[]
/// {
/// new Aws.Cognito.Inputs.LogDeliveryConfigurationLogConfigurationArgs
/// {
/// EventSource = "userNotification",
/// LogLevel = "INFO",
/// CloudWatchLogsConfiguration = new Aws.Cognito.Inputs.LogDeliveryConfigurationLogConfigurationCloudWatchLogsConfigurationArgs
/// {
/// LogGroupArn = exampleLogGroup.Arn,
/// },
/// },
/// new Aws.Cognito.Inputs.LogDeliveryConfigurationLogConfigurationArgs
/// {
/// EventSource = "userAuthEvents",
/// LogLevel = "ERROR",
/// FirehoseConfiguration = new Aws.Cognito.Inputs.LogDeliveryConfigurationLogConfigurationFirehoseConfigurationArgs
/// {
/// StreamArn = exampleFirehoseDeliveryStream.Arn,
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
/// "fmt"
///
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cognito"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kinesis"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := cognito.NewUserPool(ctx, "example", &cognito.UserPoolArgs{
/// Name: pulumi.String("example"),
/// })
/// if err != nil {
/// return err
/// }
/// exampleLogGroup, err := cloudwatch.NewLogGroup(ctx, "example", &cloudwatch.LogGroupArgs{
/// Name: pulumi.String("example"),
/// })
/// if err != nil {
/// return err
/// }
/// exampleBucket, err := s3.NewBucket(ctx, "example", &s3.BucketArgs{
/// Bucket:       pulumi.String("example-bucket"),
/// ForceDestroy: pulumi.Bool(true),
/// })
/// if err != nil {
/// return err
/// }
/// tmpJSON0, err := json.Marshal(map[string]interface{}{
/// "Version": "2012-10-17",
/// "Statement": []map[string]interface{}{
/// map[string]interface{}{
/// "Action": "sts:AssumeRole",
/// "Effect": "Allow",
/// "Principal": map[string]interface{}{
/// "Service": "firehose.amazonaws.com",
/// },
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// json0 := string(tmpJSON0)
/// firehose, err := iam.NewRole(ctx, "firehose", &iam.RoleArgs{
/// Name:             pulumi.String("firehose-role"),
/// AssumeRolePolicy: pulumi.String(json0),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = iam.NewRolePolicy(ctx, "firehose", &iam.RolePolicyArgs{
/// Name: pulumi.String("firehose-policy"),
/// Role: firehose.ID(),
/// Policy: pulumi.All(exampleBucket.Arn, exampleBucket.Arn).ApplyT(func(_args []interface{}) (string, error) {
/// exampleBucketArn := _args[0].(string)
/// exampleBucketArn1 := _args[1].(string)
/// var _zero string
/// tmpJSON1, err := json.Marshal(map[string]interface{}{
/// "Version": "2012-10-17",
/// "Statement": []map[string]interface{}{
/// map[string]interface{}{
/// "Effect": "Allow",
/// "Action": []string{
/// "s3:AbortMultipartUpload",
/// "s3:GetBucketLocation",
/// "s3:GetObject",
/// "s3:ListBucket",
/// "s3:ListBucketMultipartUploads",
/// "s3:PutObject",
/// },
/// "Resource": []string{
/// exampleBucketArn,
/// fmt.Sprintf("%v/*", exampleBucketArn1),
/// },
/// },
/// },
/// })
/// if err != nil {
/// return _zero, err
/// }
/// json1 := string(tmpJSON1)
/// return json1, nil
/// }).(pulumi.StringOutput),
/// })
/// if err != nil {
/// return err
/// }
/// exampleFirehoseDeliveryStream, err := kinesis.NewFirehoseDeliveryStream(ctx, "example", &kinesis.FirehoseDeliveryStreamArgs{
/// Name:        pulumi.String("example-stream"),
/// Destination: pulumi.String("extended_s3"),
/// ExtendedS3Configuration: &kinesis.FirehoseDeliveryStreamExtendedS3ConfigurationArgs{
/// RoleArn:   firehose.Arn,
/// BucketArn: exampleBucket.Arn,
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = cognito.NewLogDeliveryConfiguration(ctx, "example", &cognito.LogDeliveryConfigurationArgs{
/// UserPoolId: example.ID(),
/// LogConfigurations: cognito.LogDeliveryConfigurationLogConfigurationArray{
/// &cognito.LogDeliveryConfigurationLogConfigurationArgs{
/// EventSource: pulumi.String("userNotification"),
/// LogLevel:    pulumi.String("INFO"),
/// CloudWatchLogsConfiguration: &cognito.LogDeliveryConfigurationLogConfigurationCloudWatchLogsConfigurationArgs{
/// LogGroupArn: exampleLogGroup.Arn,
/// },
/// },
/// &cognito.LogDeliveryConfigurationLogConfigurationArgs{
/// EventSource: pulumi.String("userAuthEvents"),
/// LogLevel:    pulumi.String("ERROR"),
/// FirehoseConfiguration: &cognito.LogDeliveryConfigurationLogConfigurationFirehoseConfigurationArgs{
/// StreamArn: exampleFirehoseDeliveryStream.Arn,
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
/// import com.pulumi.aws.cognito.UserPool;
/// import com.pulumi.aws.cognito.UserPoolArgs;
/// import com.pulumi.aws.cloudwatch.LogGroup;
/// import com.pulumi.aws.cloudwatch.LogGroupArgs;
/// import com.pulumi.aws.s3.Bucket;
/// import com.pulumi.aws.s3.BucketArgs;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.iam.RolePolicy;
/// import com.pulumi.aws.iam.RolePolicyArgs;
/// import com.pulumi.aws.kinesis.FirehoseDeliveryStream;
/// import com.pulumi.aws.kinesis.FirehoseDeliveryStreamArgs;
/// import com.pulumi.aws.kinesis.inputs.FirehoseDeliveryStreamExtendedS3ConfigurationArgs;
/// import com.pulumi.aws.cognito.LogDeliveryConfiguration;
/// import com.pulumi.aws.cognito.LogDeliveryConfigurationArgs;
/// import com.pulumi.aws.cognito.inputs.LogDeliveryConfigurationLogConfigurationArgs;
/// import com.pulumi.aws.cognito.inputs.LogDeliveryConfigurationLogConfigurationCloudWatchLogsConfigurationArgs;
/// import com.pulumi.aws.cognito.inputs.LogDeliveryConfigurationLogConfigurationFirehoseConfigurationArgs;
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
/// var example = new UserPool("example", UserPoolArgs.builder()
/// .name("example")
/// .build());
///
/// var exampleLogGroup = new LogGroup("exampleLogGroup", LogGroupArgs.builder()
/// .name("example")
/// .build());
///
/// var exampleBucket = new Bucket("exampleBucket", BucketArgs.builder()
/// .bucket("example-bucket")
/// .forceDestroy(true)
/// .build());
///
/// var firehose = new Role("firehose", RoleArgs.builder()
/// .name("firehose-role")
/// .assumeRolePolicy(serializeJson(
/// jsonObject(
/// jsonProperty("Version", "2012-10-17"),
/// jsonProperty("Statement", jsonArray(jsonObject(
/// jsonProperty("Action", "sts:AssumeRole"),
/// jsonProperty("Effect", "Allow"),
/// jsonProperty("Principal", jsonObject(
/// jsonProperty("Service", "firehose.amazonaws.com")
/// ))
/// )))
/// )))
/// .build());
///
/// var firehoseRolePolicy = new RolePolicy("firehoseRolePolicy", RolePolicyArgs.builder()
/// .name("firehose-policy")
/// .role(firehose.id())
/// .policy(Output.tuple(exampleBucket.arn(), exampleBucket.arn()).applyValue(values -> {
/// var exampleBucketArn = values.t1;
/// var exampleBucketArn1 = values.t2;
/// return serializeJson(
/// jsonObject(
/// jsonProperty("Version", "2012-10-17"),
/// jsonProperty("Statement", jsonArray(jsonObject(
/// jsonProperty("Effect", "Allow"),
/// jsonProperty("Action", jsonArray(
/// "s3:AbortMultipartUpload",
/// "s3:GetBucketLocation",
/// "s3:GetObject",
/// "s3:ListBucket",
/// "s3:ListBucketMultipartUploads",
/// "s3:PutObject"
/// )),
/// jsonProperty("Resource", jsonArray(
/// exampleBucketArn,
/// String.format("%s/*", exampleBucketArn1)
/// ))
/// )))
/// ));
/// }))
/// .build());
///
/// var exampleFirehoseDeliveryStream = new FirehoseDeliveryStream("exampleFirehoseDeliveryStream", FirehoseDeliveryStreamArgs.builder()
/// .name("example-stream")
/// .destination("extended_s3")
/// .extendedS3Configuration(FirehoseDeliveryStreamExtendedS3ConfigurationArgs.builder()
/// .roleArn(firehose.arn())
/// .bucketArn(exampleBucket.arn())
/// .build())
/// .build());
///
/// var exampleLogDeliveryConfiguration = new LogDeliveryConfiguration("exampleLogDeliveryConfiguration", LogDeliveryConfigurationArgs.builder()
/// .userPoolId(example.id())
/// .logConfigurations(
/// LogDeliveryConfigurationLogConfigurationArgs.builder()
/// .eventSource("userNotification")
/// .logLevel("INFO")
/// .cloudWatchLogsConfiguration(LogDeliveryConfigurationLogConfigurationCloudWatchLogsConfigurationArgs.builder()
/// .logGroupArn(exampleLogGroup.arn())
/// .build())
/// .build(),
/// LogDeliveryConfigurationLogConfigurationArgs.builder()
/// .eventSource("userAuthEvents")
/// .logLevel("ERROR")
/// .firehoseConfiguration(LogDeliveryConfigurationLogConfigurationFirehoseConfigurationArgs.builder()
/// .streamArn(exampleFirehoseDeliveryStream.arn())
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:cognito:UserPool
/// properties:
/// name: example
/// exampleLogGroup:
/// type: aws:cloudwatch:LogGroup
/// name: example
/// properties:
/// name: example
/// exampleBucket:
/// type: aws:s3:Bucket
/// name: example
/// properties:
/// bucket: example-bucket
/// forceDestroy: true
/// firehose:
/// type: aws:iam:Role
/// properties:
/// name: firehose-role
/// assumeRolePolicy:
/// fn::toJSON:
/// Version: 2012-10-17
/// Statement:
/// - Action: sts:AssumeRole
/// Effect: Allow
/// Principal:
/// Service: firehose.amazonaws.com
/// firehoseRolePolicy:
/// type: aws:iam:RolePolicy
/// name: firehose
/// properties:
/// name: firehose-policy
/// role: ${firehose.id}
/// policy:
/// fn::toJSON:
/// Version: 2012-10-17
/// Statement:
/// - Effect: Allow
/// Action:
/// - s3:AbortMultipartUpload
/// - s3:GetBucketLocation
/// - s3:GetObject
/// - s3:ListBucket
/// - s3:ListBucketMultipartUploads
/// - s3:PutObject
/// Resource:
/// - ${exampleBucket.arn}
/// - ${exampleBucket.arn}/*
/// exampleFirehoseDeliveryStream:
/// type: aws:kinesis:FirehoseDeliveryStream
/// name: example
/// properties:
/// name: example-stream
/// destination: extended_s3
/// extendedS3Configuration:
/// roleArn: ${firehose.arn}
/// bucketArn: ${exampleBucket.arn}
/// exampleLogDeliveryConfiguration:
/// type: aws:cognito:LogDeliveryConfiguration
/// name: example
/// properties:
/// userPoolId: ${example.id}
/// logConfigurations:
/// - eventSource: userNotification
/// logLevel: INFO
/// cloudWatchLogsConfiguration:
/// logGroupArn: ${exampleLogGroup.arn}
/// - eventSource: userAuthEvents
/// logLevel: ERROR
/// firehoseConfiguration:
/// streamArn: ${exampleFirehoseDeliveryStream.arn}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### S3 Configuration
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.cognito.UserPool("example", {name: "example"});
/// const exampleBucket = new aws.s3.Bucket("example", {
/// bucket: "example-bucket",
/// forceDestroy: true,
/// });
/// const exampleLogDeliveryConfiguration = new aws.cognito.LogDeliveryConfiguration("example", {
/// userPoolId: example.id,
/// logConfigurations: [{
/// eventSource: "userNotification",
/// logLevel: "ERROR",
/// s3Configuration: {
/// bucketArn: exampleBucket.arn,
/// },
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cognito.UserPool("example", name="example")
/// example_bucket = aws.s3.Bucket("example",
/// bucket="example-bucket",
/// force_destroy=True)
/// example_log_delivery_configuration = aws.cognito.LogDeliveryConfiguration("example",
/// user_pool_id=example.id,
/// log_configurations=[{
/// "event_source": "userNotification",
/// "log_level": "ERROR",
/// "s3_configuration": {
/// "bucket_arn": example_bucket.arn,
/// },
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
/// var example = new Aws.Cognito.UserPool("example", new()
/// {
/// Name = "example",
/// });
///
/// var exampleBucket = new Aws.S3.Bucket("example", new()
/// {
/// BucketName = "example-bucket",
/// ForceDestroy = true,
/// });
///
/// var exampleLogDeliveryConfiguration = new Aws.Cognito.LogDeliveryConfiguration("example", new()
/// {
/// UserPoolId = example.Id,
/// LogConfigurations = new[]
/// {
/// new Aws.Cognito.Inputs.LogDeliveryConfigurationLogConfigurationArgs
/// {
/// EventSource = "userNotification",
/// LogLevel = "ERROR",
/// S3Configuration = new Aws.Cognito.Inputs.LogDeliveryConfigurationLogConfigurationS3ConfigurationArgs
/// {
/// BucketArn = exampleBucket.Arn,
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cognito"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := cognito.NewUserPool(ctx, "example", &cognito.UserPoolArgs{
/// Name: pulumi.String("example"),
/// })
/// if err != nil {
/// return err
/// }
/// exampleBucket, err := s3.NewBucket(ctx, "example", &s3.BucketArgs{
/// Bucket:       pulumi.String("example-bucket"),
/// ForceDestroy: pulumi.Bool(true),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = cognito.NewLogDeliveryConfiguration(ctx, "example", &cognito.LogDeliveryConfigurationArgs{
/// UserPoolId: example.ID(),
/// LogConfigurations: cognito.LogDeliveryConfigurationLogConfigurationArray{
/// &cognito.LogDeliveryConfigurationLogConfigurationArgs{
/// EventSource: pulumi.String("userNotification"),
/// LogLevel:    pulumi.String("ERROR"),
/// S3Configuration: &cognito.LogDeliveryConfigurationLogConfigurationS3ConfigurationArgs{
/// BucketArn: exampleBucket.Arn,
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
/// import com.pulumi.aws.cognito.UserPool;
/// import com.pulumi.aws.cognito.UserPoolArgs;
/// import com.pulumi.aws.s3.Bucket;
/// import com.pulumi.aws.s3.BucketArgs;
/// import com.pulumi.aws.cognito.LogDeliveryConfiguration;
/// import com.pulumi.aws.cognito.LogDeliveryConfigurationArgs;
/// import com.pulumi.aws.cognito.inputs.LogDeliveryConfigurationLogConfigurationArgs;
/// import com.pulumi.aws.cognito.inputs.LogDeliveryConfigurationLogConfigurationS3ConfigurationArgs;
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
/// var example = new UserPool("example", UserPoolArgs.builder()
/// .name("example")
/// .build());
///
/// var exampleBucket = new Bucket("exampleBucket", BucketArgs.builder()
/// .bucket("example-bucket")
/// .forceDestroy(true)
/// .build());
///
/// var exampleLogDeliveryConfiguration = new LogDeliveryConfiguration("exampleLogDeliveryConfiguration", LogDeliveryConfigurationArgs.builder()
/// .userPoolId(example.id())
/// .logConfigurations(LogDeliveryConfigurationLogConfigurationArgs.builder()
/// .eventSource("userNotification")
/// .logLevel("ERROR")
/// .s3Configuration(LogDeliveryConfigurationLogConfigurationS3ConfigurationArgs.builder()
/// .bucketArn(exampleBucket.arn())
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:cognito:UserPool
/// properties:
/// name: example
/// exampleBucket:
/// type: aws:s3:Bucket
/// name: example
/// properties:
/// bucket: example-bucket
/// forceDestroy: true
/// exampleLogDeliveryConfiguration:
/// type: aws:cognito:LogDeliveryConfiguration
/// name: example
/// properties:
/// userPoolId: ${example.id}
/// logConfigurations:
/// - eventSource: userNotification
/// logLevel: ERROR
/// s3Configuration:
/// bucketArn: ${exampleBucket.arn}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * <span pulumi-lang-nodejs="`userPoolId`" pulumi-lang-dotnet="`UserPoolId`" pulumi-lang-go="`userPoolId`" pulumi-lang-python="`user_pool_id`" pulumi-lang-yaml="`userPoolId`" pulumi-lang-java="`userPoolId`">`user_pool_id`</span> (String) ID of the Cognito User Pool.
///
/// #### Optional
///
/// * <span pulumi-lang-nodejs="`accountId`" pulumi-lang-dotnet="`AccountId`" pulumi-lang-go="`accountId`" pulumi-lang-python="`account_id`" pulumi-lang-yaml="`accountId`" pulumi-lang-java="`accountId`">`account_id`</span> (String) AWS Account where this resource is managed.
/// * <span pulumi-lang-nodejs="`region`" pulumi-lang-dotnet="`Region`" pulumi-lang-go="`region`" pulumi-lang-python="`region`" pulumi-lang-yaml="`region`" pulumi-lang-java="`region`">`region`</span> (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import Cognito IDP (Identity Provider) Log Delivery Configuration using the <span pulumi-lang-nodejs="`userPoolId`" pulumi-lang-dotnet="`UserPoolId`" pulumi-lang-go="`userPoolId`" pulumi-lang-python="`user_pool_id`" pulumi-lang-yaml="`userPoolId`" pulumi-lang-java="`userPoolId`">`user_pool_id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:cognito/logDeliveryConfiguration:LogDeliveryConfiguration example us-west-2_example123
/// ```
class LogDeliveryConfiguration extends CustomResource {
  /// Configuration block for log delivery. At least one configuration block is required. See Log Configurations below.
  late final Output<List<LogDeliveryConfigurationLogConfiguration>>
      logConfigurations;

  /// The AWS region.
  late final Output<String> region;

  /// The ID of the user pool for which to configure log delivery.
  ///
  /// The following arguments are optional:
  late final Output<String> userPoolId;

  LogDeliveryConfiguration(
    String name, {
    LogDeliveryConfigurationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:cognito/logDeliveryConfiguration:LogDeliveryConfiguration',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.logConfigurations =
        registerOutput<List<LogDeliveryConfigurationLogConfiguration>>(
            'logConfigurations');
    this.region = registerOutput<String>('region');
    this.userPoolId = registerOutput<String>('userPoolId');
  }
}
