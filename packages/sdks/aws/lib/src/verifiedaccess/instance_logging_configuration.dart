import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_logging_configuration_access_logs.dart';
import 'instance_logging_configuration_args.dart';
import 'instance_logging_configuration_state.dart';

/// Resource for managing a Verified Access Logging Configuration.
///
/// &gt; Deletion of this resource resets the Verified Access Instance Logging Configuration to its default values.
///
/// ## Example Usage
///
/// ### With CloudWatch Logging
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.verifiedaccess.InstanceLoggingConfiguration("example", {
///     accessLogs: {
///         cloudwatchLogs: {
///             enabled: true,
///             logGroup: exampleAwsCloudwatchLogGroup.id,
///         },
///     },
///     verifiedaccessInstanceId: exampleAwsVerifiedaccessInstance.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.verifiedaccess.InstanceLoggingConfiguration("example",
///     access_logs={
///         "cloudwatch_logs": {
///             "enabled": True,
///             "log_group": example_aws_cloudwatch_log_group["id"],
///         },
///     },
///     verifiedaccess_instance_id=example_aws_verifiedaccess_instance["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.VerifiedAccess.InstanceLoggingConfiguration("example", new()
///     {
///         AccessLogs = new Aws.VerifiedAccess.Inputs.InstanceLoggingConfigurationAccessLogsArgs
///         {
///             CloudwatchLogs = new Aws.VerifiedAccess.Inputs.InstanceLoggingConfigurationAccessLogsCloudwatchLogsArgs
///             {
///                 Enabled = true,
///                 LogGroup = exampleAwsCloudwatchLogGroup.Id,
///             },
///         },
///         VerifiedaccessInstanceId = exampleAwsVerifiedaccessInstance.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/verifiedaccess"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := verifiedaccess.NewInstanceLoggingConfiguration(ctx, "example", &verifiedaccess.InstanceLoggingConfigurationArgs{
/// 			AccessLogs: &verifiedaccess.InstanceLoggingConfigurationAccessLogsArgs{
/// 				CloudwatchLogs: &verifiedaccess.InstanceLoggingConfigurationAccessLogsCloudwatchLogsArgs{
/// 					Enabled:  pulumi.Bool(true),
/// 					LogGroup: pulumi.Any(exampleAwsCloudwatchLogGroup.Id),
/// 				},
/// 			},
/// 			VerifiedaccessInstanceId: pulumi.Any(exampleAwsVerifiedaccessInstance.Id),
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
/// resource "aws_verifiedaccess_instanceloggingconfiguration" "example" {
///   access_logs = {
///     cloudwatch_logs = {
///       enabled   = true
///       log_group = exampleAwsCloudwatchLogGroup.id
///     }
///   }
///   verifiedaccess_instance_id = exampleAwsVerifiedaccessInstance.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.verifiedaccess.InstanceLoggingConfiguration;
/// import com.pulumi.aws.verifiedaccess.InstanceLoggingConfigurationArgs;
/// import com.pulumi.aws.verifiedaccess.inputs.InstanceLoggingConfigurationAccessLogsArgs;
/// import com.pulumi.aws.verifiedaccess.inputs.InstanceLoggingConfigurationAccessLogsCloudwatchLogsArgs;
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
///         var example = new InstanceLoggingConfiguration("example", InstanceLoggingConfigurationArgs.builder()
///             .accessLogs(InstanceLoggingConfigurationAccessLogsArgs.builder()
///                 .cloudwatchLogs(InstanceLoggingConfigurationAccessLogsCloudwatchLogsArgs.builder()
///                     .enabled(true)
///                     .logGroup(exampleAwsCloudwatchLogGroup.id())
///                     .build())
///                 .build())
///             .verifiedaccessInstanceId(exampleAwsVerifiedaccessInstance.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:verifiedaccess:InstanceLoggingConfiguration
///     properties:
///       accessLogs:
///         cloudwatchLogs:
///           enabled: true
///           logGroup: ${exampleAwsCloudwatchLogGroup.id}
///       verifiedaccessInstanceId: ${exampleAwsVerifiedaccessInstance.id}
/// ```
///
///
/// ### With Kinesis Data Firehose Logging
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.verifiedaccess.InstanceLoggingConfiguration("example", {
///     accessLogs: {
///         kinesisDataFirehose: {
///             deliveryStream: exampleAwsKinesisFirehoseDeliveryStream.name,
///             enabled: true,
///         },
///     },
///     verifiedaccessInstanceId: exampleAwsVerifiedaccessInstance.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.verifiedaccess.InstanceLoggingConfiguration("example",
///     access_logs={
///         "kinesis_data_firehose": {
///             "delivery_stream": example_aws_kinesis_firehose_delivery_stream["name"],
///             "enabled": True,
///         },
///     },
///     verifiedaccess_instance_id=example_aws_verifiedaccess_instance["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.VerifiedAccess.InstanceLoggingConfiguration("example", new()
///     {
///         AccessLogs = new Aws.VerifiedAccess.Inputs.InstanceLoggingConfigurationAccessLogsArgs
///         {
///             KinesisDataFirehose = new Aws.VerifiedAccess.Inputs.InstanceLoggingConfigurationAccessLogsKinesisDataFirehoseArgs
///             {
///                 DeliveryStream = exampleAwsKinesisFirehoseDeliveryStream.Name,
///                 Enabled = true,
///             },
///         },
///         VerifiedaccessInstanceId = exampleAwsVerifiedaccessInstance.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/verifiedaccess"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := verifiedaccess.NewInstanceLoggingConfiguration(ctx, "example", &verifiedaccess.InstanceLoggingConfigurationArgs{
/// 			AccessLogs: &verifiedaccess.InstanceLoggingConfigurationAccessLogsArgs{
/// 				KinesisDataFirehose: &verifiedaccess.InstanceLoggingConfigurationAccessLogsKinesisDataFirehoseArgs{
/// 					DeliveryStream: pulumi.Any(exampleAwsKinesisFirehoseDeliveryStream.Name),
/// 					Enabled:        pulumi.Bool(true),
/// 				},
/// 			},
/// 			VerifiedaccessInstanceId: pulumi.Any(exampleAwsVerifiedaccessInstance.Id),
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
/// resource "aws_verifiedaccess_instanceloggingconfiguration" "example" {
///   access_logs = {
///     kinesis_data_firehose = {
///       delivery_stream = exampleAwsKinesisFirehoseDeliveryStream.name
///       enabled         = true
///     }
///   }
///   verifiedaccess_instance_id = exampleAwsVerifiedaccessInstance.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.verifiedaccess.InstanceLoggingConfiguration;
/// import com.pulumi.aws.verifiedaccess.InstanceLoggingConfigurationArgs;
/// import com.pulumi.aws.verifiedaccess.inputs.InstanceLoggingConfigurationAccessLogsArgs;
/// import com.pulumi.aws.verifiedaccess.inputs.InstanceLoggingConfigurationAccessLogsKinesisDataFirehoseArgs;
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
///         var example = new InstanceLoggingConfiguration("example", InstanceLoggingConfigurationArgs.builder()
///             .accessLogs(InstanceLoggingConfigurationAccessLogsArgs.builder()
///                 .kinesisDataFirehose(InstanceLoggingConfigurationAccessLogsKinesisDataFirehoseArgs.builder()
///                     .deliveryStream(exampleAwsKinesisFirehoseDeliveryStream.name())
///                     .enabled(true)
///                     .build())
///                 .build())
///             .verifiedaccessInstanceId(exampleAwsVerifiedaccessInstance.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:verifiedaccess:InstanceLoggingConfiguration
///     properties:
///       accessLogs:
///         kinesisDataFirehose:
///           deliveryStream: ${exampleAwsKinesisFirehoseDeliveryStream.name}
///           enabled: true
///       verifiedaccessInstanceId: ${exampleAwsVerifiedaccessInstance.id}
/// ```
///
///
/// ### With S3 logging
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.verifiedaccess.InstanceLoggingConfiguration("example", {
///     accessLogs: {
///         s3: {
///             bucketName: exampleAwsS3Bucket.id,
///             enabled: true,
///             prefix: "example",
///         },
///     },
///     verifiedaccessInstanceId: exampleAwsVerifiedaccessInstance.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.verifiedaccess.InstanceLoggingConfiguration("example",
///     access_logs={
///         "s3": {
///             "bucket_name": example_aws_s3_bucket["id"],
///             "enabled": True,
///             "prefix": "example",
///         },
///     },
///     verifiedaccess_instance_id=example_aws_verifiedaccess_instance["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.VerifiedAccess.InstanceLoggingConfiguration("example", new()
///     {
///         AccessLogs = new Aws.VerifiedAccess.Inputs.InstanceLoggingConfigurationAccessLogsArgs
///         {
///             S3 = new Aws.VerifiedAccess.Inputs.InstanceLoggingConfigurationAccessLogsS3Args
///             {
///                 BucketName = exampleAwsS3Bucket.Id,
///                 Enabled = true,
///                 Prefix = "example",
///             },
///         },
///         VerifiedaccessInstanceId = exampleAwsVerifiedaccessInstance.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/verifiedaccess"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := verifiedaccess.NewInstanceLoggingConfiguration(ctx, "example", &verifiedaccess.InstanceLoggingConfigurationArgs{
/// 			AccessLogs: &verifiedaccess.InstanceLoggingConfigurationAccessLogsArgs{
/// 				S3: &verifiedaccess.InstanceLoggingConfigurationAccessLogsS3Args{
/// 					BucketName: pulumi.Any(exampleAwsS3Bucket.Id),
/// 					Enabled:    pulumi.Bool(true),
/// 					Prefix:     pulumi.String("example"),
/// 				},
/// 			},
/// 			VerifiedaccessInstanceId: pulumi.Any(exampleAwsVerifiedaccessInstance.Id),
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
/// resource "aws_verifiedaccess_instanceloggingconfiguration" "example" {
///   access_logs = {
///     s3 = {
///       bucket_name = exampleAwsS3Bucket.id
///       enabled     = true
///       prefix      = "example"
///     }
///   }
///   verifiedaccess_instance_id = exampleAwsVerifiedaccessInstance.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.verifiedaccess.InstanceLoggingConfiguration;
/// import com.pulumi.aws.verifiedaccess.InstanceLoggingConfigurationArgs;
/// import com.pulumi.aws.verifiedaccess.inputs.InstanceLoggingConfigurationAccessLogsArgs;
/// import com.pulumi.aws.verifiedaccess.inputs.InstanceLoggingConfigurationAccessLogsS3Args;
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
///         var example = new InstanceLoggingConfiguration("example", InstanceLoggingConfigurationArgs.builder()
///             .accessLogs(InstanceLoggingConfigurationAccessLogsArgs.builder()
///                 .s3(InstanceLoggingConfigurationAccessLogsS3Args.builder()
///                     .bucketName(exampleAwsS3Bucket.id())
///                     .enabled(true)
///                     .prefix("example")
///                     .build())
///                 .build())
///             .verifiedaccessInstanceId(exampleAwsVerifiedaccessInstance.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:verifiedaccess:InstanceLoggingConfiguration
///     properties:
///       accessLogs:
///         s3:
///           bucketName: ${exampleAwsS3Bucket.id}
///           enabled: true
///           prefix: example
///       verifiedaccessInstanceId: ${exampleAwsVerifiedaccessInstance.id}
/// ```
///
///
/// ### With all three logging options
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.verifiedaccess.InstanceLoggingConfiguration("example", {
///     accessLogs: {
///         cloudwatchLogs: {
///             enabled: true,
///             logGroup: exampleAwsCloudwatchLogGroup.id,
///         },
///         kinesisDataFirehose: {
///             deliveryStream: exampleAwsKinesisFirehoseDeliveryStream.name,
///             enabled: true,
///         },
///         s3: {
///             bucketName: exampleAwsS3Bucket.id,
///             enabled: true,
///         },
///     },
///     verifiedaccessInstanceId: exampleAwsVerifiedaccessInstance.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.verifiedaccess.InstanceLoggingConfiguration("example",
///     access_logs={
///         "cloudwatch_logs": {
///             "enabled": True,
///             "log_group": example_aws_cloudwatch_log_group["id"],
///         },
///         "kinesis_data_firehose": {
///             "delivery_stream": example_aws_kinesis_firehose_delivery_stream["name"],
///             "enabled": True,
///         },
///         "s3": {
///             "bucket_name": example_aws_s3_bucket["id"],
///             "enabled": True,
///         },
///     },
///     verifiedaccess_instance_id=example_aws_verifiedaccess_instance["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.VerifiedAccess.InstanceLoggingConfiguration("example", new()
///     {
///         AccessLogs = new Aws.VerifiedAccess.Inputs.InstanceLoggingConfigurationAccessLogsArgs
///         {
///             CloudwatchLogs = new Aws.VerifiedAccess.Inputs.InstanceLoggingConfigurationAccessLogsCloudwatchLogsArgs
///             {
///                 Enabled = true,
///                 LogGroup = exampleAwsCloudwatchLogGroup.Id,
///             },
///             KinesisDataFirehose = new Aws.VerifiedAccess.Inputs.InstanceLoggingConfigurationAccessLogsKinesisDataFirehoseArgs
///             {
///                 DeliveryStream = exampleAwsKinesisFirehoseDeliveryStream.Name,
///                 Enabled = true,
///             },
///             S3 = new Aws.VerifiedAccess.Inputs.InstanceLoggingConfigurationAccessLogsS3Args
///             {
///                 BucketName = exampleAwsS3Bucket.Id,
///                 Enabled = true,
///             },
///         },
///         VerifiedaccessInstanceId = exampleAwsVerifiedaccessInstance.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/verifiedaccess"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := verifiedaccess.NewInstanceLoggingConfiguration(ctx, "example", &verifiedaccess.InstanceLoggingConfigurationArgs{
/// 			AccessLogs: &verifiedaccess.InstanceLoggingConfigurationAccessLogsArgs{
/// 				CloudwatchLogs: &verifiedaccess.InstanceLoggingConfigurationAccessLogsCloudwatchLogsArgs{
/// 					Enabled:  pulumi.Bool(true),
/// 					LogGroup: pulumi.Any(exampleAwsCloudwatchLogGroup.Id),
/// 				},
/// 				KinesisDataFirehose: &verifiedaccess.InstanceLoggingConfigurationAccessLogsKinesisDataFirehoseArgs{
/// 					DeliveryStream: pulumi.Any(exampleAwsKinesisFirehoseDeliveryStream.Name),
/// 					Enabled:        pulumi.Bool(true),
/// 				},
/// 				S3: &verifiedaccess.InstanceLoggingConfigurationAccessLogsS3Args{
/// 					BucketName: pulumi.Any(exampleAwsS3Bucket.Id),
/// 					Enabled:    pulumi.Bool(true),
/// 				},
/// 			},
/// 			VerifiedaccessInstanceId: pulumi.Any(exampleAwsVerifiedaccessInstance.Id),
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
/// resource "aws_verifiedaccess_instanceloggingconfiguration" "example" {
///   access_logs = {
///     cloudwatch_logs = {
///       enabled   = true
///       log_group = exampleAwsCloudwatchLogGroup.id
///     }
///     kinesis_data_firehose = {
///       delivery_stream = exampleAwsKinesisFirehoseDeliveryStream.name
///       enabled         = true
///     }
///     s3 = {
///       bucket_name = exampleAwsS3Bucket.id
///       enabled     = true
///     }
///   }
///   verifiedaccess_instance_id = exampleAwsVerifiedaccessInstance.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.verifiedaccess.InstanceLoggingConfiguration;
/// import com.pulumi.aws.verifiedaccess.InstanceLoggingConfigurationArgs;
/// import com.pulumi.aws.verifiedaccess.inputs.InstanceLoggingConfigurationAccessLogsArgs;
/// import com.pulumi.aws.verifiedaccess.inputs.InstanceLoggingConfigurationAccessLogsCloudwatchLogsArgs;
/// import com.pulumi.aws.verifiedaccess.inputs.InstanceLoggingConfigurationAccessLogsKinesisDataFirehoseArgs;
/// import com.pulumi.aws.verifiedaccess.inputs.InstanceLoggingConfigurationAccessLogsS3Args;
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
///         var example = new InstanceLoggingConfiguration("example", InstanceLoggingConfigurationArgs.builder()
///             .accessLogs(InstanceLoggingConfigurationAccessLogsArgs.builder()
///                 .cloudwatchLogs(InstanceLoggingConfigurationAccessLogsCloudwatchLogsArgs.builder()
///                     .enabled(true)
///                     .logGroup(exampleAwsCloudwatchLogGroup.id())
///                     .build())
///                 .kinesisDataFirehose(InstanceLoggingConfigurationAccessLogsKinesisDataFirehoseArgs.builder()
///                     .deliveryStream(exampleAwsKinesisFirehoseDeliveryStream.name())
///                     .enabled(true)
///                     .build())
///                 .s3(InstanceLoggingConfigurationAccessLogsS3Args.builder()
///                     .bucketName(exampleAwsS3Bucket.id())
///                     .enabled(true)
///                     .build())
///                 .build())
///             .verifiedaccessInstanceId(exampleAwsVerifiedaccessInstance.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:verifiedaccess:InstanceLoggingConfiguration
///     properties:
///       accessLogs:
///         cloudwatchLogs:
///           enabled: true
///           logGroup: ${exampleAwsCloudwatchLogGroup.id}
///         kinesisDataFirehose:
///           deliveryStream: ${exampleAwsKinesisFirehoseDeliveryStream.name}
///           enabled: true
///         s3:
///           bucketName: ${exampleAwsS3Bucket.id}
///           enabled: true
///       verifiedaccessInstanceId: ${exampleAwsVerifiedaccessInstance.id}
/// ```
///
///
/// ### With `includeTrustContext`
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.verifiedaccess.InstanceLoggingConfiguration("example", {
///     accessLogs: {
///         includeTrustContext: true,
///     },
///     verifiedaccessInstanceId: exampleAwsVerifiedaccessInstance.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.verifiedaccess.InstanceLoggingConfiguration("example",
///     access_logs={
///         "include_trust_context": True,
///     },
///     verifiedaccess_instance_id=example_aws_verifiedaccess_instance["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.VerifiedAccess.InstanceLoggingConfiguration("example", new()
///     {
///         AccessLogs = new Aws.VerifiedAccess.Inputs.InstanceLoggingConfigurationAccessLogsArgs
///         {
///             IncludeTrustContext = true,
///         },
///         VerifiedaccessInstanceId = exampleAwsVerifiedaccessInstance.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/verifiedaccess"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := verifiedaccess.NewInstanceLoggingConfiguration(ctx, "example", &verifiedaccess.InstanceLoggingConfigurationArgs{
/// 			AccessLogs: &verifiedaccess.InstanceLoggingConfigurationAccessLogsArgs{
/// 				IncludeTrustContext: pulumi.Bool(true),
/// 			},
/// 			VerifiedaccessInstanceId: pulumi.Any(exampleAwsVerifiedaccessInstance.Id),
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
/// resource "aws_verifiedaccess_instanceloggingconfiguration" "example" {
///   access_logs = {
///     include_trust_context = true
///   }
///   verifiedaccess_instance_id = exampleAwsVerifiedaccessInstance.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.verifiedaccess.InstanceLoggingConfiguration;
/// import com.pulumi.aws.verifiedaccess.InstanceLoggingConfigurationArgs;
/// import com.pulumi.aws.verifiedaccess.inputs.InstanceLoggingConfigurationAccessLogsArgs;
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
///         var example = new InstanceLoggingConfiguration("example", InstanceLoggingConfigurationArgs.builder()
///             .accessLogs(InstanceLoggingConfigurationAccessLogsArgs.builder()
///                 .includeTrustContext(true)
///                 .build())
///             .verifiedaccessInstanceId(exampleAwsVerifiedaccessInstance.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:verifiedaccess:InstanceLoggingConfiguration
///     properties:
///       accessLogs:
///         includeTrustContext: true
///       verifiedaccessInstanceId: ${exampleAwsVerifiedaccessInstance.id}
/// ```
///
///
/// ### With `logVersion`
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.verifiedaccess.InstanceLoggingConfiguration("example", {
///     accessLogs: {
///         logVersion: "ocsf-1.0.0-rc.2",
///     },
///     verifiedaccessInstanceId: exampleAwsVerifiedaccessInstance.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.verifiedaccess.InstanceLoggingConfiguration("example",
///     access_logs={
///         "log_version": "ocsf-1.0.0-rc.2",
///     },
///     verifiedaccess_instance_id=example_aws_verifiedaccess_instance["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.VerifiedAccess.InstanceLoggingConfiguration("example", new()
///     {
///         AccessLogs = new Aws.VerifiedAccess.Inputs.InstanceLoggingConfigurationAccessLogsArgs
///         {
///             LogVersion = "ocsf-1.0.0-rc.2",
///         },
///         VerifiedaccessInstanceId = exampleAwsVerifiedaccessInstance.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/verifiedaccess"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := verifiedaccess.NewInstanceLoggingConfiguration(ctx, "example", &verifiedaccess.InstanceLoggingConfigurationArgs{
/// 			AccessLogs: &verifiedaccess.InstanceLoggingConfigurationAccessLogsArgs{
/// 				LogVersion: pulumi.String("ocsf-1.0.0-rc.2"),
/// 			},
/// 			VerifiedaccessInstanceId: pulumi.Any(exampleAwsVerifiedaccessInstance.Id),
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
/// resource "aws_verifiedaccess_instanceloggingconfiguration" "example" {
///   access_logs = {
///     log_version = "ocsf-1.0.0-rc.2"
///   }
///   verifiedaccess_instance_id = exampleAwsVerifiedaccessInstance.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.verifiedaccess.InstanceLoggingConfiguration;
/// import com.pulumi.aws.verifiedaccess.InstanceLoggingConfigurationArgs;
/// import com.pulumi.aws.verifiedaccess.inputs.InstanceLoggingConfigurationAccessLogsArgs;
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
///         var example = new InstanceLoggingConfiguration("example", InstanceLoggingConfigurationArgs.builder()
///             .accessLogs(InstanceLoggingConfigurationAccessLogsArgs.builder()
///                 .logVersion("ocsf-1.0.0-rc.2")
///                 .build())
///             .verifiedaccessInstanceId(exampleAwsVerifiedaccessInstance.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:verifiedaccess:InstanceLoggingConfiguration
///     properties:
///       accessLogs:
///         logVersion: ocsf-1.0.0-rc.2
///       verifiedaccessInstanceId: ${exampleAwsVerifiedaccessInstance.id}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Verified Access Logging Configuration using the Verified Access Instance `id`. For example:
///
/// ```sh
/// $ pulumi import aws:verifiedaccess/instanceLoggingConfiguration:InstanceLoggingConfiguration example vai-1234567890abcdef0
/// ```
class InstanceLoggingConfiguration extends pulumi.CustomResource {
  /// A block that specifies the configuration options for Verified Access instances. Detailed below.
  late final pulumi.Output<InstanceLoggingConfigurationAccessLogs> accessLogs;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The ID of the Verified Access instance.
  late final pulumi.Output<String> verifiedaccessInstanceId;

  /// Creates a new [InstanceLoggingConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InstanceLoggingConfiguration]. {@macro pulumi_verifiedaccess_instance_logging_configuration_instance_logging_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InstanceLoggingConfiguration(
    String name, {
    InstanceLoggingConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:verifiedaccess/instanceLoggingConfiguration:InstanceLoggingConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessLogs = registerOutput<InstanceLoggingConfigurationAccessLogs>('accessLogs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceLoggingConfigurationAccessLogs.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    verifiedaccessInstanceId = registerOutput<String>('verifiedaccessInstanceId');
  }

  /// Gets an existing [InstanceLoggingConfiguration] resource's state with the given [name] and [id].
  static InstanceLoggingConfiguration get(
    String name,
    pulumi.Input<String> id, {
    InstanceLoggingConfigurationState? state,
  }) {
    return InstanceLoggingConfiguration._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  InstanceLoggingConfiguration._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:verifiedaccess/instanceLoggingConfiguration:InstanceLoggingConfiguration',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessLogs = registerOutput<InstanceLoggingConfigurationAccessLogs>('accessLogs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceLoggingConfigurationAccessLogs.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    verifiedaccessInstanceId = registerOutput<String>('verifiedaccessInstanceId');
  }
}
