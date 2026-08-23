// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EndpointNetworkInterface {
  /// Identifier of the Elastic Network Interface (ENI).
  final pulumi.Input<String>? networkInterfaceId;

  /// Creates a new [EndpointNetworkInterface].
  /// [networkInterfaceId] Identifier of the Elastic Network Interface (ENI).
  const EndpointNetworkInterface({
    this.networkInterfaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkInterfaceId': ?networkInterfaceId,
    };
  }

  factory EndpointNetworkInterface.fromMap(Map<String, dynamic> map) {
    return EndpointNetworkInterface(
      networkInterfaceId: (() { final guardedValue = map['networkInterfaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
