import 'package:pulumi/pulumi.dart';
import '../recording_configuration_destination_configuration/recording_configuration_destination_configuration.dart';
import '../recording_configuration_thumbnail_configuration/recording_configuration_thumbnail_configuration.dart';
import 'recording_configuration_args.dart';

/// Resource for managing an AWS IVS (Interactive Video) Recording Configuration.
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
/// const example = new aws.ivs.RecordingConfiguration("example", {
/// name: "recording_configuration-1",
/// destinationConfiguration: {
/// s3: {
/// bucketName: "ivs-stream-archive",
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ivs.RecordingConfiguration("example",
/// name="recording_configuration-1",
/// destination_configuration={
/// "s3": {
/// "bucket_name": "ivs-stream-archive",
/// },
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
/// var example = new Aws.Ivs.RecordingConfiguration("example", new()
/// {
/// Name = "recording_configuration-1",
/// DestinationConfiguration = new Aws.Ivs.Inputs.RecordingConfigurationDestinationConfigurationArgs
/// {
/// S3 = new Aws.Ivs.Inputs.RecordingConfigurationDestinationConfigurationS3Args
/// {
/// BucketName = "ivs-stream-archive",
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ivs"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ivs.NewRecordingConfiguration(ctx, "example", &ivs.RecordingConfigurationArgs{
/// Name: pulumi.String("recording_configuration-1"),
/// DestinationConfiguration: &ivs.RecordingConfigurationDestinationConfigurationArgs{
/// S3: &ivs.RecordingConfigurationDestinationConfigurationS3Args{
/// BucketName: pulumi.String("ivs-stream-archive"),
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
/// import com.pulumi.aws.ivs.RecordingConfiguration;
/// import com.pulumi.aws.ivs.RecordingConfigurationArgs;
/// import com.pulumi.aws.ivs.inputs.RecordingConfigurationDestinationConfigurationArgs;
/// import com.pulumi.aws.ivs.inputs.RecordingConfigurationDestinationConfigurationS3Args;
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
/// var example = new RecordingConfiguration("example", RecordingConfigurationArgs.builder()
/// .name("recording_configuration-1")
/// .destinationConfiguration(RecordingConfigurationDestinationConfigurationArgs.builder()
/// .s3(RecordingConfigurationDestinationConfigurationS3Args.builder()
/// .bucketName("ivs-stream-archive")
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
/// type: aws:ivs:RecordingConfiguration
/// properties:
/// name: recording_configuration-1
/// destinationConfiguration:
/// s3:
/// bucketName: ivs-stream-archive
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span> (String) Amazon Resource Name (ARN) of the IVS recording configuration.
///
///
/// Using `pulumi import`, import IVS (Interactive Video) Recording Configuration using the ARN. For example:
///
/// ```sh
/// $ pulumi import aws:ivs/recordingConfiguration:RecordingConfiguration example arn:aws:ivs:us-west-2:326937407773:recording-configuration/KAk1sHBl2L47
/// ```
class RecordingConfiguration extends CustomResource {
  /// ARN of the Recording Configuration.
  late final Output<String> arn;

  /// Object containing destination configuration for where recorded video will be stored.
  late final Output<RecordingConfigurationDestinationConfiguration>
      destinationConfiguration;

  /// Recording Configuration name.
  late final Output<String> name;

  /// If a broadcast disconnects and then reconnects within the specified interval, the multiple streams will be considered a single broadcast and merged together.
  late final Output<int> recordingReconnectWindowSeconds;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The current state of the Recording Configuration.
  late final Output<String> state;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Object containing information to enable/disable the recording of thumbnails for a live session and modify the interval at which thumbnails are generated for the live session.
  late final Output<RecordingConfigurationThumbnailConfiguration>
      thumbnailConfiguration;

  RecordingConfiguration(
    String name, {
    RecordingConfigurationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ivs/recordingConfiguration:RecordingConfiguration',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.destinationConfiguration =
        registerOutput<RecordingConfigurationDestinationConfiguration>(
            'destinationConfiguration');
    this.name = registerOutput<String>('name');
    this.recordingReconnectWindowSeconds =
        registerOutput<int>('recordingReconnectWindowSeconds');
    this.region = registerOutput<String>('region');
    this.state = registerOutput<String>('state');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.thumbnailConfiguration =
        registerOutput<RecordingConfigurationThumbnailConfiguration>(
            'thumbnailConfiguration');
  }
}
