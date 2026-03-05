// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'facebook_channel_properties.dart';

/// Facebook channel definition
class FacebookChannel {
  /// The channel name
  /// Expected value is 'FacebookChannel'.
  final pulumi.Input<String> channelName;
  /// Entity Tag of the resource
  final pulumi.Input<String>? etag;
  /// Specifies the location of the resource.
  final pulumi.Input<String>? location;
  /// The set of properties specific to bot facebook channel
  final pulumi.Input<FacebookChannelProperties>? properties;

  /// Creates a new [FacebookChannel].
  /// [channelName] The channel name
  /// [etag] Entity Tag of the resource
  /// [location] Specifies the location of the resource.
  /// [properties] The set of properties specific to bot facebook channel
  FacebookChannel({
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
      'properties': ?pulumi.Input.mapOptionalInputValue<FacebookChannelProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
    };
  }

  factory FacebookChannel.fromMap(Map<String, dynamic> map) {
    return FacebookChannel(
      channelName: pulumi.Input.fromValue(map['channelName'] as String),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FacebookChannelProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

