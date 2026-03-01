// ignore_for_file: unused_element, unnecessary_cast

import 'ms_teams_channel_properties.dart';

/// Microsoft Teams channel definition
class MsTeamsChannel {
  /// The channel name
  /// Expected value is 'MsTeamsChannel'.
  final String channelName;
  /// Entity Tag of the resource
  final String? etag;
  /// Specifies the location of the resource.
  final String? location;
  /// The set of properties specific to Microsoft Teams channel resource
  final MsTeamsChannelProperties? properties;

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
      'properties': ?properties == null ? null : properties!.toMap(),
    };
  }

  factory MsTeamsChannel.fromMap(Map<String, dynamic> map) {
    return MsTeamsChannel(
      channelName: map['channelName'] as String,
      etag: map['etag'] == null ? null : map['etag'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      properties: map['properties'] == null ? null : MsTeamsChannelProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
    );
  }
}

