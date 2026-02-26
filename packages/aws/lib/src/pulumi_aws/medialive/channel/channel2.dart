import 'package:pulumi/pulumi.dart';
import '../channel_cdi_input_specification/channel_cdi_input_specification.dart';
import '../channel_destination/channel_destination.dart';
import '../channel_encoder_settings/channel_encoder_settings.dart';
import '../channel_input_attachment/channel_input_attachment.dart';
import '../channel_input_specification/channel_input_specification.dart';
import '../channel_maintenance/channel_maintenance.dart';
import '../channel_vpc/channel_vpc.dart';
import 'channel_args2.dart';

/// Resource for managing an AWS MediaLive Channel.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.medialive.Channel("example", {
/// name: "example-channel",
/// channelClass: "STANDARD",
/// roleArn: exampleAwsIamRole.arn,
/// inputSpecification: {
/// codec: "AVC",
/// inputResolution: "HD",
/// maximumBitrate: "MAX_20_MBPS",
/// },
/// inputAttachments: [{
/// inputAttachmentName: "example-input",
/// inputId: exampleAwsMedialiveInput.id,
/// }],
/// destinations: [{
/// id: "destination",
/// settings: [
/// {
/// url: `s3://${main.id}/test1`,
/// },
/// {
/// url: `s3://${main2.id}/test2`,
/// },
/// ],
/// }],
/// encoderSettings: {
/// timecodeConfig: {
/// source: "EMBEDDED",
/// },
/// audioDescriptions: [{
/// audioSelectorName: "example audio selector",
/// name: "audio-selector",
/// }],
/// videoDescriptions: [{
/// name: "example-video",
/// }],
/// outputGroups: [{
/// outputGroupSettings: {
/// archiveGroupSettings: [{
/// destination: {
/// destinationRefId: "destination",
/// },
/// }],
/// },
/// outputs: [{
/// outputName: "example-name",
/// videoDescriptionName: "example-video",
/// audioDescriptionNames: ["audio-selector"],
/// outputSettings: {
/// archiveOutputSettings: {
/// nameModifier: "_1",
/// extension: "m2ts",
/// containerSettings: {
/// m2tsSettings: {
/// audioBufferModel: "ATSC",
/// bufferModel: "MULTIPLEX",
/// rateMode: "CBR",
/// },
/// },
/// },
/// },
/// }],
/// }],
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.medialive.Channel("example",
/// name="example-channel",
/// channel_class="STANDARD",
/// role_arn=example_aws_iam_role["arn"],
/// input_specification={
/// "codec": "AVC",
/// "input_resolution": "HD",
/// "maximum_bitrate": "MAX_20_MBPS",
/// },
/// input_attachments=[{
/// "input_attachment_name": "example-input",
/// "input_id": example_aws_medialive_input["id"],
/// }],
/// destinations=[{
/// "id": "destination",
/// "settings": [
/// {
/// "url": f"s3://{main['id']}/test1",
/// },
/// {
/// "url": f"s3://{main2['id']}/test2",
/// },
/// ],
/// }],
/// encoder_settings={
/// "timecode_config": {
/// "source": "EMBEDDED",
/// },
/// "audio_descriptions": [{
/// "audio_selector_name": "example audio selector",
/// "name": "audio-selector",
/// }],
/// "video_descriptions": [{
/// "name": "example-video",
/// }],
/// "output_groups": [{
/// "output_group_settings": {
/// "archive_group_settings": [{
/// "destination": {
/// "destination_ref_id": "destination",
/// },
/// }],
/// },
/// "outputs": [{
/// "output_name": "example-name",
/// "video_description_name": "example-video",
/// "audio_description_names": ["audio-selector"],
/// "output_settings": {
/// "archive_output_settings": {
/// "name_modifier": "_1",
/// "extension": "m2ts",
/// "container_settings": {
/// "m2ts_settings": {
/// "audio_buffer_model": "ATSC",
/// "buffer_model": "MULTIPLEX",
/// "rate_mode": "CBR",
/// },
/// },
/// },
/// },
/// }],
/// }],
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
/// var example = new Aws.MediaLive.Channel("example", new()
/// {
/// Name = "example-channel",
/// ChannelClass = "STANDARD",
/// RoleArn = exampleAwsIamRole.Arn,
/// InputSpecification = new Aws.MediaLive.Inputs.ChannelInputSpecificationArgs
/// {
/// Codec = "AVC",
/// InputResolution = "HD",
/// MaximumBitrate = "MAX_20_MBPS",
/// },
/// InputAttachments = new[]
/// {
/// new Aws.MediaLive.Inputs.ChannelInputAttachmentArgs
/// {
/// InputAttachmentName = "example-input",
/// InputId = exampleAwsMedialiveInput.Id,
/// },
/// },
/// Destinations = new[]
/// {
/// new Aws.MediaLive.Inputs.ChannelDestinationArgs
/// {
/// Id = "destination",
/// Settings = new[]
/// {
/// new Aws.MediaLive.Inputs.ChannelDestinationSettingArgs
/// {
/// Url = $"s3://{main.Id}/test1",
/// },
/// new Aws.MediaLive.Inputs.ChannelDestinationSettingArgs
/// {
/// Url = $"s3://{main2.Id}/test2",
/// },
/// },
/// },
/// },
/// EncoderSettings = new Aws.MediaLive.Inputs.ChannelEncoderSettingsArgs
/// {
/// TimecodeConfig = new Aws.MediaLive.Inputs.ChannelEncoderSettingsTimecodeConfigArgs
/// {
/// Source = "EMBEDDED",
/// },
/// AudioDescriptions = new[]
/// {
/// new Aws.MediaLive.Inputs.ChannelEncoderSettingsAudioDescriptionArgs
/// {
/// AudioSelectorName = "example audio selector",
/// Name = "audio-selector",
/// },
/// },
/// VideoDescriptions = new[]
/// {
/// new Aws.MediaLive.Inputs.ChannelEncoderSettingsVideoDescriptionArgs
/// {
/// Name = "example-video",
/// },
/// },
/// OutputGroups = new[]
/// {
/// new Aws.MediaLive.Inputs.ChannelEncoderSettingsOutputGroupArgs
/// {
/// OutputGroupSettings = new Aws.MediaLive.Inputs.ChannelEncoderSettingsOutputGroupOutputGroupSettingsArgs
/// {
/// ArchiveGroupSettings = new[]
/// {
/// new Aws.MediaLive.Inputs.ChannelEncoderSettingsOutputGroupOutputGroupSettingsArchiveGroupSettingArgs
/// {
/// Destination = new Aws.MediaLive.Inputs.ChannelEncoderSettingsOutputGroupOutputGroupSettingsArchiveGroupSettingDestinationArgs
/// {
/// DestinationRefId = "destination",
/// },
/// },
/// },
/// },
/// Outputs = new[]
/// {
/// new Aws.MediaLive.Inputs.ChannelEncoderSettingsOutputGroupOutputArgs
/// {
/// OutputName = "example-name",
/// VideoDescriptionName = "example-video",
/// AudioDescriptionNames = new[]
/// {
/// "audio-selector",
/// },
/// OutputSettings = new Aws.MediaLive.Inputs.ChannelEncoderSettingsOutputGroupOutputOutputSettingsArgs
/// {
/// ArchiveOutputSettings = new Aws.MediaLive.Inputs.ChannelEncoderSettingsOutputGroupOutputOutputSettingsArchiveOutputSettingsArgs
/// {
/// NameModifier = "_1",
/// Extension = "m2ts",
/// ContainerSettings = new Aws.MediaLive.Inputs.ChannelEncoderSettingsOutputGroupOutputOutputSettingsArchiveOutputSettingsContainerSettingsArgs
/// {
/// M2tsSettings = new Aws.MediaLive.Inputs.ChannelEncoderSettingsOutputGroupOutputOutputSettingsArchiveOutputSettingsContainerSettingsM2tsSettingsArgs
/// {
/// AudioBufferModel = "ATSC",
/// BufferModel = "MULTIPLEX",
/// RateMode = "CBR",
/// },
/// },
/// },
/// },
/// },
/// },
/// },
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/medialive"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := medialive.NewChannel(ctx, "example", &medialive.ChannelArgs{
/// Name:         pulumi.String("example-channel"),
/// ChannelClass: pulumi.String("STANDARD"),
/// RoleArn:      pulumi.Any(exampleAwsIamRole.Arn),
/// InputSpecification: &medialive.ChannelInputSpecificationArgs{
/// Codec:           pulumi.String("AVC"),
/// InputResolution: pulumi.String("HD"),
/// MaximumBitrate:  pulumi.String("MAX_20_MBPS"),
/// },
/// InputAttachments: medialive.ChannelInputAttachmentArray{
/// &medialive.ChannelInputAttachmentArgs{
/// InputAttachmentName: pulumi.String("example-input"),
/// InputId:             pulumi.Any(exampleAwsMedialiveInput.Id),
/// },
/// },
/// Destinations: medialive.ChannelDestinationArray{
/// &medialive.ChannelDestinationArgs{
/// Id: pulumi.String("destination"),
/// Settings: medialive.ChannelDestinationSettingArray{
/// &medialive.ChannelDestinationSettingArgs{
/// Url: pulumi.Sprintf("s3://%v/test1", main.Id),
/// },
/// &medialive.ChannelDestinationSettingArgs{
/// Url: pulumi.Sprintf("s3://%v/test2", main2.Id),
/// },
/// },
/// },
/// },
/// EncoderSettings: &medialive.ChannelEncoderSettingsArgs{
/// TimecodeConfig: &medialive.ChannelEncoderSettingsTimecodeConfigArgs{
/// Source: pulumi.String("EMBEDDED"),
/// },
/// AudioDescriptions: medialive.ChannelEncoderSettingsAudioDescriptionArray{
/// &medialive.ChannelEncoderSettingsAudioDescriptionArgs{
/// AudioSelectorName: pulumi.String("example audio selector"),
/// Name:              pulumi.String("audio-selector"),
/// },
/// },
/// VideoDescriptions: medialive.ChannelEncoderSettingsVideoDescriptionArray{
/// &medialive.ChannelEncoderSettingsVideoDescriptionArgs{
/// Name: pulumi.String("example-video"),
/// },
/// },
/// OutputGroups: medialive.ChannelEncoderSettingsOutputGroupArray{
/// &medialive.ChannelEncoderSettingsOutputGroupArgs{
/// OutputGroupSettings: &medialive.ChannelEncoderSettingsOutputGroupOutputGroupSettingsArgs{
/// ArchiveGroupSettings: medialive.ChannelEncoderSettingsOutputGroupOutputGroupSettingsArchiveGroupSettingArray{
/// &medialive.ChannelEncoderSettingsOutputGroupOutputGroupSettingsArchiveGroupSettingArgs{
/// Destination: &medialive.ChannelEncoderSettingsOutputGroupOutputGroupSettingsArchiveGroupSettingDestinationArgs{
/// DestinationRefId: pulumi.String("destination"),
/// },
/// },
/// },
/// },
/// Outputs: medialive.ChannelEncoderSettingsOutputGroupOutputTypeArray{
/// &medialive.ChannelEncoderSettingsOutputGroupOutputTypeArgs{
/// OutputName:           pulumi.String("example-name"),
/// VideoDescriptionName: pulumi.String("example-video"),
/// AudioDescriptionNames: pulumi.StringArray{
/// pulumi.String("audio-selector"),
/// },
/// OutputSettings: &medialive.ChannelEncoderSettingsOutputGroupOutputOutputSettingsArgs{
/// ArchiveOutputSettings: &medialive.ChannelEncoderSettingsOutputGroupOutputOutputSettingsArchiveOutputSettingsArgs{
/// NameModifier: pulumi.String("_1"),
/// Extension:    pulumi.String("m2ts"),
/// ContainerSettings: &medialive.ChannelEncoderSettingsOutputGroupOutputOutputSettingsArchiveOutputSettingsContainerSettingsArgs{
/// M2tsSettings: &medialive.ChannelEncoderSettingsOutputGroupOutputOutputSettingsArchiveOutputSettingsContainerSettingsM2tsSettingsArgs{
/// AudioBufferModel: pulumi.String("ATSC"),
/// BufferModel:      pulumi.String("MULTIPLEX"),
/// RateMode:         pulumi.String("CBR"),
/// },
/// },
/// },
/// },
/// },
/// },
/// },
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
/// import com.pulumi.aws.medialive.Channel;
/// import com.pulumi.aws.medialive.ChannelArgs;
/// import com.pulumi.aws.medialive.inputs.ChannelInputSpecificationArgs;
/// import com.pulumi.aws.medialive.inputs.ChannelInputAttachmentArgs;
/// import com.pulumi.aws.medialive.inputs.ChannelDestinationArgs;
/// import com.pulumi.aws.medialive.inputs.ChannelEncoderSettingsArgs;
/// import com.pulumi.aws.medialive.inputs.ChannelEncoderSettingsTimecodeConfigArgs;
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
/// var example = new Channel("example", ChannelArgs.builder()
/// .name("example-channel")
/// .channelClass("STANDARD")
/// .roleArn(exampleAwsIamRole.arn())
/// .inputSpecification(ChannelInputSpecificationArgs.builder()
/// .codec("AVC")
/// .inputResolution("HD")
/// .maximumBitrate("MAX_20_MBPS")
/// .build())
/// .inputAttachments(ChannelInputAttachmentArgs.builder()
/// .inputAttachmentName("example-input")
/// .inputId(exampleAwsMedialiveInput.id())
/// .build())
/// .destinations(ChannelDestinationArgs.builder()
/// .id("destination")
/// .settings(
/// ChannelDestinationSettingArgs.builder()
/// .url(String.format("s3://%s/test1", main.id()))
/// .build(),
/// ChannelDestinationSettingArgs.builder()
/// .url(String.format("s3://%s/test2", main2.id()))
/// .build())
/// .build())
/// .encoderSettings(ChannelEncoderSettingsArgs.builder()
/// .timecodeConfig(ChannelEncoderSettingsTimecodeConfigArgs.builder()
/// .source("EMBEDDED")
/// .build())
/// .audioDescriptions(ChannelEncoderSettingsAudioDescriptionArgs.builder()
/// .audioSelectorName("example audio selector")
/// .name("audio-selector")
/// .build())
/// .videoDescriptions(ChannelEncoderSettingsVideoDescriptionArgs.builder()
/// .name("example-video")
/// .build())
/// .outputGroups(ChannelEncoderSettingsOutputGroupArgs.builder()
/// .outputGroupSettings(ChannelEncoderSettingsOutputGroupOutputGroupSettingsArgs.builder()
/// .archiveGroupSettings(ChannelEncoderSettingsOutputGroupOutputGroupSettingsArchiveGroupSettingArgs.builder()
/// .destination(ChannelEncoderSettingsOutputGroupOutputGroupSettingsArchiveGroupSettingDestinationArgs.builder()
/// .destinationRefId("destination")
/// .build())
/// .build())
/// .build())
/// .outputs(ChannelEncoderSettingsOutputGroupOutputArgs.builder()
/// .outputName("example-name")
/// .videoDescriptionName("example-video")
/// .audioDescriptionNames("audio-selector")
/// .outputSettings(ChannelEncoderSettingsOutputGroupOutputOutputSettingsArgs.builder()
/// .archiveOutputSettings(ChannelEncoderSettingsOutputGroupOutputOutputSettingsArchiveOutputSettingsArgs.builder()
/// .nameModifier("_1")
/// .extension("m2ts")
/// .containerSettings(ChannelEncoderSettingsOutputGroupOutputOutputSettingsArchiveOutputSettingsContainerSettingsArgs.builder()
/// .m2tsSettings(ChannelEncoderSettingsOutputGroupOutputOutputSettingsArchiveOutputSettingsContainerSettingsM2tsSettingsArgs.builder()
/// .audioBufferModel("ATSC")
/// .bufferModel("MULTIPLEX")
/// .rateMode("CBR")
/// .build())
/// .build())
/// .build())
/// .build())
/// .build())
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
/// type: aws:medialive:Channel
/// properties:
/// name: example-channel
/// channelClass: STANDARD
/// roleArn: ${exampleAwsIamRole.arn}
/// inputSpecification:
/// codec: AVC
/// inputResolution: HD
/// maximumBitrate: MAX_20_MBPS
/// inputAttachments:
/// - inputAttachmentName: example-input
/// inputId: ${exampleAwsMedialiveInput.id}
/// destinations:
/// - id: destination
/// settings:
/// - url: s3://${main.id}/test1
/// - url: s3://${main2.id}/test2
/// encoderSettings:
/// timecodeConfig:
/// source: EMBEDDED
/// audioDescriptions:
/// - audioSelectorName: example audio selector
/// name: audio-selector
/// videoDescriptions:
/// - name: example-video
/// outputGroups:
/// - outputGroupSettings:
/// archiveGroupSettings:
/// - destination:
/// destinationRefId: destination
/// outputs:
/// - outputName: example-name
/// videoDescriptionName: example-video
/// audioDescriptionNames:
/// - audio-selector
/// outputSettings:
/// archiveOutputSettings:
/// nameModifier: _1
/// extension: m2ts
/// containerSettings:
/// m2tsSettings:
/// audioBufferModel: ATSC
/// bufferModel: MULTIPLEX
/// rateMode: CBR
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import MediaLive Channel using the <span pulumi-lang-nodejs="`channelId`" pulumi-lang-dotnet="`ChannelId`" pulumi-lang-go="`channelId`" pulumi-lang-python="`channel_id`" pulumi-lang-yaml="`channelId`" pulumi-lang-java="`channelId`">`channel_id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:medialive/channel:Channel example 1234567
/// ```
class Channel2 extends CustomResource {
  /// ARN of the Channel.
  late final Output<String> arn;

  /// Specification of CDI inputs for this channel. See CDI Input Specification for more details.
  late final Output<ChannelCdiInputSpecification?> cdiInputSpecification;

  /// Concise argument description.
  late final Output<String> channelClass;

  /// ID of the Channel.
  late final Output<String> channelId;

  /// Destinations for channel. See Destinations for more details.
  late final Output<List<ChannelDestination>> destinations;

  /// Encoder settings. See Encoder Settings for more details.
  late final Output<ChannelEncoderSettings> encoderSettings;

  /// Input attachments for the channel. See Input Attachments for more details.
  late final Output<List<ChannelInputAttachment>> inputAttachments;

  /// Specification of network and file inputs for the channel.
  late final Output<ChannelInputSpecification> inputSpecification;

  /// The log level to write to Cloudwatch logs.
  late final Output<String> logLevel;

  /// Maintenance settings for this channel. See Maintenance for more details.
  late final Output<ChannelMaintenance> maintenance;

  /// Name of the Channel.
  ///
  /// The following arguments are optional:
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Concise argument description.
  late final Output<String?> roleArn;

  /// Whether to start/stop channel. Default: <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>
  late final Output<bool?> startChannel;

  /// A map of tags to assign to the channel. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;
  late final Output<Map<String, String>> tagsAll;

  /// Settings for the VPC outputs. See VPC for more details.
  late final Output<ChannelVpc?> vpc;

  Channel2(
    String name, {
    ChannelArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:medialive/channel:Channel',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.cdiInputSpecification =
        Output.createUnknown<ChannelCdiInputSpecification?>();
    this.channelClass = Output.createUnknown<String>();
    this.channelId = Output.createUnknown<String>();
    this.destinations = Output.createUnknown<List<ChannelDestination>>();
    this.encoderSettings = Output.createUnknown<ChannelEncoderSettings>();
    this.inputAttachments =
        Output.createUnknown<List<ChannelInputAttachment>>();
    this.inputSpecification = Output.createUnknown<ChannelInputSpecification>();
    this.logLevel = Output.createUnknown<String>();
    this.maintenance = Output.createUnknown<ChannelMaintenance>();
    this.name = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.roleArn = Output.createUnknown<String?>();
    this.startChannel = Output.createUnknown<bool?>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.vpc = Output.createUnknown<ChannelVpc?>();
  }
}
