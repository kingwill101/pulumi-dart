// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'alexa_channel_properties.dart';

/// Alexa channel definition
class AlexaChannel {
  /// The channel name
  /// Expected value is 'AlexaChannel'.
  final pulumi.Input<String> channelName;
  /// Entity Tag of the resource
  final pulumi.Input<String?>? etag;
  /// Specifies the location of the resource.
  final pulumi.Input<String?>? location;
  /// The set of properties specific to Alexa channel resource
  final pulumi.Input<AlexaChannelProperties?>? properties;

  /// Creates a new [AlexaChannel].
  /// [channelName] The channel name
  /// [etag] Entity Tag of the resource
  /// [location] Specifies the location of the resource.
  /// [properties] The set of properties specific to Alexa channel resource
  AlexaChannel({
    required this.channelName,
    this.etag,
    pulumi.Input<String?>? location,
    this.properties,
  }) : location = location ?? pulumi.Input.fromValue('global');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channelName': channelName,
      'etag': ?etag,
      'location': ?location,
      'properties': ?pulumi.Input.mapOptionalInputValue<AlexaChannelProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
    };
  }

  factory AlexaChannel.fromMap(Map<String, dynamic> map) {
    return AlexaChannel(
      channelName: pulumi.Input.fromValue(map['channelName'] as String),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AlexaChannelProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
