// ignore_for_file: unused_element, unnecessary_cast


/// M365 Extensions definition
class M365ExtensionsResponse {
  /// The channel name
  /// Expected value is 'M365Extensions'.
  final String channelName;
  /// Entity Tag of the resource
  final String? etag;
  /// Specifies the location of the resource.
  final String? location;
  /// Provisioning state of the resource
  final String provisioningState;

  /// Creates a new [M365ExtensionsResponse].
  /// [channelName] The channel name
  /// [etag] Entity Tag of the resource
  /// [location] Specifies the location of the resource.
  /// [provisioningState] Provisioning state of the resource
  M365ExtensionsResponse({
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

  factory M365ExtensionsResponse.fromMap(Map<String, dynamic> map) {
    return M365ExtensionsResponse(
      channelName: map['channelName'] as String,
      etag: map['etag'] == null ? null : map['etag'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      provisioningState: map['provisioningState'] as String,
    );
  }
}

