// ignore_for_file: unused_element, unnecessary_cast


/// Namespace messaging endpoint model used by a device to connect to a service.
class MessagingEndpoint {
  /// The endpoint address to connect to.
  final String address;
  /// Type of connection used for messaging endpoint.
  final String? endpointType;
  /// The messaging endpoint Azure resource Id.
  final String? resourceId;

  /// Creates a new [MessagingEndpoint].
  /// [address] The endpoint address to connect to.
  /// [endpointType] Type of connection used for messaging endpoint.
  /// [resourceId] The messaging endpoint Azure resource Id.
  MessagingEndpoint({
    required this.address,
    this.endpointType,
    this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
      'endpointType': ?endpointType,
      'resourceId': ?resourceId,
    };
  }

  factory MessagingEndpoint.fromMap(Map<String, dynamic> map) {
    return MessagingEndpoint(
      address: map['address'] as String,
      endpointType: map['endpointType'] == null ? null : map['endpointType'] as String,
      resourceId: map['resourceId'] == null ? null : map['resourceId'] as String,
    );
  }
}

