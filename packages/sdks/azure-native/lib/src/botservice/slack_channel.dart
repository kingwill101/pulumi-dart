// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'slack_channel_properties.dart';

/// Slack channel definition
class SlackChannel {
  /// The channel name
  /// Expected value is 'SlackChannel'.
  final pulumi.Input<String> channelName;
  /// Entity Tag of the resource
  final pulumi.Input<String?>? etag;
  /// Specifies the location of the resource.
  final pulumi.Input<String?>? location;
  /// The set of properties specific to Slack channel resource
  final pulumi.Input<SlackChannelProperties?>? properties;

  /// Creates a new [SlackChannel].
  /// [channelName] The channel name
  /// [etag] Entity Tag of the resource
  /// [location] Specifies the location of the resource.
  /// [properties] The set of properties specific to Slack channel resource
  SlackChannel({
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
      'properties': ?pulumi.Input.mapOptionalInputValue<SlackChannelProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
    };
  }

  factory SlackChannel.fromMap(Map<String, dynamic> map) {
    return SlackChannel(
      channelName: pulumi.Input.fromValue(map['channelName'] as String),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SlackChannelProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
