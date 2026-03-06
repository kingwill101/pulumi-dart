// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SpotInstanceRequestPrimaryNetworkInterface {
  /// Whether the network interface will be deleted when the instance terminates.
  final pulumi.Input<bool>? deleteOnTermination;
  /// ID of the network interface to attach.
  final pulumi.Input<String>? networkInterfaceId;

  /// Creates a new [SpotInstanceRequestPrimaryNetworkInterface].
  /// [deleteOnTermination] Whether the network interface will be deleted when the instance terminates.
  /// [networkInterfaceId] ID of the network interface to attach.
  const SpotInstanceRequestPrimaryNetworkInterface({
    this.deleteOnTermination,
    this.networkInterfaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deleteOnTermination': ?deleteOnTermination,
      'networkInterfaceId': ?networkInterfaceId,
    };
  }

  factory SpotInstanceRequestPrimaryNetworkInterface.fromMap(Map<String, dynamic> map) {
    return SpotInstanceRequestPrimaryNetworkInterface(
      deleteOnTermination: (() { final guardedValue = map['deleteOnTermination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      networkInterfaceId: (() { final guardedValue = map['networkInterfaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

