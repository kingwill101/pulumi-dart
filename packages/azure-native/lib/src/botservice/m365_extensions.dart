// ignore_for_file: unused_element, unnecessary_cast


/// M365 Extensions definition
class M365Extensions {
  /// The channel name
  /// Expected value is 'M365Extensions'.
  final String channelName;
  /// Entity Tag of the resource
  final String? etag;
  /// Specifies the location of the resource.
  final String? location;

  /// Creates a new [M365Extensions].
  /// [channelName] The channel name
  /// [etag] Entity Tag of the resource
  /// [location] Specifies the location of the resource.
  M365Extensions({
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

  factory M365Extensions.fromMap(Map<String, dynamic> map) {
    return M365Extensions(
      channelName: map['channelName'] as String,
      etag: map['etag'] == null ? null : map['etag'] as String,
      location: map['location'] == null ? null : map['location'] as String,
    );
  }
}

