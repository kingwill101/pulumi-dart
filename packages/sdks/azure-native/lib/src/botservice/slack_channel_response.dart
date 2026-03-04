// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'slack_channel_properties_response.dart';

/// Slack channel definition
class SlackChannelResponse {
  /// The channel name
  /// Expected value is 'SlackChannel'.
  final pulumi.Input<String> channelName;

  /// Entity Tag of the resource
  final pulumi.Input<String>? etag;

  /// Specifies the location of the resource.
  final pulumi.Input<String>? location;

  /// The set of properties specific to Slack channel resource
  final pulumi.Input<SlackChannelPropertiesResponse>? properties;

  /// Provisioning state of the resource
  final pulumi.Input<String> provisioningState;

  /// Creates a new [SlackChannelResponse].
  /// [channelName] The channel name
  /// [etag] Entity Tag of the resource
  /// [location] Specifies the location of the resource.
  /// [properties] The set of properties specific to Slack channel resource
  /// [provisioningState] Provisioning state of the resource
  SlackChannelResponse({
    required this.channelName,
    this.etag,
    this.location,
    this.properties,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channelName': channelName,
      'etag': ?etag,
      'location': ?location,
      'properties':
          ?pulumi.Input.mapOptionalInputValue<
            SlackChannelPropertiesResponse,
            Map<String, dynamic>
          >(properties, (value) => value.toMap()),
      'provisioningState': provisioningState,
    };
  }

  factory SlackChannelResponse.fromMap(Map<String, dynamic> map) {
    return SlackChannelResponse(
      channelName: pulumi.Input.fromValue(map['channelName'] as String),
      etag: (() {
        final guardedValue = map['etag'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      properties: (() {
        final guardedValue = map['properties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SlackChannelPropertiesResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      provisioningState: pulumi.Input.fromValue(
        map['provisioningState'] as String,
      ),
    );
  }
}
