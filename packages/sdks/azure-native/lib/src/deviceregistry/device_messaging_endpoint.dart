// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Device messaging endpoint model.
class DeviceMessagingEndpoint {
  /// The endpoint address to connect to.
  final pulumi.Input<String> address;
  /// Type of connection used for the messaging endpoint.
  final pulumi.Input<String>? endpointType;

  /// Creates a new [DeviceMessagingEndpoint].
  /// [address] The endpoint address to connect to.
  /// [endpointType] Type of connection used for the messaging endpoint.
  const DeviceMessagingEndpoint({
    required this.address,
    this.endpointType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
      'endpointType': ?endpointType,
    };
  }

  factory DeviceMessagingEndpoint.fromMap(Map<String, dynamic> map) {
    return DeviceMessagingEndpoint(
      address: pulumi.Input.fromValue(map['address'] as String),
      endpointType: (() { final guardedValue = map['endpointType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

