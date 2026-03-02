// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SpotInstanceRequestNetworkInterface {
  /// Whether or not to delete the network interface on instance termination. Defaults to `false`. Currently, the only valid value is `false`, as this is only supported when creating new network interfaces when launching an instance.
  final pulumi.Input<bool>? deleteOnTermination;
  /// Integer index of the network interface attachment. Limited by instance type.
  final pulumi.Input<int> deviceIndex;
  /// Integer index of the network card. Limited by instance type. The default index is `0`.
  final pulumi.Input<int>? networkCardIndex;
  /// ID of the network interface to attach.
  final pulumi.Input<String> networkInterfaceId;

  /// Creates a new [SpotInstanceRequestNetworkInterface].
  /// [deleteOnTermination] Whether or not to delete the network interface on instance termination. Defaults to `false`. Currently, the only valid value is `false`, as this is only supported when creating new network interfaces when launching an instance.
  /// [deviceIndex] Integer index of the network interface attachment. Limited by instance type.
  /// [networkCardIndex] Integer index of the network card. Limited by instance type. The default index is `0`.
  /// [networkInterfaceId] ID of the network interface to attach.
  SpotInstanceRequestNetworkInterface({
    this.deleteOnTermination,
    required this.deviceIndex,
    this.networkCardIndex,
    required this.networkInterfaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deleteOnTermination': ?deleteOnTermination,
      'deviceIndex': deviceIndex,
      'networkCardIndex': ?networkCardIndex,
      'networkInterfaceId': networkInterfaceId,
    };
  }

  factory SpotInstanceRequestNetworkInterface.fromMap(Map<String, dynamic> map) {
    return SpotInstanceRequestNetworkInterface(
      deleteOnTermination: map['deleteOnTermination'] == null ? null : (map['deleteOnTermination'] as bool).input(),
      deviceIndex: (map['deviceIndex'] as int).input(),
      networkCardIndex: map['networkCardIndex'] == null ? null : (map['networkCardIndex'] as int).input(),
      networkInterfaceId: (map['networkInterfaceId'] as String).input(),
    );
  }
}

