// ignore_for_file: unused_element, unnecessary_cast


/// AcsChat channel definition
class AcsChatChannel {
  /// The channel name
  /// Expected value is 'AcsChatChannel'.
  final String channelName;
  /// Entity Tag of the resource
  final String? etag;
  /// Specifies the location of the resource.
  final String? location;

  /// Creates a new [AcsChatChannel].
  /// [channelName] The channel name
  /// [etag] Entity Tag of the resource
  /// [location] Specifies the location of the resource.
  AcsChatChannel({
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

  factory AcsChatChannel.fromMap(Map<String, dynamic> map) {
    return AcsChatChannel(
      channelName: map['channelName'] as String,
      etag: map['etag'] == null ? null : map['etag'] as String,
      location: map['location'] == null ? null : map['location'] as String,
    );
  }
}

