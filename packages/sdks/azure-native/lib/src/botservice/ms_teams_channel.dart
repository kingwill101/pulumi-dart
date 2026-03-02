// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ms_teams_channel_properties.dart';

/// Microsoft Teams channel definition
class MsTeamsChannel {
  /// The channel name
  /// Expected value is 'MsTeamsChannel'.
  final pulumi.Input<String> channelName;
  /// Entity Tag of the resource
  final pulumi.Input<String>? etag;
  /// Specifies the location of the resource.
  final pulumi.Input<String>? location;
  /// The set of properties specific to Microsoft Teams channel resource
  final pulumi.Input<MsTeamsChannelProperties>? properties;

  /// Creates a new [MsTeamsChannel].
  /// [channelName] The channel name
  /// [etag] Entity Tag of the resource
  /// [location] Specifies the location of the resource.
  /// [properties] The set of properties specific to Microsoft Teams channel resource
  MsTeamsChannel({
    required this.channelName,
    this.etag,
    this.location,
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channelName': channelName,
      'etag': ?etag,
      'location': ?location,
      'properties': ?pulumi.Input.mapOptionalInputValue<MsTeamsChannelProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
    };
  }

  factory MsTeamsChannel.fromMap(Map<String, dynamic> map) {
    return MsTeamsChannel(
      channelName: (map['channelName'] as String).input(),
      etag: map['etag'] == null ? null : (map['etag']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      properties: map['properties'] == null ? null : (MsTeamsChannelProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

