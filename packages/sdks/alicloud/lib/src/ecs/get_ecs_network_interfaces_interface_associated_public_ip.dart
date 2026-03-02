// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEcsNetworkInterfacesInterfaceAssociatedPublicIp {
  /// The EIP of the ENI.
  final pulumi.Input<String> publicIpAddress;

  /// Creates a new [GetEcsNetworkInterfacesInterfaceAssociatedPublicIp].
  /// [publicIpAddress] The EIP of the ENI.
  GetEcsNetworkInterfacesInterfaceAssociatedPublicIp({
    required this.publicIpAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publicIpAddress': publicIpAddress,
    };
  }

  factory GetEcsNetworkInterfacesInterfaceAssociatedPublicIp.fromMap(Map<String, dynamic> map) {
    return GetEcsNetworkInterfacesInterfaceAssociatedPublicIp(
      publicIpAddress: (map['publicIpAddress'] as String).input(),
    );
  }
}

