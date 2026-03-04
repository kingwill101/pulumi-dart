// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'direct_line_channel_properties_response.dart';

/// Direct Line channel definition
class DirectLineChannelResponse {
  /// The channel name
  /// Expected value is 'DirectLineChannel'.
  final pulumi.Input<String> channelName;

  /// Entity Tag of the resource
  final pulumi.Input<String>? etag;

  /// Specifies the location of the resource.
  final pulumi.Input<String>? location;

  /// The set of properties specific to Direct Line channel resource
  final pulumi.Input<DirectLineChannelPropertiesResponse>? properties;

  /// Provisioning state of the resource
  final pulumi.Input<String> provisioningState;

  /// Creates a new [DirectLineChannelResponse].
  /// [channelName] The channel name
  /// [etag] Entity Tag of the resource
  /// [location] Specifies the location of the resource.
  /// [properties] The set of properties specific to Direct Line channel resource
  /// [provisioningState] Provisioning state of the resource
  DirectLineChannelResponse({
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
            DirectLineChannelPropertiesResponse,
            Map<String, dynamic>
          >(properties, (value) => value.toMap()),
      'provisioningState': provisioningState,
    };
  }

  factory DirectLineChannelResponse.fromMap(Map<String, dynamic> map) {
    return DirectLineChannelResponse(
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
          DirectLineChannelPropertiesResponse.fromMap(
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
