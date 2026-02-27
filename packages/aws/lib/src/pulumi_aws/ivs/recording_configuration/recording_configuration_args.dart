// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../recording_configuration_destination_configuration/recording_configuration_destination_configuration.dart';
import '../recording_configuration_thumbnail_configuration/recording_configuration_thumbnail_configuration.dart';

/// The set of arguments for RecordingConfiguration.
class RecordingConfigurationArgs {
  /// Object containing destination configuration for where recorded video will be stored.
  final pulumi.Input<RecordingConfigurationDestinationConfiguration>
      destinationConfiguration;

  /// Recording Configuration name.
  final pulumi.Input<String>? name;

  /// If a broadcast disconnects and then reconnects within the specified interval, the multiple streams will be considered a single broadcast and merged together.
  final pulumi.Input<int>? recordingReconnectWindowSeconds;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Object containing information to enable/disable the recording of thumbnails for a live session and modify the interval at which thumbnails are generated for the live session.
  final pulumi.Input<RecordingConfigurationThumbnailConfiguration>?
      thumbnailConfiguration;

  RecordingConfigurationArgs({
    required this.destinationConfiguration,
    this.name,
    this.recordingReconnectWindowSeconds,
    this.region,
    this.tags,
    this.thumbnailConfiguration,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['destinationConfiguration'] = pulumi.Input.mapInputValue<
            RecordingConfigurationDestinationConfiguration,
            Map<String, dynamic>>(
        destinationConfiguration, (value) => value.toMap());
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final recordingReconnectWindowSecondsValue =
        recordingReconnectWindowSeconds;
    if (recordingReconnectWindowSecondsValue != null) {
      map['recordingReconnectWindowSeconds'] =
          recordingReconnectWindowSecondsValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final thumbnailConfigurationValue = thumbnailConfiguration;
    if (thumbnailConfigurationValue != null) {
      map['thumbnailConfiguration'] = pulumi.Input.mapOptionalInputValue<
              RecordingConfigurationThumbnailConfiguration,
              Map<String, dynamic>>(
          thumbnailConfigurationValue, (value) => value.toMap());
    }
    return map;
  }

  factory RecordingConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return RecordingConfigurationArgs(
      destinationConfiguration:
          pulumi.Input.asInput<RecordingConfigurationDestinationConfiguration>(
              map['destinationConfiguration']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      recordingReconnectWindowSeconds: pulumi.Input.asOptionalInput<int>(
          map['recordingReconnectWindowSeconds']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      thumbnailConfiguration: pulumi.Input.asOptionalInput<
              RecordingConfigurationThumbnailConfiguration>(
          map['thumbnailConfiguration']),
    );
  }
}
