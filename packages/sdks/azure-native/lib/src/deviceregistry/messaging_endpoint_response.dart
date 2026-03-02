// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Namespace messaging endpoint model used by a device to connect to a service.
class MessagingEndpointResponse {
  /// The endpoint address to connect to.
  final pulumi.Input<String> address;
  /// Type of connection used for messaging endpoint.
  final pulumi.Input<String>? endpointType;
  /// The messaging endpoint Azure resource Id.
  final pulumi.Input<String>? resourceId;

  /// Creates a new [MessagingEndpointResponse].
  /// [address] The endpoint address to connect to.
  /// [endpointType] Type of connection used for messaging endpoint.
  /// [resourceId] The messaging endpoint Azure resource Id.
  MessagingEndpointResponse({
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

  factory MessagingEndpointResponse.fromMap(Map<String, dynamic> map) {
    return MessagingEndpointResponse(
      address: (map['address'] as String).input(),
      endpointType: map['endpointType'] == null ? null : (map['endpointType']! as String).input(),
      resourceId: map['resourceId'] == null ? null : (map['resourceId']! as String).input(),
    );
  }
}

