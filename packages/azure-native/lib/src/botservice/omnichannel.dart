// ignore_for_file: unused_element, unnecessary_cast


/// Omnichannel channel definition
class Omnichannel {
  /// The channel name
  /// Expected value is 'Omnichannel'.
  final String channelName;
  /// Entity Tag of the resource
  final String? etag;
  /// Specifies the location of the resource.
  final String? location;

  /// Creates a new [Omnichannel].
  /// [channelName] The channel name
  /// [etag] Entity Tag of the resource
  /// [location] Specifies the location of the resource.
  Omnichannel({
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

  factory Omnichannel.fromMap(Map<String, dynamic> map) {
    return Omnichannel(
      channelName: map['channelName'] as String,
      etag: map['etag'] == null ? null : map['etag'] as String,
      location: map['location'] == null ? null : map['location'] as String,
    );
  }
}

