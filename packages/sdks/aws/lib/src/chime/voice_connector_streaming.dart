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
///         effect: "Allow",
///         principals: [{
///             type: "Service",
///             identifiers: ["mediapipelines.chime.amazonaws.com"],
///         }],
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
///     name: "ExampleConfig",
///     resourceAccessRoleArn: exampleRole.arn,
///     elements: [
///         {
///             type: "AmazonTranscribeCallAnalyticsProcessor",
///             amazonTranscribeCallAnalyticsProcessorConfiguration: {
///                 languageCode: "en-US",
///             },
///         },
///         {
///             type: "KinesisDataStreamSink",
///             kinesisDataStreamSinkConfiguration: {
///                 insightsTarget: exampleStream.arn,
///             },
///         },
///     ],
/// });
/// const defaultVoiceConnectorStreaming = new aws.chime.VoiceConnectorStreaming("default", {
///     disabled: false,
///     voiceConnectorId: _default.id,
///     dataRetention: 7,
///     streamingNotificationTargets: ["SQS"],
///     mediaInsightsConfiguration: {
///         disabled: false,
///         configurationArn: example.arn,
///     },
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
///     "effect": "Allow",
///     "principals": [{
///         "type": "Service",
///         "identifiers": ["mediapipelines.chime.amazonaws.com"],
///     }],
///     "actions": ["sts:AssumeRole"],
/// }])
/// example_role = aws.iam.Role("example",
///     name="ExampleResourceAccessRole",
///     assume_role_policy=assume_role.json)
/// example_stream = aws.kinesis.Stream("example",
///     name="ExampleStream",
///     shard_count=2)
/// example = aws.chimesdkmediapipelines.MediaInsightsPipelineConfiguration("example",
///     name="ExampleConfig",
///     resource_access_role_arn=example_role.arn,
///     elements=[
///         {
///             "type": "AmazonTranscribeCallAnalyticsProcessor",
///             "amazon_transcribe_call_analytics_processor_configuration": {
///                 "language_code": "en-US",
///             },
///         },
///         {
///             "type": "KinesisDataStreamSink",
///             "kinesis_data_stream_sink_configuration": {
///                 "insights_target": example_stream.arn,
///             },
///         },
///     ])
/// default_voice_connector_streaming = aws.chime.VoiceConnectorStreaming("default",
///     disabled=False,
///     voice_connector_id=default.id,
///     data_retention=7,
///     streaming_notification_targets=["SQS"],
///     media_insights_configuration={
///         "disabled": False,
///         "configuration_arn": example.arn,
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
///                 Effect = "Allow",
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
///         Name = "ExampleConfig",
///         ResourceAccessRoleArn = exampleRole.Arn,
///         Elements = new[]
///         {
///             new Aws.ChimeSDKMediaPipelines.Inputs.MediaInsightsPipelineConfigurationElementArgs
///             {
///                 Type = "AmazonTranscribeCallAnalyticsProcessor",
///                 AmazonTranscribeCallAnalyticsProcessorConfiguration = new Aws.ChimeSDKMediaPipelines.Inputs.MediaInsightsPipelineConfigurationElementAmazonTranscribeCallAnalyticsProcessorConfigurationArgs
///                 {
///                     LanguageCode = "en-US",
///                 },
///             },
///             new Aws.ChimeSDKMediaPipelines.Inputs.MediaInsightsPipelineConfigurationElementArgs
///             {
///                 Type = "KinesisDataStreamSink",
///                 KinesisDataStreamSinkConfiguration = new Aws.ChimeSDKMediaPipelines.Inputs.MediaInsightsPipelineConfigurationElementKinesisDataStreamSinkConfigurationArgs
///                 {
///                     InsightsTarget = exampleStream.Arn,
///                 },
///             },
///         },
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
///         MediaInsightsConfiguration = new Aws.Chime.Inputs.VoiceConnectorStreamingMediaInsightsConfigurationArgs
///         {
///             Disabled = false,
///             ConfigurationArn = example.Arn,
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
/// 					Effect: pulumi.StringRef("Allow"),
/// 					Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// 						{
/// 							Type: "Service",
/// 							Identifiers: []string{
/// 								"mediapipelines.chime.amazonaws.com",
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
/// 			Name:                  pulumi.String("ExampleConfig"),
/// 			ResourceAccessRoleArn: exampleRole.Arn,
/// 			Elements: chimesdkmediapipelines.MediaInsightsPipelineConfigurationElementArray{
/// 				&chimesdkmediapipelines.MediaInsightsPipelineConfigurationElementArgs{
/// 					Type: pulumi.String("AmazonTranscribeCallAnalyticsProcessor"),
/// 					AmazonTranscribeCallAnalyticsProcessorConfiguration: &chimesdkmediapipelines.MediaInsightsPipelineConfigurationElementAmazonTranscribeCallAnalyticsProcessorConfigurationArgs{
/// 						LanguageCode: pulumi.String("en-US"),
/// 					},
/// 				},
/// 				&chimesdkmediapipelines.MediaInsightsPipelineConfigurationElementArgs{
/// 					Type: pulumi.String("KinesisDataStreamSink"),
/// 					KinesisDataStreamSinkConfiguration: &chimesdkmediapipelines.MediaInsightsPipelineConfigurationElementKinesisDataStreamSinkConfigurationArgs{
/// 						InsightsTarget: exampleStream.Arn,
/// 					},
/// 				},
/// 			},
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
/// 			MediaInsightsConfiguration: &chime.VoiceConnectorStreamingMediaInsightsConfigurationArgs{
/// 				Disabled:         pulumi.Bool(false),
/// 				ConfigurationArn: example.Arn,
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
///     effect = "Allow"
///     principals {
///       type        = "Service"
///       identifiers = ["mediapipelines.chime.amazonaws.com"]
///     }
///     actions = ["sts:AssumeRole"]
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
///   media_insights_configuration = {
///     disabled          = false
///     configuration_arn = aws_chimesdkmediapipelines_mediainsightspipelineconfiguration.example.arn
///   }
/// }
/// resource "aws_chimesdkmediapipelines_mediainsightspipelineconfiguration" "example" {
///   name                     = "ExampleConfig"
///   resource_access_role_arn = aws_iam_role.example.arn
///   elements {
///     type = "AmazonTranscribeCallAnalyticsProcessor"
///     amazon_transcribe_call_analytics_processor_configuration = {
///       language_code = "en-US"
///     }
///   }
///   elements {
///     type = "KinesisDataStreamSink"
///     kinesis_data_stream_sink_configuration = {
///       insights_target = aws_kinesis_stream.example.arn
///     }
///   }
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
///                 .effect("Allow")
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("Service")
///                     .identifiers("mediapipelines.chime.amazonaws.com")
///                     .build())
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
///             .name("ExampleConfig")
///             .resourceAccessRoleArn(exampleRole.arn())
///             .elements(
///                 MediaInsightsPipelineConfigurationElementArgs.builder()
///                     .type("AmazonTranscribeCallAnalyticsProcessor")
///                     .amazonTranscribeCallAnalyticsProcessorConfiguration(MediaInsightsPipelineConfigurationElementAmazonTranscribeCallAnalyticsProcessorConfigurationArgs.builder()
///                         .languageCode("en-US")
///                         .build())
///                     .build(),
///                 MediaInsightsPipelineConfigurationElementArgs.builder()
///                     .type("KinesisDataStreamSink")
///                     .kinesisDataStreamSinkConfiguration(MediaInsightsPipelineConfigurationElementKinesisDataStreamSinkConfigurationArgs.builder()
///                         .insightsTarget(exampleStream.arn())
///                         .build())
///                     .build())
///             .build());
///
///         var defaultVoiceConnectorStreaming = new VoiceConnectorStreaming("defaultVoiceConnectorStreaming", VoiceConnectorStreamingArgs.builder()
///             .disabled(false)
///             .voiceConnectorId(default_.id())
///             .dataRetention(7)
///             .streamingNotificationTargets("SQS")
///             .mediaInsightsConfiguration(VoiceConnectorStreamingMediaInsightsConfigurationArgs.builder()
///                 .disabled(false)
///                 .configurationArn(example.arn())
///                 .build())
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
///       mediaInsightsConfiguration:
///         disabled: false
///         configurationArn: ${example.arn}
///   example:
///     type: aws:chimesdkmediapipelines:MediaInsightsPipelineConfiguration
///     properties:
///       name: ExampleConfig
///       resourceAccessRoleArn: ${exampleRole.arn}
///       elements:
///         - type: AmazonTranscribeCallAnalyticsProcessor
///           amazonTranscribeCallAnalyticsProcessorConfiguration:
///             languageCode: en-US
///         - type: KinesisDataStreamSink
///           kinesisDataStreamSinkConfiguration:
///             insightsTarget: ${exampleStream.arn}
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
///           - effect: Allow
///             principals:
///               - type: Service
///                 identifiers:
///                   - mediapipelines.chime.amazonaws.com
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
          options ?? pulumi.CustomResourceOptions(),
        ) {
    dataRetention = registerOutput<int>('dataRetention');
    disabled = registerOutput<bool?>('disabled');
    mediaInsightsConfiguration = registerOutput<VoiceConnectorStreamingMediaInsightsConfiguration?>('mediaInsightsConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VoiceConnectorStreamingMediaInsightsConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    streamingNotificationTargets = registerOutput<List<String>?>('streamingNotificationTargets');
    voiceConnectorId = registerOutput<String>('voiceConnectorId');
  }

  /// Gets an existing [VoiceConnectorStreaming] resource's state with the given [name] and [id].
  static VoiceConnectorStreaming get(
    String name,
    pulumi.Input<String> id, {
    VoiceConnectorStreamingState? state,
  }) {
    return VoiceConnectorStreaming._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
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
    streamingNotificationTargets = registerOutput<List<String>?>('streamingNotificationTargets');
    voiceConnectorId = registerOutput<String>('voiceConnectorId');
  }
}
