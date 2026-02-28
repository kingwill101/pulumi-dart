// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'recording_configuration_destination_configuration.dart';
import 'recording_configuration_thumbnail_configuration.dart';

/// {@template pulumi_ivs_recording_configuration_recording_configuration_args_doc}
/// The set of arguments for RecordingConfiguration.
/// {@endtemplate}
/// {@macro pulumi_ivs_recording_configuration_recording_configuration_args_doc}
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

  /// Creates a new [RecordingConfigurationArgs].
  /// [destinationConfiguration] Object containing destination configuration for where recorded video will be stored.
  /// [name] Recording Configuration name.
  /// [recordingReconnectWindowSeconds] If a broadcast disconnects and then reconnects within the specified interval, the multiple streams will be considered a single broadcast and merged together.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [thumbnailConfiguration] Object containing information to enable/disable the recording of thumbnails for a live session and modify the interval at which thumbnails are generated for the live session.
  RecordingConfigurationArgs({
    required RecordingConfigurationDestinationConfiguration
        destinationConfiguration,
    String? name,
    int? recordingReconnectWindowSeconds,
    String? region,
    Map<String, String>? tags,
    RecordingConfigurationThumbnailConfiguration? thumbnailConfiguration,
  })  : destinationConfiguration = pulumi.Input.asInput<
                RecordingConfigurationDestinationConfiguration>(
            destinationConfiguration),
        name = pulumi.Input.asOptionalInput<String>(name),
        recordingReconnectWindowSeconds =
            pulumi.Input.asOptionalInput<int>(recordingReconnectWindowSeconds),
        region = pulumi.Input.asOptionalInput<String>(region),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
        thumbnailConfiguration = pulumi.Input.asOptionalInput<
                RecordingConfigurationThumbnailConfiguration>(
            thumbnailConfiguration);

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
          RecordingConfigurationDestinationConfiguration.fromMap(
              (map['destinationConfiguration'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      recordingReconnectWindowSeconds:
          map['recordingReconnectWindowSeconds'] == null
              ? null
              : map['recordingReconnectWindowSeconds'] as int,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      thumbnailConfiguration: map['thumbnailConfiguration'] == null
          ? null
          : RecordingConfigurationThumbnailConfiguration.fromMap(
              (map['thumbnailConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}
