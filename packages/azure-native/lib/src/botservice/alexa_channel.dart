// ignore_for_file: unused_element, unnecessary_cast

import 'alexa_channel_properties.dart';

/// Alexa channel definition
class AlexaChannel {
  /// The channel name
  /// Expected value is 'AlexaChannel'.
  final String channelName;
  /// Entity Tag of the resource
  final String? etag;
  /// Specifies the location of the resource.
  final String? location;
  /// The set of properties specific to Alexa channel resource
  final AlexaChannelProperties? properties;

  /// Creates a new [AlexaChannel].
  /// [channelName] The channel name
  /// [etag] Entity Tag of the resource
  /// [location] Specifies the location of the resource.
  /// [properties] The set of properties specific to Alexa channel resource
  AlexaChannel({
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

  factory AlexaChannel.fromMap(Map<String, dynamic> map) {
    return AlexaChannel(
      channelName: map['channelName'] as String,
      etag: map['etag'] == null ? null : map['etag'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      properties: map['properties'] == null ? null : AlexaChannelProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
    );
  }
}

