import 'package:pulumi/pulumi.dart' as pulumi;
import 'voice_connector_streaming_args.dart';
import 'voice_connector_streaming_media_insights_configuration.dart';
import 'voice_connector_streaming_state.dart';

/// Adds a streaming configuration for the specified Amazon Chime Voice Connector. The streaming configuration specifies whether media streaming is enabled for sending to Amazon Kinesis.
/// It also sets the retention period, in hours, for the Amazon Kinesis data.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const _default = new aws.chime.VoiceConnector("default", {
///     name: "vc-name-test",
///     requireEncryption: true,
/// });
/// const defaultVoiceConnectorStreaming = new aws.chime.VoiceConnectorStreaming("default", {
///     disabled: false,
///     voiceConnectorId: _default.id,
///     dataRetention: 7,
///     streamingNotificationTargets: ["SQS"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// default = aws.chime.VoiceConnector("default",
///     name="vc-name-test",
///     require_encryption=True)
/// default_voice_connector_streaming = aws.chime.VoiceConnectorStreaming("default",
///     disabled=False,
///     voice_connector_id=default.id,
///     data_retention=7,
///     streaming_notification_targets=["SQS"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Aws.Chime.VoiceConnector("default", new()
///     {
///         Name = "vc-name-test",
///         RequireEncryption = true,
///     });
///
///     var defaultVoiceConnectorStreaming = new Aws.Chime.VoiceConnectorStreaming("default", new()
///     {
///         Disabled = false,
///         VoiceConnectorId = @default.Id,
///         DataRetention = 7,
///         StreamingNotificationTargets = new[]
///         {
///             "SQS",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/chime"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := chime.NewVoiceConnector(ctx, "default", &chime.VoiceConnectorArgs{
/// 			Name:              pulumi.String("vc-name-test"),
/// 			RequireEncryption: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = chime.NewVoiceConnectorStreaming(ctx, "default", &chime.VoiceConnectorStreamingArgs{
/// 			Disabled:         pulumi.Bool(false),
/// 			VoiceConnectorId: _default.ID().ToIDOutput().ToStringOutput(),
/// 			DataRetention:    pulumi.Int(7),
/// 			StreamingNotificationTargets: pulumi.StringArray{
/// 				pulumi.String("SQS"),
/// 			},
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
/// resource "aws_chime_voiceconnector" "default" {
///   name               = "vc-name-test"
///   require_encryption = true
/// }
/// resource "aws_chime_voiceconnectorstreaming" "default" {
///   disabled                       = false
///   voice_connector_id             = aws_chime_voiceconnector.default.id
///   data_retention                 = 7
///   streaming_notification_targets = ["SQS"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.chime.VoiceConnector;
/// import com.pulumi.aws.chime.VoiceConnectorArgs;
/// import com.pulumi.aws.chime.VoiceConnectorStreaming;
/// import com.pulumi.aws.chime.VoiceConnectorStreamingArgs;
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
///         var default_ = new VoiceConnector("default", VoiceConnectorArgs.builder()
///             .name("vc-name-test")
///             .requireEncryption(true)
///             .build());
///
///         var defaultVoiceConnectorStreaming = new VoiceConnectorStreaming("defaultVoiceConnectorStreaming", VoiceConnectorStreamingArgs.builder()
///             .disabled(false)
///             .voiceConnectorId(default_.id())
///             .dataRetention(7)
///             .streamingNotificationTargets("SQS")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: aws:chime:VoiceConnector
///     properties:
///       name: vc-name-test
///       requireEncryption: true
///   defaultVoiceConnectorStreaming:
///     type: aws:chime:VoiceConnectorStreaming
///     name: default
///     properties:
///       disabled: false
///       voiceConnectorId: ${default.id}
///       dataRetention: 7
///       streamingNotificationTargets:
///         - SQS
/// ```
///
///
/// ### Example Usage With Media Insights
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const _default = new aws.chime.VoiceConnector("default", {
///     name: "vc-name-test",
///     requireEncryption: true,
/// });
/// const assumeRole = aws.iam.getPolicyDocument({
///     statements: [{
///         principals: [{
///             type: "Service",
///             identifiers: ["mediapipelines.chime.amazonaws.com"],
///         }],
///         effect: "Allow",
///         actions: ["sts:AssumeRole"],
///     }],
/// });
/// const exampleRole = new aws.iam.Role("example", {
///     name: "ExampleResourceAccessRole",
///     assumeRolePolicy: assumeRole.then(assumeRole => assumeRole.json),
/// });
/// const exampleStream = new aws.kinesis.Stream("example", {
///     name: "ExampleStream",
///     shardCount: 2,
/// });
/// const example = new aws.chimesdkmediapipelines.MediaInsightsPipelineConfiguration("example", {
///     elements: [
///         {
///             amazonTranscribeCallAnalyticsProcessorConfiguration: {
///                 languageCode: "en-US",
///             },
///             type: "AmazonTranscribeCallAnalyticsProcessor",
///         },
///         {
///             kinesisDataStreamSinkConfiguration: {
///                 insightsTarget: exampleStream.arn,
///             },
///             type: "KinesisDataStreamSink",
///         },
///     ],
///     name: "ExampleConfig",
///     resourceAccessRoleArn: exampleRole.arn,
/// });
/// const defaultVoiceConnectorStreaming = new aws.chime.VoiceConnectorStreaming("default", {
///     mediaInsightsConfiguration: {
///         disabled: false,
///         configurationArn: example.arn,
///     },
///     disabled: false,
///     voiceConnectorId: _default.id,
///     dataRetention: 7,
///     streamingNotificationTargets: ["SQS"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// default = aws.chime.VoiceConnector("default",
///     name="vc-name-test",
///     require_encryption=True)
/// assume_role = aws.iam.get_policy_document(statements=[{
///     "principals": [{
///         "type": "Service",
///         "identifiers": ["mediapipelines.chime.amazonaws.com"],
///     }],
///     "effect": "Allow",
///     "actions": ["sts:AssumeRole"],
/// }])
/// example_role = aws.iam.Role("example",
///     name="ExampleResourceAccessRole",
///     assume_role_policy=assume_role.json)
/// example_stream = aws.kinesis.Stream("example",
///     name="ExampleStream",
///     shard_count=2)
/// example = aws.chimesdkmediapipelines.MediaInsightsPipelineConfiguration("example",
///     elements=[
///         {
///             "amazon_transcribe_call_analytics_processor_configuration": {
///                 "language_code": "en-US",
///             },
///             "type": "AmazonTranscribeCallAnalyticsProcessor",
///         },
///         {
///             "kinesis_data_stream_sink_configuration": {
///                 "insights_target": example_stream.arn,
///             },
///             "type": "KinesisDataStreamSink",
///         },
///     ],
///     name="ExampleConfig",
///     resource_access_role_arn=example_role.arn)
/// default_voice_connector_streaming = aws.chime.VoiceConnectorStreaming("default",
///     media_insights_configuration={
///         "disabled": False,
///         "configuration_arn": example.arn,
///     },
///     disabled=False,
///     voice_connector_id=default.id,
///     data_retention=7,
///     streaming_notification_targets=["SQS"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Aws.Chime.VoiceConnector("default", new()
///     {
///         Name = "vc-name-test",
///         RequireEncryption = true,
///     });
///
///     var assumeRole = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
///                     {
///                         Type = "Service",
///                         Identifiers = new[]
///                         {
///                             "mediapipelines.chime.amazonaws.com",
///                         },
///                     },
///                 },
///                 Effect = "Allow",
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
///         Name = "ExampleResourceAccessRole",
///         AssumeRolePolicy = assumeRole.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
///     var exampleStream = new Aws.Kinesis.Stream("example", new()
///     {
///         Name = "ExampleStream",
///         ShardCount = 2,
///     });
///
///     var example = new Aws.ChimeSDKMediaPipelines.MediaInsightsPipelineConfiguration("example", new()
///     {
///         Elements = new[]
///         {
///             new Aws.ChimeSDKMediaPipelines.Inputs.MediaInsightsPipelineConfigurationElementArgs
///             {
///                 AmazonTranscribeCallAnalyticsProcessorConfiguration = new Aws.ChimeSDKMediaPipelines.Inputs.MediaInsightsPipelineConfigurationElementAmazonTranscribeCallAnalyticsProcessorConfigurationArgs
///                 {
///                     LanguageCode = "en-US",
///                 },
///                 Type = "AmazonTranscribeCallAnalyticsProcessor",
///             },
///             new Aws.ChimeSDKMediaPipelines.Inputs.MediaInsightsPipelineConfigurationElementArgs
///             {
///                 KinesisDataStreamSinkConfiguration = new Aws.ChimeSDKMediaPipelines.Inputs.MediaInsightsPipelineConfigurationElementKinesisDataStreamSinkConfigurationArgs
///                 {
///                     InsightsTarget = exampleStream.Arn,
///                 },
///                 Type = "KinesisDataStreamSink",
///             },
///         },
///         Name = "ExampleConfig",
///         ResourceAccessRoleArn = exampleRole.Arn,
///     });
///
///     var defaultVoiceConnectorStreaming = new Aws.Chime.VoiceConnectorStreaming("default", new()
///     {
///         MediaInsightsConfiguration = new Aws.Chime.Inputs.VoiceConnectorStreamingMediaInsightsConfigurationArgs
///         {
///             Disabled = false,
///             ConfigurationArn = example.Arn,
///         },
///         Disabled = false,
///         VoiceConnectorId = @default.Id,
///         DataRetention = 7,
///         StreamingNotificationTargets = new[]
///         {
///             "SQS",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/chime"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/chimesdkmediapipelines"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kinesis"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := chime.NewVoiceConnector(ctx, "default", &chime.VoiceConnectorArgs{
/// 			Name:              pulumi.String("vc-name-test"),
/// 			RequireEncryption: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		assumeRole, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{
/// 					Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// 						{
/// 							Type: "Service",
/// 							Identifiers: []string{
/// 								"mediapipelines.chime.amazonaws.com",
/// 							},
/// 						},
/// 					},
/// 					Effect: pulumi.StringRef("Allow"),
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
/// 			Name:             pulumi.String("ExampleResourceAccessRole"),
/// 			AssumeRolePolicy: pulumi.String(assumeRole.Json),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleStream, err := kinesis.NewStream(ctx, "example", &kinesis.StreamArgs{
/// 			Name:       pulumi.String("ExampleStream"),
/// 			ShardCount: pulumi.Int(2),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := chimesdkmediapipelines.NewMediaInsightsPipelineConfiguration(ctx, "example", &chimesdkmediapipelines.MediaInsightsPipelineConfigurationArgs{
/// 			Elements: chimesdkmediapipelines.MediaInsightsPipelineConfigurationElementArray{
/// 				&chimesdkmediapipelines.MediaInsightsPipelineConfigurationElementArgs{
/// 					AmazonTranscribeCallAnalyticsProcessorConfiguration: &chimesdkmediapipelines.MediaInsightsPipelineConfigurationElementAmazonTranscribeCallAnalyticsProcessorConfigurationArgs{
/// 						LanguageCode: pulumi.String("en-US"),
/// 					},
/// 					Type: pulumi.String("AmazonTranscribeCallAnalyticsProcessor"),
/// 				},
/// 				&chimesdkmediapipelines.MediaInsightsPipelineConfigurationElementArgs{
/// 					KinesisDataStreamSinkConfiguration: &chimesdkmediapipelines.MediaInsightsPipelineConfigurationElementKinesisDataStreamSinkConfigurationArgs{
/// 						InsightsTarget: exampleStream.Arn,
/// 					},
/// 					Type: pulumi.String("KinesisDataStreamSink"),
/// 				},
/// 			},
/// 			Name:                  pulumi.String("ExampleConfig"),
/// 			ResourceAccessRoleArn: exampleRole.Arn,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = chime.NewVoiceConnectorStreaming(ctx, "default", &chime.VoiceConnectorStreamingArgs{
/// 			MediaInsightsConfiguration: &chime.VoiceConnectorStreamingMediaInsightsConfigurationArgs{
/// 				Disabled:         pulumi.Bool(false),
/// 				ConfigurationArn: example.Arn,
/// 			},
/// 			Disabled:         pulumi.Bool(false),
/// 			VoiceConnectorId: _default.ID().ToIDOutput().ToStringOutput(),
/// 			DataRetention:    pulumi.Int(7),
/// 			StreamingNotificationTargets: pulumi.StringArray{
/// 				pulumi.String("SQS"),
/// 			},
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
/// data "aws_iam_getpolicydocument" "assumeRole" {
///   statements {
///     principals {
///       type        = "Service"
///       identifiers = ["mediapipelines.chime.amazonaws.com"]
///     }
///     effect  = "Allow"
///     actions = ["sts:AssumeRole"]
///   }
/// }
///
/// resource "aws_chime_voiceconnector" "default" {
///   name               = "vc-name-test"
///   require_encryption = true
/// }
/// resource "aws_chime_voiceconnectorstreaming" "default" {
///   media_insights_configuration = {
///     disabled          = false
///     configuration_arn = aws_chimesdkmediapipelines_mediainsightspipelineconfiguration.example.arn
///   }
///   disabled                       = false
///   voice_connector_id             = aws_chime_voiceconnector.default.id
///   data_retention                 = 7
///   streaming_notification_targets = ["SQS"]
/// }
/// resource "aws_chimesdkmediapipelines_mediainsightspipelineconfiguration" "example" {
///   elements {
///     amazon_transcribe_call_analytics_processor_configuration = {
///       language_code = "en-US"
///     }
///     type = "AmazonTranscribeCallAnalyticsProcessor"
///   }
///   elements {
///     kinesis_data_stream_sink_configuration = {
///       insights_target = aws_kinesis_stream.example.arn
///     }
///     type = "KinesisDataStreamSink"
///   }
///   name                     = "ExampleConfig"
///   resource_access_role_arn = aws_iam_role.example.arn
/// }
/// resource "aws_iam_role" "example" {
///   name               = "ExampleResourceAccessRole"
///   assume_role_policy = data.aws_iam_getpolicydocument.assumeRole.json
/// }
/// resource "aws_kinesis_stream" "example" {
///   name        = "ExampleStream"
///   shard_count = 2
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.chime.VoiceConnector;
/// import com.pulumi.aws.chime.VoiceConnectorArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementPrincipalArgs;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.kinesis.Stream;
/// import com.pulumi.aws.kinesis.StreamArgs;
/// import com.pulumi.aws.chimesdkmediapipelines.MediaInsightsPipelineConfiguration;
/// import com.pulumi.aws.chimesdkmediapipelines.MediaInsightsPipelineConfigurationArgs;
/// import com.pulumi.aws.chimesdkmediapipelines.inputs.MediaInsightsPipelineConfigurationElementArgs;
/// import com.pulumi.aws.chimesdkmediapipelines.inputs.MediaInsightsPipelineConfigurationElementAmazonTranscribeCallAnalyticsProcessorConfigurationArgs;
/// import com.pulumi.aws.chimesdkmediapipelines.inputs.MediaInsightsPipelineConfigurationElementKinesisDataStreamSinkConfigurationArgs;
/// import com.pulumi.aws.chime.VoiceConnectorStreaming;
/// import com.pulumi.aws.chime.VoiceConnectorStreamingArgs;
/// import com.pulumi.aws.chime.inputs.VoiceConnectorStreamingMediaInsightsConfigurationArgs;
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
///         var default_ = new VoiceConnector("default", VoiceConnectorArgs.builder()
///             .name("vc-name-test")
///             .requireEncryption(true)
///             .build());
///
///         final var assumeRole = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("Service")
///                     .identifiers("mediapipelines.chime.amazonaws.com")
///                     .build())
///                 .effect("Allow")
///                 .actions("sts:AssumeRole")
///                 .build())
///             .build());
///
///         var exampleRole = new Role("exampleRole", RoleArgs.builder()
///             .name("ExampleResourceAccessRole")
///             .assumeRolePolicy(assumeRole.json())
///             .build());
///
///         var exampleStream = new Stream("exampleStream", StreamArgs.builder()
///             .name("ExampleStream")
///             .shardCount(2)
///             .build());
///
///         var example = new MediaInsightsPipelineConfiguration("example", MediaInsightsPipelineConfigurationArgs.builder()
///             .elements(
///                 MediaInsightsPipelineConfigurationElementArgs.builder()
///                     .amazonTranscribeCallAnalyticsProcessorConfiguration(MediaInsightsPipelineConfigurationElementAmazonTranscribeCallAnalyticsProcessorConfigurationArgs.builder()
///                         .languageCode("en-US")
///                         .build())
///                     .type("AmazonTranscribeCallAnalyticsProcessor")
///                     .build(),
///                 MediaInsightsPipelineConfigurationElementArgs.builder()
///                     .kinesisDataStreamSinkConfiguration(MediaInsightsPipelineConfigurationElementKinesisDataStreamSinkConfigurationArgs.builder()
///                         .insightsTarget(exampleStream.arn())
///                         .build())
///                     .type("KinesisDataStreamSink")
///                     .build())
///             .name("ExampleConfig")
///             .resourceAccessRoleArn(exampleRole.arn())
///             .build());
///
///         var defaultVoiceConnectorStreaming = new VoiceConnectorStreaming("defaultVoiceConnectorStreaming", VoiceConnectorStreamingArgs.builder()
///             .mediaInsightsConfiguration(VoiceConnectorStreamingMediaInsightsConfigurationArgs.builder()
///                 .disabled(false)
///                 .configurationArn(example.arn())
///                 .build())
///             .disabled(false)
///             .voiceConnectorId(default_.id())
///             .dataRetention(7)
///             .streamingNotificationTargets("SQS")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: aws:chime:VoiceConnector
///     properties:
///       name: vc-name-test
///       requireEncryption: true
///   defaultVoiceConnectorStreaming:
///     type: aws:chime:VoiceConnectorStreaming
///     name: default
///     properties:
///       mediaInsightsConfiguration:
///         disabled: false
///         configurationArn: ${example.arn}
///       disabled: false
///       voiceConnectorId: ${default.id}
///       dataRetention: 7
///       streamingNotificationTargets:
///         - SQS
///   example:
///     type: aws:chimesdkmediapipelines:MediaInsightsPipelineConfiguration
///     properties:
///       elements:
///         - amazonTranscribeCallAnalyticsProcessorConfiguration:
///             languageCode: en-US
///           type: AmazonTranscribeCallAnalyticsProcessor
///         - kinesisDataStreamSinkConfiguration:
///             insightsTarget: ${exampleStream.arn}
///           type: KinesisDataStreamSink
///       name: ExampleConfig
///       resourceAccessRoleArn: ${exampleRole.arn}
///   exampleRole:
///     type: aws:iam:Role
///     name: example
///     properties:
///       name: ExampleResourceAccessRole
///       assumeRolePolicy: ${assumeRole.json}
///   exampleStream:
///     type: aws:kinesis:Stream
///     name: example
///     properties:
///       name: ExampleStream
///       shardCount: 2
/// variables:
///   assumeRole:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - principals:
///               - type: Service
///                 identifiers:
///                   - mediapipelines.chime.amazonaws.com
///             effect: Allow
///             actions:
///               - sts:AssumeRole
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Chime Voice Connector Streaming using the `voiceConnectorId`. For example:
///
/// ```sh
/// $ pulumi import aws:chime/voiceConnectorStreaming:VoiceConnectorStreaming default abcdef1ghij2klmno3pqr4
/// ```
class VoiceConnectorStreaming extends pulumi.CustomResource {
  /// The retention period, in hours, for the Amazon Kinesis data.
  late final pulumi.Output<int> dataRetention;
  /// When true, media streaming to Amazon Kinesis is turned off. Default: `false`
  late final pulumi.Output<bool?> disabled;
  /// The media insights configuration. See `mediaInsightsConfiguration`.
  late final pulumi.Output<VoiceConnectorStreamingMediaInsightsConfiguration?> mediaInsightsConfiguration;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The streaming notification targets. Valid Values: `EventBridge | SNS | SQS`
  late final pulumi.Output<List<String>?> streamingNotificationTargets;
  /// The Amazon Chime Voice Connector ID.
  late final pulumi.Output<String> voiceConnectorId;

  /// Creates a new [VoiceConnectorStreaming].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VoiceConnectorStreaming]. {@macro pulumi_chime_voice_connector_streaming_voice_connector_streaming_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VoiceConnectorStreaming(
    String name, {
    VoiceConnectorStreamingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:chime/voiceConnectorStreaming:VoiceConnectorStreaming',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    dataRetention = registerOutput<int>('dataRetention');
    disabled = registerOutput<bool?>('disabled');
    mediaInsightsConfiguration = registerOutput<VoiceConnectorStreamingMediaInsightsConfiguration?>('mediaInsightsConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VoiceConnectorStreamingMediaInsightsConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    streamingNotificationTargets = registerOutput<List<String>?>('streamingNotificationTargets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    voiceConnectorId = registerOutput<String>('voiceConnectorId');
  }

  /// Gets an existing [VoiceConnectorStreaming] resource's state with the given [name] and [id].
  static VoiceConnectorStreaming get(
    String name,
    pulumi.Input<String> id, {
    VoiceConnectorStreamingState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return VoiceConnectorStreaming._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  VoiceConnectorStreaming._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:chime/voiceConnectorStreaming:VoiceConnectorStreaming',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    dataRetention = registerOutput<int>('dataRetention');
    disabled = registerOutput<bool?>('disabled');
    mediaInsightsConfiguration = registerOutput<VoiceConnectorStreamingMediaInsightsConfiguration?>('mediaInsightsConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VoiceConnectorStreamingMediaInsightsConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    streamingNotificationTargets = registerOutput<List<String>?>('streamingNotificationTargets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    voiceConnectorId = registerOutput<String>('voiceConnectorId');
  }

  /// Creates a typed reference to an existing [VoiceConnectorStreaming] resource.
  VoiceConnectorStreaming.reference(String urn)
    : super(
        'aws:chime/voiceConnectorStreaming:VoiceConnectorStreaming',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    dataRetention = registerOutput<int>('dataRetention');
    disabled = registerOutput<bool?>('disabled');
    mediaInsightsConfiguration = registerOutput<VoiceConnectorStreamingMediaInsightsConfiguration?>('mediaInsightsConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VoiceConnectorStreamingMediaInsightsConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    streamingNotificationTargets = registerOutput<List<String>?>('streamingNotificationTargets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    voiceConnectorId = registerOutput<String>('voiceConnectorId');
  }
}
