// ignore_for_file: unused_element, unnecessary_cast


/// SearchAssistant definition
class SearchAssistantResponse {
  /// The channel name
  /// Expected value is 'SearchAssistant'.
  final String channelName;
  /// Entity Tag of the resource
  final String? etag;
  /// Specifies the location of the resource.
  final String? location;
  /// Provisioning state of the resource
  final String provisioningState;

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
      channelName: map['channelName'] as String,
      etag: map['etag'] == null ? null : map['etag'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      provisioningState: map['provisioningState'] as String,
    );
  }
}

