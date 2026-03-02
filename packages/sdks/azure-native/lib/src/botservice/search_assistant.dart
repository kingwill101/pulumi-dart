// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// SearchAssistant definition
class SearchAssistant {
  /// The channel name
  /// Expected value is 'SearchAssistant'.
  final pulumi.Input<String> channelName;
  /// Entity Tag of the resource
  final pulumi.Input<String>? etag;
  /// Specifies the location of the resource.
  final pulumi.Input<String>? location;

  /// Creates a new [SearchAssistant].
  /// [channelName] The channel name
  /// [etag] Entity Tag of the resource
  /// [location] Specifies the location of the resource.
  SearchAssistant({
    required this.channelName,
    this.etag,
    this.location,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channelName': channelName,
      'etag': ?etag,
      'location': ?location,
    };
  }

  factory SearchAssistant.fromMap(Map<String, dynamic> map) {
    return SearchAssistant(
      channelName: (map['channelName'] as String).input(),
      etag: map['etag'] == null ? null : (map['etag']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
    );
  }
}

