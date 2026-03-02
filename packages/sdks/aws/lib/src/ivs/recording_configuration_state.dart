// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'recording_configuration_destination_configuration.dart';
import 'recording_configuration_thumbnail_configuration.dart';

/// Input properties used for looking up and filtering RecordingConfiguration resources.
class RecordingConfigurationState {
  /// ARN of the Recording Configuration.
  final pulumi.Input<String>? arn;
  /// Object containing destination configuration for where recorded video will be stored.
  final pulumi.Input<RecordingConfigurationDestinationConfiguration>? destinationConfiguration;
  /// Recording Configuration name.
  final pulumi.Input<String>? name;
  /// If a broadcast disconnects and then reconnects within the specified interval, the multiple streams will be considered a single broadcast and merged together.
  final pulumi.Input<int>? recordingReconnectWindowSeconds;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The current state of the Recording Configuration.
  final pulumi.Input<String>? state;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Object containing information to enable/disable the recording of thumbnails for a live session and modify the interval at which thumbnails are generated for the live session.
  final pulumi.Input<RecordingConfigurationThumbnailConfiguration>? thumbnailConfiguration;

  /// Creates a new [RecordingConfigurationState].
  /// [arn] ARN of the Recording Configuration.
  /// [destinationConfiguration] Object containing destination configuration for where recorded video will be stored.
  /// [name] Recording Configuration name.
  /// [recordingReconnectWindowSeconds] If a broadcast disconnects and then reconnects within the specified interval, the multiple streams will be considered a single broadcast and merged together.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [state] The current state of the Recording Configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [thumbnailConfiguration] Object containing information to enable/disable the recording of thumbnails for a live session and modify the interval at which thumbnails are generated for the live session.
  RecordingConfigurationState({
    this.arn,
    this.destinationConfiguration,
    this.name,
    this.recordingReconnectWindowSeconds,
    this.region,
    this.state,
    this.tags,
    this.tagsAll,
    this.thumbnailConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'destinationConfiguration': ?pulumi.Input.mapOptionalInputValue<RecordingConfigurationDestinationConfiguration, Map<String, dynamic>>(destinationConfiguration, (value) => value.toMap()),
      'name': ?name,
      'recordingReconnectWindowSeconds': ?recordingReconnectWindowSeconds,
      'region': ?region,
      'state': ?state,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'thumbnailConfiguration': ?pulumi.Input.mapOptionalInputValue<RecordingConfigurationThumbnailConfiguration, Map<String, dynamic>>(thumbnailConfiguration, (value) => value.toMap()),
    };
  }

  factory RecordingConfigurationState.fromMap(Map<String, dynamic> map) {
    return RecordingConfigurationState(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      destinationConfiguration: map['destinationConfiguration'] == null ? null : (RecordingConfigurationDestinationConfiguration.fromMap((map['destinationConfiguration'] as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      recordingReconnectWindowSeconds: map['recordingReconnectWindowSeconds'] == null ? null : (map['recordingReconnectWindowSeconds'] as int).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
      thumbnailConfiguration: map['thumbnailConfiguration'] == null ? null : (RecordingConfigurationThumbnailConfiguration.fromMap((map['thumbnailConfiguration'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

