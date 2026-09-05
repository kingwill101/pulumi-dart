import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_args.dart';
import 'channel_cdi_input_specification.dart';
import 'channel_destination.dart';
import 'channel_encoder_settings.dart';
import 'channel_input_attachment.dart';
import 'channel_input_specification.dart';
import 'channel_maintenance.dart';
import 'channel_state.dart';
import 'channel_vpc.dart';

/// Resource for managing an AWS MediaLive Channel.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.medialive.Channel("example", {
///     inputSpecification: {
///         codec: "AVC",
///         inputResolution: "HD",
///         maximumBitrate: "MAX_20_MBPS",
///     },
///     encoderSettings: {
///         timecodeConfig: {
///             source: "EMBEDDED",
///         },
///         audioDescriptions: [{
///             audioSelectorName: "example audio selector",
///             name: "audio-selector",
///         }],
///         outputGroups: [{
///             outputGroupSettings: {
///                 archiveGroupSettings: [{
///                     destination: {
///                         destinationRefId: "destination",
///                     },
///                 }],
///             },
///             outputs: [{
///                 outputSettings: {
///                     archiveOutputSettings: {
///                         containerSettings: {
///                             m2tsSettings: {
///                                 audioBufferModel: "ATSC",
///                                 bufferModel: "MULTIPLEX",
///                                 rateMode: "CBR",
///                             },
///                         },
///                         nameModifier: "_1",
///                         extension: "m2ts",
///                     },
///                 },
///                 outputName: "example-name",
///                 videoDescriptionName: "example-video",
///                 audioDescriptionNames: ["audio-selector"],
///             }],
///         }],
///         videoDescriptions: [{
///             name: "example-video",
///         }],
///     },
///     destinations: [{
///         settings: [
///             {
///                 url: `s3://${main.id}/test1`,
///             },
///             {
///                 url: `s3://${main2.id}/test2`,
///             },
///         ],
///         id: "destination",
///     }],
///     inputAttachments: [{
///         inputAttachmentName: "example-input",
///         inputId: exampleAwsMedialiveInput.id,
///     }],
///     name: "example-channel",
///     channelClass: "STANDARD",
///     roleArn: exampleAwsIamRole.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.medialive.Channel("example",
///     input_specification={
///         "codec": "AVC",
///         "input_resolution": "HD",
///         "maximum_bitrate": "MAX_20_MBPS",
///     },
///     encoder_settings={
///         "timecode_config": {
///             "source": "EMBEDDED",
///         },
///         "audio_descriptions": [{
///             "audio_selector_name": "example audio selector",
///             "name": "audio-selector",
///         }],
///         "output_groups": [{
///             "output_group_settings": {
///                 "archive_group_settings": [{
///                     "destination": {
///                         "destination_ref_id": "destination",
///                     },
///                 }],
///             },
///             "outputs": [{
///                 "output_settings": {
///                     "archive_output_settings": {
///                         "container_settings": {
///                             "m2ts_settings": {
///                                 "audio_buffer_model": "ATSC",
///                                 "buffer_model": "MULTIPLEX",
///                                 "rate_mode": "CBR",
///                             },
///                         },
///                         "name_modifier": "_1",
///                         "extension": "m2ts",
///                     },
///                 },
///                 "output_name": "example-name",
///                 "video_description_name": "example-video",
///                 "audio_description_names": ["audio-selector"],
///             }],
///         }],
///         "video_descriptions": [{
///             "name": "example-video",
///         }],
///     },
///     destinations=[{
///         "settings": [
///             {
///                 "url": f"s3://{main['id']}/test1",
///             },
///             {
///                 "url": f"s3://{main2['id']}/test2",
///             },
///         ],
///         "id": "destination",
///     }],
///     input_attachments=[{
///         "input_attachment_name": "example-input",
///         "input_id": example_aws_medialive_input["id"],
///     }],
///     name="example-channel",
///     channel_class="STANDARD",
///     role_arn=example_aws_iam_role["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.MediaLive.Channel("example", new()
///     {
///         InputSpecification = new Aws.MediaLive.Inputs.ChannelInputSpecificationArgs
///         {
///             Codec = "AVC",
///             InputResolution = "HD",
///             MaximumBitrate = "MAX_20_MBPS",
///         },
///         EncoderSettings = new Aws.MediaLive.Inputs.ChannelEncoderSettingsArgs
///         {
///             TimecodeConfig = new Aws.MediaLive.Inputs.ChannelEncoderSettingsTimecodeConfigArgs
///             {
///                 Source = "EMBEDDED",
///             },
///             AudioDescriptions = new[]
///             {
///                 new Aws.MediaLive.Inputs.ChannelEncoderSettingsAudioDescriptionArgs
///                 {
///                     AudioSelectorName = "example audio selector",
///                     Name = "audio-selector",
///                 },
///             },
///             OutputGroups = new[]
///             {
///                 new Aws.MediaLive.Inputs.ChannelEncoderSettingsOutputGroupArgs
///                 {
///                     OutputGroupSettings = new Aws.MediaLive.Inputs.ChannelEncoderSettingsOutputGroupOutputGroupSettingsArgs
///                     {
///                         ArchiveGroupSettings = new[]
///                         {
///                             new Aws.MediaLive.Inputs.ChannelEncoderSettingsOutputGroupOutputGroupSettingsArchiveGroupSettingArgs
///                             {
///                                 Destination = new Aws.MediaLive.Inputs.ChannelEncoderSettingsOutputGroupOutputGroupSettingsArchiveGroupSettingDestinationArgs
///                                 {
///                                     DestinationRefId = "destination",
///                                 },
///                             },
///                         },
///                     },
///                     Outputs = new[]
///                     {
///                         new Aws.MediaLive.Inputs.ChannelEncoderSettingsOutputGroupOutputArgs
///                         {
///                             OutputSettings = new Aws.MediaLive.Inputs.ChannelEncoderSettingsOutputGroupOutputOutputSettingsArgs
///                             {
///                                 ArchiveOutputSettings = new Aws.MediaLive.Inputs.ChannelEncoderSettingsOutputGroupOutputOutputSettingsArchiveOutputSettingsArgs
///                                 {
///                                     ContainerSettings = new Aws.MediaLive.Inputs.ChannelEncoderSettingsOutputGroupOutputOutputSettingsArchiveOutputSettingsContainerSettingsArgs
///                                     {
///                                         M2tsSettings = new Aws.MediaLive.Inputs.ChannelEncoderSettingsOutputGroupOutputOutputSettingsArchiveOutputSettingsContainerSettingsM2tsSettingsArgs
///                                         {
///                                             AudioBufferModel = "ATSC",
///                                             BufferModel = "MULTIPLEX",
///                                             RateMode = "CBR",
///                                         },
///                                     },
///                                     NameModifier = "_1",
///                                     Extension = "m2ts",
///                                 },
///                             },
///                             OutputName = "example-name",
///                             VideoDescriptionName = "example-video",
///                             AudioDescriptionNames = new[]
///                             {
///                                 "audio-selector",
///                             },
///                         },
///                     },
///                 },
///             },
///             VideoDescriptions = new[]
///             {
///                 new Aws.MediaLive.Inputs.ChannelEncoderSettingsVideoDescriptionArgs
///                 {
///                     Name = "example-video",
///                 },
///             },
///         },
///         Destinations = new[]
///         {
///             new Aws.MediaLive.Inputs.ChannelDestinationArgs
///             {
///                 Settings = new[]
///                 {
///                     new Aws.MediaLive.Inputs.ChannelDestinationSettingArgs
///                     {
///                         Url = $"s3://{main.Id}/test1",
///                     },
///                     new Aws.MediaLive.Inputs.ChannelDestinationSettingArgs
///                     {
///                         Url = $"s3://{main2.Id}/test2",
///                     },
///                 },
///                 Id = "destination",
///             },
///         },
///         InputAttachments = new[]
///         {
///             new Aws.MediaLive.Inputs.ChannelInputAttachmentArgs
///             {
///                 InputAttachmentName = "example-input",
///                 InputId = exampleAwsMedialiveInput.Id,
///             },
///         },
///         Name = "example-channel",
///         ChannelClass = "STANDARD",
///         RoleArn = exampleAwsIamRole.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/medialive"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := medialive.NewChannel(ctx, "example", &medialive.ChannelArgs{
/// 			InputSpecification: &medialive.ChannelInputSpecificationArgs{
/// 				Codec:           pulumi.String("AVC"),
/// 				InputResolution: pulumi.String("HD"),
/// 				MaximumBitrate:  pulumi.String("MAX_20_MBPS"),
/// 			},
/// 			EncoderSettings: &medialive.ChannelEncoderSettingsArgs{
/// 				TimecodeConfig: &medialive.ChannelEncoderSettingsTimecodeConfigArgs{
/// 					Source: pulumi.String("EMBEDDED"),
/// 				},
/// 				AudioDescriptions: medialive.ChannelEncoderSettingsAudioDescriptionArray{
/// 					&medialive.ChannelEncoderSettingsAudioDescriptionArgs{
/// 						AudioSelectorName: pulumi.String("example audio selector"),
/// 						Name:              pulumi.String("audio-selector"),
/// 					},
/// 				},
/// 				OutputGroups: medialive.ChannelEncoderSettingsOutputGroupArray{
/// 					&medialive.ChannelEncoderSettingsOutputGroupArgs{
/// 						OutputGroupSettings: &medialive.ChannelEncoderSettingsOutputGroupOutputGroupSettingsArgs{
/// 							ArchiveGroupSettings: medialive.ChannelEncoderSettingsOutputGroupOutputGroupSettingsArchiveGroupSettingArray{
/// 								&medialive.ChannelEncoderSettingsOutputGroupOutputGroupSettingsArchiveGroupSettingArgs{
/// 									Destination: &medialive.ChannelEncoderSettingsOutputGroupOutputGroupSettingsArchiveGroupSettingDestinationArgs{
/// 										DestinationRefId: pulumi.String("destination"),
/// 									},
/// 								},
/// 							},
/// 						},
/// 						Outputs: medialive.ChannelEncoderSettingsOutputGroupOutputTypeArray{
/// 							&medialive.ChannelEncoderSettingsOutputGroupOutputTypeArgs{
/// 								OutputSettings: &medialive.ChannelEncoderSettingsOutputGroupOutputOutputSettingsArgs{
/// 									ArchiveOutputSettings: &medialive.ChannelEncoderSettingsOutputGroupOutputOutputSettingsArchiveOutputSettingsArgs{
/// 										ContainerSettings: &medialive.ChannelEncoderSettingsOutputGroupOutputOutputSettingsArchiveOutputSettingsContainerSettingsArgs{
/// 											M2tsSettings: &medialive.ChannelEncoderSettingsOutputGroupOutputOutputSettingsArchiveOutputSettingsContainerSettingsM2tsSettingsArgs{
/// 												AudioBufferModel: pulumi.String("ATSC"),
/// 												BufferModel:      pulumi.String("MULTIPLEX"),
/// 												RateMode:         pulumi.String("CBR"),
/// 											},
/// 										},
/// 										NameModifier: pulumi.String("_1"),
/// 										Extension:    pulumi.String("m2ts"),
/// 									},
/// 								},
/// 								OutputName:           pulumi.String("example-name"),
/// 								VideoDescriptionName: pulumi.String("example-video"),
/// 								AudioDescriptionNames: pulumi.StringArray{
/// 									pulumi.String("audio-selector"),
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 				VideoDescriptions: medialive.ChannelEncoderSettingsVideoDescriptionArray{
/// 					&medialive.ChannelEncoderSettingsVideoDescriptionArgs{
/// 						Name: pulumi.String("example-video"),
/// 					},
/// 				},
/// 			},
/// 			Destinations: medialive.ChannelDestinationArray{
/// 				&medialive.ChannelDestinationArgs{
/// 					Settings: medialive.ChannelDestinationSettingArray{
/// 						&medialive.ChannelDestinationSettingArgs{
/// 							Url: pulumi.Sprintf("s3://%v/test1", main.Id),
/// 						},
/// 						&medialive.ChannelDestinationSettingArgs{
/// 							Url: pulumi.Sprintf("s3://%v/test2", main2.Id),
/// 						},
/// 					},
/// 					Id: pulumi.String("destination"),
/// 				},
/// 			},
/// 			InputAttachments: medialive.ChannelInputAttachmentArray{
/// 				&medialive.ChannelInputAttachmentArgs{
/// 					InputAttachmentName: pulumi.String("example-input"),
/// 					InputId:             pulumi.Any(exampleAwsMedialiveInput.Id),
/// 				},
/// 			},
/// 			Name:         pulumi.String("example-channel"),
/// 			ChannelClass: pulumi.String("STANDARD"),
/// 			RoleArn:      pulumi.Any(exampleAwsIamRole.Arn),
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
/// resource "aws_medialive_channel" "example" {
///   input_specification = {
///     codec            = "AVC"
///     input_resolution = "HD"
///     maximum_bitrate  = "MAX_20_MBPS"
///   }
///   encoder_settings = {
///     timecode_config = {
///       source = "EMBEDDED"
///     }
///     audio_descriptions = [{
///       "audioSelectorName" = "example audio selector"
///       "name"              = "audio-selector"
///     }]
///     output_groups = [{
///       "outputGroupSettings" = {
///         "archiveGroupSettings" = [{
///           "destination" = {
///             "destinationRefId" = "destination"
///           }
///         }]
///       }
///       "outputs" = [{
///         "outputSettings" = {
///           "archiveOutputSettings" = {
///             "containerSettings" = {
///               "m2tsSettings" = {
///                 "audioBufferModel" = "ATSC"
///                 "bufferModel"      = "MULTIPLEX"
///                 "rateMode"         = "CBR"
///               }
///             }
///             "nameModifier" = "_1"
///             "extension"    = "m2ts"
///           }
///         }
///         "outputName"            = "example-name"
///         "videoDescriptionName"  = "example-video"
///         "audioDescriptionNames" = ["audio-selector"]
///       }]
///     }]
///     video_descriptions = [{
///       "name" = "example-video"
///     }]
///   }
///   destinations {
///     settings {
///       url ="s3://${main.id}/test1"
///     }
///     settings {
///       url ="s3://${main2.id}/test2"
///     }
///     id = "destination"
///   }
///   input_attachments {
///     input_attachment_name = "example-input"
///     input_id              = exampleAwsMedialiveInput.id
///   }
///   name          = "example-channel"
///   channel_class = "STANDARD"
///   role_arn      = exampleAwsIamRole.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.medialive.Channel;
/// import com.pulumi.aws.medialive.ChannelArgs;
/// import com.pulumi.aws.medialive.inputs.ChannelInputSpecificationArgs;
/// import com.pulumi.aws.medialive.inputs.ChannelEncoderSettingsArgs;
/// import com.pulumi.aws.medialive.inputs.ChannelEncoderSettingsTimecodeConfigArgs;
/// import com.pulumi.aws.medialive.inputs.ChannelEncoderSettingsAudioDescriptionArgs;
/// import com.pulumi.aws.medialive.inputs.ChannelEncoderSettingsOutputGroupArgs;
/// import com.pulumi.aws.medialive.inputs.ChannelEncoderSettingsOutputGroupOutputGroupSettingsArgs;
/// import com.pulumi.aws.medialive.inputs.ChannelEncoderSettingsOutputGroupOutputGroupSettingsArchiveGroupSettingArgs;
/// import com.pulumi.aws.medialive.inputs.ChannelEncoderSettingsOutputGroupOutputGroupSettingsArchiveGroupSettingDestinationArgs;
/// import com.pulumi.aws.medialive.inputs.ChannelEncoderSettingsOutputGroupOutputArgs;
/// import com.pulumi.aws.medialive.inputs.ChannelEncoderSettingsOutputGroupOutputOutputSettingsArgs;
/// import com.pulumi.aws.medialive.inputs.ChannelEncoderSettingsOutputGroupOutputOutputSettingsArchiveOutputSettingsArgs;
/// import com.pulumi.aws.medialive.inputs.ChannelEncoderSettingsOutputGroupOutputOutputSettingsArchiveOutputSettingsContainerSettingsArgs;
/// import com.pulumi.aws.medialive.inputs.ChannelEncoderSettingsOutputGroupOutputOutputSettingsArchiveOutputSettingsContainerSettingsM2tsSettingsArgs;
/// import com.pulumi.aws.medialive.inputs.ChannelEncoderSettingsVideoDescriptionArgs;
/// import com.pulumi.aws.medialive.inputs.ChannelDestinationArgs;
/// import com.pulumi.aws.medialive.inputs.ChannelDestinationSettingArgs;
/// import com.pulumi.aws.medialive.inputs.ChannelInputAttachmentArgs;
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
///         var example = new Channel("example", ChannelArgs.builder()
///             .inputSpecification(ChannelInputSpecificationArgs.builder()
///                 .codec("AVC")
///                 .inputResolution("HD")
///                 .maximumBitrate("MAX_20_MBPS")
///                 .build())
///             .encoderSettings(ChannelEncoderSettingsArgs.builder()
///                 .timecodeConfig(ChannelEncoderSettingsTimecodeConfigArgs.builder()
///                     .source("EMBEDDED")
///                     .build())
///                 .audioDescriptions(ChannelEncoderSettingsAudioDescriptionArgs.builder()
///                     .audioSelectorName("example audio selector")
///                     .name("audio-selector")
///                     .build())
///                 .outputGroups(ChannelEncoderSettingsOutputGroupArgs.builder()
///                     .outputGroupSettings(ChannelEncoderSettingsOutputGroupOutputGroupSettingsArgs.builder()
///                         .archiveGroupSettings(ChannelEncoderSettingsOutputGroupOutputGroupSettingsArchiveGroupSettingArgs.builder()
///                             .destination(ChannelEncoderSettingsOutputGroupOutputGroupSettingsArchiveGroupSettingDestinationArgs.builder()
///                                 .destinationRefId("destination")
///                                 .build())
///                             .build())
///                         .build())
///                     .outputs(ChannelEncoderSettingsOutputGroupOutputArgs.builder()
///                         .outputSettings(ChannelEncoderSettingsOutputGroupOutputOutputSettingsArgs.builder()
///                             .archiveOutputSettings(ChannelEncoderSettingsOutputGroupOutputOutputSettingsArchiveOutputSettingsArgs.builder()
///                                 .containerSettings(ChannelEncoderSettingsOutputGroupOutputOutputSettingsArchiveOutputSettingsContainerSettingsArgs.builder()
///                                     .m2tsSettings(ChannelEncoderSettingsOutputGroupOutputOutputSettingsArchiveOutputSettingsContainerSettingsM2tsSettingsArgs.builder()
///                                         .audioBufferModel("ATSC")
///                                         .bufferModel("MULTIPLEX")
///                                         .rateMode("CBR")
///                                         .build())
///                                     .build())
///                                 .nameModifier("_1")
///                                 .extension("m2ts")
///                                 .build())
///                             .build())
///                         .outputName("example-name")
///                         .videoDescriptionName("example-video")
///                         .audioDescriptionNames("audio-selector")
///                         .build())
///                     .build())
///                 .videoDescriptions(ChannelEncoderSettingsVideoDescriptionArgs.builder()
///                     .name("example-video")
///                     .build())
///                 .build())
///             .destinations(ChannelDestinationArgs.builder()
///                 .settings(
///                     ChannelDestinationSettingArgs.builder()
///                         .url(String.format("s3://%s/test1", main.id()))
///                         .build(),
///                     ChannelDestinationSettingArgs.builder()
///                         .url(String.format("s3://%s/test2", main2.id()))
///                         .build())
///                 .id("destination")
///                 .build())
///             .inputAttachments(ChannelInputAttachmentArgs.builder()
///                 .inputAttachmentName("example-input")
///                 .inputId(exampleAwsMedialiveInput.id())
///                 .build())
///             .name("example-channel")
///             .channelClass("STANDARD")
///             .roleArn(exampleAwsIamRole.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:medialive:Channel
///     properties:
///       inputSpecification:
///         codec: AVC
///         inputResolution: HD
///         maximumBitrate: MAX_20_MBPS
///       encoderSettings:
///         timecodeConfig:
///           source: EMBEDDED
///         audioDescriptions:
///           - audioSelectorName: example audio selector
///             name: audio-selector
///         outputGroups:
///           - outputGroupSettings:
///               archiveGroupSettings:
///                 - destination:
///                     destinationRefId: destination
///             outputs:
///               - outputSettings:
///                   archiveOutputSettings:
///                     containerSettings:
///                       m2tsSettings:
///                         audioBufferModel: ATSC
///                         bufferModel: MULTIPLEX
///                         rateMode: CBR
///                     nameModifier: _1
///                     extension: m2ts
///                 outputName: example-name
///                 videoDescriptionName: example-video
///                 audioDescriptionNames:
///                   - audio-selector
///         videoDescriptions:
///           - name: example-video
///       destinations:
///         - settings:
///             - url: s3://${main.id}/test1
///             - url: s3://${main2.id}/test2
///           id: destination
///       inputAttachments:
///         - inputAttachmentName: example-input
///           inputId: ${exampleAwsMedialiveInput.id}
///       name: example-channel
///       channelClass: STANDARD
///       roleArn: ${exampleAwsIamRole.arn}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `channelId` (String) ID of the MediaLive Channel.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import MediaLive Channel using the `channelId`. For example:
///
/// ```sh
/// $ pulumi import aws:medialive/channel:Channel example 1234567
/// ```
class Channel extends pulumi.CustomResource {
  /// ARN of the Channel.
  late final pulumi.Output<String> arn;
  /// Specification of CDI inputs for this channel. See CDI Input Specification for more details.
  late final pulumi.Output<ChannelCdiInputSpecification?> cdiInputSpecification;
  /// Concise argument description.
  late final pulumi.Output<String> channelClass;
  /// ID of the Channel.
  late final pulumi.Output<String> channelId;
  /// Destinations for channel. See Destinations for more details.
  late final pulumi.Output<List<ChannelDestination>> destinations;
  /// Encoder settings. See Encoder Settings for more details.
  late final pulumi.Output<ChannelEncoderSettings> encoderSettings;
  /// Input attachments for the channel. See Input Attachments for more details.
  late final pulumi.Output<List<ChannelInputAttachment>> inputAttachments;
  /// Specification of network and file inputs for the channel.
  late final pulumi.Output<ChannelInputSpecification> inputSpecification;
  /// The log level to write to Cloudwatch logs.
  late final pulumi.Output<String> logLevel;
  /// Maintenance settings for this channel. See Maintenance for more details.
  late final pulumi.Output<ChannelMaintenance> maintenance;
  /// Name of the Channel.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Concise argument description.
  late final pulumi.Output<String?> roleArn;
  /// Whether to start/stop channel. Default: `false`
  late final pulumi.Output<bool?> startChannel;
  /// A map of tags to assign to the channel. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Settings for the VPC outputs. See VPC for more details.
  late final pulumi.Output<ChannelVpc?> vpc;

  /// Creates a new [Channel].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Channel]. {@macro pulumi_medialive_channel_channel_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Channel(
    String name, {
    ChannelArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:medialive/channel:Channel',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    cdiInputSpecification = registerOutput<ChannelCdiInputSpecification?>('cdiInputSpecification', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ChannelCdiInputSpecification.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    channelClass = registerOutput<String>('channelClass');
    channelId = registerOutput<String>('channelId');
    destinations = registerOutput<List<ChannelDestination>>('destinations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ChannelDestination>(guardedValue, (value) => ChannelDestination.fromMap((value as Map).cast<String, dynamic>())); });
    encoderSettings = registerOutput<ChannelEncoderSettings>('encoderSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ChannelEncoderSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    inputAttachments = registerOutput<List<ChannelInputAttachment>>('inputAttachments', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ChannelInputAttachment>(guardedValue, (value) => ChannelInputAttachment.fromMap((value as Map).cast<String, dynamic>())); });
    inputSpecification = registerOutput<ChannelInputSpecification>('inputSpecification', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ChannelInputSpecification.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    logLevel = registerOutput<String>('logLevel');
    maintenance = registerOutput<ChannelMaintenance>('maintenance', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ChannelMaintenance.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    roleArn = registerOutput<String?>('roleArn');
    startChannel = registerOutput<bool?>('startChannel');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    vpc = registerOutput<ChannelVpc?>('vpc', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ChannelVpc.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [Channel] resource's state with the given [name] and [id].
  static Channel get(
    String name,
    pulumi.Input<String> id, {
    ChannelState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Channel._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Channel._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:medialive/channel:Channel',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    cdiInputSpecification = registerOutput<ChannelCdiInputSpecification?>('cdiInputSpecification', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ChannelCdiInputSpecification.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    channelClass = registerOutput<String>('channelClass');
    channelId = registerOutput<String>('channelId');
    destinations = registerOutput<List<ChannelDestination>>('destinations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ChannelDestination>(guardedValue, (value) => ChannelDestination.fromMap((value as Map).cast<String, dynamic>())); });
    encoderSettings = registerOutput<ChannelEncoderSettings>('encoderSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ChannelEncoderSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    inputAttachments = registerOutput<List<ChannelInputAttachment>>('inputAttachments', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ChannelInputAttachment>(guardedValue, (value) => ChannelInputAttachment.fromMap((value as Map).cast<String, dynamic>())); });
    inputSpecification = registerOutput<ChannelInputSpecification>('inputSpecification', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ChannelInputSpecification.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    logLevel = registerOutput<String>('logLevel');
    maintenance = registerOutput<ChannelMaintenance>('maintenance', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ChannelMaintenance.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    roleArn = registerOutput<String?>('roleArn');
    startChannel = registerOutput<bool?>('startChannel');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    vpc = registerOutput<ChannelVpc?>('vpc', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ChannelVpc.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [Channel] resource.
  Channel.reference(String urn)
    : super(
        'aws:medialive/channel:Channel',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    cdiInputSpecification = registerOutput<ChannelCdiInputSpecification?>('cdiInputSpecification', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ChannelCdiInputSpecification.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    channelClass = registerOutput<String>('channelClass');
    channelId = registerOutput<String>('channelId');
    destinations = registerOutput<List<ChannelDestination>>('destinations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ChannelDestination>(guardedValue, (value) => ChannelDestination.fromMap((value as Map).cast<String, dynamic>())); });
    encoderSettings = registerOutput<ChannelEncoderSettings>('encoderSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ChannelEncoderSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    inputAttachments = registerOutput<List<ChannelInputAttachment>>('inputAttachments', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ChannelInputAttachment>(guardedValue, (value) => ChannelInputAttachment.fromMap((value as Map).cast<String, dynamic>())); });
    inputSpecification = registerOutput<ChannelInputSpecification>('inputSpecification', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ChannelInputSpecification.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    logLevel = registerOutput<String>('logLevel');
    maintenance = registerOutput<ChannelMaintenance>('maintenance', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ChannelMaintenance.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    roleArn = registerOutput<String?>('roleArn');
    startChannel = registerOutput<bool?>('startChannel');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    vpc = registerOutput<ChannelVpc?>('vpc', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ChannelVpc.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
