import 'package:pulumi/pulumi.dart' as pulumi;
import '../recording_configuration_destination_configuration/recording_configuration_destination_configuration.dart';
import '../recording_configuration_thumbnail_configuration/recording_configuration_thumbnail_configuration.dart';
import 'recording_configuration_args.dart';

/// Resource for managing an AWS IVS (Interactive Video) Recording Configuration.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the IVS recording configuration.
///
///
/// Using `pulumi import`, import IVS (Interactive Video) Recording Configuration using the ARN. For example:
///
/// ```sh
/// $ pulumi import aws:ivs/recordingConfiguration:RecordingConfiguration example arn:aws:ivs:us-west-2:326937407773:recording-configuration/KAk1sHBl2L47
/// ```
class RecordingConfiguration extends pulumi.CustomResource {
  /// ARN of the Recording Configuration.
  late final pulumi.Output<String> arn;

  /// Object containing destination configuration for where recorded video will be stored.
  late final pulumi.Output<RecordingConfigurationDestinationConfiguration>
      destinationConfiguration;

  /// Recording Configuration name.
  late final pulumi.Output<String> name;

  /// If a broadcast disconnects and then reconnects within the specified interval, the multiple streams will be considered a single broadcast and merged together.
  late final pulumi.Output<int> recordingReconnectWindowSeconds;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The current state of the Recording Configuration.
  late final pulumi.Output<String> state;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Object containing information to enable/disable the recording of thumbnails for a live session and modify the interval at which thumbnails are generated for the live session.
  late final pulumi.Output<RecordingConfigurationThumbnailConfiguration>
      thumbnailConfiguration;

  RecordingConfiguration(
    String name, {
    RecordingConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ivs/recordingConfiguration:RecordingConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
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
