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
    required this.destinationConfiguration,
    this.name,
    this.recordingReconnectWindowSeconds,
    this.region,
    this.tags,
    this.thumbnailConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationConfiguration':
          pulumi.Input.mapInputValue<
            RecordingConfigurationDestinationConfiguration,
            Map<String, dynamic>
          >(destinationConfiguration, (value) => value.toMap()),
      'name': ?name,
      'recordingReconnectWindowSeconds': ?recordingReconnectWindowSeconds,
      'region': ?region,
      'tags': ?tags,
      'thumbnailConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            RecordingConfigurationThumbnailConfiguration,
            Map<String, dynamic>
          >(thumbnailConfiguration, (value) => value.toMap()),
    };
  }

  factory RecordingConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return RecordingConfigurationArgs(
      destinationConfiguration: pulumi.Input.fromValue(
        RecordingConfigurationDestinationConfiguration.fromMap(
          (map['destinationConfiguration']! as Map).cast<String, dynamic>(),
        ),
      ),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      recordingReconnectWindowSeconds: (() {
        final guardedValue = map['recordingReconnectWindowSeconds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      thumbnailConfiguration: (() {
        final guardedValue = map['thumbnailConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RecordingConfigurationThumbnailConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
