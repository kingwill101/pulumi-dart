// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_chat_channel_properties_response.dart';

/// Web Chat channel definition
class WebChatChannelResponse {
  /// The channel name
  /// Expected value is 'WebChatChannel'.
  final pulumi.Input<String> channelName;
  /// Entity Tag of the resource
  final pulumi.Input<String>? etag;
  /// Specifies the location of the resource.
  final pulumi.Input<String>? location;
  /// The set of properties specific to Web Chat channel resource
  final pulumi.Input<WebChatChannelPropertiesResponse>? properties;
  /// Provisioning state of the resource
  final pulumi.Input<String> provisioningState;

  /// Creates a new [WebChatChannelResponse].
  /// [channelName] The channel name
  /// [etag] Entity Tag of the resource
  /// [location] Specifies the location of the resource.
  /// [properties] The set of properties specific to Web Chat channel resource
  /// [provisioningState] Provisioning state of the resource
  WebChatChannelResponse({
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
      'properties': ?pulumi.Input.mapOptionalInputValue<WebChatChannelPropertiesResponse, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'provisioningState': provisioningState,
    };
  }

  factory WebChatChannelResponse.fromMap(Map<String, dynamic> map) {
    return WebChatChannelResponse(
      channelName: (map['channelName'] as String).input(),
      etag: map['etag'] == null ? null : (map['etag']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      properties: map['properties'] == null ? null : (WebChatChannelPropertiesResponse.fromMap((map['properties']! as Map).cast<String, dynamic>())).input(),
      provisioningState: (map['provisioningState'] as String).input(),
    );
  }
}

