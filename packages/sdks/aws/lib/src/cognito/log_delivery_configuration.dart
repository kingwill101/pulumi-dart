import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_delivery_configuration_args.dart';
import 'log_delivery_configuration_log_configuration.dart';
import 'log_delivery_configuration_state.dart';

/// Manages an AWS Cognito IDP (Identity Provider) Log Delivery Configuration.
///
/// ## Example Usage
///
/// ### Basic Usage with CloudWatch Logs
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.cognito.UserPool("example", {name: "example"});
/// const exampleLogGroup = new aws.cloudwatch.LogGroup("example", {name: "example"});
/// const exampleLogDeliveryConfiguration = new aws.cognito.LogDeliveryConfiguration("example", {
///     logConfigurations: [{
///         cloudWatchLogsConfiguration: {
///             logGroupArn: exampleLogGroup.arn,
///         },
///         eventSource: "userNotification",
///         logLevel: "ERROR",
///     }],
///     userPoolId: example.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cognito.UserPool("example", name="example")
/// example_log_group = aws.cloudwatch.LogGroup("example", name="example")
/// example_log_delivery_configuration = aws.cognito.LogDeliveryConfiguration("example",
///     log_configurations=[{
///         "cloud_watch_logs_configuration": {
///             "log_group_arn": example_log_group.arn,
///         },
///         "event_source": "userNotification",
///         "log_level": "ERROR",
///     }],
///     user_pool_id=example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Cognito.UserPool("example", new()
///     {
///         Name = "example",
///     });
///
///     var exampleLogGroup = new Aws.CloudWatch.LogGroup("example", new()
///     {
///         Name = "example",
///     });
///
///     var exampleLogDeliveryConfiguration = new Aws.Cognito.LogDeliveryConfiguration("example", new()
///     {
///         LogConfigurations = new[]
///         {
///             new Aws.Cognito.Inputs.LogDeliveryConfigurationLogConfigurationArgs
///             {
///                 CloudWatchLogsConfiguration = new Aws.Cognito.Inputs.LogDeliveryConfigurationLogConfigurationCloudWatchLogsConfigurationArgs
///                 {
///                     LogGroupArn = exampleLogGroup.Arn,
///                 },
///                 EventSource = "userNotification",
///                 LogLevel = "ERROR",
///             },
///         },
///         UserPoolId = example.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cognito"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := cognito.NewUserPool(ctx, "example", &cognito.UserPoolArgs{
/// 			Name: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleLogGroup, err := cloudwatch.NewLogGroup(ctx, "example", &cloudwatch.LogGroupArgs{
/// 			Name: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cognito.NewLogDeliveryConfiguration(ctx, "example", &cognito.LogDeliveryConfigurationArgs{
/// 			LogConfigurations: cognito.LogDeliveryConfigurationLogConfigurationArray{
/// 				&cognito.LogDeliveryConfigurationLogConfigurationArgs{
/// 					CloudWatchLogsConfiguration: &cognito.LogDeliveryConfigurationLogConfigurationCloudWatchLogsConfigurationArgs{
/// 						LogGroupArn: exampleLogGroup.Arn,
/// 					},
/// 					EventSource: pulumi.String("userNotification"),
/// 					LogLevel:    pulumi.String("ERROR"),
/// 				},
/// 			},
/// 			UserPoolId: example.ID().ToIDOutput().ToStringOutput(),
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
/// resource "aws_cognito_userpool" "example" {
///   name = "example"
/// }
/// resource "aws_cloudwatch_loggroup" "example" {
///   name = "example"
/// }
/// resource "aws_cognito_logdeliveryconfiguration" "example" {
///   log_configurations {
///     cloud_watch_logs_configuration = {
///       log_group_arn = aws_cloudwatch_loggroup.example.arn
///     }
///     event_source = "userNotification"
///     log_level    = "ERROR"
///   }
///   user_pool_id = aws_cognito_userpool.example.id
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
///         var example = new UserPool("example", UserPoolArgs.builder()
///             .name("example")
///             .build());
///
///         var exampleLogGroup = new LogGroup("exampleLogGroup", LogGroupArgs.builder()
///             .name("example")
///             .build());
///
///         var exampleLogDeliveryConfiguration = new LogDeliveryConfiguration("exampleLogDeliveryConfiguration", LogDeliveryConfigurationArgs.builder()
///             .logConfigurations(LogDeliveryConfigurationLogConfigurationArgs.builder()
///                 .cloudWatchLogsConfiguration(LogDeliveryConfigurationLogConfigurationCloudWatchLogsConfigurationArgs.builder()
///                     .logGroupArn(exampleLogGroup.arn())
///                     .build())
///                 .eventSource("userNotification")
///                 .logLevel("ERROR")
///                 .build())
///             .userPoolId(example.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:cognito:UserPool
///     properties:
///       name: example
///   exampleLogGroup:
///     type: aws:cloudwatch:LogGroup
///     name: example
///     properties:
///       name: example
///   exampleLogDeliveryConfiguration:
///     type: aws:cognito:LogDeliveryConfiguration
///     name: example
///     properties:
///       logConfigurations:
///         - cloudWatchLogsConfiguration:
///             logGroupArn: ${exampleLogGroup.arn}
///           eventSource: userNotification
///           logLevel: ERROR
///       userPoolId: ${example.id}
/// ```
///
///
/// ### Multiple Log Configurations with Different Destinations
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.cognito.UserPool("example", {
///     name: "example",
///     userPoolTier: "PLUS",
/// });
/// const exampleLogGroup = new aws.cloudwatch.LogGroup("example", {name: "example"});
/// const exampleBucket = new aws.s3.Bucket("example", {
///     bucket: "example-bucket",
///     forceDestroy: true,
/// });
/// const firehose = new aws.iam.Role("firehose", {
///     name: "firehose-role",
///     assumeRolePolicy: JSON.stringify({
///         Version: "2012-10-17",
///         Statement: [{
///             Action: "sts:AssumeRole",
///             Effect: "Allow",
///             Principal: {
///                 Service: "firehose.amazonaws.com",
///             },
///         }],
///     }),
/// });
/// const firehoseRolePolicy = new aws.iam.RolePolicy("firehose", {
///     name: "firehose-policy",
///     role: firehose.id,
///     policy: pulumi.jsonStringify({
///         Version: "2012-10-17",
///         Statement: [{
///             Effect: "Allow",
///             Action: [
///                 "s3:AbortMultipartUpload",
///                 "s3:GetBucketLocation",
///                 "s3:GetObject",
///                 "s3:ListBucket",
///                 "s3:ListBucketMultipartUploads",
///                 "s3:PutObject",
///             ],
///             Resource: [
///                 exampleBucket.arn,
///                 pulumi.interpolate`${exampleBucket.arn}/*`,
///             ],
///         }],
///     }),
/// });
/// const exampleFirehoseDeliveryStream = new aws.kinesis.FirehoseDeliveryStream("example", {
///     extendedS3Configuration: {
///         roleArn: firehose.arn,
///         bucketArn: exampleBucket.arn,
///     },
///     name: "example-stream",
///     destination: "extended_s3",
/// });
/// const exampleLogDeliveryConfiguration = new aws.cognito.LogDeliveryConfiguration("example", {
///     logConfigurations: [
///         {
///             cloudWatchLogsConfiguration: {
///                 logGroupArn: exampleLogGroup.arn,
///             },
///             eventSource: "userNotification",
///             logLevel: "INFO",
///         },
///         {
///             firehoseConfiguration: {
///                 streamArn: exampleFirehoseDeliveryStream.arn,
///             },
///             eventSource: "userAuthEvents",
///             logLevel: "INFO",
///         },
///     ],
///     userPoolId: example.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example = aws.cognito.UserPool("example",
///     name="example",
///     user_pool_tier="PLUS")
/// example_log_group = aws.cloudwatch.LogGroup("example", name="example")
/// example_bucket = aws.s3.Bucket("example",
///     bucket="example-bucket",
///     force_destroy=True)
/// firehose = aws.iam.Role("firehose",
///     name="firehose-role",
///     assume_role_policy=json.dumps({
///         "Version": "2012-10-17",
///         "Statement": [{
///             "Action": "sts:AssumeRole",
///             "Effect": "Allow",
///             "Principal": {
///                 "Service": "firehose.amazonaws.com",
///             },
///         }],
///     }))
/// firehose_role_policy = aws.iam.RolePolicy("firehose",
///     name="firehose-policy",
///     role=firehose.id,
///     policy=pulumi.Output.json_dumps({
///         "Version": "2012-10-17",
///         "Statement": [{
///             "Effect": "Allow",
///             "Action": [
///                 "s3:AbortMultipartUpload",
///                 "s3:GetBucketLocation",
///                 "s3:GetObject",
///                 "s3:ListBucket",
///                 "s3:ListBucketMultipartUploads",
///                 "s3:PutObject",
///             ],
///             "Resource": [
///                 example_bucket.arn,
///                 example_bucket.arn.apply(lambda arn: f"{arn}/*"),
///             ],
///         }],
///     }))
/// example_firehose_delivery_stream = aws.kinesis.FirehoseDeliveryStream("example",
///     extended_s3_configuration={
///         "role_arn": firehose.arn,
///         "bucket_arn": example_bucket.arn,
///     },
///     name="example-stream",
///     destination="extended_s3")
/// example_log_delivery_configuration = aws.cognito.LogDeliveryConfiguration("example",
///     log_configurations=[
///         {
///             "cloud_watch_logs_configuration": {
///                 "log_group_arn": example_log_group.arn,
///             },
///             "event_source": "userNotification",
///             "log_level": "INFO",
///         },
///         {
///             "firehose_configuration": {
///                 "stream_arn": example_firehose_delivery_stream.arn,
///             },
///             "event_source": "userAuthEvents",
///             "log_level": "INFO",
///         },
///     ],
///     user_pool_id=example.id)
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
///     var example = new Aws.Cognito.UserPool("example", new()
///     {
///         Name = "example",
///         UserPoolTier = "PLUS",
///     });
///
///     var exampleLogGroup = new Aws.CloudWatch.LogGroup("example", new()
///     {
///         Name = "example",
///     });
///
///     var exampleBucket = new Aws.S3.Bucket("example", new()
///     {
///         BucketName = "example-bucket",
///         ForceDestroy = true,
///     });
///
///     var firehose = new Aws.Iam.Role("firehose", new()
///     {
///         Name = "firehose-role",
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
///                         ["Service"] = "firehose.amazonaws.com",
///                     },
///                 },
///             },
///         }),
///     });
///
///     var firehoseRolePolicy = new Aws.Iam.RolePolicy("firehose", new()
///     {
///         Name = "firehose-policy",
///         Role = firehose.Id,
///         Policy = Output.JsonSerialize(Output.Create(new Dictionary<string, object?>
///         {
///             ["Version"] = "2012-10-17",
///             ["Statement"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["Effect"] = "Allow",
///                     ["Action"] = new[]
///                     {
///                         "s3:AbortMultipartUpload",
///                         "s3:GetBucketLocation",
///                         "s3:GetObject",
///                         "s3:ListBucket",
///                         "s3:ListBucketMultipartUploads",
///                         "s3:PutObject",
///                     },
///                     ["Resource"] = new[]
///                     {
///                         exampleBucket.Arn,
///                         exampleBucket.Arn.Apply(arn => $"{arn}/*"),
///                     },
///                 },
///             },
///         })),
///     });
///
///     var exampleFirehoseDeliveryStream = new Aws.Kinesis.FirehoseDeliveryStream("example", new()
///     {
///         ExtendedS3Configuration = new Aws.Kinesis.Inputs.FirehoseDeliveryStreamExtendedS3ConfigurationArgs
///         {
///             RoleArn = firehose.Arn,
///             BucketArn = exampleBucket.Arn,
///         },
///         Name = "example-stream",
///         Destination = "extended_s3",
///     });
///
///     var exampleLogDeliveryConfiguration = new Aws.Cognito.LogDeliveryConfiguration("example", new()
///     {
///         LogConfigurations = new[]
///         {
///             new Aws.Cognito.Inputs.LogDeliveryConfigurationLogConfigurationArgs
///             {
///                 CloudWatchLogsConfiguration = new Aws.Cognito.Inputs.LogDeliveryConfigurationLogConfigurationCloudWatchLogsConfigurationArgs
///                 {
///                     LogGroupArn = exampleLogGroup.Arn,
///                 },
///                 EventSource = "userNotification",
///                 LogLevel = "INFO",
///             },
///             new Aws.Cognito.Inputs.LogDeliveryConfigurationLogConfigurationArgs
///             {
///                 FirehoseConfiguration = new Aws.Cognito.Inputs.LogDeliveryConfigurationLogConfigurationFirehoseConfigurationArgs
///                 {
///                     StreamArn = exampleFirehoseDeliveryStream.Arn,
///                 },
///                 EventSource = "userAuthEvents",
///                 LogLevel = "INFO",
///             },
///         },
///         UserPoolId = example.Id,
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cognito"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kinesis"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := cognito.NewUserPool(ctx, "example", &cognito.UserPoolArgs{
/// 			Name:         pulumi.String("example"),
/// 			UserPoolTier: pulumi.String("PLUS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleLogGroup, err := cloudwatch.NewLogGroup(ctx, "example", &cloudwatch.LogGroupArgs{
/// 			Name: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleBucket, err := s3.NewBucket(ctx, "example", &s3.BucketArgs{
/// 			Bucket:       pulumi.String("example-bucket"),
/// 			ForceDestroy: pulumi.Bool(true),
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
/// 						"Service": "firehose.amazonaws.com",
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		firehose, err := iam.NewRole(ctx, "firehose", &iam.RoleArgs{
/// 			Name:             pulumi.String("firehose-role"),
/// 			AssumeRolePolicy: pulumi.String(json0),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iam.NewRolePolicy(ctx, "firehose", &iam.RolePolicyArgs{
/// 			Name: pulumi.String("firehose-policy"),
/// 			Role: firehose.ID().ToIDOutput().ToStringOutput(),
/// 			Policy: exampleBucket.Arn.ApplyT(func(arn string) (pulumi.String, error) {
/// 				var _zero pulumi.String
/// 				tmpJSON1, err := json.Marshal(map[string]interface{}{
/// 					"Version": "2012-10-17",
/// 					"Statement": []map[string]interface{}{
/// 						map[string]interface{}{
/// 							"Effect": "Allow",
/// 							"Action": []string{
/// 								"s3:AbortMultipartUpload",
/// 								"s3:GetBucketLocation",
/// 								"s3:GetObject",
/// 								"s3:ListBucket",
/// 								"s3:ListBucketMultipartUploads",
/// 								"s3:PutObject",
/// 							},
/// 							"Resource": []string{
/// 								arn,
/// 								fmt.Sprintf("%v/*", arn),
/// 							},
/// 						},
/// 					},
/// 				})
/// 				if err != nil {
/// 					return _zero, err
/// 				}
/// 				json1 := string(tmpJSON1)
/// 				return pulumi.String(json1), nil
/// 			}).(pulumi.StringOutput),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleFirehoseDeliveryStream, err := kinesis.NewFirehoseDeliveryStream(ctx, "example", &kinesis.FirehoseDeliveryStreamArgs{
/// 			ExtendedS3Configuration: &kinesis.FirehoseDeliveryStreamExtendedS3ConfigurationArgs{
/// 				RoleArn:   firehose.Arn,
/// 				BucketArn: exampleBucket.Arn,
/// 			},
/// 			Name:        pulumi.String("example-stream"),
/// 			Destination: pulumi.String("extended_s3"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cognito.NewLogDeliveryConfiguration(ctx, "example", &cognito.LogDeliveryConfigurationArgs{
/// 			LogConfigurations: cognito.LogDeliveryConfigurationLogConfigurationArray{
/// 				&cognito.LogDeliveryConfigurationLogConfigurationArgs{
/// 					CloudWatchLogsConfiguration: &cognito.LogDeliveryConfigurationLogConfigurationCloudWatchLogsConfigurationArgs{
/// 						LogGroupArn: exampleLogGroup.Arn,
/// 					},
/// 					EventSource: pulumi.String("userNotification"),
/// 					LogLevel:    pulumi.String("INFO"),
/// 				},
/// 				&cognito.LogDeliveryConfigurationLogConfigurationArgs{
/// 					FirehoseConfiguration: &cognito.LogDeliveryConfigurationLogConfigurationFirehoseConfigurationArgs{
/// 						StreamArn: exampleFirehoseDeliveryStream.Arn,
/// 					},
/// 					EventSource: pulumi.String("userAuthEvents"),
/// 					LogLevel:    pulumi.String("INFO"),
/// 				},
/// 			},
/// 			UserPoolId: example.ID().ToIDOutput().ToStringOutput(),
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
/// resource "aws_cognito_userpool" "example" {
///   name           = "example"
///   user_pool_tier = "PLUS"
/// }
/// resource "aws_cloudwatch_loggroup" "example" {
///   name = "example"
/// }
/// resource "aws_s3_bucket" "example" {
///   bucket        = "example-bucket"
///   force_destroy = true
/// }
/// resource "aws_iam_role" "firehose" {
///   name = "firehose-role"
///   assume_role_policy = jsonencode({
///     "Version" = "2012-10-17"
///     "Statement" = [{
///       "Action" = "sts:AssumeRole"
///       "Effect" = "Allow"
///       "Principal" = {
///         "Service" = "firehose.amazonaws.com"
///       }
///     }]
///   })
/// }
/// resource "aws_iam_rolepolicy" "firehose" {
///   name = "firehose-policy"
///   role = aws_iam_role.firehose.id
///   policy = jsonencode({
///     "Version" = "2012-10-17"
///     "Statement" = [{
///       "Effect"   = "Allow"
///       "Action"   = ["s3:AbortMultipartUpload", "s3:GetBucketLocation", "s3:GetObject", "s3:ListBucket", "s3:ListBucketMultipartUploads", "s3:PutObject"]
///       "Resource" = [aws_s3_bucket.example.arn, "${aws_s3_bucket.example.arn}/*"]
///     }]
///   })
/// }
/// resource "aws_kinesis_firehosedeliverystream" "example" {
///   extended_s3_configuration = {
///     role_arn   = aws_iam_role.firehose.arn
///     bucket_arn = aws_s3_bucket.example.arn
///   }
///   name        = "example-stream"
///   destination = "extended_s3"
/// }
/// resource "aws_cognito_logdeliveryconfiguration" "example" {
///   log_configurations {
///     cloud_watch_logs_configuration = {
///       log_group_arn = aws_cloudwatch_loggroup.example.arn
///     }
///     event_source = "userNotification"
///     log_level    = "INFO"
///   }
///   log_configurations {
///     firehose_configuration = {
///       stream_arn = aws_kinesis_firehosedeliverystream.example.arn
///     }
///     event_source = "userAuthEvents"
///     log_level    = "INFO"
///   }
///   user_pool_id = aws_cognito_userpool.example.id
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
///         var example = new UserPool("example", UserPoolArgs.builder()
///             .name("example")
///             .userPoolTier("PLUS")
///             .build());
///
///         var exampleLogGroup = new LogGroup("exampleLogGroup", LogGroupArgs.builder()
///             .name("example")
///             .build());
///
///         var exampleBucket = new Bucket("exampleBucket", BucketArgs.builder()
///             .bucket("example-bucket")
///             .forceDestroy(true)
///             .build());
///
///         var firehose = new Role("firehose", RoleArgs.builder()
///             .name("firehose-role")
///             .assumeRolePolicy(serializeJson(
///                 jsonObject(
///                     jsonProperty("Version", "2012-10-17"),
///                     jsonProperty("Statement", jsonArray(jsonObject(
///                         jsonProperty("Action", "sts:AssumeRole"),
///                         jsonProperty("Effect", "Allow"),
///                         jsonProperty("Principal", jsonObject(
///                             jsonProperty("Service", "firehose.amazonaws.com")
///                         ))
///                     )))
///                 )))
///             .build());
///
///         var firehoseRolePolicy = new RolePolicy("firehoseRolePolicy", RolePolicyArgs.builder()
///             .name("firehose-policy")
///             .role(firehose.id())
///             .policy(exampleBucket.arn().applyValue(_arn -> serializeJson(
///                 jsonObject(
///                     jsonProperty("Version", "2012-10-17"),
///                     jsonProperty("Statement", jsonArray(jsonObject(
///                         jsonProperty("Effect", "Allow"),
///                         jsonProperty("Action", jsonArray(
///                             "s3:AbortMultipartUpload",
///                             "s3:GetBucketLocation",
///                             "s3:GetObject",
///                             "s3:ListBucket",
///                             "s3:ListBucketMultipartUploads",
///                             "s3:PutObject"
///                         )),
///                         jsonProperty("Resource", jsonArray(
///                             _arn,
///                             String.format("%s/*", _arn)
///                         ))
///                     )))
///                 ))))
///             .build());
///
///         var exampleFirehoseDeliveryStream = new FirehoseDeliveryStream("exampleFirehoseDeliveryStream", FirehoseDeliveryStreamArgs.builder()
///             .extendedS3Configuration(FirehoseDeliveryStreamExtendedS3ConfigurationArgs.builder()
///                 .roleArn(firehose.arn())
///                 .bucketArn(exampleBucket.arn())
///                 .build())
///             .name("example-stream")
///             .destination("extended_s3")
///             .build());
///
///         var exampleLogDeliveryConfiguration = new LogDeliveryConfiguration("exampleLogDeliveryConfiguration", LogDeliveryConfigurationArgs.builder()
///             .logConfigurations(
///                 LogDeliveryConfigurationLogConfigurationArgs.builder()
///                     .cloudWatchLogsConfiguration(LogDeliveryConfigurationLogConfigurationCloudWatchLogsConfigurationArgs.builder()
///                         .logGroupArn(exampleLogGroup.arn())
///                         .build())
///                     .eventSource("userNotification")
///                     .logLevel("INFO")
///                     .build(),
///                 LogDeliveryConfigurationLogConfigurationArgs.builder()
///                     .firehoseConfiguration(LogDeliveryConfigurationLogConfigurationFirehoseConfigurationArgs.builder()
///                         .streamArn(exampleFirehoseDeliveryStream.arn())
///                         .build())
///                     .eventSource("userAuthEvents")
///                     .logLevel("INFO")
///                     .build())
///             .userPoolId(example.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:cognito:UserPool
///     properties:
///       name: example
///       userPoolTier: PLUS
///   exampleLogGroup:
///     type: aws:cloudwatch:LogGroup
///     name: example
///     properties:
///       name: example
///   exampleBucket:
///     type: aws:s3:Bucket
///     name: example
///     properties:
///       bucket: example-bucket
///       forceDestroy: true
///   firehose:
///     type: aws:iam:Role
///     properties:
///       name: firehose-role
///       assumeRolePolicy:
///         fn::toJSON:
///           Version: 2012-10-17
///           Statement:
///             - Action: sts:AssumeRole
///               Effect: Allow
///               Principal:
///                 Service: firehose.amazonaws.com
///   firehoseRolePolicy:
///     type: aws:iam:RolePolicy
///     name: firehose
///     properties:
///       name: firehose-policy
///       role: ${firehose.id}
///       policy:
///         fn::toJSON:
///           Version: 2012-10-17
///           Statement:
///             - Effect: Allow
///               Action:
///                 - s3:AbortMultipartUpload
///                 - s3:GetBucketLocation
///                 - s3:GetObject
///                 - s3:ListBucket
///                 - s3:ListBucketMultipartUploads
///                 - s3:PutObject
///               Resource:
///                 - ${exampleBucket.arn}
///                 - ${exampleBucket.arn}/*
///   exampleFirehoseDeliveryStream:
///     type: aws:kinesis:FirehoseDeliveryStream
///     name: example
///     properties:
///       extendedS3Configuration:
///         roleArn: ${firehose.arn}
///         bucketArn: ${exampleBucket.arn}
///       name: example-stream
///       destination: extended_s3
///   exampleLogDeliveryConfiguration:
///     type: aws:cognito:LogDeliveryConfiguration
///     name: example
///     properties:
///       logConfigurations:
///         - cloudWatchLogsConfiguration:
///             logGroupArn: ${exampleLogGroup.arn}
///           eventSource: userNotification
///           logLevel: INFO
///         - firehoseConfiguration:
///             streamArn: ${exampleFirehoseDeliveryStream.arn}
///           eventSource: userAuthEvents
///           logLevel: INFO
///       userPoolId: ${example.id}
/// ```
///
///
/// ### S3 Configuration
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.cognito.UserPool("example", {
///     name: "example",
///     userPoolTier: "PLUS",
/// });
/// const exampleBucket = new aws.s3.Bucket("example", {
///     bucket: "example-bucket",
///     forceDestroy: true,
/// });
/// const exampleLogDeliveryConfiguration = new aws.cognito.LogDeliveryConfiguration("example", {
///     logConfigurations: [{
///         s3Configuration: {
///             bucketArn: exampleBucket.arn,
///         },
///         eventSource: "userAuthEvents",
///         logLevel: "INFO",
///     }],
///     userPoolId: example.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cognito.UserPool("example",
///     name="example",
///     user_pool_tier="PLUS")
/// example_bucket = aws.s3.Bucket("example",
///     bucket="example-bucket",
///     force_destroy=True)
/// example_log_delivery_configuration = aws.cognito.LogDeliveryConfiguration("example",
///     log_configurations=[{
///         "s3_configuration": {
///             "bucket_arn": example_bucket.arn,
///         },
///         "event_source": "userAuthEvents",
///         "log_level": "INFO",
///     }],
///     user_pool_id=example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Cognito.UserPool("example", new()
///     {
///         Name = "example",
///         UserPoolTier = "PLUS",
///     });
///
///     var exampleBucket = new Aws.S3.Bucket("example", new()
///     {
///         BucketName = "example-bucket",
///         ForceDestroy = true,
///     });
///
///     var exampleLogDeliveryConfiguration = new Aws.Cognito.LogDeliveryConfiguration("example", new()
///     {
///         LogConfigurations = new[]
///         {
///             new Aws.Cognito.Inputs.LogDeliveryConfigurationLogConfigurationArgs
///             {
///                 S3Configuration = new Aws.Cognito.Inputs.LogDeliveryConfigurationLogConfigurationS3ConfigurationArgs
///                 {
///                     BucketArn = exampleBucket.Arn,
///                 },
///                 EventSource = "userAuthEvents",
///                 LogLevel = "INFO",
///             },
///         },
///         UserPoolId = example.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cognito"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := cognito.NewUserPool(ctx, "example", &cognito.UserPoolArgs{
/// 			Name:         pulumi.String("example"),
/// 			UserPoolTier: pulumi.String("PLUS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleBucket, err := s3.NewBucket(ctx, "example", &s3.BucketArgs{
/// 			Bucket:       pulumi.String("example-bucket"),
/// 			ForceDestroy: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cognito.NewLogDeliveryConfiguration(ctx, "example", &cognito.LogDeliveryConfigurationArgs{
/// 			LogConfigurations: cognito.LogDeliveryConfigurationLogConfigurationArray{
/// 				&cognito.LogDeliveryConfigurationLogConfigurationArgs{
/// 					S3Configuration: &cognito.LogDeliveryConfigurationLogConfigurationS3ConfigurationArgs{
/// 						BucketArn: exampleBucket.Arn,
/// 					},
/// 					EventSource: pulumi.String("userAuthEvents"),
/// 					LogLevel:    pulumi.String("INFO"),
/// 				},
/// 			},
/// 			UserPoolId: example.ID().ToIDOutput().ToStringOutput(),
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
/// resource "aws_cognito_userpool" "example" {
///   name           = "example"
///   user_pool_tier = "PLUS"
/// }
/// resource "aws_s3_bucket" "example" {
///   bucket        = "example-bucket"
///   force_destroy = true
/// }
/// resource "aws_cognito_logdeliveryconfiguration" "example" {
///   log_configurations {
///     s3_configuration = {
///       bucket_arn = aws_s3_bucket.example.arn
///     }
///     event_source = "userAuthEvents"
///     log_level    = "INFO"
///   }
///   user_pool_id = aws_cognito_userpool.example.id
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
///         var example = new UserPool("example", UserPoolArgs.builder()
///             .name("example")
///             .userPoolTier("PLUS")
///             .build());
///
///         var exampleBucket = new Bucket("exampleBucket", BucketArgs.builder()
///             .bucket("example-bucket")
///             .forceDestroy(true)
///             .build());
///
///         var exampleLogDeliveryConfiguration = new LogDeliveryConfiguration("exampleLogDeliveryConfiguration", LogDeliveryConfigurationArgs.builder()
///             .logConfigurations(LogDeliveryConfigurationLogConfigurationArgs.builder()
///                 .s3Configuration(LogDeliveryConfigurationLogConfigurationS3ConfigurationArgs.builder()
///                     .bucketArn(exampleBucket.arn())
///                     .build())
///                 .eventSource("userAuthEvents")
///                 .logLevel("INFO")
///                 .build())
///             .userPoolId(example.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:cognito:UserPool
///     properties:
///       name: example
///       userPoolTier: PLUS
///   exampleBucket:
///     type: aws:s3:Bucket
///     name: example
///     properties:
///       bucket: example-bucket
///       forceDestroy: true
///   exampleLogDeliveryConfiguration:
///     type: aws:cognito:LogDeliveryConfiguration
///     name: example
///     properties:
///       logConfigurations:
///         - s3Configuration:
///             bucketArn: ${exampleBucket.arn}
///           eventSource: userAuthEvents
///           logLevel: INFO
///       userPoolId: ${example.id}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `userPoolId` (String) ID of the Cognito User Pool.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import Cognito IDP (Identity Provider) Log Delivery Configuration using the `userPoolId`. For example:
///
/// ```sh
/// $ pulumi import aws:cognito/logDeliveryConfiguration:LogDeliveryConfiguration example us-west-2_example123
/// ```
class LogDeliveryConfiguration extends pulumi.CustomResource {
  /// Configuration block for log delivery. At least one configuration block is required. See Log Configurations below.
  late final pulumi.Output<List<LogDeliveryConfigurationLogConfiguration>> logConfigurations;
  /// The AWS region.
  late final pulumi.Output<String> region;
  /// The ID of the user pool for which to configure log delivery.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> userPoolId;

  /// Creates a new [LogDeliveryConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LogDeliveryConfiguration]. {@macro pulumi_cognito_log_delivery_configuration_log_delivery_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LogDeliveryConfiguration(
    String name, {
    LogDeliveryConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cognito/logDeliveryConfiguration:LogDeliveryConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    logConfigurations = registerOutput<List<LogDeliveryConfigurationLogConfiguration>>('logConfigurations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<LogDeliveryConfigurationLogConfiguration>(guardedValue, (value) => LogDeliveryConfigurationLogConfiguration.fromMap((value as Map).cast<String, dynamic>())); });
    region = registerOutput<String>('region');
    userPoolId = registerOutput<String>('userPoolId');
  }

  /// Gets an existing [LogDeliveryConfiguration] resource's state with the given [name] and [id].
  static LogDeliveryConfiguration get(
    String name,
    pulumi.Input<String> id, {
    LogDeliveryConfigurationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return LogDeliveryConfiguration._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  LogDeliveryConfiguration._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cognito/logDeliveryConfiguration:LogDeliveryConfiguration',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    logConfigurations = registerOutput<List<LogDeliveryConfigurationLogConfiguration>>('logConfigurations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<LogDeliveryConfigurationLogConfiguration>(guardedValue, (value) => LogDeliveryConfigurationLogConfiguration.fromMap((value as Map).cast<String, dynamic>())); });
    region = registerOutput<String>('region');
    userPoolId = registerOutput<String>('userPoolId');
  }

  /// Creates a typed reference to an existing [LogDeliveryConfiguration] resource.
  LogDeliveryConfiguration.reference(String urn)
    : super(
        'aws:cognito/logDeliveryConfiguration:LogDeliveryConfiguration',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    logConfigurations = registerOutput<List<LogDeliveryConfigurationLogConfiguration>>('logConfigurations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<LogDeliveryConfigurationLogConfiguration>(guardedValue, (value) => LogDeliveryConfigurationLogConfiguration.fromMap((value as Map).cast<String, dynamic>())); });
    region = registerOutput<String>('region');
    userPoolId = registerOutput<String>('userPoolId');
  }
}
