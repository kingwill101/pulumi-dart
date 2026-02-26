import 'package:pulumi/pulumi.dart';
import '../stream_processor_data_sharing_preference/stream_processor_data_sharing_preference.dart';
import '../stream_processor_input/stream_processor_input.dart';
import '../stream_processor_notification_channel/stream_processor_notification_channel.dart';
import '../stream_processor_output/stream_processor_output.dart';
import '../stream_processor_regions_of_interest/stream_processor_regions_of_interest.dart';
import '../stream_processor_settings/stream_processor_settings.dart';
import '../stream_processor_timeouts/stream_processor_timeouts.dart';
import 'stream_processor_args.dart';

/// Resource for managing an AWS Rekognition Stream Processor.
///
/// > This resource must be configured specifically for your use case, and not all options are compatible with one another. See [Stream Processor API documentation](https://docs.aws.amazon.com/rekognition/latest/APIReference/API_CreateStreamProcessor.html#rekognition-CreateStreamProcessor-request-Input) for configuration information.
///
/// > Stream Processors configured for Face Recognition cannot have _any_ properties updated after the fact, and it will result in an AWS API error.
///
/// ## Example Usage
///
/// ### Label Detection
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.s3.Bucket("example", {bucket: "example-bucket"});
/// const exampleTopic = new aws.sns.Topic("example", {name: "example-topic"});
/// const exampleVideoStream = new aws.kinesis.VideoStream("example", {
/// name: "example-kinesis-input",
/// dataRetentionInHours: 1,
/// deviceName: "kinesis-video-device-name",
/// mediaType: "video/h264",
/// });
/// const exampleRole = new aws.iam.Role("example", {
/// name: "example-role",
/// inlinePolicies: [{
/// name: "Rekognition-Access",
/// policy: pulumi.jsonStringify({
/// Version: "2012-10-17",
/// Statement: [
/// {
/// Action: ["s3:PutObject"],
/// Effect: "Allow",
/// Resource: [pulumi.interpolate`${example.arn}/*`],
/// },
/// {
/// Action: ["sns:Publish"],
/// Effect: "Allow",
/// Resource: [exampleTopic.arn],
/// },
/// {
/// Action: [
/// "kinesis:Get*",
/// "kinesis:DescribeStreamSummary",
/// ],
/// Effect: "Allow",
/// Resource: [exampleVideoStream.arn],
/// },
/// ],
/// }),
/// }],
/// assumeRolePolicy: JSON.stringify({
/// Version: "2012-10-17",
/// Statement: [{
/// Action: "sts:AssumeRole",
/// Effect: "Allow",
/// Principal: {
/// Service: "rekognition.amazonaws.com",
/// },
/// }],
/// }),
/// });
/// const exampleStreamProcessor = new aws.rekognition.StreamProcessor("example", {
/// roleArn: exampleRole.arn,
/// name: "example-processor",
/// dataSharingPreference: {
/// optIn: false,
/// },
/// output: {
/// s3Destination: {
/// bucket: example.bucket,
/// },
/// },
/// settings: {
/// connectedHome: {
/// labels: [
/// "PERSON",
/// "PET",
/// ],
/// },
/// },
/// input: {
/// kinesisVideoStream: {
/// arn: exampleVideoStream.arn,
/// },
/// },
/// notificationChannel: {
/// snsTopicArn: exampleTopic.arn,
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example = aws.s3.Bucket("example", bucket="example-bucket")
/// example_topic = aws.sns.Topic("example", name="example-topic")
/// example_video_stream = aws.kinesis.VideoStream("example",
/// name="example-kinesis-input",
/// data_retention_in_hours=1,
/// device_name="kinesis-video-device-name",
/// media_type="video/h264")
/// example_role = aws.iam.Role("example",
/// name="example-role",
/// inline_policies=[{
/// "name": "Rekognition-Access",
/// "policy": pulumi.Output.json_dumps({
/// "Version": "2012-10-17",
/// "Statement": [
/// {
/// "Action": ["s3:PutObject"],
/// "Effect": "Allow",
/// "Resource": [example.arn.apply(lambda arn: f"{arn}/*")],
/// },
/// {
/// "Action": ["sns:Publish"],
/// "Effect": "Allow",
/// "Resource": [example_topic.arn],
/// },
/// {
/// "Action": [
/// "kinesis:Get*",
/// "kinesis:DescribeStreamSummary",
/// ],
/// "Effect": "Allow",
/// "Resource": [example_video_stream.arn],
/// },
/// ],
/// }),
/// }],
/// assume_role_policy=json.dumps({
/// "Version": "2012-10-17",
/// "Statement": [{
/// "Action": "sts:AssumeRole",
/// "Effect": "Allow",
/// "Principal": {
/// "Service": "rekognition.amazonaws.com",
/// },
/// }],
/// }))
/// example_stream_processor = aws.rekognition.StreamProcessor("example",
/// role_arn=example_role.arn,
/// name="example-processor",
/// data_sharing_preference={
/// "opt_in": False,
/// },
/// output={
/// "s3_destination": {
/// "bucket": example.bucket,
/// },
/// },
/// settings={
/// "connected_home": {
/// "labels": [
/// "PERSON",
/// "PET",
/// ],
/// },
/// },
/// input={
/// "kinesis_video_stream": {
/// "arn": example_video_stream.arn,
/// },
/// },
/// notification_channel={
/// "sns_topic_arn": example_topic.arn,
/// })
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
/// var example = new Aws.S3.Bucket("example", new()
/// {
/// BucketName = "example-bucket",
/// });
///
/// var exampleTopic = new Aws.Sns.Topic("example", new()
/// {
/// Name = "example-topic",
/// });
///
/// var exampleVideoStream = new Aws.Kinesis.VideoStream("example", new()
/// {
/// Name = "example-kinesis-input",
/// DataRetentionInHours = 1,
/// DeviceName = "kinesis-video-device-name",
/// MediaType = "video/h264",
/// });
///
/// var exampleRole = new Aws.Iam.Role("example", new()
/// {
/// Name = "example-role",
/// InlinePolicies = new[]
/// {
/// new Aws.Iam.Inputs.RoleInlinePolicyArgs
/// {
/// Name = "Rekognition-Access",
/// Policy = Output.JsonSerialize(Output.Create(new Dictionary<string, object?>
/// {
/// ["Version"] = "2012-10-17",
/// ["Statement"] = new[]
/// {
/// new Dictionary<string, object?>
/// {
/// ["Action"] = new[]
/// {
/// "s3:PutObject",
/// },
/// ["Effect"] = "Allow",
/// ["Resource"] = new[]
/// {
/// example.Arn.Apply(arn => $"{arn}/*"),
/// },
/// },
/// new Dictionary<string, object?>
/// {
/// ["Action"] = new[]
/// {
/// "sns:Publish",
/// },
/// ["Effect"] = "Allow",
/// ["Resource"] = new[]
/// {
/// exampleTopic.Arn,
/// },
/// },
/// new Dictionary<string, object?>
/// {
/// ["Action"] = new[]
/// {
/// "kinesis:Get*",
/// "kinesis:DescribeStreamSummary",
/// },
/// ["Effect"] = "Allow",
/// ["Resource"] = new[]
/// {
/// exampleVideoStream.Arn,
/// },
/// },
/// },
/// })),
/// },
/// },
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
/// ["Service"] = "rekognition.amazonaws.com",
/// },
/// },
/// },
/// }),
/// });
///
/// var exampleStreamProcessor = new Aws.Rekognition.StreamProcessor("example", new()
/// {
/// RoleArn = exampleRole.Arn,
/// Name = "example-processor",
/// DataSharingPreference = new Aws.Rekognition.Inputs.StreamProcessorDataSharingPreferenceArgs
/// {
/// OptIn = false,
/// },
/// Output = new Aws.Rekognition.Inputs.StreamProcessorOutputArgs
/// {
/// S3Destination = new Aws.Rekognition.Inputs.StreamProcessorOutputS3DestinationArgs
/// {
/// Bucket = example.BucketName,
/// },
/// },
/// Settings = new Aws.Rekognition.Inputs.StreamProcessorSettingsArgs
/// {
/// ConnectedHome = new Aws.Rekognition.Inputs.StreamProcessorSettingsConnectedHomeArgs
/// {
/// Labels = new[]
/// {
/// "PERSON",
/// "PET",
/// },
/// },
/// },
/// Input = new Aws.Rekognition.Inputs.StreamProcessorInputArgs
/// {
/// KinesisVideoStream = new Aws.Rekognition.Inputs.StreamProcessorInputKinesisVideoStreamArgs
/// {
/// Arn = exampleVideoStream.Arn,
/// },
/// },
/// NotificationChannel = new Aws.Rekognition.Inputs.StreamProcessorNotificationChannelArgs
/// {
/// SnsTopicArn = exampleTopic.Arn,
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kinesis"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/rekognition"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sns"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := s3.NewBucket(ctx, "example", &s3.BucketArgs{
/// Bucket: pulumi.String("example-bucket"),
/// })
/// if err != nil {
/// return err
/// }
/// exampleTopic, err := sns.NewTopic(ctx, "example", &sns.TopicArgs{
/// Name: pulumi.String("example-topic"),
/// })
/// if err != nil {
/// return err
/// }
/// exampleVideoStream, err := kinesis.NewVideoStream(ctx, "example", &kinesis.VideoStreamArgs{
/// Name:                 pulumi.String("example-kinesis-input"),
/// DataRetentionInHours: pulumi.Int(1),
/// DeviceName:           pulumi.String("kinesis-video-device-name"),
/// MediaType:            pulumi.String("video/h264"),
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
/// "Service": "rekognition.amazonaws.com",
/// },
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// json0 := string(tmpJSON0)
/// exampleRole, err := iam.NewRole(ctx, "example", &iam.RoleArgs{
/// Name: pulumi.String("example-role"),
/// InlinePolicies: iam.RoleInlinePolicyArray{
/// &iam.RoleInlinePolicyArgs{
/// Name: pulumi.String("Rekognition-Access"),
/// Policy: pulumi.All(example.Arn, exampleTopic.Arn, exampleVideoStream.Arn).ApplyT(func(_args []interface{}) (string, error) {
/// exampleArn := _args[0].(string)
/// exampleTopicArn := _args[1].(string)
/// exampleVideoStreamArn := _args[2].(string)
/// var _zero string
/// tmpJSON1, err := json.Marshal(map[string]interface{}{
/// "Version": "2012-10-17",
/// "Statement": []map[string]interface{}{
/// map[string]interface{}{
/// "Action": []string{
/// "s3:PutObject",
/// },
/// "Effect": "Allow",
/// "Resource": []string{
/// fmt.Sprintf("%v/*", exampleArn),
/// },
/// },
/// map[string]interface{}{
/// "Action": []string{
/// "sns:Publish",
/// },
/// "Effect": "Allow",
/// "Resource": []string{
/// exampleTopicArn,
/// },
/// },
/// map[string]interface{}{
/// "Action": []string{
/// "kinesis:Get*",
/// "kinesis:DescribeStreamSummary",
/// },
/// "Effect": "Allow",
/// "Resource": []string{
/// exampleVideoStreamArn,
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
/// },
/// },
/// AssumeRolePolicy: pulumi.String(json0),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = rekognition.NewStreamProcessor(ctx, "example", &rekognition.StreamProcessorArgs{
/// RoleArn: exampleRole.Arn,
/// Name:    pulumi.String("example-processor"),
/// DataSharingPreference: &rekognition.StreamProcessorDataSharingPreferenceArgs{
/// OptIn: pulumi.Bool(false),
/// },
/// Output: &rekognition.StreamProcessorOutputTypeArgs{
/// S3Destination: &rekognition.StreamProcessorOutputS3DestinationArgs{
/// Bucket: example.Bucket,
/// },
/// },
/// Settings: &rekognition.StreamProcessorSettingsArgs{
/// ConnectedHome: &rekognition.StreamProcessorSettingsConnectedHomeArgs{
/// Labels: pulumi.StringArray{
/// pulumi.String("PERSON"),
/// pulumi.String("PET"),
/// },
/// },
/// },
/// Input: &rekognition.StreamProcessorInputTypeArgs{
/// KinesisVideoStream: &rekognition.StreamProcessorInputKinesisVideoStreamArgs{
/// Arn: exampleVideoStream.Arn,
/// },
/// },
/// NotificationChannel: &rekognition.StreamProcessorNotificationChannelArgs{
/// SnsTopicArn: exampleTopic.Arn,
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
/// import com.pulumi.aws.s3.Bucket;
/// import com.pulumi.aws.s3.BucketArgs;
/// import com.pulumi.aws.sns.Topic;
/// import com.pulumi.aws.sns.TopicArgs;
/// import com.pulumi.aws.kinesis.VideoStream;
/// import com.pulumi.aws.kinesis.VideoStreamArgs;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.iam.inputs.RoleInlinePolicyArgs;
/// import com.pulumi.aws.rekognition.StreamProcessor;
/// import com.pulumi.aws.rekognition.StreamProcessorArgs;
/// import com.pulumi.aws.rekognition.inputs.StreamProcessorDataSharingPreferenceArgs;
/// import com.pulumi.aws.rekognition.inputs.StreamProcessorOutputArgs;
/// import com.pulumi.aws.rekognition.inputs.StreamProcessorOutputS3DestinationArgs;
/// import com.pulumi.aws.rekognition.inputs.StreamProcessorSettingsArgs;
/// import com.pulumi.aws.rekognition.inputs.StreamProcessorSettingsConnectedHomeArgs;
/// import com.pulumi.aws.rekognition.inputs.StreamProcessorInputArgs;
/// import com.pulumi.aws.rekognition.inputs.StreamProcessorInputKinesisVideoStreamArgs;
/// import com.pulumi.aws.rekognition.inputs.StreamProcessorNotificationChannelArgs;
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
/// var example = new Bucket("example", BucketArgs.builder()
/// .bucket("example-bucket")
/// .build());
///
/// var exampleTopic = new Topic("exampleTopic", TopicArgs.builder()
/// .name("example-topic")
/// .build());
///
/// var exampleVideoStream = new VideoStream("exampleVideoStream", VideoStreamArgs.builder()
/// .name("example-kinesis-input")
/// .dataRetentionInHours(1)
/// .deviceName("kinesis-video-device-name")
/// .mediaType("video/h264")
/// .build());
///
/// var exampleRole = new Role("exampleRole", RoleArgs.builder()
/// .name("example-role")
/// .inlinePolicies(RoleInlinePolicyArgs.builder()
/// .name("Rekognition-Access")
/// .policy(Output.tuple(example.arn(), exampleTopic.arn(), exampleVideoStream.arn()).applyValue(values -> {
/// var exampleArn = values.t1;
/// var exampleTopicArn = values.t2;
/// var exampleVideoStreamArn = values.t3;
/// return serializeJson(
/// jsonObject(
/// jsonProperty("Version", "2012-10-17"),
/// jsonProperty("Statement", jsonArray(
/// jsonObject(
/// jsonProperty("Action", jsonArray("s3:PutObject")),
/// jsonProperty("Effect", "Allow"),
/// jsonProperty("Resource", jsonArray(String.format("%s/*", exampleArn)))
/// ),
/// jsonObject(
/// jsonProperty("Action", jsonArray("sns:Publish")),
/// jsonProperty("Effect", "Allow"),
/// jsonProperty("Resource", jsonArray(exampleTopicArn))
/// ),
/// jsonObject(
/// jsonProperty("Action", jsonArray(
/// "kinesis:Get*",
/// "kinesis:DescribeStreamSummary"
/// )),
/// jsonProperty("Effect", "Allow"),
/// jsonProperty("Resource", jsonArray(exampleVideoStreamArn))
/// )
/// ))
/// ));
/// }))
/// .build())
/// .assumeRolePolicy(serializeJson(
/// jsonObject(
/// jsonProperty("Version", "2012-10-17"),
/// jsonProperty("Statement", jsonArray(jsonObject(
/// jsonProperty("Action", "sts:AssumeRole"),
/// jsonProperty("Effect", "Allow"),
/// jsonProperty("Principal", jsonObject(
/// jsonProperty("Service", "rekognition.amazonaws.com")
/// ))
/// )))
/// )))
/// .build());
///
/// var exampleStreamProcessor = new StreamProcessor("exampleStreamProcessor", StreamProcessorArgs.builder()
/// .roleArn(exampleRole.arn())
/// .name("example-processor")
/// .dataSharingPreference(StreamProcessorDataSharingPreferenceArgs.builder()
/// .optIn(false)
/// .build())
/// .output(StreamProcessorOutputArgs.builder()
/// .s3Destination(StreamProcessorOutputS3DestinationArgs.builder()
/// .bucket(example.bucket())
/// .build())
/// .build())
/// .settings(StreamProcessorSettingsArgs.builder()
/// .connectedHome(StreamProcessorSettingsConnectedHomeArgs.builder()
/// .labels(
/// "PERSON",
/// "PET")
/// .build())
/// .build())
/// .input(StreamProcessorInputArgs.builder()
/// .kinesisVideoStream(StreamProcessorInputKinesisVideoStreamArgs.builder()
/// .arn(exampleVideoStream.arn())
/// .build())
/// .build())
/// .notificationChannel(StreamProcessorNotificationChannelArgs.builder()
/// .snsTopicArn(exampleTopic.arn())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:s3:Bucket
/// properties:
/// bucket: example-bucket
/// exampleTopic:
/// type: aws:sns:Topic
/// name: example
/// properties:
/// name: example-topic
/// exampleVideoStream:
/// type: aws:kinesis:VideoStream
/// name: example
/// properties:
/// name: example-kinesis-input
/// dataRetentionInHours: 1
/// deviceName: kinesis-video-device-name
/// mediaType: video/h264
/// exampleRole:
/// type: aws:iam:Role
/// name: example
/// properties:
/// name: example-role
/// inlinePolicies:
/// - name: Rekognition-Access
/// policy:
/// fn::toJSON:
/// Version: 2012-10-17
/// Statement:
/// - Action:
/// - s3:PutObject
/// Effect: Allow
/// Resource:
/// - ${example.arn}/*
/// - Action:
/// - sns:Publish
/// Effect: Allow
/// Resource:
/// - ${exampleTopic.arn}
/// - Action:
/// - kinesis:Get*
/// - kinesis:DescribeStreamSummary
/// Effect: Allow
/// Resource:
/// - ${exampleVideoStream.arn}
/// assumeRolePolicy:
/// fn::toJSON:
/// Version: 2012-10-17
/// Statement:
/// - Action: sts:AssumeRole
/// Effect: Allow
/// Principal:
/// Service: rekognition.amazonaws.com
/// exampleStreamProcessor:
/// type: aws:rekognition:StreamProcessor
/// name: example
/// properties:
/// roleArn: ${exampleRole.arn}
/// name: example-processor
/// dataSharingPreference:
/// optIn: false
/// output:
/// s3Destination:
/// bucket: ${example.bucket}
/// settings:
/// connectedHome:
/// labels:
/// - PERSON
/// - PET
/// input:
/// kinesisVideoStream:
/// arn: ${exampleVideoStream.arn}
/// notificationChannel:
/// snsTopicArn: ${exampleTopic.arn}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Face Detection Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.kinesis.VideoStream("example", {
/// name: "example-kinesis-input",
/// dataRetentionInHours: 1,
/// deviceName: "kinesis-video-device-name",
/// mediaType: "video/h264",
/// });
/// const exampleStream = new aws.kinesis.Stream("example", {
/// name: "pulumi-kinesis-example",
/// shardCount: 1,
/// });
/// const exampleRole = new aws.iam.Role("example", {
/// name: "example-role",
/// inlinePolicies: [{
/// name: "Rekognition-Access",
/// policy: pulumi.jsonStringify({
/// Version: "2012-10-17",
/// Statement: [
/// {
/// Action: [
/// "kinesis:Get*",
/// "kinesis:DescribeStreamSummary",
/// ],
/// Effect: "Allow",
/// Resource: [example.arn],
/// },
/// {
/// Action: ["kinesis:PutRecord"],
/// Effect: "Allow",
/// Resource: [exampleStream.arn],
/// },
/// ],
/// }),
/// }],
/// assumeRolePolicy: JSON.stringify({
/// Version: "2012-10-17",
/// Statement: [{
/// Action: "sts:AssumeRole",
/// Effect: "Allow",
/// Principal: {
/// Service: "rekognition.amazonaws.com",
/// },
/// }],
/// }),
/// });
/// const exampleCollection = new aws.rekognition.Collection("example", {collectionId: "example-collection"});
/// const exampleStreamProcessor = new aws.rekognition.StreamProcessor("example", {
/// roleArn: exampleRole.arn,
/// name: "example-processor",
/// dataSharingPreference: {
/// optIn: false,
/// },
/// regionsOfInterests: [{
/// polygons: [
/// {
/// x: 0.5,
/// y: 0.5,
/// },
/// {
/// x: 0.5,
/// y: 0.5,
/// },
/// {
/// x: 0.5,
/// y: 0.5,
/// },
/// ],
/// }],
/// input: {
/// kinesisVideoStream: {
/// arn: example.arn,
/// },
/// },
/// output: {
/// kinesisDataStream: {
/// arn: exampleStream.arn,
/// },
/// },
/// settings: {
/// faceSearch: {
/// collectionId: exampleCollection.id,
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example = aws.kinesis.VideoStream("example",
/// name="example-kinesis-input",
/// data_retention_in_hours=1,
/// device_name="kinesis-video-device-name",
/// media_type="video/h264")
/// example_stream = aws.kinesis.Stream("example",
/// name="pulumi-kinesis-example",
/// shard_count=1)
/// example_role = aws.iam.Role("example",
/// name="example-role",
/// inline_policies=[{
/// "name": "Rekognition-Access",
/// "policy": pulumi.Output.json_dumps({
/// "Version": "2012-10-17",
/// "Statement": [
/// {
/// "Action": [
/// "kinesis:Get*",
/// "kinesis:DescribeStreamSummary",
/// ],
/// "Effect": "Allow",
/// "Resource": [example.arn],
/// },
/// {
/// "Action": ["kinesis:PutRecord"],
/// "Effect": "Allow",
/// "Resource": [example_stream.arn],
/// },
/// ],
/// }),
/// }],
/// assume_role_policy=json.dumps({
/// "Version": "2012-10-17",
/// "Statement": [{
/// "Action": "sts:AssumeRole",
/// "Effect": "Allow",
/// "Principal": {
/// "Service": "rekognition.amazonaws.com",
/// },
/// }],
/// }))
/// example_collection = aws.rekognition.Collection("example", collection_id="example-collection")
/// example_stream_processor = aws.rekognition.StreamProcessor("example",
/// role_arn=example_role.arn,
/// name="example-processor",
/// data_sharing_preference={
/// "opt_in": False,
/// },
/// regions_of_interests=[{
/// "polygons": [
/// {
/// "x": 0.5,
/// "y": 0.5,
/// },
/// {
/// "x": 0.5,
/// "y": 0.5,
/// },
/// {
/// "x": 0.5,
/// "y": 0.5,
/// },
/// ],
/// }],
/// input={
/// "kinesis_video_stream": {
/// "arn": example.arn,
/// },
/// },
/// output={
/// "kinesis_data_stream": {
/// "arn": example_stream.arn,
/// },
/// },
/// settings={
/// "face_search": {
/// "collection_id": example_collection.id,
/// },
/// })
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
/// var example = new Aws.Kinesis.VideoStream("example", new()
/// {
/// Name = "example-kinesis-input",
/// DataRetentionInHours = 1,
/// DeviceName = "kinesis-video-device-name",
/// MediaType = "video/h264",
/// });
///
/// var exampleStream = new Aws.Kinesis.Stream("example", new()
/// {
/// Name = "pulumi-kinesis-example",
/// ShardCount = 1,
/// });
///
/// var exampleRole = new Aws.Iam.Role("example", new()
/// {
/// Name = "example-role",
/// InlinePolicies = new[]
/// {
/// new Aws.Iam.Inputs.RoleInlinePolicyArgs
/// {
/// Name = "Rekognition-Access",
/// Policy = Output.JsonSerialize(Output.Create(new Dictionary<string, object?>
/// {
/// ["Version"] = "2012-10-17",
/// ["Statement"] = new[]
/// {
/// new Dictionary<string, object?>
/// {
/// ["Action"] = new[]
/// {
/// "kinesis:Get*",
/// "kinesis:DescribeStreamSummary",
/// },
/// ["Effect"] = "Allow",
/// ["Resource"] = new[]
/// {
/// example.Arn,
/// },
/// },
/// new Dictionary<string, object?>
/// {
/// ["Action"] = new[]
/// {
/// "kinesis:PutRecord",
/// },
/// ["Effect"] = "Allow",
/// ["Resource"] = new[]
/// {
/// exampleStream.Arn,
/// },
/// },
/// },
/// })),
/// },
/// },
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
/// ["Service"] = "rekognition.amazonaws.com",
/// },
/// },
/// },
/// }),
/// });
///
/// var exampleCollection = new Aws.Rekognition.Collection("example", new()
/// {
/// CollectionId = "example-collection",
/// });
///
/// var exampleStreamProcessor = new Aws.Rekognition.StreamProcessor("example", new()
/// {
/// RoleArn = exampleRole.Arn,
/// Name = "example-processor",
/// DataSharingPreference = new Aws.Rekognition.Inputs.StreamProcessorDataSharingPreferenceArgs
/// {
/// OptIn = false,
/// },
/// RegionsOfInterests = new[]
/// {
/// new Aws.Rekognition.Inputs.StreamProcessorRegionsOfInterestArgs
/// {
/// Polygons = new[]
/// {
/// new Aws.Rekognition.Inputs.StreamProcessorRegionsOfInterestPolygonArgs
/// {
/// X = 0.5,
/// Y = 0.5,
/// },
/// new Aws.Rekognition.Inputs.StreamProcessorRegionsOfInterestPolygonArgs
/// {
/// X = 0.5,
/// Y = 0.5,
/// },
/// new Aws.Rekognition.Inputs.StreamProcessorRegionsOfInterestPolygonArgs
/// {
/// X = 0.5,
/// Y = 0.5,
/// },
/// },
/// },
/// },
/// Input = new Aws.Rekognition.Inputs.StreamProcessorInputArgs
/// {
/// KinesisVideoStream = new Aws.Rekognition.Inputs.StreamProcessorInputKinesisVideoStreamArgs
/// {
/// Arn = example.Arn,
/// },
/// },
/// Output = new Aws.Rekognition.Inputs.StreamProcessorOutputArgs
/// {
/// KinesisDataStream = new Aws.Rekognition.Inputs.StreamProcessorOutputKinesisDataStreamArgs
/// {
/// Arn = exampleStream.Arn,
/// },
/// },
/// Settings = new Aws.Rekognition.Inputs.StreamProcessorSettingsArgs
/// {
/// FaceSearch = new Aws.Rekognition.Inputs.StreamProcessorSettingsFaceSearchArgs
/// {
/// CollectionId = exampleCollection.Id,
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kinesis"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/rekognition"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := kinesis.NewVideoStream(ctx, "example", &kinesis.VideoStreamArgs{
/// Name:                 pulumi.String("example-kinesis-input"),
/// DataRetentionInHours: pulumi.Int(1),
/// DeviceName:           pulumi.String("kinesis-video-device-name"),
/// MediaType:            pulumi.String("video/h264"),
/// })
/// if err != nil {
/// return err
/// }
/// exampleStream, err := kinesis.NewStream(ctx, "example", &kinesis.StreamArgs{
/// Name:       pulumi.String("pulumi-kinesis-example"),
/// ShardCount: pulumi.Int(1),
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
/// "Service": "rekognition.amazonaws.com",
/// },
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// json0 := string(tmpJSON0)
/// exampleRole, err := iam.NewRole(ctx, "example", &iam.RoleArgs{
/// Name: pulumi.String("example-role"),
/// InlinePolicies: iam.RoleInlinePolicyArray{
/// &iam.RoleInlinePolicyArgs{
/// Name: pulumi.String("Rekognition-Access"),
/// Policy: pulumi.All(example.Arn, exampleStream.Arn).ApplyT(func(_args []interface{}) (string, error) {
/// exampleArn := _args[0].(string)
/// exampleStreamArn := _args[1].(string)
/// var _zero string
/// tmpJSON1, err := json.Marshal(map[string]interface{}{
/// "Version": "2012-10-17",
/// "Statement": []interface{}{
/// map[string]interface{}{
/// "Action": []string{
/// "kinesis:Get*",
/// "kinesis:DescribeStreamSummary",
/// },
/// "Effect": "Allow",
/// "Resource": []string{
/// exampleArn,
/// },
/// },
/// map[string]interface{}{
/// "Action": []string{
/// "kinesis:PutRecord",
/// },
/// "Effect": "Allow",
/// "Resource": []string{
/// exampleStreamArn,
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
/// },
/// },
/// AssumeRolePolicy: pulumi.String(json0),
/// })
/// if err != nil {
/// return err
/// }
/// exampleCollection, err := rekognition.NewCollection(ctx, "example", &rekognition.CollectionArgs{
/// CollectionId: pulumi.String("example-collection"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = rekognition.NewStreamProcessor(ctx, "example", &rekognition.StreamProcessorArgs{
/// RoleArn: exampleRole.Arn,
/// Name:    pulumi.String("example-processor"),
/// DataSharingPreference: &rekognition.StreamProcessorDataSharingPreferenceArgs{
/// OptIn: pulumi.Bool(false),
/// },
/// RegionsOfInterests: rekognition.StreamProcessorRegionsOfInterestArray{
/// &rekognition.StreamProcessorRegionsOfInterestArgs{
/// Polygons: rekognition.StreamProcessorRegionsOfInterestPolygonArray{
/// &rekognition.StreamProcessorRegionsOfInterestPolygonArgs{
/// X: pulumi.Float64(0.5),
/// Y: pulumi.Float64(0.5),
/// },
/// &rekognition.StreamProcessorRegionsOfInterestPolygonArgs{
/// X: pulumi.Float64(0.5),
/// Y: pulumi.Float64(0.5),
/// },
/// &rekognition.StreamProcessorRegionsOfInterestPolygonArgs{
/// X: pulumi.Float64(0.5),
/// Y: pulumi.Float64(0.5),
/// },
/// },
/// },
/// },
/// Input: &rekognition.StreamProcessorInputTypeArgs{
/// KinesisVideoStream: &rekognition.StreamProcessorInputKinesisVideoStreamArgs{
/// Arn: example.Arn,
/// },
/// },
/// Output: &rekognition.StreamProcessorOutputTypeArgs{
/// KinesisDataStream: &rekognition.StreamProcessorOutputKinesisDataStreamArgs{
/// Arn: exampleStream.Arn,
/// },
/// },
/// Settings: &rekognition.StreamProcessorSettingsArgs{
/// FaceSearch: &rekognition.StreamProcessorSettingsFaceSearchArgs{
/// CollectionId: exampleCollection.ID(),
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
/// import com.pulumi.aws.kinesis.VideoStream;
/// import com.pulumi.aws.kinesis.VideoStreamArgs;
/// import com.pulumi.aws.kinesis.Stream;
/// import com.pulumi.aws.kinesis.StreamArgs;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.iam.inputs.RoleInlinePolicyArgs;
/// import com.pulumi.aws.rekognition.Collection;
/// import com.pulumi.aws.rekognition.CollectionArgs;
/// import com.pulumi.aws.rekognition.StreamProcessor;
/// import com.pulumi.aws.rekognition.StreamProcessorArgs;
/// import com.pulumi.aws.rekognition.inputs.StreamProcessorDataSharingPreferenceArgs;
/// import com.pulumi.aws.rekognition.inputs.StreamProcessorRegionsOfInterestArgs;
/// import com.pulumi.aws.rekognition.inputs.StreamProcessorInputArgs;
/// import com.pulumi.aws.rekognition.inputs.StreamProcessorInputKinesisVideoStreamArgs;
/// import com.pulumi.aws.rekognition.inputs.StreamProcessorOutputArgs;
/// import com.pulumi.aws.rekognition.inputs.StreamProcessorOutputKinesisDataStreamArgs;
/// import com.pulumi.aws.rekognition.inputs.StreamProcessorSettingsArgs;
/// import com.pulumi.aws.rekognition.inputs.StreamProcessorSettingsFaceSearchArgs;
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
/// var example = new VideoStream("example", VideoStreamArgs.builder()
/// .name("example-kinesis-input")
/// .dataRetentionInHours(1)
/// .deviceName("kinesis-video-device-name")
/// .mediaType("video/h264")
/// .build());
///
/// var exampleStream = new Stream("exampleStream", StreamArgs.builder()
/// .name("pulumi-kinesis-example")
/// .shardCount(1)
/// .build());
///
/// var exampleRole = new Role("exampleRole", RoleArgs.builder()
/// .name("example-role")
/// .inlinePolicies(RoleInlinePolicyArgs.builder()
/// .name("Rekognition-Access")
/// .policy(Output.tuple(example.arn(), exampleStream.arn()).applyValue(values -> {
/// var exampleArn = values.t1;
/// var exampleStreamArn = values.t2;
/// return serializeJson(
/// jsonObject(
/// jsonProperty("Version", "2012-10-17"),
/// jsonProperty("Statement", jsonArray(
/// jsonObject(
/// jsonProperty("Action", jsonArray(
/// "kinesis:Get*",
/// "kinesis:DescribeStreamSummary"
/// )),
/// jsonProperty("Effect", "Allow"),
/// jsonProperty("Resource", jsonArray(exampleArn))
/// ),
/// jsonObject(
/// jsonProperty("Action", jsonArray("kinesis:PutRecord")),
/// jsonProperty("Effect", "Allow"),
/// jsonProperty("Resource", jsonArray(exampleStreamArn))
/// )
/// ))
/// ));
/// }))
/// .build())
/// .assumeRolePolicy(serializeJson(
/// jsonObject(
/// jsonProperty("Version", "2012-10-17"),
/// jsonProperty("Statement", jsonArray(jsonObject(
/// jsonProperty("Action", "sts:AssumeRole"),
/// jsonProperty("Effect", "Allow"),
/// jsonProperty("Principal", jsonObject(
/// jsonProperty("Service", "rekognition.amazonaws.com")
/// ))
/// )))
/// )))
/// .build());
///
/// var exampleCollection = new Collection("exampleCollection", CollectionArgs.builder()
/// .collectionId("example-collection")
/// .build());
///
/// var exampleStreamProcessor = new StreamProcessor("exampleStreamProcessor", StreamProcessorArgs.builder()
/// .roleArn(exampleRole.arn())
/// .name("example-processor")
/// .dataSharingPreference(StreamProcessorDataSharingPreferenceArgs.builder()
/// .optIn(false)
/// .build())
/// .regionsOfInterests(StreamProcessorRegionsOfInterestArgs.builder()
/// .polygons(
/// StreamProcessorRegionsOfInterestPolygonArgs.builder()
/// .x(0.5)
/// .y(0.5)
/// .build(),
/// StreamProcessorRegionsOfInterestPolygonArgs.builder()
/// .x(0.5)
/// .y(0.5)
/// .build(),
/// StreamProcessorRegionsOfInterestPolygonArgs.builder()
/// .x(0.5)
/// .y(0.5)
/// .build())
/// .build())
/// .input(StreamProcessorInputArgs.builder()
/// .kinesisVideoStream(StreamProcessorInputKinesisVideoStreamArgs.builder()
/// .arn(example.arn())
/// .build())
/// .build())
/// .output(StreamProcessorOutputArgs.builder()
/// .kinesisDataStream(StreamProcessorOutputKinesisDataStreamArgs.builder()
/// .arn(exampleStream.arn())
/// .build())
/// .build())
/// .settings(StreamProcessorSettingsArgs.builder()
/// .faceSearch(StreamProcessorSettingsFaceSearchArgs.builder()
/// .collectionId(exampleCollection.id())
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
/// type: aws:kinesis:VideoStream
/// properties:
/// name: example-kinesis-input
/// dataRetentionInHours: 1
/// deviceName: kinesis-video-device-name
/// mediaType: video/h264
/// exampleStream:
/// type: aws:kinesis:Stream
/// name: example
/// properties:
/// name: pulumi-kinesis-example
/// shardCount: 1
/// exampleRole:
/// type: aws:iam:Role
/// name: example
/// properties:
/// name: example-role
/// inlinePolicies:
/// - name: Rekognition-Access
/// policy:
/// fn::toJSON:
/// Version: 2012-10-17
/// Statement:
/// - Action:
/// - kinesis:Get*
/// - kinesis:DescribeStreamSummary
/// Effect: Allow
/// Resource:
/// - ${example.arn}
/// - Action:
/// - kinesis:PutRecord
/// Effect: Allow
/// Resource:
/// - ${exampleStream.arn}
/// assumeRolePolicy:
/// fn::toJSON:
/// Version: 2012-10-17
/// Statement:
/// - Action: sts:AssumeRole
/// Effect: Allow
/// Principal:
/// Service: rekognition.amazonaws.com
/// exampleCollection:
/// type: aws:rekognition:Collection
/// name: example
/// properties:
/// collectionId: example-collection
/// exampleStreamProcessor:
/// type: aws:rekognition:StreamProcessor
/// name: example
/// properties:
/// roleArn: ${exampleRole.arn}
/// name: example-processor
/// dataSharingPreference:
/// optIn: false
/// regionsOfInterests:
/// - polygons:
/// - x: 0.5
/// y: 0.5
/// - x: 0.5
/// y: 0.5
/// - x: 0.5
/// y: 0.5
/// input:
/// kinesisVideoStream:
/// arn: ${example.arn}
/// output:
/// kinesisDataStream:
/// arn: ${exampleStream.arn}
/// settings:
/// faceSearch:
/// collectionId: ${exampleCollection.id}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Rekognition Stream Processor using the <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:rekognition/streamProcessor:StreamProcessor example my-stream
/// ```
class StreamProcessor extends CustomResource {
  /// ARN of the Stream Processor.
  late final Output<String> arn;

  /// See <span pulumi-lang-nodejs="`dataSharingPreference`" pulumi-lang-dotnet="`DataSharingPreference`" pulumi-lang-go="`dataSharingPreference`" pulumi-lang-python="`data_sharing_preference`" pulumi-lang-yaml="`dataSharingPreference`" pulumi-lang-java="`dataSharingPreference`">`data_sharing_preference`</span>.
  late final Output<StreamProcessorDataSharingPreference?>
      dataSharingPreference;

  /// Input video stream. See <span pulumi-lang-nodejs="`input`" pulumi-lang-dotnet="`Input`" pulumi-lang-go="`input`" pulumi-lang-python="`input`" pulumi-lang-yaml="`input`" pulumi-lang-java="`input`">`input`</span>.
  late final Output<StreamProcessorInput> input;

  /// Optional parameter for label detection stream processors.
  late final Output<String?> kmsKeyId;

  /// The name of the Stream Processor.
  late final Output<String> name;

  /// The Amazon Simple Notification Service topic to which Amazon Rekognition publishes the completion status. See <span pulumi-lang-nodejs="`notificationChannel`" pulumi-lang-dotnet="`NotificationChannel`" pulumi-lang-go="`notificationChannel`" pulumi-lang-python="`notification_channel`" pulumi-lang-yaml="`notificationChannel`" pulumi-lang-java="`notificationChannel`">`notification_channel`</span>.
  late final Output<StreamProcessorNotificationChannel?> notificationChannel;

  /// Kinesis data stream stream or Amazon S3 bucket location to which Amazon Rekognition Video puts the analysis results. See <span pulumi-lang-nodejs="`output`" pulumi-lang-dotnet="`Output`" pulumi-lang-go="`output`" pulumi-lang-python="`output`" pulumi-lang-yaml="`output`" pulumi-lang-java="`output`">`output`</span>.
  late final Output<StreamProcessorOutput> output;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Specifies locations in the frames where Amazon Rekognition checks for objects or people. See <span pulumi-lang-nodejs="`regionsOfInterest`" pulumi-lang-dotnet="`RegionsOfInterest`" pulumi-lang-go="`regionsOfInterest`" pulumi-lang-python="`regions_of_interest`" pulumi-lang-yaml="`regionsOfInterest`" pulumi-lang-java="`regionsOfInterest`">`regions_of_interest`</span>.
  late final Output<List<StreamProcessorRegionsOfInterest>?> regionsOfInterests;

  /// The Amazon Resource Number (ARN) of the IAM role that allows access to the stream processor. The IAM role provides Rekognition read permissions for a Kinesis stream. It also provides write permissions to an Amazon S3 bucket and Amazon Simple Notification Service topic for a label detection stream processor. This is required for both face search and label detection stream processors.
  late final Output<String> roleArn;

  /// Input parameters used in a streaming video analyzed by a stream processor. See <span pulumi-lang-nodejs="`settings`" pulumi-lang-dotnet="`Settings`" pulumi-lang-go="`settings`" pulumi-lang-python="`settings`" pulumi-lang-yaml="`settings`" pulumi-lang-java="`settings`">`settings`</span>.
  ///
  /// The following arguments are optional:
  late final Output<StreamProcessorSettings> settings;

  /// (**Deprecated**) ARN of the Stream Processor.
  /// Use <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span> instead.
  late final Output<String> streamProcessorArn;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;
  late final Output<StreamProcessorTimeouts?> timeouts;

  StreamProcessor(
    String name, {
    StreamProcessorArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:rekognition/streamProcessor:StreamProcessor',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.dataSharingPreference =
        Output.createUnknown<StreamProcessorDataSharingPreference?>();
    this.input = Output.createUnknown<StreamProcessorInput>();
    this.kmsKeyId = Output.createUnknown<String?>();
    this.name = Output.createUnknown<String>();
    this.notificationChannel =
        Output.createUnknown<StreamProcessorNotificationChannel?>();
    this.output = Output.createUnknown<StreamProcessorOutput>();
    this.region = Output.createUnknown<String>();
    this.regionsOfInterests =
        Output.createUnknown<List<StreamProcessorRegionsOfInterest>?>();
    this.roleArn = Output.createUnknown<String>();
    this.settings = Output.createUnknown<StreamProcessorSettings>();
    this.streamProcessorArn = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.timeouts = Output.createUnknown<StreamProcessorTimeouts?>();
  }
}
