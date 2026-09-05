import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_processor_args.dart';
import 'stream_processor_data_sharing_preference.dart';
import 'stream_processor_input.dart';
import 'stream_processor_notification_channel.dart';
import 'stream_processor_output.dart';
import 'stream_processor_regions_of_interest.dart';
import 'stream_processor_settings.dart';
import 'stream_processor_state.dart';
import 'stream_processor_timeouts.dart';

/// Resource for managing an AWS Rekognition Stream Processor.
///
/// &gt; This resource must be configured specifically for your use case, and not all options are compatible with one another. See [Stream Processor API documentation](https://docs.aws.amazon.com/rekognition/latest/APIReference/API_CreateStreamProcessor.html#rekognition-CreateStreamProcessor-request-Input) for configuration information.
///
/// &gt; Stream Processors configured for Face Recognition cannot have _any_ properties updated after the fact, and it will result in an AWS API error.
///
/// ## Example Usage
///
/// ### Label Detection
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.s3.Bucket("example", {bucket: "example-bucket"});
/// const exampleTopic = new aws.sns.Topic("example", {name: "example-topic"});
/// const exampleVideoStream = new aws.kinesis.VideoStream("example", {
///     name: "example-kinesis-input",
///     dataRetentionInHours: 1,
///     deviceName: "kinesis-video-device-name",
///     mediaType: "video/h264",
/// });
/// const exampleRole = new aws.iam.Role("example", {
///     inlinePolicies: [{
///         name: "Rekognition-Access",
///         policy: pulumi.jsonStringify({
///             Version: "2012-10-17",
///             Statement: [
///                 {
///                     Action: ["s3:PutObject"],
///                     Effect: "Allow",
///                     Resource: [pulumi.interpolate`${example.arn}/*`],
///                 },
///                 {
///                     Action: ["sns:Publish"],
///                     Effect: "Allow",
///                     Resource: [exampleTopic.arn],
///                 },
///                 {
///                     Action: [
///                         "kinesis:Get*",
///                         "kinesis:DescribeStreamSummary",
///                     ],
///                     Effect: "Allow",
///                     Resource: [exampleVideoStream.arn],
///                 },
///             ],
///         }),
///     }],
///     name: "example-role",
///     assumeRolePolicy: JSON.stringify({
///         Version: "2012-10-17",
///         Statement: [{
///             Action: "sts:AssumeRole",
///             Effect: "Allow",
///             Principal: {
///                 Service: "rekognition.amazonaws.com",
///             },
///         }],
///     }),
/// });
/// const exampleStreamProcessor = new aws.rekognition.StreamProcessor("example", {
///     dataSharingPreference: {
///         optIn: false,
///     },
///     output: {
///         s3Destination: {
///             bucket: example.bucket,
///         },
///     },
///     settings: {
///         connectedHome: {
///             labels: [
///                 "PERSON",
///                 "PET",
///             ],
///         },
///     },
///     input: {
///         kinesisVideoStream: {
///             arn: exampleVideoStream.arn,
///         },
///     },
///     notificationChannel: {
///         snsTopicArn: exampleTopic.arn,
///     },
///     roleArn: exampleRole.arn,
///     name: "example-processor",
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
///     name="example-kinesis-input",
///     data_retention_in_hours=1,
///     device_name="kinesis-video-device-name",
///     media_type="video/h264")
/// example_role = aws.iam.Role("example",
///     inline_policies=[{
///         "name": "Rekognition-Access",
///         "policy": pulumi.Output.json_dumps({
///             "Version": "2012-10-17",
///             "Statement": [
///                 {
///                     "Action": ["s3:PutObject"],
///                     "Effect": "Allow",
///                     "Resource": [example.arn.apply(lambda arn: f"{arn}/*")],
///                 },
///                 {
///                     "Action": ["sns:Publish"],
///                     "Effect": "Allow",
///                     "Resource": [example_topic.arn],
///                 },
///                 {
///                     "Action": [
///                         "kinesis:Get*",
///                         "kinesis:DescribeStreamSummary",
///                     ],
///                     "Effect": "Allow",
///                     "Resource": [example_video_stream.arn],
///                 },
///             ],
///         }),
///     }],
///     name="example-role",
///     assume_role_policy=json.dumps({
///         "Version": "2012-10-17",
///         "Statement": [{
///             "Action": "sts:AssumeRole",
///             "Effect": "Allow",
///             "Principal": {
///                 "Service": "rekognition.amazonaws.com",
///             },
///         }],
///     }))
/// example_stream_processor = aws.rekognition.StreamProcessor("example",
///     data_sharing_preference={
///         "opt_in": False,
///     },
///     output={
///         "s3_destination": {
///             "bucket": example.bucket,
///         },
///     },
///     settings={
///         "connected_home": {
///             "labels": [
///                 "PERSON",
///                 "PET",
///             ],
///         },
///     },
///     input={
///         "kinesis_video_stream": {
///             "arn": example_video_stream.arn,
///         },
///     },
///     notification_channel={
///         "sns_topic_arn": example_topic.arn,
///     },
///     role_arn=example_role.arn,
///     name="example-processor")
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
///     var example = new Aws.S3.Bucket("example", new()
///     {
///         BucketName = "example-bucket",
///     });
///
///     var exampleTopic = new Aws.Sns.Topic("example", new()
///     {
///         Name = "example-topic",
///     });
///
///     var exampleVideoStream = new Aws.Kinesis.VideoStream("example", new()
///     {
///         Name = "example-kinesis-input",
///         DataRetentionInHours = 1,
///         DeviceName = "kinesis-video-device-name",
///         MediaType = "video/h264",
///     });
///
///     var exampleRole = new Aws.Iam.Role("example", new()
///     {
///         InlinePolicies = new[]
///         {
///             new Aws.Iam.Inputs.RoleInlinePolicyArgs
///             {
///                 Name = "Rekognition-Access",
///                 Policy = Output.JsonSerialize(Output.Create(new Dictionary<string, object?>
///                 {
///                     ["Version"] = "2012-10-17",
///                     ["Statement"] = new[]
///                     {
///                         new Dictionary<string, object?>
///                         {
///                             ["Action"] = new[]
///                             {
///                                 "s3:PutObject",
///                             },
///                             ["Effect"] = "Allow",
///                             ["Resource"] = new[]
///                             {
///                                 example.Arn.Apply(arn => $"{arn}/*"),
///                             },
///                         },
///                         new Dictionary<string, object?>
///                         {
///                             ["Action"] = new[]
///                             {
///                                 "sns:Publish",
///                             },
///                             ["Effect"] = "Allow",
///                             ["Resource"] = new[]
///                             {
///                                 exampleTopic.Arn,
///                             },
///                         },
///                         new Dictionary<string, object?>
///                         {
///                             ["Action"] = new[]
///                             {
///                                 "kinesis:Get*",
///                                 "kinesis:DescribeStreamSummary",
///                             },
///                             ["Effect"] = "Allow",
///                             ["Resource"] = new[]
///                             {
///                                 exampleVideoStream.Arn,
///                             },
///                         },
///                     },
///                 })),
///             },
///         },
///         Name = "example-role",
///         AssumeRolePolicy = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["Version"] = "2012-10-17",
///             ["Statement"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["Action"] = "sts:AssumeRole",
///                     ["Effect"] = "Allow",
///                     ["Principal"] = new Dictionary<string, object?>
///                     {
///                         ["Service"] = "rekognition.amazonaws.com",
///                     },
///                 },
///             },
///         }),
///     });
///
///     var exampleStreamProcessor = new Aws.Rekognition.StreamProcessor("example", new()
///     {
///         DataSharingPreference = new Aws.Rekognition.Inputs.StreamProcessorDataSharingPreferenceArgs
///         {
///             OptIn = false,
///         },
///         Output = new Aws.Rekognition.Inputs.StreamProcessorOutputArgs
///         {
///             S3Destination = new Aws.Rekognition.Inputs.StreamProcessorOutputS3DestinationArgs
///             {
///                 Bucket = example.BucketName,
///             },
///         },
///         Settings = new Aws.Rekognition.Inputs.StreamProcessorSettingsArgs
///         {
///             ConnectedHome = new Aws.Rekognition.Inputs.StreamProcessorSettingsConnectedHomeArgs
///             {
///                 Labels = new[]
///                 {
///                     "PERSON",
///                     "PET",
///                 },
///             },
///         },
///         Input = new Aws.Rekognition.Inputs.StreamProcessorInputArgs
///         {
///             KinesisVideoStream = new Aws.Rekognition.Inputs.StreamProcessorInputKinesisVideoStreamArgs
///             {
///                 Arn = exampleVideoStream.Arn,
///             },
///         },
///         NotificationChannel = new Aws.Rekognition.Inputs.StreamProcessorNotificationChannelArgs
///         {
///             SnsTopicArn = exampleTopic.Arn,
///         },
///         RoleArn = exampleRole.Arn,
///         Name = "example-processor",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kinesis"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/rekognition"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sns"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := s3.NewBucket(ctx, "example", &s3.BucketArgs{
/// 			Bucket: pulumi.String("example-bucket"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleTopic, err := sns.NewTopic(ctx, "example", &sns.TopicArgs{
/// 			Name: pulumi.String("example-topic"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVideoStream, err := kinesis.NewVideoStream(ctx, "example", &kinesis.VideoStreamArgs{
/// 			Name:                 pulumi.String("example-kinesis-input"),
/// 			DataRetentionInHours: pulumi.Int(1),
/// 			DeviceName:           pulumi.String("kinesis-video-device-name"),
/// 			MediaType:            pulumi.String("video/h264"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"Version": "2012-10-17",
/// 			"Statement": []map[string]interface{}{
/// 				map[string]interface{}{
/// 					"Action": "sts:AssumeRole",
/// 					"Effect": "Allow",
/// 					"Principal": map[string]string{
/// 						"Service": "rekognition.amazonaws.com",
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		exampleRole, err := iam.NewRole(ctx, "example", &iam.RoleArgs{
/// 			InlinePolicies: iam.RoleInlinePolicyArray{
/// 				&iam.RoleInlinePolicyArgs{
/// 					Name: pulumi.String("Rekognition-Access"),
/// 					Policy: pulumi.All(example.Arn, exampleTopic.Arn, exampleVideoStream.Arn).ApplyT(func(_args []interface{}) (string, error) {
/// 						exampleArn := _args[0].(string)
/// 						exampleTopicArn := _args[1].(string)
/// 						exampleVideoStreamArn := _args[2].(string)
/// 						var _zero string
/// 						tmpJSON1, err := json.Marshal(map[string]interface{}{
/// 							"Version": "2012-10-17",
/// 							"Statement": []map[string]interface{}{
/// 								map[string]interface{}{
/// 									"Action": []string{
/// 										"s3:PutObject",
/// 									},
/// 									"Effect": "Allow",
/// 									"Resource": []string{
/// 										fmt.Sprintf("%v/*", exampleArn),
/// 									},
/// 								},
/// 								map[string]interface{}{
/// 									"Action": []string{
/// 										"sns:Publish",
/// 									},
/// 									"Effect": "Allow",
/// 									"Resource": []string{
/// 										exampleTopicArn,
/// 									},
/// 								},
/// 								map[string]interface{}{
/// 									"Action": []string{
/// 										"kinesis:Get*",
/// 										"kinesis:DescribeStreamSummary",
/// 									},
/// 									"Effect": "Allow",
/// 									"Resource": []string{
/// 										exampleVideoStreamArn,
/// 									},
/// 								},
/// 							},
/// 						})
/// 						if err != nil {
/// 							return _zero, err
/// 						}
/// 						json1 := string(tmpJSON1)
/// 						return json1, nil
/// 					}).(pulumi.StringOutput),
/// 				},
/// 			},
/// 			Name:             pulumi.String("example-role"),
/// 			AssumeRolePolicy: pulumi.String(json0),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = rekognition.NewStreamProcessor(ctx, "example", &rekognition.StreamProcessorArgs{
/// 			DataSharingPreference: &rekognition.StreamProcessorDataSharingPreferenceArgs{
/// 				OptIn: pulumi.Bool(false),
/// 			},
/// 			Output: &rekognition.StreamProcessorOutputTypeArgs{
/// 				S3Destination: &rekognition.StreamProcessorOutputS3DestinationArgs{
/// 					Bucket: example.Bucket,
/// 				},
/// 			},
/// 			Settings: &rekognition.StreamProcessorSettingsArgs{
/// 				ConnectedHome: &rekognition.StreamProcessorSettingsConnectedHomeArgs{
/// 					Labels: pulumi.StringArray{
/// 						pulumi.String("PERSON"),
/// 						pulumi.String("PET"),
/// 					},
/// 				},
/// 			},
/// 			Input: &rekognition.StreamProcessorInputTypeArgs{
/// 				KinesisVideoStream: &rekognition.StreamProcessorInputKinesisVideoStreamArgs{
/// 					Arn: exampleVideoStream.Arn,
/// 				},
/// 			},
/// 			NotificationChannel: &rekognition.StreamProcessorNotificationChannelArgs{
/// 				SnsTopicArn: exampleTopic.Arn,
/// 			},
/// 			RoleArn: exampleRole.Arn,
/// 			Name:    pulumi.String("example-processor"),
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
/// resource "aws_s3_bucket" "example" {
///   bucket = "example-bucket"
/// }
/// resource "aws_sns_topic" "example" {
///   name = "example-topic"
/// }
/// resource "aws_kinesis_videostream" "example" {
///   name                    = "example-kinesis-input"
///   data_retention_in_hours = 1
///   device_name             = "kinesis-video-device-name"
///   media_type              = "video/h264"
/// }
/// resource "aws_iam_role" "example" {
///   inline_policies {
///     name = "Rekognition-Access"
///     policy = jsonencode({
///       "Version" = "2012-10-17"
///       "Statement" = [{
///         "Action"   = ["s3:PutObject"]
///         "Effect"   = "Allow"
///         "Resource" = ["${aws_s3_bucket.example.arn}/*"]
///         }, {
///         "Action"   = ["sns:Publish"]
///         "Effect"   = "Allow"
///         "Resource" = [aws_sns_topic.example.arn]
///         }, {
///         "Action"   = ["kinesis:Get*", "kinesis:DescribeStreamSummary"]
///         "Effect"   = "Allow"
///         "Resource" = [aws_kinesis_videostream.example.arn]
///       }]
///     })
///   }
///   name = "example-role"
///   assume_role_policy = jsonencode({
///     "Version" = "2012-10-17"
///     "Statement" = [{
///       "Action" = "sts:AssumeRole"
///       "Effect" = "Allow"
///       "Principal" = {
///         "Service" = "rekognition.amazonaws.com"
///       }
///     }]
///   })
/// }
/// resource "aws_rekognition_streamprocessor" "example" {
///   data_sharing_preference = {
///     opt_in = false
///   }
///   output = {
///     s3_destination = {
///       bucket = aws_s3_bucket.example.bucket
///     }
///   }
///   settings = {
///     connected_home = {
///       labels = ["PERSON", "PET"]
///     }
///   }
///   input = {
///     kinesis_video_stream = {
///       arn = aws_kinesis_videostream.example.arn
///     }
///   }
///   notification_channel = {
///     sns_topic_arn = aws_sns_topic.example.arn
///   }
///   role_arn = aws_iam_role.example.arn
///   name     = "example-processor"
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
///         var example = new Bucket("example", BucketArgs.builder()
///             .bucket("example-bucket")
///             .build());
///
///         var exampleTopic = new Topic("exampleTopic", TopicArgs.builder()
///             .name("example-topic")
///             .build());
///
///         var exampleVideoStream = new VideoStream("exampleVideoStream", VideoStreamArgs.builder()
///             .name("example-kinesis-input")
///             .dataRetentionInHours(1)
///             .deviceName("kinesis-video-device-name")
///             .mediaType("video/h264")
///             .build());
///
///         var exampleRole = new Role("exampleRole", RoleArgs.builder()
///             .inlinePolicies(RoleInlinePolicyArgs.builder()
///                 .name("Rekognition-Access")
///                 .policy(Output.tuple(example.arn(), exampleTopic.arn(), exampleVideoStream.arn()).applyValue(values -> {
///                     var exampleArn = values.t1;
///                     var exampleTopicArn = values.t2;
///                     var exampleVideoStreamArn = values.t3;
///                     return serializeJson(
///                         jsonObject(
///                             jsonProperty("Version", "2012-10-17"),
///                             jsonProperty("Statement", jsonArray(
///                                 jsonObject(
///                                     jsonProperty("Action", jsonArray("s3:PutObject")),
///                                     jsonProperty("Effect", "Allow"),
///                                     jsonProperty("Resource", jsonArray(String.format("%s/*", exampleArn)))
///                                 ),
///                                 jsonObject(
///                                     jsonProperty("Action", jsonArray("sns:Publish")),
///                                     jsonProperty("Effect", "Allow"),
///                                     jsonProperty("Resource", jsonArray(exampleTopicArn))
///                                 ),
///                                 jsonObject(
///                                     jsonProperty("Action", jsonArray(
///                                         "kinesis:Get*",
///                                         "kinesis:DescribeStreamSummary"
///                                     )),
///                                     jsonProperty("Effect", "Allow"),
///                                     jsonProperty("Resource", jsonArray(exampleVideoStreamArn))
///                                 )
///                             ))
///                         ));
///                 }))
///                 .build())
///             .name("example-role")
///             .assumeRolePolicy(serializeJson(
///                 jsonObject(
///                     jsonProperty("Version", "2012-10-17"),
///                     jsonProperty("Statement", jsonArray(jsonObject(
///                         jsonProperty("Action", "sts:AssumeRole"),
///                         jsonProperty("Effect", "Allow"),
///                         jsonProperty("Principal", jsonObject(
///                             jsonProperty("Service", "rekognition.amazonaws.com")
///                         ))
///                     )))
///                 )))
///             .build());
///
///         var exampleStreamProcessor = new StreamProcessor("exampleStreamProcessor", StreamProcessorArgs.builder()
///             .dataSharingPreference(StreamProcessorDataSharingPreferenceArgs.builder()
///                 .optIn(false)
///                 .build())
///             .output(StreamProcessorOutputArgs.builder()
///                 .s3Destination(StreamProcessorOutputS3DestinationArgs.builder()
///                     .bucket(example.bucket())
///                     .build())
///                 .build())
///             .settings(StreamProcessorSettingsArgs.builder()
///                 .connectedHome(StreamProcessorSettingsConnectedHomeArgs.builder()
///                     .labels(
///                         "PERSON",
///                         "PET")
///                     .build())
///                 .build())
///             .input(StreamProcessorInputArgs.builder()
///                 .kinesisVideoStream(StreamProcessorInputKinesisVideoStreamArgs.builder()
///                     .arn(exampleVideoStream.arn())
///                     .build())
///                 .build())
///             .notificationChannel(StreamProcessorNotificationChannelArgs.builder()
///                 .snsTopicArn(exampleTopic.arn())
///                 .build())
///             .roleArn(exampleRole.arn())
///             .name("example-processor")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:s3:Bucket
///     properties:
///       bucket: example-bucket
///   exampleTopic:
///     type: aws:sns:Topic
///     name: example
///     properties:
///       name: example-topic
///   exampleVideoStream:
///     type: aws:kinesis:VideoStream
///     name: example
///     properties:
///       name: example-kinesis-input
///       dataRetentionInHours: 1
///       deviceName: kinesis-video-device-name
///       mediaType: video/h264
///   exampleRole:
///     type: aws:iam:Role
///     name: example
///     properties:
///       inlinePolicies:
///         - name: Rekognition-Access
///           policy:
///             fn::toJSON:
///               Version: 2012-10-17
///               Statement:
///                 - Action:
///                     - s3:PutObject
///                   Effect: Allow
///                   Resource:
///                     - ${example.arn}/*
///                 - Action:
///                     - sns:Publish
///                   Effect: Allow
///                   Resource:
///                     - ${exampleTopic.arn}
///                 - Action:
///                     - kinesis:Get*
///                     - kinesis:DescribeStreamSummary
///                   Effect: Allow
///                   Resource:
///                     - ${exampleVideoStream.arn}
///       name: example-role
///       assumeRolePolicy:
///         fn::toJSON:
///           Version: 2012-10-17
///           Statement:
///             - Action: sts:AssumeRole
///               Effect: Allow
///               Principal:
///                 Service: rekognition.amazonaws.com
///   exampleStreamProcessor:
///     type: aws:rekognition:StreamProcessor
///     name: example
///     properties:
///       dataSharingPreference:
///         optIn: false
///       output:
///         s3Destination:
///           bucket: ${example.bucket}
///       settings:
///         connectedHome:
///           labels:
///             - PERSON
///             - PET
///       input:
///         kinesisVideoStream:
///           arn: ${exampleVideoStream.arn}
///       notificationChannel:
///         snsTopicArn: ${exampleTopic.arn}
///       roleArn: ${exampleRole.arn}
///       name: example-processor
/// ```
///
///
/// ### Face Detection Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.kinesis.VideoStream("example", {
///     name: "example-kinesis-input",
///     dataRetentionInHours: 1,
///     deviceName: "kinesis-video-device-name",
///     mediaType: "video/h264",
/// });
/// const exampleStream = new aws.kinesis.Stream("example", {
///     name: "pulumi-kinesis-example",
///     shardCount: 1,
/// });
/// const exampleRole = new aws.iam.Role("example", {
///     inlinePolicies: [{
///         name: "Rekognition-Access",
///         policy: pulumi.jsonStringify({
///             Version: "2012-10-17",
///             Statement: [
///                 {
///                     Action: [
///                         "kinesis:Get*",
///                         "kinesis:DescribeStreamSummary",
///                     ],
///                     Effect: "Allow",
///                     Resource: [example.arn],
///                 },
///                 {
///                     Action: ["kinesis:PutRecord"],
///                     Effect: "Allow",
///                     Resource: [exampleStream.arn],
///                 },
///             ],
///         }),
///     }],
///     name: "example-role",
///     assumeRolePolicy: JSON.stringify({
///         Version: "2012-10-17",
///         Statement: [{
///             Action: "sts:AssumeRole",
///             Effect: "Allow",
///             Principal: {
///                 Service: "rekognition.amazonaws.com",
///             },
///         }],
///     }),
/// });
/// const exampleCollection = new aws.rekognition.Collection("example", {collectionId: "example-collection"});
/// const exampleStreamProcessor = new aws.rekognition.StreamProcessor("example", {
///     dataSharingPreference: {
///         optIn: false,
///     },
///     input: {
///         kinesisVideoStream: {
///             arn: example.arn,
///         },
///     },
///     output: {
///         kinesisDataStream: {
///             arn: exampleStream.arn,
///         },
///     },
///     settings: {
///         faceSearch: {
///             collectionId: exampleCollection.id,
///         },
///     },
///     regionsOfInterests: [{
///         polygons: [
///             {
///                 x: 0.5,
///                 y: 0.5,
///             },
///             {
///                 x: 0.5,
///                 y: 0.5,
///             },
///             {
///                 x: 0.5,
///                 y: 0.5,
///             },
///         ],
///     }],
///     roleArn: exampleRole.arn,
///     name: "example-processor",
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example = aws.kinesis.VideoStream("example",
///     name="example-kinesis-input",
///     data_retention_in_hours=1,
///     device_name="kinesis-video-device-name",
///     media_type="video/h264")
/// example_stream = aws.kinesis.Stream("example",
///     name="pulumi-kinesis-example",
///     shard_count=1)
/// example_role = aws.iam.Role("example",
///     inline_policies=[{
///         "name": "Rekognition-Access",
///         "policy": pulumi.Output.json_dumps({
///             "Version": "2012-10-17",
///             "Statement": [
///                 {
///                     "Action": [
///                         "kinesis:Get*",
///                         "kinesis:DescribeStreamSummary",
///                     ],
///                     "Effect": "Allow",
///                     "Resource": [example.arn],
///                 },
///                 {
///                     "Action": ["kinesis:PutRecord"],
///                     "Effect": "Allow",
///                     "Resource": [example_stream.arn],
///                 },
///             ],
///         }),
///     }],
///     name="example-role",
///     assume_role_policy=json.dumps({
///         "Version": "2012-10-17",
///         "Statement": [{
///             "Action": "sts:AssumeRole",
///             "Effect": "Allow",
///             "Principal": {
///                 "Service": "rekognition.amazonaws.com",
///             },
///         }],
///     }))
/// example_collection = aws.rekognition.Collection("example", collection_id="example-collection")
/// example_stream_processor = aws.rekognition.StreamProcessor("example",
///     data_sharing_preference={
///         "opt_in": False,
///     },
///     input={
///         "kinesis_video_stream": {
///             "arn": example.arn,
///         },
///     },
///     output={
///         "kinesis_data_stream": {
///             "arn": example_stream.arn,
///         },
///     },
///     settings={
///         "face_search": {
///             "collection_id": example_collection.id,
///         },
///     },
///     regions_of_interests=[{
///         "polygons": [
///             {
///                 "x": 0.5,
///                 "y": 0.5,
///             },
///             {
///                 "x": 0.5,
///                 "y": 0.5,
///             },
///             {
///                 "x": 0.5,
///                 "y": 0.5,
///             },
///         ],
///     }],
///     role_arn=example_role.arn,
///     name="example-processor")
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
///     var example = new Aws.Kinesis.VideoStream("example", new()
///     {
///         Name = "example-kinesis-input",
///         DataRetentionInHours = 1,
///         DeviceName = "kinesis-video-device-name",
///         MediaType = "video/h264",
///     });
///
///     var exampleStream = new Aws.Kinesis.Stream("example", new()
///     {
///         Name = "pulumi-kinesis-example",
///         ShardCount = 1,
///     });
///
///     var exampleRole = new Aws.Iam.Role("example", new()
///     {
///         InlinePolicies = new[]
///         {
///             new Aws.Iam.Inputs.RoleInlinePolicyArgs
///             {
///                 Name = "Rekognition-Access",
///                 Policy = Output.JsonSerialize(Output.Create(new Dictionary<string, object?>
///                 {
///                     ["Version"] = "2012-10-17",
///                     ["Statement"] = new[]
///                     {
///                         new Dictionary<string, object?>
///                         {
///                             ["Action"] = new[]
///                             {
///                                 "kinesis:Get*",
///                                 "kinesis:DescribeStreamSummary",
///                             },
///                             ["Effect"] = "Allow",
///                             ["Resource"] = new[]
///                             {
///                                 example.Arn,
///                             },
///                         },
///                         new Dictionary<string, object?>
///                         {
///                             ["Action"] = new[]
///                             {
///                                 "kinesis:PutRecord",
///                             },
///                             ["Effect"] = "Allow",
///                             ["Resource"] = new[]
///                             {
///                                 exampleStream.Arn,
///                             },
///                         },
///                     },
///                 })),
///             },
///         },
///         Name = "example-role",
///         AssumeRolePolicy = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["Version"] = "2012-10-17",
///             ["Statement"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["Action"] = "sts:AssumeRole",
///                     ["Effect"] = "Allow",
///                     ["Principal"] = new Dictionary<string, object?>
///                     {
///                         ["Service"] = "rekognition.amazonaws.com",
///                     },
///                 },
///             },
///         }),
///     });
///
///     var exampleCollection = new Aws.Rekognition.Collection("example", new()
///     {
///         CollectionId = "example-collection",
///     });
///
///     var exampleStreamProcessor = new Aws.Rekognition.StreamProcessor("example", new()
///     {
///         DataSharingPreference = new Aws.Rekognition.Inputs.StreamProcessorDataSharingPreferenceArgs
///         {
///             OptIn = false,
///         },
///         Input = new Aws.Rekognition.Inputs.StreamProcessorInputArgs
///         {
///             KinesisVideoStream = new Aws.Rekognition.Inputs.StreamProcessorInputKinesisVideoStreamArgs
///             {
///                 Arn = example.Arn,
///             },
///         },
///         Output = new Aws.Rekognition.Inputs.StreamProcessorOutputArgs
///         {
///             KinesisDataStream = new Aws.Rekognition.Inputs.StreamProcessorOutputKinesisDataStreamArgs
///             {
///                 Arn = exampleStream.Arn,
///             },
///         },
///         Settings = new Aws.Rekognition.Inputs.StreamProcessorSettingsArgs
///         {
///             FaceSearch = new Aws.Rekognition.Inputs.StreamProcessorSettingsFaceSearchArgs
///             {
///                 CollectionId = exampleCollection.Id,
///             },
///         },
///         RegionsOfInterests = new[]
///         {
///             new Aws.Rekognition.Inputs.StreamProcessorRegionsOfInterestArgs
///             {
///                 Polygons = new[]
///                 {
///                     new Aws.Rekognition.Inputs.StreamProcessorRegionsOfInterestPolygonArgs
///                     {
///                         X = 0.5,
///                         Y = 0.5,
///                     },
///                     new Aws.Rekognition.Inputs.StreamProcessorRegionsOfInterestPolygonArgs
///                     {
///                         X = 0.5,
///                         Y = 0.5,
///                     },
///                     new Aws.Rekognition.Inputs.StreamProcessorRegionsOfInterestPolygonArgs
///                     {
///                         X = 0.5,
///                         Y = 0.5,
///                     },
///                 },
///             },
///         },
///         RoleArn = exampleRole.Arn,
///         Name = "example-processor",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kinesis"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/rekognition"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := kinesis.NewVideoStream(ctx, "example", &kinesis.VideoStreamArgs{
/// 			Name:                 pulumi.String("example-kinesis-input"),
/// 			DataRetentionInHours: pulumi.Int(1),
/// 			DeviceName:           pulumi.String("kinesis-video-device-name"),
/// 			MediaType:            pulumi.String("video/h264"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleStream, err := kinesis.NewStream(ctx, "example", &kinesis.StreamArgs{
/// 			Name:       pulumi.String("pulumi-kinesis-example"),
/// 			ShardCount: pulumi.Int(1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"Version": "2012-10-17",
/// 			"Statement": []map[string]interface{}{
/// 				map[string]interface{}{
/// 					"Action": "sts:AssumeRole",
/// 					"Effect": "Allow",
/// 					"Principal": map[string]string{
/// 						"Service": "rekognition.amazonaws.com",
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		exampleRole, err := iam.NewRole(ctx, "example", &iam.RoleArgs{
/// 			InlinePolicies: iam.RoleInlinePolicyArray{
/// 				&iam.RoleInlinePolicyArgs{
/// 					Name: pulumi.String("Rekognition-Access"),
/// 					Policy: pulumi.All(example.Arn, exampleStream.Arn).ApplyT(func(_args []interface{}) (string, error) {
/// 						exampleArn := _args[0].(string)
/// 						exampleStreamArn := _args[1].(string)
/// 						var _zero string
/// 						tmpJSON1, err := json.Marshal(map[string]interface{}{
/// 							"Version": "2012-10-17",
/// 							"Statement": []interface{}{
/// 								map[string]interface{}{
/// 									"Action": []string{
/// 										"kinesis:Get*",
/// 										"kinesis:DescribeStreamSummary",
/// 									},
/// 									"Effect": "Allow",
/// 									"Resource": []string{
/// 										exampleArn,
/// 									},
/// 								},
/// 								map[string]interface{}{
/// 									"Action": []string{
/// 										"kinesis:PutRecord",
/// 									},
/// 									"Effect": "Allow",
/// 									"Resource": []string{
/// 										exampleStreamArn,
/// 									},
/// 								},
/// 							},
/// 						})
/// 						if err != nil {
/// 							return _zero, err
/// 						}
/// 						json1 := string(tmpJSON1)
/// 						return json1, nil
/// 					}).(pulumi.StringOutput),
/// 				},
/// 			},
/// 			Name:             pulumi.String("example-role"),
/// 			AssumeRolePolicy: pulumi.String(json0),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleCollection, err := rekognition.NewCollection(ctx, "example", &rekognition.CollectionArgs{
/// 			CollectionId: pulumi.String("example-collection"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = rekognition.NewStreamProcessor(ctx, "example", &rekognition.StreamProcessorArgs{
/// 			DataSharingPreference: &rekognition.StreamProcessorDataSharingPreferenceArgs{
/// 				OptIn: pulumi.Bool(false),
/// 			},
/// 			Input: &rekognition.StreamProcessorInputTypeArgs{
/// 				KinesisVideoStream: &rekognition.StreamProcessorInputKinesisVideoStreamArgs{
/// 					Arn: example.Arn,
/// 				},
/// 			},
/// 			Output: &rekognition.StreamProcessorOutputTypeArgs{
/// 				KinesisDataStream: &rekognition.StreamProcessorOutputKinesisDataStreamArgs{
/// 					Arn: exampleStream.Arn,
/// 				},
/// 			},
/// 			Settings: &rekognition.StreamProcessorSettingsArgs{
/// 				FaceSearch: &rekognition.StreamProcessorSettingsFaceSearchArgs{
/// 					CollectionId: exampleCollection.ID().ToIDOutput().ToStringOutput(),
/// 				},
/// 			},
/// 			RegionsOfInterests: rekognition.StreamProcessorRegionsOfInterestArray{
/// 				&rekognition.StreamProcessorRegionsOfInterestArgs{
/// 					Polygons: rekognition.StreamProcessorRegionsOfInterestPolygonArray{
/// 						&rekognition.StreamProcessorRegionsOfInterestPolygonArgs{
/// 							X: pulumi.Float64(0.5),
/// 							Y: pulumi.Float64(0.5),
/// 						},
/// 						&rekognition.StreamProcessorRegionsOfInterestPolygonArgs{
/// 							X: pulumi.Float64(0.5),
/// 							Y: pulumi.Float64(0.5),
/// 						},
/// 						&rekognition.StreamProcessorRegionsOfInterestPolygonArgs{
/// 							X: pulumi.Float64(0.5),
/// 							Y: pulumi.Float64(0.5),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			RoleArn: exampleRole.Arn,
/// 			Name:    pulumi.String("example-processor"),
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
/// resource "aws_kinesis_videostream" "example" {
///   name                    = "example-kinesis-input"
///   data_retention_in_hours = 1
///   device_name             = "kinesis-video-device-name"
///   media_type              = "video/h264"
/// }
/// resource "aws_kinesis_stream" "example" {
///   name        = "pulumi-kinesis-example"
///   shard_count = 1
/// }
/// resource "aws_iam_role" "example" {
///   inline_policies {
///     name = "Rekognition-Access"
///     policy = jsonencode({
///       "Version" = "2012-10-17"
///       "Statement" = [{
///         "Action"   = ["kinesis:Get*", "kinesis:DescribeStreamSummary"]
///         "Effect"   = "Allow"
///         "Resource" = [aws_kinesis_videostream.example.arn]
///         }, {
///         "Action"   = ["kinesis:PutRecord"]
///         "Effect"   = "Allow"
///         "Resource" = [aws_kinesis_stream.example.arn]
///       }]
///     })
///   }
///   name = "example-role"
///   assume_role_policy = jsonencode({
///     "Version" = "2012-10-17"
///     "Statement" = [{
///       "Action" = "sts:AssumeRole"
///       "Effect" = "Allow"
///       "Principal" = {
///         "Service" = "rekognition.amazonaws.com"
///       }
///     }]
///   })
/// }
/// resource "aws_rekognition_collection" "example" {
///   collection_id = "example-collection"
/// }
/// resource "aws_rekognition_streamprocessor" "example" {
///   data_sharing_preference = {
///     opt_in = false
///   }
///   input = {
///     kinesis_video_stream = {
///       arn = aws_kinesis_videostream.example.arn
///     }
///   }
///   output = {
///     kinesis_data_stream = {
///       arn = aws_kinesis_stream.example.arn
///     }
///   }
///   settings = {
///     face_search = {
///       collection_id = aws_rekognition_collection.example.id
///     }
///   }
///   regions_of_interests {
///     polygons {
///       x = 0.5
///       y = 0.5
///     }
///     polygons {
///       x = 0.5
///       y = 0.5
///     }
///     polygons {
///       x = 0.5
///       y = 0.5
///     }
///   }
///   role_arn = aws_iam_role.example.arn
///   name     = "example-processor"
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
/// import com.pulumi.aws.rekognition.inputs.StreamProcessorInputArgs;
/// import com.pulumi.aws.rekognition.inputs.StreamProcessorInputKinesisVideoStreamArgs;
/// import com.pulumi.aws.rekognition.inputs.StreamProcessorOutputArgs;
/// import com.pulumi.aws.rekognition.inputs.StreamProcessorOutputKinesisDataStreamArgs;
/// import com.pulumi.aws.rekognition.inputs.StreamProcessorSettingsArgs;
/// import com.pulumi.aws.rekognition.inputs.StreamProcessorSettingsFaceSearchArgs;
/// import com.pulumi.aws.rekognition.inputs.StreamProcessorRegionsOfInterestArgs;
/// import com.pulumi.aws.rekognition.inputs.StreamProcessorRegionsOfInterestPolygonArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         var example = new VideoStream("example", VideoStreamArgs.builder()
///             .name("example-kinesis-input")
///             .dataRetentionInHours(1)
///             .deviceName("kinesis-video-device-name")
///             .mediaType("video/h264")
///             .build());
///
///         var exampleStream = new Stream("exampleStream", StreamArgs.builder()
///             .name("pulumi-kinesis-example")
///             .shardCount(1)
///             .build());
///
///         var exampleRole = new Role("exampleRole", RoleArgs.builder()
///             .inlinePolicies(RoleInlinePolicyArgs.builder()
///                 .name("Rekognition-Access")
///                 .policy(Output.tuple(example.arn(), exampleStream.arn()).applyValue(values -> {
///                     var exampleArn = values.t1;
///                     var exampleStreamArn = values.t2;
///                     return serializeJson(
///                         jsonObject(
///                             jsonProperty("Version", "2012-10-17"),
///                             jsonProperty("Statement", jsonArray(
///                                 jsonObject(
///                                     jsonProperty("Action", jsonArray(
///                                         "kinesis:Get*",
///                                         "kinesis:DescribeStreamSummary"
///                                     )),
///                                     jsonProperty("Effect", "Allow"),
///                                     jsonProperty("Resource", jsonArray(exampleArn))
///                                 ),
///                                 jsonObject(
///                                     jsonProperty("Action", jsonArray("kinesis:PutRecord")),
///                                     jsonProperty("Effect", "Allow"),
///                                     jsonProperty("Resource", jsonArray(exampleStreamArn))
///                                 )
///                             ))
///                         ));
///                 }))
///                 .build())
///             .name("example-role")
///             .assumeRolePolicy(serializeJson(
///                 jsonObject(
///                     jsonProperty("Version", "2012-10-17"),
///                     jsonProperty("Statement", jsonArray(jsonObject(
///                         jsonProperty("Action", "sts:AssumeRole"),
///                         jsonProperty("Effect", "Allow"),
///                         jsonProperty("Principal", jsonObject(
///                             jsonProperty("Service", "rekognition.amazonaws.com")
///                         ))
///                     )))
///                 )))
///             .build());
///
///         var exampleCollection = new Collection("exampleCollection", CollectionArgs.builder()
///             .collectionId("example-collection")
///             .build());
///
///         var exampleStreamProcessor = new StreamProcessor("exampleStreamProcessor", StreamProcessorArgs.builder()
///             .dataSharingPreference(StreamProcessorDataSharingPreferenceArgs.builder()
///                 .optIn(false)
///                 .build())
///             .input(StreamProcessorInputArgs.builder()
///                 .kinesisVideoStream(StreamProcessorInputKinesisVideoStreamArgs.builder()
///                     .arn(example.arn())
///                     .build())
///                 .build())
///             .output(StreamProcessorOutputArgs.builder()
///                 .kinesisDataStream(StreamProcessorOutputKinesisDataStreamArgs.builder()
///                     .arn(exampleStream.arn())
///                     .build())
///                 .build())
///             .settings(StreamProcessorSettingsArgs.builder()
///                 .faceSearch(StreamProcessorSettingsFaceSearchArgs.builder()
///                     .collectionId(exampleCollection.id())
///                     .build())
///                 .build())
///             .regionsOfInterests(StreamProcessorRegionsOfInterestArgs.builder()
///                 .polygons(
///                     StreamProcessorRegionsOfInterestPolygonArgs.builder()
///                         .x(0.5)
///                         .y(0.5)
///                         .build(),
///                     StreamProcessorRegionsOfInterestPolygonArgs.builder()
///                         .x(0.5)
///                         .y(0.5)
///                         .build(),
///                     StreamProcessorRegionsOfInterestPolygonArgs.builder()
///                         .x(0.5)
///                         .y(0.5)
///                         .build())
///                 .build())
///             .roleArn(exampleRole.arn())
///             .name("example-processor")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:kinesis:VideoStream
///     properties:
///       name: example-kinesis-input
///       dataRetentionInHours: 1
///       deviceName: kinesis-video-device-name
///       mediaType: video/h264
///   exampleStream:
///     type: aws:kinesis:Stream
///     name: example
///     properties:
///       name: pulumi-kinesis-example
///       shardCount: 1
///   exampleRole:
///     type: aws:iam:Role
///     name: example
///     properties:
///       inlinePolicies:
///         - name: Rekognition-Access
///           policy:
///             fn::toJSON:
///               Version: 2012-10-17
///               Statement:
///                 - Action:
///                     - kinesis:Get*
///                     - kinesis:DescribeStreamSummary
///                   Effect: Allow
///                   Resource:
///                     - ${example.arn}
///                 - Action:
///                     - kinesis:PutRecord
///                   Effect: Allow
///                   Resource:
///                     - ${exampleStream.arn}
///       name: example-role
///       assumeRolePolicy:
///         fn::toJSON:
///           Version: 2012-10-17
///           Statement:
///             - Action: sts:AssumeRole
///               Effect: Allow
///               Principal:
///                 Service: rekognition.amazonaws.com
///   exampleCollection:
///     type: aws:rekognition:Collection
///     name: example
///     properties:
///       collectionId: example-collection
///   exampleStreamProcessor:
///     type: aws:rekognition:StreamProcessor
///     name: example
///     properties:
///       dataSharingPreference:
///         optIn: false
///       input:
///         kinesisVideoStream:
///           arn: ${example.arn}
///       output:
///         kinesisDataStream:
///           arn: ${exampleStream.arn}
///       settings:
///         faceSearch:
///           collectionId: ${exampleCollection.id}
///       regionsOfInterests:
///         - polygons:
///             - x: 0.5
///               y: 0.5
///             - x: 0.5
///               y: 0.5
///             - x: 0.5
///               y: 0.5
///       roleArn: ${exampleRole.arn}
///       name: example-processor
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `name` (String) Name of the Stream Processor.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import Rekognition Stream Processor using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:rekognition/streamProcessor:StreamProcessor example my-stream
/// ```
class StreamProcessor extends pulumi.CustomResource {
  /// ARN of the Stream Processor.
  late final pulumi.Output<String> arn;
  /// See `dataSharingPreference`.
  late final pulumi.Output<StreamProcessorDataSharingPreference?> dataSharingPreference;
  /// Input video stream. See `input`.
  late final pulumi.Output<StreamProcessorInput> input;
  /// Optional parameter for label detection stream processors.
  late final pulumi.Output<String?> kmsKeyId;
  /// Name of the Stream Processor.
  late final pulumi.Output<String> name;
  /// Amazon Simple Notification Service topic to which Amazon Rekognition publishes the completion status. See `notificationChannel`.
  late final pulumi.Output<StreamProcessorNotificationChannel?> notificationChannel;
  /// Kinesis data stream stream or Amazon S3 bucket location to which Amazon Rekognition Video puts the analysis results. See `output`.
  late final pulumi.Output<StreamProcessorOutput> output;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Locations in the frames where Amazon Rekognition checks for objects or people. See `regionsOfInterest`.
  late final pulumi.Output<List<StreamProcessorRegionsOfInterest>?> regionsOfInterests;
  /// Amazon Resource Number (ARN) of the IAM role that allows access to the stream processor. The IAM role provides Rekognition read permissions for a Kinesis stream. It also provides write permissions to an Amazon S3 bucket and Amazon Simple Notification Service topic for a label detection stream processor. This is required for both face search and label detection stream processors.
  late final pulumi.Output<String> roleArn;
  /// Input parameters used in a streaming video analyzed by a stream processor. See `settings`.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<StreamProcessorSettings> settings;
  /// (**Deprecated**) ARN of the Stream Processor. Use `arn` instead.
  late final pulumi.Output<String> streamProcessorArn;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<StreamProcessorTimeouts?> timeouts;

  /// Creates a new [StreamProcessor].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [StreamProcessor]. {@macro pulumi_rekognition_stream_processor_stream_processor_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  StreamProcessor(
    String name, {
    StreamProcessorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:rekognition/streamProcessor:StreamProcessor',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    dataSharingPreference = registerOutput<StreamProcessorDataSharingPreference?>('dataSharingPreference', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StreamProcessorDataSharingPreference.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    input = registerOutput<StreamProcessorInput>('input', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StreamProcessorInput.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kmsKeyId = registerOutput<String?>('kmsKeyId');
    this.name = registerOutput<String>('name');
    notificationChannel = registerOutput<StreamProcessorNotificationChannel?>('notificationChannel', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StreamProcessorNotificationChannel.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    output = registerOutput<StreamProcessorOutput>('output', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StreamProcessorOutput.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    regionsOfInterests = registerOutput<List<StreamProcessorRegionsOfInterest>?>('regionsOfInterests', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<StreamProcessorRegionsOfInterest>(guardedValue, (value) => StreamProcessorRegionsOfInterest.fromMap((value as Map).cast<String, dynamic>())); });
    roleArn = registerOutput<String>('roleArn');
    settings = registerOutput<StreamProcessorSettings>('settings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StreamProcessorSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    streamProcessorArn = registerOutput<String>('streamProcessorArn');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<StreamProcessorTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StreamProcessorTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [StreamProcessor] resource's state with the given [name] and [id].
  static StreamProcessor get(
    String name,
    pulumi.Input<String> id, {
    StreamProcessorState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return StreamProcessor._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  StreamProcessor._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:rekognition/streamProcessor:StreamProcessor',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    dataSharingPreference = registerOutput<StreamProcessorDataSharingPreference?>('dataSharingPreference', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StreamProcessorDataSharingPreference.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    input = registerOutput<StreamProcessorInput>('input', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StreamProcessorInput.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kmsKeyId = registerOutput<String?>('kmsKeyId');
    this.name = registerOutput<String>('name');
    notificationChannel = registerOutput<StreamProcessorNotificationChannel?>('notificationChannel', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StreamProcessorNotificationChannel.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    output = registerOutput<StreamProcessorOutput>('output', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StreamProcessorOutput.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    regionsOfInterests = registerOutput<List<StreamProcessorRegionsOfInterest>?>('regionsOfInterests', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<StreamProcessorRegionsOfInterest>(guardedValue, (value) => StreamProcessorRegionsOfInterest.fromMap((value as Map).cast<String, dynamic>())); });
    roleArn = registerOutput<String>('roleArn');
    settings = registerOutput<StreamProcessorSettings>('settings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StreamProcessorSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    streamProcessorArn = registerOutput<String>('streamProcessorArn');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<StreamProcessorTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StreamProcessorTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [StreamProcessor] resource.
  StreamProcessor.reference(String urn)
    : super(
        'aws:rekognition/streamProcessor:StreamProcessor',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    dataSharingPreference = registerOutput<StreamProcessorDataSharingPreference?>('dataSharingPreference', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StreamProcessorDataSharingPreference.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    input = registerOutput<StreamProcessorInput>('input', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StreamProcessorInput.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kmsKeyId = registerOutput<String?>('kmsKeyId');
    this.name = registerOutput<String>('name');
    notificationChannel = registerOutput<StreamProcessorNotificationChannel?>('notificationChannel', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StreamProcessorNotificationChannel.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    output = registerOutput<StreamProcessorOutput>('output', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StreamProcessorOutput.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    regionsOfInterests = registerOutput<List<StreamProcessorRegionsOfInterest>?>('regionsOfInterests', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<StreamProcessorRegionsOfInterest>(guardedValue, (value) => StreamProcessorRegionsOfInterest.fromMap((value as Map).cast<String, dynamic>())); });
    roleArn = registerOutput<String>('roleArn');
    settings = registerOutput<StreamProcessorSettings>('settings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StreamProcessorSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    streamProcessorArn = registerOutput<String>('streamProcessorArn');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<StreamProcessorTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StreamProcessorTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
