// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// SearchAssistant definition
class SearchAssistantResponse {
  /// The channel name
  /// Expected value is 'SearchAssistant'.
  final pulumi.Input<String> channelName;

  /// Entity Tag of the resource
  final pulumi.Input<String>? etag;

  /// Specifies the location of the resource.
  final pulumi.Input<String>? location;

  /// Provisioning state of the resource
  final pulumi.Input<String> provisioningState;

  /// Creates a new [SearchAssistantResponse].
  /// [channelName] The channel name
  /// [etag] Entity Tag of the resource
  /// [location] Specifies the location of the resource.
  /// [provisioningState] Provisioning state of the resource
  SearchAssistantResponse({
    required this.channelName,
    this.etag,
    this.location,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channelName': channelName,
      'etag': ?etag,
      'location': ?location,
      'provisioningState': provisioningState,
    };
  }

  factory SearchAssistantResponse.fromMap(Map<String, dynamic> map) {
    return SearchAssistantResponse(
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
      provisioningState: pulumi.Input.fromValue(
        map['provisioningState'] as String,
      ),
    );
  }
}
