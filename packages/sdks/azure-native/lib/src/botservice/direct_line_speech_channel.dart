// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'direct_line_speech_channel_properties.dart';

/// DirectLine Speech channel definition
class DirectLineSpeechChannel {
  /// The channel name
  /// Expected value is 'DirectLineSpeechChannel'.
  final pulumi.Input<String> channelName;
  /// Entity Tag of the resource
  final pulumi.Input<String>? etag;
  /// Specifies the location of the resource.
  final pulumi.Input<String>? location;
  /// The set of properties specific to DirectLine Speech channel resource
  final pulumi.Input<DirectLineSpeechChannelProperties>? properties;

  /// Creates a new [DirectLineSpeechChannel].
  /// [channelName] The channel name
  /// [etag] Entity Tag of the resource
  /// [location] Specifies the location of the resource.
  /// [properties] The set of properties specific to DirectLine Speech channel resource
  const DirectLineSpeechChannel({
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
      'properties': ?pulumi.Input.mapOptionalInputValue<DirectLineSpeechChannelProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
    };
  }

  factory DirectLineSpeechChannel.fromMap(Map<String, dynamic> map) {
    return DirectLineSpeechChannel(
      channelName: pulumi.Input.fromValue(map['channelName'] as String),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DirectLineSpeechChannelProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

