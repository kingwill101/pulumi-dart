import 'package:pulumi/pulumi.dart' as pulumi;
import 'logging_configuration_args.dart';
import 'logging_configuration_destination_configuration.dart';
import 'logging_configuration_state.dart';

/// Resource for managing an AWS IVS (Interactive Video) Chat Logging Configuration.
///
/// ## Example Usage
///
/// ### Basic Usage - Logging to CloudWatch
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.cloudwatch.LogGroup("example", {});
/// const exampleLoggingConfiguration = new aws.ivschat.LoggingConfiguration("example", {destinationConfiguration: {
///     cloudwatchLogs: {
///         logGroupName: example.name,
///     },
/// }});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudwatch.LogGroup("example")
/// example_logging_configuration = aws.ivschat.LoggingConfiguration("example", destination_configuration={
///     "cloudwatch_logs": {
///         "log_group_name": example.name,
///     },
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
///     var example = new Aws.CloudWatch.LogGroup("example");
///
///     var exampleLoggingConfiguration = new Aws.IvsChat.LoggingConfiguration("example", new()
///     {
///         DestinationConfiguration = new Aws.IvsChat.Inputs.LoggingConfigurationDestinationConfigurationArgs
///         {
///             CloudwatchLogs = new Aws.IvsChat.Inputs.LoggingConfigurationDestinationConfigurationCloudwatchLogsArgs
///             {
///                 LogGroupName = example.Name,
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ivschat"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := cloudwatch.NewLogGroup(ctx, "example", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ivschat.NewLoggingConfiguration(ctx, "example", &ivschat.LoggingConfigurationArgs{
/// 			DestinationConfiguration: &ivschat.LoggingConfigurationDestinationConfigurationArgs{
/// 				CloudwatchLogs: &ivschat.LoggingConfigurationDestinationConfigurationCloudwatchLogsArgs{
/// 					LogGroupName: example.Name,
/// 				},
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
/// import com.pulumi.aws.cloudwatch.LogGroup;
/// import com.pulumi.aws.ivschat.LoggingConfiguration;
/// import com.pulumi.aws.ivschat.LoggingConfigurationArgs;
/// import com.pulumi.aws.ivschat.inputs.LoggingConfigurationDestinationConfigurationArgs;
/// import com.pulumi.aws.ivschat.inputs.LoggingConfigurationDestinationConfigurationCloudwatchLogsArgs;
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
///         var example = new LogGroup("example");
///
///         var exampleLoggingConfiguration = new LoggingConfiguration("exampleLoggingConfiguration", LoggingConfigurationArgs.builder()
///             .destinationConfiguration(LoggingConfigurationDestinationConfigurationArgs.builder()
///                 .cloudwatchLogs(LoggingConfigurationDestinationConfigurationCloudwatchLogsArgs.builder()
///                     .logGroupName(example.name())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:cloudwatch:LogGroup
///   exampleLoggingConfiguration:
///     type: aws:ivschat:LoggingConfiguration
///     name: example
///     properties:
///       destinationConfiguration:
///         cloudwatchLogs:
///           logGroupName: ${example.name}
/// ```
///
///
/// ### Basic Usage - Logging to Kinesis Firehose with Extended S3
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const exampleBucket = new aws.s3.Bucket("example", {bucketPrefix: "tf-ivschat-logging-bucket"});
/// const assumeRole = aws.iam.getPolicyDocument({
///     statements: [{
///         effect: "Allow",
///         principals: [{
///             type: "Service",
///             identifiers: ["firehose.amazonaws.com"],
///         }],
///         actions: ["sts:AssumeRole"],
///     }],
/// });
/// const exampleRole = new aws.iam.Role("example", {
///     name: "firehose_example_role",
///     assumeRolePolicy: assumeRole.then(assumeRole => assumeRole.json),
/// });
/// const example = new aws.kinesis.FirehoseDeliveryStream("example", {
///     name: "pulumi-kinesis-firehose-extended-s3-example-stream",
///     destination: "extended_s3",
///     extendedS3Configuration: {
///         roleArn: exampleRole.arn,
///         bucketArn: exampleBucket.arn,
///     },
///     tags: {
///         LogDeliveryEnabled: "true",
///     },
/// });
/// const exampleBucketAcl = new aws.s3.BucketAcl("example", {
///     bucket: exampleBucket.id,
///     acl: "private",
/// });
/// const exampleLoggingConfiguration = new aws.ivschat.LoggingConfiguration("example", {destinationConfiguration: {
///     firehose: {
///         deliveryStreamName: example.name,
///     },
/// }});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_bucket = aws.s3.Bucket("example", bucket_prefix="tf-ivschat-logging-bucket")
/// assume_role = aws.iam.get_policy_document(statements=[{
///     "effect": "Allow",
///     "principals": [{
///         "type": "Service",
///         "identifiers": ["firehose.amazonaws.com"],
///     }],
///     "actions": ["sts:AssumeRole"],
/// }])
/// example_role = aws.iam.Role("example",
///     name="firehose_example_role",
///     assume_role_policy=assume_role.json)
/// example = aws.kinesis.FirehoseDeliveryStream("example",
///     name="pulumi-kinesis-firehose-extended-s3-example-stream",
///     destination="extended_s3",
///     extended_s3_configuration={
///         "role_arn": example_role.arn,
///         "bucket_arn": example_bucket.arn,
///     },
///     tags={
///         "LogDeliveryEnabled": "true",
///     })
/// example_bucket_acl = aws.s3.BucketAcl("example",
///     bucket=example_bucket.id,
///     acl="private")
/// example_logging_configuration = aws.ivschat.LoggingConfiguration("example", destination_configuration={
///     "firehose": {
///         "delivery_stream_name": example.name,
///     },
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
///     var exampleBucket = new Aws.S3.Bucket("example", new()
///     {
///         BucketPrefix = "tf-ivschat-logging-bucket",
///     });
///
///     var assumeRole = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Effect = "Allow",
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
///                 Actions = new[]
///                 {
///                     "sts:AssumeRole",
///                 },
///             },
///         },
///     });
///
///     var exampleRole = new Aws.Iam.Role("example", new()
///     {
///         Name = "firehose_example_role",
///         AssumeRolePolicy = assumeRole.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
///     var example = new Aws.Kinesis.FirehoseDeliveryStream("example", new()
///     {
///         Name = "pulumi-kinesis-firehose-extended-s3-example-stream",
///         Destination = "extended_s3",
///         ExtendedS3Configuration = new Aws.Kinesis.Inputs.FirehoseDeliveryStreamExtendedS3ConfigurationArgs
///         {
///             RoleArn = exampleRole.Arn,
///             BucketArn = exampleBucket.Arn,
///         },
///         Tags =
///         {
///             { "LogDeliveryEnabled", "true" },
///         },
///     });
///
///     var exampleBucketAcl = new Aws.S3.BucketAcl("example", new()
///     {
///         Bucket = exampleBucket.Id,
///         Acl = "private",
///     });
///
///     var exampleLoggingConfiguration = new Aws.IvsChat.LoggingConfiguration("example", new()
///     {
///         DestinationConfiguration = new Aws.IvsChat.Inputs.LoggingConfigurationDestinationConfigurationArgs
///         {
///             Firehose = new Aws.IvsChat.Inputs.LoggingConfigurationDestinationConfigurationFirehoseArgs
///             {
///                 DeliveryStreamName = example.Name,
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ivschat"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kinesis"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		exampleBucket, err := s3.NewBucket(ctx, "example", &s3.BucketArgs{
/// 			BucketPrefix: pulumi.String("tf-ivschat-logging-bucket"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		assumeRole, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{
/// 					Effect: pulumi.StringRef("Allow"),
/// 					Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// 						{
/// 							Type: "Service",
/// 							Identifiers: []string{
/// 								"firehose.amazonaws.com",
/// 							},
/// 						},
/// 					},
/// 					Actions: []string{
/// 						"sts:AssumeRole",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleRole, err := iam.NewRole(ctx, "example", &iam.RoleArgs{
/// 			Name:             pulumi.String("firehose_example_role"),
/// 			AssumeRolePolicy: pulumi.String(assumeRole.Json),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := kinesis.NewFirehoseDeliveryStream(ctx, "example", &kinesis.FirehoseDeliveryStreamArgs{
/// 			Name:        pulumi.String("pulumi-kinesis-firehose-extended-s3-example-stream"),
/// 			Destination: pulumi.String("extended_s3"),
/// 			ExtendedS3Configuration: &kinesis.FirehoseDeliveryStreamExtendedS3ConfigurationArgs{
/// 				RoleArn:   exampleRole.Arn,
/// 				BucketArn: exampleBucket.Arn,
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"LogDeliveryEnabled": pulumi.String("true"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = s3.NewBucketAcl(ctx, "example", &s3.BucketAclArgs{
/// 			Bucket: exampleBucket.ID(),
/// 			Acl:    pulumi.String("private"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ivschat.NewLoggingConfiguration(ctx, "example", &ivschat.LoggingConfigurationArgs{
/// 			DestinationConfiguration: &ivschat.LoggingConfigurationDestinationConfigurationArgs{
/// 				Firehose: &ivschat.LoggingConfigurationDestinationConfigurationFirehoseArgs{
/// 					DeliveryStreamName: example.Name,
/// 				},
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
/// import com.pulumi.aws.s3.Bucket;
/// import com.pulumi.aws.s3.BucketArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.kinesis.FirehoseDeliveryStream;
/// import com.pulumi.aws.kinesis.FirehoseDeliveryStreamArgs;
/// import com.pulumi.aws.kinesis.inputs.FirehoseDeliveryStreamExtendedS3ConfigurationArgs;
/// import com.pulumi.aws.s3.BucketAcl;
/// import com.pulumi.aws.s3.BucketAclArgs;
/// import com.pulumi.aws.ivschat.LoggingConfiguration;
/// import com.pulumi.aws.ivschat.LoggingConfigurationArgs;
/// import com.pulumi.aws.ivschat.inputs.LoggingConfigurationDestinationConfigurationArgs;
/// import com.pulumi.aws.ivschat.inputs.LoggingConfigurationDestinationConfigurationFirehoseArgs;
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
///         var exampleBucket = new Bucket("exampleBucket", BucketArgs.builder()
///             .bucketPrefix("tf-ivschat-logging-bucket")
///             .build());
///
///         final var assumeRole = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .effect("Allow")
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("Service")
///                     .identifiers("firehose.amazonaws.com")
///                     .build())
///                 .actions("sts:AssumeRole")
///                 .build())
///             .build());
///
///         var exampleRole = new Role("exampleRole", RoleArgs.builder()
///             .name("firehose_example_role")
///             .assumeRolePolicy(assumeRole.json())
///             .build());
///
///         var example = new FirehoseDeliveryStream("example", FirehoseDeliveryStreamArgs.builder()
///             .name("pulumi-kinesis-firehose-extended-s3-example-stream")
///             .destination("extended_s3")
///             .extendedS3Configuration(FirehoseDeliveryStreamExtendedS3ConfigurationArgs.builder()
///                 .roleArn(exampleRole.arn())
///                 .bucketArn(exampleBucket.arn())
///                 .build())
///             .tags(Map.of("LogDeliveryEnabled", "true"))
///             .build());
///
///         var exampleBucketAcl = new BucketAcl("exampleBucketAcl", BucketAclArgs.builder()
///             .bucket(exampleBucket.id())
///             .acl("private")
///             .build());
///
///         var exampleLoggingConfiguration = new LoggingConfiguration("exampleLoggingConfiguration", LoggingConfigurationArgs.builder()
///             .destinationConfiguration(LoggingConfigurationDestinationConfigurationArgs.builder()
///                 .firehose(LoggingConfigurationDestinationConfigurationFirehoseArgs.builder()
///                     .deliveryStreamName(example.name())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:kinesis:FirehoseDeliveryStream
///     properties:
///       name: pulumi-kinesis-firehose-extended-s3-example-stream
///       destination: extended_s3
///       extendedS3Configuration:
///         roleArn: ${exampleRole.arn}
///         bucketArn: ${exampleBucket.arn}
///       tags:
///         LogDeliveryEnabled: 'true'
///   exampleBucket:
///     type: aws:s3:Bucket
///     name: example
///     properties:
///       bucketPrefix: tf-ivschat-logging-bucket
///   exampleBucketAcl:
///     type: aws:s3:BucketAcl
///     name: example
///     properties:
///       bucket: ${exampleBucket.id}
///       acl: private
///   exampleRole:
///     type: aws:iam:Role
///     name: example
///     properties:
///       name: firehose_example_role
///       assumeRolePolicy: ${assumeRole.json}
///   exampleLoggingConfiguration:
///     type: aws:ivschat:LoggingConfiguration
///     name: example
///     properties:
///       destinationConfiguration:
///         firehose:
///           deliveryStreamName: ${example.name}
/// variables:
///   assumeRole:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - effect: Allow
///             principals:
///               - type: Service
///                 identifiers:
///                   - firehose.amazonaws.com
///             actions:
///               - sts:AssumeRole
/// ```
///
///
/// ### Basic Usage - Logging to S3
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.s3.Bucket("example", {
///     bucketName: "tf-ivschat-logging",
///     forceDestroy: true,
/// });
/// const exampleLoggingConfiguration = new aws.ivschat.LoggingConfiguration("example", {destinationConfiguration: {
///     s3: {
///         bucketName: example.id,
///     },
/// }});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3.Bucket("example",
///     bucket_name="tf-ivschat-logging",
///     force_destroy=True)
/// example_logging_configuration = aws.ivschat.LoggingConfiguration("example", destination_configuration={
///     "s3": {
///         "bucket_name": example.id,
///     },
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
///     var example = new Aws.S3.Bucket("example", new()
///     {
///         BucketName = "tf-ivschat-logging",
///         ForceDestroy = true,
///     });
///
///     var exampleLoggingConfiguration = new Aws.IvsChat.LoggingConfiguration("example", new()
///     {
///         DestinationConfiguration = new Aws.IvsChat.Inputs.LoggingConfigurationDestinationConfigurationArgs
///         {
///             S3 = new Aws.IvsChat.Inputs.LoggingConfigurationDestinationConfigurationS3Args
///             {
///                 BucketName = example.Id,
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ivschat"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := s3.NewBucket(ctx, "example", &s3.BucketArgs{
/// 			BucketName:   "tf-ivschat-logging",
/// 			ForceDestroy: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ivschat.NewLoggingConfiguration(ctx, "example", &ivschat.LoggingConfigurationArgs{
/// 			DestinationConfiguration: &ivschat.LoggingConfigurationDestinationConfigurationArgs{
/// 				S3: &ivschat.LoggingConfigurationDestinationConfigurationS3Args{
/// 					BucketName: example.ID(),
/// 				},
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
/// import com.pulumi.aws.s3.Bucket;
/// import com.pulumi.aws.s3.BucketArgs;
/// import com.pulumi.aws.ivschat.LoggingConfiguration;
/// import com.pulumi.aws.ivschat.LoggingConfigurationArgs;
/// import com.pulumi.aws.ivschat.inputs.LoggingConfigurationDestinationConfigurationArgs;
/// import com.pulumi.aws.ivschat.inputs.LoggingConfigurationDestinationConfigurationS3Args;
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
///         var example = new Bucket("example", BucketArgs.builder()
///             .bucketName("tf-ivschat-logging")
///             .forceDestroy(true)
///             .build());
///
///         var exampleLoggingConfiguration = new LoggingConfiguration("exampleLoggingConfiguration", LoggingConfigurationArgs.builder()
///             .destinationConfiguration(LoggingConfigurationDestinationConfigurationArgs.builder()
///                 .s3(LoggingConfigurationDestinationConfigurationS3Args.builder()
///                     .bucketName(example.id())
///                     .build())
///                 .build())
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
///       bucketName: tf-ivschat-logging
///       forceDestroy: true
///   exampleLoggingConfiguration:
///     type: aws:ivschat:LoggingConfiguration
///     name: example
///     properties:
///       destinationConfiguration:
///         s3:
///           bucketName: ${example.id}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the IVS Chat logging configuration.
///
///
/// Using `pulumi import`, import IVS (Interactive Video) Chat Logging Configuration using the ARN. For example:
///
/// ```sh
/// $ pulumi import aws:ivschat/loggingConfiguration:LoggingConfiguration example arn:aws:ivschat:us-west-2:326937407773:logging-configuration/MMUQc8wcqZmC
/// ```
class LoggingConfiguration extends pulumi.CustomResource {
  /// ARN of the Logging Configuration.
  late final pulumi.Output<String> arn;
  /// Object containing destination configuration for where chat activity will be logged. This object must contain exactly one of the following children arguments:
  late final pulumi.Output<LoggingConfigurationDestinationConfiguration?> destinationConfiguration;
  /// Logging Configuration name.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// State of the Logging Configuration.
  late final pulumi.Output<String> state;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [LoggingConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LoggingConfiguration]. {@macro pulumi_ivschat_logging_configuration_logging_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LoggingConfiguration(
    String name, {
    LoggingConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ivschat/loggingConfiguration:LoggingConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    destinationConfiguration = registerOutput<LoggingConfigurationDestinationConfiguration?>('destinationConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LoggingConfigurationDestinationConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    state = registerOutput<String>('state');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [LoggingConfiguration] resource's state with the given [name] and [id].
  static LoggingConfiguration get(
    String name,
    pulumi.Input<String> id, {
    LoggingConfigurationState? state,
  }) {
    return LoggingConfiguration._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  LoggingConfiguration._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ivschat/loggingConfiguration:LoggingConfiguration',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    destinationConfiguration = registerOutput<LoggingConfigurationDestinationConfiguration?>('destinationConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LoggingConfigurationDestinationConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    this.state = registerOutput<String>('state');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
