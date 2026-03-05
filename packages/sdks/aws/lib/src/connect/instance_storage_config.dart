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
///     instanceId: exampleAwsConnectInstance.id,
///     resourceType: "CONTACT_TRACE_RECORDS",
///     storageConfig: {
///         kinesisFirehoseConfig: {
///             firehoseArn: exampleAwsKinesisFirehoseDeliveryStream.arn,
///         },
///         storageType: "KINESIS_FIREHOSE",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.connect.InstanceStorageConfig("example",
///     instance_id=example_aws_connect_instance["id"],
///     resource_type="CONTACT_TRACE_RECORDS",
///     storage_config={
///         "kinesis_firehose_config": {
///             "firehose_arn": example_aws_kinesis_firehose_delivery_stream["arn"],
///         },
///         "storage_type": "KINESIS_FIREHOSE",
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
///     var example = new Aws.Connect.InstanceStorageConfig("example", new()
///     {
///         InstanceId = exampleAwsConnectInstance.Id,
///         ResourceType = "CONTACT_TRACE_RECORDS",
///         StorageConfig = new Aws.Connect.Inputs.InstanceStorageConfigStorageConfigArgs
///         {
///             KinesisFirehoseConfig = new Aws.Connect.Inputs.InstanceStorageConfigStorageConfigKinesisFirehoseConfigArgs
///             {
///                 FirehoseArn = exampleAwsKinesisFirehoseDeliveryStream.Arn,
///             },
///             StorageType = "KINESIS_FIREHOSE",
///         },
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
/// 			InstanceId:   pulumi.Any(exampleAwsConnectInstance.Id),
/// 			ResourceType: pulumi.String("CONTACT_TRACE_RECORDS"),
/// 			StorageConfig: &connect.InstanceStorageConfigStorageConfigArgs{
/// 				KinesisFirehoseConfig: &connect.InstanceStorageConfigStorageConfigKinesisFirehoseConfigArgs{
/// 					FirehoseArn: pulumi.Any(exampleAwsKinesisFirehoseDeliveryStream.Arn),
/// 				},
/// 				StorageType: pulumi.String("KINESIS_FIREHOSE"),
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
/// import com.pulumi.aws.connect.InstanceStorageConfig;
/// import com.pulumi.aws.connect.InstanceStorageConfigArgs;
/// import com.pulumi.aws.connect.inputs.InstanceStorageConfigStorageConfigArgs;
/// import com.pulumi.aws.connect.inputs.InstanceStorageConfigStorageConfigKinesisFirehoseConfigArgs;
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
///         var example = new InstanceStorageConfig("example", InstanceStorageConfigArgs.builder()
///             .instanceId(exampleAwsConnectInstance.id())
///             .resourceType("CONTACT_TRACE_RECORDS")
///             .storageConfig(InstanceStorageConfigStorageConfigArgs.builder()
///                 .kinesisFirehoseConfig(InstanceStorageConfigStorageConfigKinesisFirehoseConfigArgs.builder()
///                     .firehoseArn(exampleAwsKinesisFirehoseDeliveryStream.arn())
///                     .build())
///                 .storageType("KINESIS_FIREHOSE")
///                 .build())
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
///       instanceId: ${exampleAwsConnectInstance.id}
///       resourceType: CONTACT_TRACE_RECORDS
///       storageConfig:
///         kinesisFirehoseConfig:
///           firehoseArn: ${exampleAwsKinesisFirehoseDeliveryStream.arn}
///         storageType: KINESIS_FIREHOSE
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
///     instanceId: exampleAwsConnectInstance.id,
///     resourceType: "CONTACT_TRACE_RECORDS",
///     storageConfig: {
///         kinesisStreamConfig: {
///             streamArn: exampleAwsKinesisStream.arn,
///         },
///         storageType: "KINESIS_STREAM",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.connect.InstanceStorageConfig("example",
///     instance_id=example_aws_connect_instance["id"],
///     resource_type="CONTACT_TRACE_RECORDS",
///     storage_config={
///         "kinesis_stream_config": {
///             "stream_arn": example_aws_kinesis_stream["arn"],
///         },
///         "storage_type": "KINESIS_STREAM",
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
///     var example = new Aws.Connect.InstanceStorageConfig("example", new()
///     {
///         InstanceId = exampleAwsConnectInstance.Id,
///         ResourceType = "CONTACT_TRACE_RECORDS",
///         StorageConfig = new Aws.Connect.Inputs.InstanceStorageConfigStorageConfigArgs
///         {
///             KinesisStreamConfig = new Aws.Connect.Inputs.InstanceStorageConfigStorageConfigKinesisStreamConfigArgs
///             {
///                 StreamArn = exampleAwsKinesisStream.Arn,
///             },
///             StorageType = "KINESIS_STREAM",
///         },
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
/// 			InstanceId:   pulumi.Any(exampleAwsConnectInstance.Id),
/// 			ResourceType: pulumi.String("CONTACT_TRACE_RECORDS"),
/// 			StorageConfig: &connect.InstanceStorageConfigStorageConfigArgs{
/// 				KinesisStreamConfig: &connect.InstanceStorageConfigStorageConfigKinesisStreamConfigArgs{
/// 					StreamArn: pulumi.Any(exampleAwsKinesisStream.Arn),
/// 				},
/// 				StorageType: pulumi.String("KINESIS_STREAM"),
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
/// import com.pulumi.aws.connect.InstanceStorageConfig;
/// import com.pulumi.aws.connect.InstanceStorageConfigArgs;
/// import com.pulumi.aws.connect.inputs.InstanceStorageConfigStorageConfigArgs;
/// import com.pulumi.aws.connect.inputs.InstanceStorageConfigStorageConfigKinesisStreamConfigArgs;
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
///         var example = new InstanceStorageConfig("example", InstanceStorageConfigArgs.builder()
///             .instanceId(exampleAwsConnectInstance.id())
///             .resourceType("CONTACT_TRACE_RECORDS")
///             .storageConfig(InstanceStorageConfigStorageConfigArgs.builder()
///                 .kinesisStreamConfig(InstanceStorageConfigStorageConfigKinesisStreamConfigArgs.builder()
///                     .streamArn(exampleAwsKinesisStream.arn())
///                     .build())
///                 .storageType("KINESIS_STREAM")
///                 .build())
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
///       instanceId: ${exampleAwsConnectInstance.id}
///       resourceType: CONTACT_TRACE_RECORDS
///       storageConfig:
///         kinesisStreamConfig:
///           streamArn: ${exampleAwsKinesisStream.arn}
///         storageType: KINESIS_STREAM
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
///     instanceId: exampleAwsConnectInstance.id,
///     resourceType: "MEDIA_STREAMS",
///     storageConfig: {
///         kinesisVideoStreamConfig: {
///             prefix: "example",
///             retentionPeriodHours: 3,
///             encryptionConfig: {
///                 encryptionType: "KMS",
///                 keyId: exampleAwsKmsKey.arn,
///             },
///         },
///         storageType: "KINESIS_VIDEO_STREAM",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.connect.InstanceStorageConfig("example",
///     instance_id=example_aws_connect_instance["id"],
///     resource_type="MEDIA_STREAMS",
///     storage_config={
///         "kinesis_video_stream_config": {
///             "prefix": "example",
///             "retention_period_hours": 3,
///             "encryption_config": {
///                 "encryption_type": "KMS",
///                 "key_id": example_aws_kms_key["arn"],
///             },
///         },
///         "storage_type": "KINESIS_VIDEO_STREAM",
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
///     var example = new Aws.Connect.InstanceStorageConfig("example", new()
///     {
///         InstanceId = exampleAwsConnectInstance.Id,
///         ResourceType = "MEDIA_STREAMS",
///         StorageConfig = new Aws.Connect.Inputs.InstanceStorageConfigStorageConfigArgs
///         {
///             KinesisVideoStreamConfig = new Aws.Connect.Inputs.InstanceStorageConfigStorageConfigKinesisVideoStreamConfigArgs
///             {
///                 Prefix = "example",
///                 RetentionPeriodHours = 3,
///                 EncryptionConfig = new Aws.Connect.Inputs.InstanceStorageConfigStorageConfigKinesisVideoStreamConfigEncryptionConfigArgs
///                 {
///                     EncryptionType = "KMS",
///                     KeyId = exampleAwsKmsKey.Arn,
///                 },
///             },
///             StorageType = "KINESIS_VIDEO_STREAM",
///         },
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
/// 			InstanceId:   pulumi.Any(exampleAwsConnectInstance.Id),
/// 			ResourceType: pulumi.String("MEDIA_STREAMS"),
/// 			StorageConfig: &connect.InstanceStorageConfigStorageConfigArgs{
/// 				KinesisVideoStreamConfig: &connect.InstanceStorageConfigStorageConfigKinesisVideoStreamConfigArgs{
/// 					Prefix:               pulumi.String("example"),
/// 					RetentionPeriodHours: pulumi.Int(3),
/// 					EncryptionConfig: &connect.InstanceStorageConfigStorageConfigKinesisVideoStreamConfigEncryptionConfigArgs{
/// 						EncryptionType: pulumi.String("KMS"),
/// 						KeyId:          pulumi.Any(exampleAwsKmsKey.Arn),
/// 					},
/// 				},
/// 				StorageType: pulumi.String("KINESIS_VIDEO_STREAM"),
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
/// import com.pulumi.aws.connect.InstanceStorageConfig;
/// import com.pulumi.aws.connect.InstanceStorageConfigArgs;
/// import com.pulumi.aws.connect.inputs.InstanceStorageConfigStorageConfigArgs;
/// import com.pulumi.aws.connect.inputs.InstanceStorageConfigStorageConfigKinesisVideoStreamConfigArgs;
/// import com.pulumi.aws.connect.inputs.InstanceStorageConfigStorageConfigKinesisVideoStreamConfigEncryptionConfigArgs;
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
///         var example = new InstanceStorageConfig("example", InstanceStorageConfigArgs.builder()
///             .instanceId(exampleAwsConnectInstance.id())
///             .resourceType("MEDIA_STREAMS")
///             .storageConfig(InstanceStorageConfigStorageConfigArgs.builder()
///                 .kinesisVideoStreamConfig(InstanceStorageConfigStorageConfigKinesisVideoStreamConfigArgs.builder()
///                     .prefix("example")
///                     .retentionPeriodHours(3)
///                     .encryptionConfig(InstanceStorageConfigStorageConfigKinesisVideoStreamConfigEncryptionConfigArgs.builder()
///                         .encryptionType("KMS")
///                         .keyId(exampleAwsKmsKey.arn())
///                         .build())
///                     .build())
///                 .storageType("KINESIS_VIDEO_STREAM")
///                 .build())
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
///       instanceId: ${exampleAwsConnectInstance.id}
///       resourceType: MEDIA_STREAMS
///       storageConfig:
///         kinesisVideoStreamConfig:
///           prefix: example
///           retentionPeriodHours: 3
///           encryptionConfig:
///             encryptionType: KMS
///             keyId: ${exampleAwsKmsKey.arn}
///         storageType: KINESIS_VIDEO_STREAM
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
///     instanceId: exampleAwsConnectInstance.id,
///     resourceType: "CHAT_TRANSCRIPTS",
///     storageConfig: {
///         s3Config: {
///             bucketName: exampleAwsS3Bucket.id,
///             bucketPrefix: "example",
///         },
///         storageType: "S3",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.connect.InstanceStorageConfig("example",
///     instance_id=example_aws_connect_instance["id"],
///     resource_type="CHAT_TRANSCRIPTS",
///     storage_config={
///         "s3_config": {
///             "bucket_name": example_aws_s3_bucket["id"],
///             "bucket_prefix": "example",
///         },
///         "storage_type": "S3",
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
///     var example = new Aws.Connect.InstanceStorageConfig("example", new()
///     {
///         InstanceId = exampleAwsConnectInstance.Id,
///         ResourceType = "CHAT_TRANSCRIPTS",
///         StorageConfig = new Aws.Connect.Inputs.InstanceStorageConfigStorageConfigArgs
///         {
///             S3Config = new Aws.Connect.Inputs.InstanceStorageConfigStorageConfigS3ConfigArgs
///             {
///                 BucketName = exampleAwsS3Bucket.Id,
///                 BucketPrefix = "example",
///             },
///             StorageType = "S3",
///         },
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
/// 			InstanceId:   pulumi.Any(exampleAwsConnectInstance.Id),
/// 			ResourceType: pulumi.String("CHAT_TRANSCRIPTS"),
/// 			StorageConfig: &connect.InstanceStorageConfigStorageConfigArgs{
/// 				S3Config: &connect.InstanceStorageConfigStorageConfigS3ConfigArgs{
/// 					BucketName:   pulumi.Any(exampleAwsS3Bucket.Id),
/// 					BucketPrefix: pulumi.String("example"),
/// 				},
/// 				StorageType: pulumi.String("S3"),
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
/// import com.pulumi.aws.connect.InstanceStorageConfig;
/// import com.pulumi.aws.connect.InstanceStorageConfigArgs;
/// import com.pulumi.aws.connect.inputs.InstanceStorageConfigStorageConfigArgs;
/// import com.pulumi.aws.connect.inputs.InstanceStorageConfigStorageConfigS3ConfigArgs;
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
///         var example = new InstanceStorageConfig("example", InstanceStorageConfigArgs.builder()
///             .instanceId(exampleAwsConnectInstance.id())
///             .resourceType("CHAT_TRANSCRIPTS")
///             .storageConfig(InstanceStorageConfigStorageConfigArgs.builder()
///                 .s3Config(InstanceStorageConfigStorageConfigS3ConfigArgs.builder()
///                     .bucketName(exampleAwsS3Bucket.id())
///                     .bucketPrefix("example")
///                     .build())
///                 .storageType("S3")
///                 .build())
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
///       instanceId: ${exampleAwsConnectInstance.id}
///       resourceType: CHAT_TRANSCRIPTS
///       storageConfig:
///         s3Config:
///           bucketName: ${exampleAwsS3Bucket.id}
///           bucketPrefix: example
///         storageType: S3
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
///     instanceId: exampleAwsConnectInstance.id,
///     resourceType: "CHAT_TRANSCRIPTS",
///     storageConfig: {
///         s3Config: {
///             bucketName: exampleAwsS3Bucket.id,
///             bucketPrefix: "example",
///             encryptionConfig: {
///                 encryptionType: "KMS",
///                 keyId: exampleAwsKmsKey.arn,
///             },
///         },
///         storageType: "S3",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.connect.InstanceStorageConfig("example",
///     instance_id=example_aws_connect_instance["id"],
///     resource_type="CHAT_TRANSCRIPTS",
///     storage_config={
///         "s3_config": {
///             "bucket_name": example_aws_s3_bucket["id"],
///             "bucket_prefix": "example",
///             "encryption_config": {
///                 "encryption_type": "KMS",
///                 "key_id": example_aws_kms_key["arn"],
///             },
///         },
///         "storage_type": "S3",
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
///     var example = new Aws.Connect.InstanceStorageConfig("example", new()
///     {
///         InstanceId = exampleAwsConnectInstance.Id,
///         ResourceType = "CHAT_TRANSCRIPTS",
///         StorageConfig = new Aws.Connect.Inputs.InstanceStorageConfigStorageConfigArgs
///         {
///             S3Config = new Aws.Connect.Inputs.InstanceStorageConfigStorageConfigS3ConfigArgs
///             {
///                 BucketName = exampleAwsS3Bucket.Id,
///                 BucketPrefix = "example",
///                 EncryptionConfig = new Aws.Connect.Inputs.InstanceStorageConfigStorageConfigS3ConfigEncryptionConfigArgs
///                 {
///                     EncryptionType = "KMS",
///                     KeyId = exampleAwsKmsKey.Arn,
///                 },
///             },
///             StorageType = "S3",
///         },
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
/// 			InstanceId:   pulumi.Any(exampleAwsConnectInstance.Id),
/// 			ResourceType: pulumi.String("CHAT_TRANSCRIPTS"),
/// 			StorageConfig: &connect.InstanceStorageConfigStorageConfigArgs{
/// 				S3Config: &connect.InstanceStorageConfigStorageConfigS3ConfigArgs{
/// 					BucketName:   pulumi.Any(exampleAwsS3Bucket.Id),
/// 					BucketPrefix: pulumi.String("example"),
/// 					EncryptionConfig: &connect.InstanceStorageConfigStorageConfigS3ConfigEncryptionConfigArgs{
/// 						EncryptionType: pulumi.String("KMS"),
/// 						KeyId:          pulumi.Any(exampleAwsKmsKey.Arn),
/// 					},
/// 				},
/// 				StorageType: pulumi.String("S3"),
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
/// import com.pulumi.aws.connect.InstanceStorageConfig;
/// import com.pulumi.aws.connect.InstanceStorageConfigArgs;
/// import com.pulumi.aws.connect.inputs.InstanceStorageConfigStorageConfigArgs;
/// import com.pulumi.aws.connect.inputs.InstanceStorageConfigStorageConfigS3ConfigArgs;
/// import com.pulumi.aws.connect.inputs.InstanceStorageConfigStorageConfigS3ConfigEncryptionConfigArgs;
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
///         var example = new InstanceStorageConfig("example", InstanceStorageConfigArgs.builder()
///             .instanceId(exampleAwsConnectInstance.id())
///             .resourceType("CHAT_TRANSCRIPTS")
///             .storageConfig(InstanceStorageConfigStorageConfigArgs.builder()
///                 .s3Config(InstanceStorageConfigStorageConfigS3ConfigArgs.builder()
///                     .bucketName(exampleAwsS3Bucket.id())
///                     .bucketPrefix("example")
///                     .encryptionConfig(InstanceStorageConfigStorageConfigS3ConfigEncryptionConfigArgs.builder()
///                         .encryptionType("KMS")
///                         .keyId(exampleAwsKmsKey.arn())
///                         .build())
///                     .build())
///                 .storageType("S3")
///                 .build())
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
///       instanceId: ${exampleAwsConnectInstance.id}
///       resourceType: CHAT_TRANSCRIPTS
///       storageConfig:
///         s3Config:
///           bucketName: ${exampleAwsS3Bucket.id}
///           bucketPrefix: example
///           encryptionConfig:
///             encryptionType: KMS
///             keyId: ${exampleAwsKmsKey.arn}
///         storageType: S3
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Amazon Connect Instance Storage Configs using the `instance_id`, `association_id`, and `resource_type` separated by a colon (`:`). For example:
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
         options ?? pulumi.CustomResourceOptions(),
       ) {
    associationId = registerOutput<String>('associationId');
    instanceId = registerOutput<String>('instanceId');
    region = registerOutput<String>('region');
    resourceType = registerOutput<String>('resourceType');
    storageConfig = registerOutput<InstanceStorageConfigStorageConfig>(
      'storageConfig',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return InstanceStorageConfigStorageConfig.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
  }

  /// Gets an existing [InstanceStorageConfig] resource's state with the given [name] and [id].
  static InstanceStorageConfig get(
    String name,
    pulumi.Input<String> id, {
    InstanceStorageConfigState? state,
  }) {
    return InstanceStorageConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
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
    storageConfig = registerOutput<InstanceStorageConfigStorageConfig>(
      'storageConfig',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return InstanceStorageConfigStorageConfig.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
  }
}
