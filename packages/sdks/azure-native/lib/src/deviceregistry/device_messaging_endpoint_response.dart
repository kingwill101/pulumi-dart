// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Device messaging endpoint model.
class DeviceMessagingEndpointResponse {
  /// The endpoint address to connect to.
  final pulumi.Input<String> address;
  /// Type of connection used for the messaging endpoint.
  final pulumi.Input<String>? endpointType;

  /// Creates a new [DeviceMessagingEndpointResponse].
  /// [address] The endpoint address to connect to.
  /// [endpointType] Type of connection used for the messaging endpoint.
  DeviceMessagingEndpointResponse({
    required this.address,
    this.endpointType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
      'endpointType': ?endpointType,
    };
  }

  factory DeviceMessagingEndpointResponse.fromMap(Map<String, dynamic> map) {
    return DeviceMessagingEndpointResponse(
      address: (map['address'] as String).input(),
      endpointType: map['endpointType'] == null ? null : (map['endpointType']! as String).input(),
    );
  }
}

