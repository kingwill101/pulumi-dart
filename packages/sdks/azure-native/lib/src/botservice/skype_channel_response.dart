// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'skype_channel_properties_response.dart';

/// Skype channel definition
class SkypeChannelResponse {
  /// The channel name
  /// Expected value is 'SkypeChannel'.
  final pulumi.Input<String> channelName;
  /// Entity Tag of the resource
  final pulumi.Input<String?>? etag;
  /// Specifies the location of the resource.
  final pulumi.Input<String?>? location;
  /// The set of properties specific to Skype channel resource
  final pulumi.Input<SkypeChannelPropertiesResponse?>? properties;
  /// Provisioning state of the resource
  final pulumi.Input<String> provisioningState;

  /// Creates a new [SkypeChannelResponse].
  /// [channelName] The channel name
  /// [etag] Entity Tag of the resource
  /// [location] Specifies the location of the resource.
  /// [properties] The set of properties specific to Skype channel resource
  /// [provisioningState] Provisioning state of the resource
  SkypeChannelResponse({
    required this.channelName,
    this.etag,
    pulumi.Input<String?>? location,
    this.properties,
    required this.provisioningState,
  }) : location = location ?? pulumi.Input.fromValue('global');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channelName': channelName,
      'etag': ?etag,
      'location': ?location,
      'properties': ?pulumi.Input.mapOptionalInputValue<SkypeChannelPropertiesResponse, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'provisioningState': provisioningState,
    };
  }

  factory SkypeChannelResponse.fromMap(Map<String, dynamic> map) {
    return SkypeChannelResponse(
      channelName: pulumi.Input.fromValue(map['channelName'] as String),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SkypeChannelPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
    );
  }
}
