// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'facebook_channel_properties_response.dart';

/// Facebook channel definition
class FacebookChannelResponse {
  /// The channel name
  /// Expected value is 'FacebookChannel'.
  final pulumi.Input<String> channelName;
  /// Entity Tag of the resource
  final pulumi.Input<String>? etag;
  /// Specifies the location of the resource.
  final pulumi.Input<String>? location;
  /// The set of properties specific to bot facebook channel
  final pulumi.Input<FacebookChannelPropertiesResponse>? properties;
  /// Provisioning state of the resource
  final pulumi.Input<String> provisioningState;

  /// Creates a new [FacebookChannelResponse].
  /// [channelName] The channel name
  /// [etag] Entity Tag of the resource
  /// [location] Specifies the location of the resource.
  /// [properties] The set of properties specific to bot facebook channel
  /// [provisioningState] Provisioning state of the resource
  FacebookChannelResponse({
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
      'properties': ?pulumi.Input.mapOptionalInputValue<FacebookChannelPropertiesResponse, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'provisioningState': provisioningState,
    };
  }

  factory FacebookChannelResponse.fromMap(Map<String, dynamic> map) {
    return FacebookChannelResponse(
      channelName: (map['channelName'] as String).input(),
      etag: map['etag'] == null ? null : (map['etag']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      properties: map['properties'] == null ? null : (FacebookChannelPropertiesResponse.fromMap((map['properties']! as Map).cast<String, dynamic>())).input(),
      provisioningState: (map['provisioningState'] as String).input(),
    );
  }
}

