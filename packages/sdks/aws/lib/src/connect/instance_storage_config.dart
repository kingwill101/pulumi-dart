import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_storage_config_args.dart';
import 'instance_storage_config_state.dart';
import 'instance_storage_config_storage_config.dart';

/// Provides an Amazon Connect Instance Storage Config resource. For more information see
/// [Amazon Connect: Getting Started](https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-get-started.html)
///
/// ## Example Usage
///
/// ### Storage Config Kinesis Firehose Config
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.connect.InstanceStorageConfig("example", {
///     storageConfig: {
///         kinesisFirehoseConfig: {
///             firehoseArn: exampleAwsKinesisFirehoseDeliveryStream.arn,
///         },
///         storageType: "KINESIS_FIREHOSE",
///     },
///     instanceId: exampleAwsConnectInstance.id,
///     resourceType: "CONTACT_TRACE_RECORDS",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.connect.InstanceStorageConfig("example",
///     storage_config={
///         "kinesis_firehose_config": {
///             "firehose_arn": example_aws_kinesis_firehose_delivery_stream["arn"],
///         },
///         "storage_type": "KINESIS_FIREHOSE",
///     },
///     instance_id=example_aws_connect_instance["id"],
///     resource_type="CONTACT_TRACE_RECORDS")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Connect.InstanceStorageConfig("example", new()
///     {
///         StorageConfig = new Aws.Connect.Inputs.InstanceStorageConfigStorageConfigArgs
///         {
///             KinesisFirehoseConfig = new Aws.Connect.Inputs.InstanceStorageConfigStorageConfigKinesisFirehoseConfigArgs
///             {
///                 FirehoseArn = exampleAwsKinesisFirehoseDeliveryStream.Arn,
///             },
///             StorageType = "KINESIS_FIREHOSE",
///         },
///         InstanceId = exampleAwsConnectInstance.Id,
///         ResourceType = "CONTACT_TRACE_RECORDS",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/connect"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := connect.NewInstanceStorageConfig(ctx, "example", &connect.InstanceStorageConfigArgs{
/// 			StorageConfig: &connect.InstanceStorageConfigStorageConfigArgs{
/// 				KinesisFirehoseConfig: &connect.InstanceStorageConfigStorageConfigKinesisFirehoseConfigArgs{
/// 					FirehoseArn: pulumi.Any(exampleAwsKinesisFirehoseDeliveryStream.Arn),
/// 				},
/// 				StorageType: pulumi.String("KINESIS_FIREHOSE"),
/// 			},
/// 			InstanceId:   pulumi.Any(exampleAwsConnectInstance.Id),
/// 			ResourceType: pulumi.String("CONTACT_TRACE_RECORDS"),
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
/// resource "aws_connect_instancestorageconfig" "example" {
///   storage_config = {
///     kinesis_firehose_config = {
///       firehose_arn = exampleAwsKinesisFirehoseDeliveryStream.arn
///     }
///     storage_type = "KINESIS_FIREHOSE"
///   }
///   instance_id   = exampleAwsConnectInstance.id
///   resource_type = "CONTACT_TRACE_RECORDS"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.connect.InstanceStorageConfig;
/// import com.pulumi.aws.connect.InstanceStorageConfigArgs;
/// import com.pulumi.aws.connect.inputs.InstanceStorageConfigStorageConfigArgs;
/// import com.pulumi.aws.connect.inputs.InstanceStorageConfigStorageConfigKinesisFirehoseConfigArgs;
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
///         var example = new InstanceStorageConfig("example", InstanceStorageConfigArgs.builder()
///             .storageConfig(InstanceStorageConfigStorageConfigArgs.builder()
///                 .kinesisFirehoseConfig(InstanceStorageConfigStorageConfigKinesisFirehoseConfigArgs.builder()
///                     .firehoseArn(exampleAwsKinesisFirehoseDeliveryStream.arn())
///                     .build())
///                 .storageType("KINESIS_FIREHOSE")
///                 .build())
///             .instanceId(exampleAwsConnectInstance.id())
///             .resourceType("CONTACT_TRACE_RECORDS")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:connect:InstanceStorageConfig
///     properties:
///       storageConfig:
///         kinesisFirehoseConfig:
///           firehoseArn: ${exampleAwsKinesisFirehoseDeliveryStream.arn}
///         storageType: KINESIS_FIREHOSE
///       instanceId: ${exampleAwsConnectInstance.id}
///       resourceType: CONTACT_TRACE_RECORDS
/// ```
///
///
/// ### Storage Config Kinesis Stream Config
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.connect.InstanceStorageConfig("example", {
///     storageConfig: {
///         kinesisStreamConfig: {
///             streamArn: exampleAwsKinesisStream.arn,
///         },
///         storageType: "KINESIS_STREAM",
///     },
///     instanceId: exampleAwsConnectInstance.id,
///     resourceType: "CONTACT_TRACE_RECORDS",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.connect.InstanceStorageConfig("example",
///     storage_config={
///         "kinesis_stream_config": {
///             "stream_arn": example_aws_kinesis_stream["arn"],
///         },
///         "storage_type": "KINESIS_STREAM",
///     },
///     instance_id=example_aws_connect_instance["id"],
///     resource_type="CONTACT_TRACE_RECORDS")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Connect.InstanceStorageConfig("example", new()
///     {
///         StorageConfig = new Aws.Connect.Inputs.InstanceStorageConfigStorageConfigArgs
///         {
///             KinesisStreamConfig = new Aws.Connect.Inputs.InstanceStorageConfigStorageConfigKinesisStreamConfigArgs
///             {
///                 StreamArn = exampleAwsKinesisStream.Arn,
///             },
///             StorageType = "KINESIS_STREAM",
///         },
///         InstanceId = exampleAwsConnectInstance.Id,
///         ResourceType = "CONTACT_TRACE_RECORDS",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/connect"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := connect.NewInstanceStorageConfig(ctx, "example", &connect.InstanceStorageConfigArgs{
/// 			StorageConfig: &connect.InstanceStorageConfigStorageConfigArgs{
/// 				KinesisStreamConfig: &connect.InstanceStorageConfigStorageConfigKinesisStreamConfigArgs{
/// 					StreamArn: pulumi.Any(exampleAwsKinesisStream.Arn),
/// 				},
/// 				StorageType: pulumi.String("KINESIS_STREAM"),
/// 			},
/// 			InstanceId:   pulumi.Any(exampleAwsConnectInstance.Id),
/// 			ResourceType: pulumi.String("CONTACT_TRACE_RECORDS"),
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
/// resource "aws_connect_instancestorageconfig" "example" {
///   storage_config = {
///     kinesis_stream_config = {
///       stream_arn = exampleAwsKinesisStream.arn
///     }
///     storage_type = "KINESIS_STREAM"
///   }
///   instance_id   = exampleAwsConnectInstance.id
///   resource_type = "CONTACT_TRACE_RECORDS"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.connect.InstanceStorageConfig;
/// import com.pulumi.aws.connect.InstanceStorageConfigArgs;
/// import com.pulumi.aws.connect.inputs.InstanceStorageConfigStorageConfigArgs;
/// import com.pulumi.aws.connect.inputs.InstanceStorageConfigStorageConfigKinesisStreamConfigArgs;
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
///         var example = new InstanceStorageConfig("example", InstanceStorageConfigArgs.builder()
///             .storageConfig(InstanceStorageConfigStorageConfigArgs.builder()
///                 .kinesisStreamConfig(InstanceStorageConfigStorageConfigKinesisStreamConfigArgs.builder()
///                     .streamArn(exampleAwsKinesisStream.arn())
///                     .build())
///                 .storageType("KINESIS_STREAM")
///                 .build())
///             .instanceId(exampleAwsConnectInstance.id())
///             .resourceType("CONTACT_TRACE_RECORDS")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:connect:InstanceStorageConfig
///     properties:
///       storageConfig:
///         kinesisStreamConfig:
///           streamArn: ${exampleAwsKinesisStream.arn}
///         storageType: KINESIS_STREAM
///       instanceId: ${exampleAwsConnectInstance.id}
///       resourceType: CONTACT_TRACE_RECORDS
/// ```
///
///
/// ### Storage Config Kinesis Video Stream Config
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.connect.InstanceStorageConfig("example", {
///     storageConfig: {
///         kinesisVideoStreamConfig: {
///             encryptionConfig: {
///                 encryptionType: "KMS",
///                 keyId: exampleAwsKmsKey.arn,
///             },
///             prefix: "example",
///             retentionPeriodHours: 3,
///         },
///         storageType: "KINESIS_VIDEO_STREAM",
///     },
///     instanceId: exampleAwsConnectInstance.id,
///     resourceType: "MEDIA_STREAMS",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.connect.InstanceStorageConfig("example",
///     storage_config={
///         "kinesis_video_stream_config": {
///             "encryption_config": {
///                 "encryption_type": "KMS",
///                 "key_id": example_aws_kms_key["arn"],
///             },
///             "prefix": "example",
///             "retention_period_hours": 3,
///         },
///         "storage_type": "KINESIS_VIDEO_STREAM",
///     },
///     instance_id=example_aws_connect_instance["id"],
///     resource_type="MEDIA_STREAMS")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Connect.InstanceStorageConfig("example", new()
///     {
///         StorageConfig = new Aws.Connect.Inputs.InstanceStorageConfigStorageConfigArgs
///         {
///             KinesisVideoStreamConfig = new Aws.Connect.Inputs.InstanceStorageConfigStorageConfigKinesisVideoStreamConfigArgs
///             {
///                 EncryptionConfig = new Aws.Connect.Inputs.InstanceStorageConfigStorageConfigKinesisVideoStreamConfigEncryptionConfigArgs
///                 {
///                     EncryptionType = "KMS",
///                     KeyId = exampleAwsKmsKey.Arn,
///                 },
///                 Prefix = "example",
///                 RetentionPeriodHours = 3,
///             },
///             StorageType = "KINESIS_VIDEO_STREAM",
///         },
///         InstanceId = exampleAwsConnectInstance.Id,
///         ResourceType = "MEDIA_STREAMS",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/connect"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := connect.NewInstanceStorageConfig(ctx, "example", &connect.InstanceStorageConfigArgs{
/// 			StorageConfig: &connect.InstanceStorageConfigStorageConfigArgs{
/// 				KinesisVideoStreamConfig: &connect.InstanceStorageConfigStorageConfigKinesisVideoStreamConfigArgs{
/// 					EncryptionConfig: &connect.InstanceStorageConfigStorageConfigKinesisVideoStreamConfigEncryptionConfigArgs{
/// 						EncryptionType: pulumi.String("KMS"),
/// 						KeyId:          pulumi.Any(exampleAwsKmsKey.Arn),
/// 					},
/// 					Prefix:               pulumi.String("example"),
/// 					RetentionPeriodHours: pulumi.Int(3),
/// 				},
/// 				StorageType: pulumi.String("KINESIS_VIDEO_STREAM"),
/// 			},
/// 			InstanceId:   pulumi.Any(exampleAwsConnectInstance.Id),
/// 			ResourceType: pulumi.String("MEDIA_STREAMS"),
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
/// resource "aws_connect_instancestorageconfig" "example" {
///   storage_config = {
///     kinesis_video_stream_config = {
///       encryption_config = {
///         encryption_type = "KMS"
///         key_id          = exampleAwsKmsKey.arn
///       }
///       prefix                 = "example"
///       retention_period_hours = 3
///     }
///     storage_type = "KINESIS_VIDEO_STREAM"
///   }
///   instance_id   = exampleAwsConnectInstance.id
///   resource_type = "MEDIA_STREAMS"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.connect.InstanceStorageConfig;
/// import com.pulumi.aws.connect.InstanceStorageConfigArgs;
/// import com.pulumi.aws.connect.inputs.InstanceStorageConfigStorageConfigArgs;
/// import com.pulumi.aws.connect.inputs.InstanceStorageConfigStorageConfigKinesisVideoStreamConfigArgs;
/// import com.pulumi.aws.connect.inputs.InstanceStorageConfigStorageConfigKinesisVideoStreamConfigEncryptionConfigArgs;
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
///         var example = new InstanceStorageConfig("example", InstanceStorageConfigArgs.builder()
///             .storageConfig(InstanceStorageConfigStorageConfigArgs.builder()
///                 .kinesisVideoStreamConfig(InstanceStorageConfigStorageConfigKinesisVideoStreamConfigArgs.builder()
///                     .encryptionConfig(InstanceStorageConfigStorageConfigKinesisVideoStreamConfigEncryptionConfigArgs.builder()
///                         .encryptionType("KMS")
///                         .keyId(exampleAwsKmsKey.arn())
///                         .build())
///                     .prefix("example")
///                     .retentionPeriodHours(3)
///                     .build())
///                 .storageType("KINESIS_VIDEO_STREAM")
///                 .build())
///             .instanceId(exampleAwsConnectInstance.id())
///             .resourceType("MEDIA_STREAMS")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:connect:InstanceStorageConfig
///     properties:
///       storageConfig:
///         kinesisVideoStreamConfig:
///           encryptionConfig:
///             encryptionType: KMS
///             keyId: ${exampleAwsKmsKey.arn}
///           prefix: example
///           retentionPeriodHours: 3
///         storageType: KINESIS_VIDEO_STREAM
///       instanceId: ${exampleAwsConnectInstance.id}
///       resourceType: MEDIA_STREAMS
/// ```
///
///
/// ### Storage Config S3 Config
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.connect.InstanceStorageConfig("example", {
///     storageConfig: {
///         s3Config: {
///             bucketName: exampleAwsS3Bucket.id,
///             bucketPrefix: "example",
///         },
///         storageType: "S3",
///     },
///     instanceId: exampleAwsConnectInstance.id,
///     resourceType: "CHAT_TRANSCRIPTS",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.connect.InstanceStorageConfig("example",
///     storage_config={
///         "s3_config": {
///             "bucket_name": example_aws_s3_bucket["id"],
///             "bucket_prefix": "example",
///         },
///         "storage_type": "S3",
///     },
///     instance_id=example_aws_connect_instance["id"],
///     resource_type="CHAT_TRANSCRIPTS")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Connect.InstanceStorageConfig("example", new()
///     {
///         StorageConfig = new Aws.Connect.Inputs.InstanceStorageConfigStorageConfigArgs
///         {
///             S3Config = new Aws.Connect.Inputs.InstanceStorageConfigStorageConfigS3ConfigArgs
///             {
///                 BucketName = exampleAwsS3Bucket.Id,
///                 BucketPrefix = "example",
///             },
///             StorageType = "S3",
///         },
///         InstanceId = exampleAwsConnectInstance.Id,
///         ResourceType = "CHAT_TRANSCRIPTS",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/connect"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := connect.NewInstanceStorageConfig(ctx, "example", &connect.InstanceStorageConfigArgs{
/// 			StorageConfig: &connect.InstanceStorageConfigStorageConfigArgs{
/// 				S3Config: &connect.InstanceStorageConfigStorageConfigS3ConfigArgs{
/// 					BucketName:   pulumi.Any(exampleAwsS3Bucket.Id),
/// 					BucketPrefix: pulumi.String("example"),
/// 				},
/// 				StorageType: pulumi.String("S3"),
/// 			},
/// 			InstanceId:   pulumi.Any(exampleAwsConnectInstance.Id),
/// 			ResourceType: pulumi.String("CHAT_TRANSCRIPTS"),
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
/// resource "aws_connect_instancestorageconfig" "example" {
///   storage_config = {
///     s3_config = {
///       bucket_name   = exampleAwsS3Bucket.id
///       bucket_prefix = "example"
///     }
///     storage_type = "S3"
///   }
///   instance_id   = exampleAwsConnectInstance.id
///   resource_type = "CHAT_TRANSCRIPTS"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.connect.InstanceStorageConfig;
/// import com.pulumi.aws.connect.InstanceStorageConfigArgs;
/// import com.pulumi.aws.connect.inputs.InstanceStorageConfigStorageConfigArgs;
/// import com.pulumi.aws.connect.inputs.InstanceStorageConfigStorageConfigS3ConfigArgs;
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
///         var example = new InstanceStorageConfig("example", InstanceStorageConfigArgs.builder()
///             .storageConfig(InstanceStorageConfigStorageConfigArgs.builder()
///                 .s3Config(InstanceStorageConfigStorageConfigS3ConfigArgs.builder()
///                     .bucketName(exampleAwsS3Bucket.id())
///                     .bucketPrefix("example")
///                     .build())
///                 .storageType("S3")
///                 .build())
///             .instanceId(exampleAwsConnectInstance.id())
///             .resourceType("CHAT_TRANSCRIPTS")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:connect:InstanceStorageConfig
///     properties:
///       storageConfig:
///         s3Config:
///           bucketName: ${exampleAwsS3Bucket.id}
///           bucketPrefix: example
///         storageType: S3
///       instanceId: ${exampleAwsConnectInstance.id}
///       resourceType: CHAT_TRANSCRIPTS
/// ```
///
///
/// ### Storage Config S3 Config with Encryption Config
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.connect.InstanceStorageConfig("example", {
///     storageConfig: {
///         s3Config: {
///             encryptionConfig: {
///                 encryptionType: "KMS",
///                 keyId: exampleAwsKmsKey.arn,
///             },
///             bucketName: exampleAwsS3Bucket.id,
///             bucketPrefix: "example",
///         },
///         storageType: "S3",
///     },
///     instanceId: exampleAwsConnectInstance.id,
///     resourceType: "CHAT_TRANSCRIPTS",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.connect.InstanceStorageConfig("example",
///     storage_config={
///         "s3_config": {
///             "encryption_config": {
///                 "encryption_type": "KMS",
///                 "key_id": example_aws_kms_key["arn"],
///             },
///             "bucket_name": example_aws_s3_bucket["id"],
///             "bucket_prefix": "example",
///         },
///         "storage_type": "S3",
///     },
///     instance_id=example_aws_connect_instance["id"],
///     resource_type="CHAT_TRANSCRIPTS")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Connect.InstanceStorageConfig("example", new()
///     {
///         StorageConfig = new Aws.Connect.Inputs.InstanceStorageConfigStorageConfigArgs
///         {
///             S3Config = new Aws.Connect.Inputs.InstanceStorageConfigStorageConfigS3ConfigArgs
///             {
///                 EncryptionConfig = new Aws.Connect.Inputs.InstanceStorageConfigStorageConfigS3ConfigEncryptionConfigArgs
///                 {
///                     EncryptionType = "KMS",
///                     KeyId = exampleAwsKmsKey.Arn,
///                 },
///                 BucketName = exampleAwsS3Bucket.Id,
///                 BucketPrefix = "example",
///             },
///             StorageType = "S3",
///         },
///         InstanceId = exampleAwsConnectInstance.Id,
///         ResourceType = "CHAT_TRANSCRIPTS",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/connect"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := connect.NewInstanceStorageConfig(ctx, "example", &connect.InstanceStorageConfigArgs{
/// 			StorageConfig: &connect.InstanceStorageConfigStorageConfigArgs{
/// 				S3Config: &connect.InstanceStorageConfigStorageConfigS3ConfigArgs{
/// 					EncryptionConfig: &connect.InstanceStorageConfigStorageConfigS3ConfigEncryptionConfigArgs{
/// 						EncryptionType: pulumi.String("KMS"),
/// 						KeyId:          pulumi.Any(exampleAwsKmsKey.Arn),
/// 					},
/// 					BucketName:   pulumi.Any(exampleAwsS3Bucket.Id),
/// 					BucketPrefix: pulumi.String("example"),
/// 				},
/// 				StorageType: pulumi.String("S3"),
/// 			},
/// 			InstanceId:   pulumi.Any(exampleAwsConnectInstance.Id),
/// 			ResourceType: pulumi.String("CHAT_TRANSCRIPTS"),
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
/// resource "aws_connect_instancestorageconfig" "example" {
///   storage_config = {
///     s3_config = {
///       encryption_config = {
///         encryption_type = "KMS"
///         key_id          = exampleAwsKmsKey.arn
///       }
///       bucket_name   = exampleAwsS3Bucket.id
///       bucket_prefix = "example"
///     }
///     storage_type = "S3"
///   }
///   instance_id   = exampleAwsConnectInstance.id
///   resource_type = "CHAT_TRANSCRIPTS"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.connect.InstanceStorageConfig;
/// import com.pulumi.aws.connect.InstanceStorageConfigArgs;
/// import com.pulumi.aws.connect.inputs.InstanceStorageConfigStorageConfigArgs;
/// import com.pulumi.aws.connect.inputs.InstanceStorageConfigStorageConfigS3ConfigArgs;
/// import com.pulumi.aws.connect.inputs.InstanceStorageConfigStorageConfigS3ConfigEncryptionConfigArgs;
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
///         var example = new InstanceStorageConfig("example", InstanceStorageConfigArgs.builder()
///             .storageConfig(InstanceStorageConfigStorageConfigArgs.builder()
///                 .s3Config(InstanceStorageConfigStorageConfigS3ConfigArgs.builder()
///                     .encryptionConfig(InstanceStorageConfigStorageConfigS3ConfigEncryptionConfigArgs.builder()
///                         .encryptionType("KMS")
///                         .keyId(exampleAwsKmsKey.arn())
///                         .build())
///                     .bucketName(exampleAwsS3Bucket.id())
///                     .bucketPrefix("example")
///                     .build())
///                 .storageType("S3")
///                 .build())
///             .instanceId(exampleAwsConnectInstance.id())
///             .resourceType("CHAT_TRANSCRIPTS")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:connect:InstanceStorageConfig
///     properties:
///       storageConfig:
///         s3Config:
///           encryptionConfig:
///             encryptionType: KMS
///             keyId: ${exampleAwsKmsKey.arn}
///           bucketName: ${exampleAwsS3Bucket.id}
///           bucketPrefix: example
///         storageType: S3
///       instanceId: ${exampleAwsConnectInstance.id}
///       resourceType: CHAT_TRANSCRIPTS
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Amazon Connect Instance Storage Configs using the `instanceId`, `associationId`, and `resourceType` separated by a colon (`:`). For example:
///
/// ```sh
/// $ pulumi import aws:connect/instanceStorageConfig:InstanceStorageConfig example f1288a1f-6193-445a-b47e-af739b2:c1d4e5f6-1b3c-1b3c-1b3c-c1d4e5f6c1d4e5:CHAT_TRANSCRIPTS
/// ```
class InstanceStorageConfig extends pulumi.CustomResource {
  /// The existing association identifier that uniquely identifies the resource type and storage config for the given instance ID.
  late final pulumi.Output<String> associationId;
  /// Specifies the identifier of the hosting Amazon Connect Instance.
  late final pulumi.Output<String> instanceId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// A valid resource type. Valid Values: `AGENT_EVENTS` | `ATTACHMENTS` | `CALL_RECORDINGS` | `CHAT_TRANSCRIPTS` | `CONTACT_EVALUATIONS` | `CONTACT_TRACE_RECORDS` | `EMAIL_MESSAGES` | `MEDIA_STREAMS` | `REAL_TIME_CONTACT_ANALYSIS_CHAT_SEGMENTS` | `REAL_TIME_CONTACT_ANALYSIS_SEGMENTS` | `REAL_TIME_CONTACT_ANALYSIS_VOICE_SEGMENTS` | `SCHEDULED_REPORTS` | `SCREEN_RECORDINGS`.
  late final pulumi.Output<String> resourceType;
  /// Specifies the storage configuration options for the Connect Instance. Documented below.
  late final pulumi.Output<InstanceStorageConfigStorageConfig> storageConfig;

  /// Creates a new [InstanceStorageConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InstanceStorageConfig]. {@macro pulumi_connect_instance_storage_config_instance_storage_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InstanceStorageConfig(
    String name, {
    InstanceStorageConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:connect/instanceStorageConfig:InstanceStorageConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    associationId = registerOutput<String>('associationId');
    instanceId = registerOutput<String>('instanceId');
    region = registerOutput<String>('region');
    resourceType = registerOutput<String>('resourceType');
    storageConfig = registerOutput<InstanceStorageConfigStorageConfig>('storageConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceStorageConfigStorageConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [InstanceStorageConfig] resource's state with the given [name] and [id].
  static InstanceStorageConfig get(
    String name,
    pulumi.Input<String> id, {
    InstanceStorageConfigState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return InstanceStorageConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  InstanceStorageConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:connect/instanceStorageConfig:InstanceStorageConfig',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    associationId = registerOutput<String>('associationId');
    instanceId = registerOutput<String>('instanceId');
    region = registerOutput<String>('region');
    resourceType = registerOutput<String>('resourceType');
    storageConfig = registerOutput<InstanceStorageConfigStorageConfig>('storageConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceStorageConfigStorageConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [InstanceStorageConfig] resource.
  InstanceStorageConfig.reference(String urn)
    : super(
        'aws:connect/instanceStorageConfig:InstanceStorageConfig',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    associationId = registerOutput<String>('associationId');
    instanceId = registerOutput<String>('instanceId');
    region = registerOutput<String>('region');
    resourceType = registerOutput<String>('resourceType');
    storageConfig = registerOutput<InstanceStorageConfigStorageConfig>('storageConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceStorageConfigStorageConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
