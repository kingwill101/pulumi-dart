// ignore_for_file: unused_element, unnecessary_cast


class RocketMQInstanceNetworkInfoEndpoint {
  /// Access point type.
  final String? endpointType;
  /// Access point address.
  final String? endpointUrl;
  /// White list of access addresses.
  final List<String>? ipWhiteLists;

  /// Creates a new [RocketMQInstanceNetworkInfoEndpoint].
  /// [endpointType] Access point type.
  /// [endpointUrl] Access point address.
  /// [ipWhiteLists] White list of access addresses.
  RocketMQInstanceNetworkInfoEndpoint({
    this.endpointType,
    this.endpointUrl,
    this.ipWhiteLists,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointType': ?endpointType,
      'endpointUrl': ?endpointUrl,
      'ipWhiteLists': ?ipWhiteLists,
    };
  }

  factory RocketMQInstanceNetworkInfoEndpoint.fromMap(Map<String, dynamic> map) {
    return RocketMQInstanceNetworkInfoEndpoint(
      endpointType: map['endpointType'] == null ? null : map['endpointType'] as String,
      endpointUrl: map['endpointUrl'] == null ? null : map['endpointUrl'] as String,
      ipWhiteLists: map['ipWhiteLists'] == null ? null : (map['ipWhiteLists'] as List).cast<String>(),
    );
  }
}

