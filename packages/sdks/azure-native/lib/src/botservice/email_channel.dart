// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'email_channel_properties.dart';

/// Email channel definition
class EmailChannel {
  /// The channel name
  /// Expected value is 'EmailChannel'.
  final pulumi.Input<String> channelName;
  /// Entity Tag of the resource
  final pulumi.Input<String>? etag;
  /// Specifies the location of the resource.
  final pulumi.Input<String>? location;
  /// The set of properties specific to email channel resource
  final pulumi.Input<EmailChannelProperties>? properties;

  /// Creates a new [EmailChannel].
  /// [channelName] The channel name
  /// [etag] Entity Tag of the resource
  /// [location] Specifies the location of the resource.
  /// [properties] The set of properties specific to email channel resource
  EmailChannel({
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
      'properties': ?pulumi.Input.mapOptionalInputValue<EmailChannelProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
    };
  }

  factory EmailChannel.fromMap(Map<String, dynamic> map) {
    return EmailChannel(
      channelName: (map['channelName'] as String).input(),
      etag: map['etag'] == null ? null : (map['etag']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      properties: map['properties'] == null ? null : (EmailChannelProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

