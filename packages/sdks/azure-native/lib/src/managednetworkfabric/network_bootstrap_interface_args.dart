// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_managednetworkfabric_network_bootstrap_interface_args_doc}
/// The set of arguments for NetworkBootstrapInterface.
/// {@endtemplate}
/// {@macro pulumi_managednetworkfabric_network_bootstrap_interface_args_doc}
class NetworkBootstrapInterfaceArgs {
  /// Additional description of the interface.
  final pulumi.Input<String>? additionalDescription;
  /// Switch configuration description.
  final pulumi.Input<String>? annotation;
  /// Name of the Network Bootstrap Device.
  final pulumi.Input<String> networkBootstrapDeviceName;
  /// Name of the Network Bootstrap Interface.
  final pulumi.Input<String>? networkBootstrapInterfaceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Serial number of the interface. Format of serial Number - Make;Model;HardwareRevisionId;SerialNumber.
  final pulumi.Input<String>? serialNumber;

  /// Creates a new [NetworkBootstrapInterfaceArgs].
  /// [additionalDescription] Additional description of the interface.
  /// [annotation] Switch configuration description.
  /// [networkBootstrapDeviceName] Name of the Network Bootstrap Device.
  /// [networkBootstrapInterfaceName] Name of the Network Bootstrap Interface.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serialNumber] Serial number of the interface. Format of serial Number - Make;Model;HardwareRevisionId;SerialNumber.
  const NetworkBootstrapInterfaceArgs({
    this.additionalDescription,
    this.annotation,
    required this.networkBootstrapDeviceName,
    this.networkBootstrapInterfaceName,
    required this.resourceGroupName,
    this.serialNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalDescription': ?additionalDescription,
      'annotation': ?annotation,
      'networkBootstrapDeviceName': networkBootstrapDeviceName,
      'networkBootstrapInterfaceName': ?networkBootstrapInterfaceName,
      'resourceGroupName': resourceGroupName,
      'serialNumber': ?serialNumber,
    };
  }

  factory NetworkBootstrapInterfaceArgs.fromMap(Map<String, dynamic> map) {
    return NetworkBootstrapInterfaceArgs(
      additionalDescription: (() { final guardedValue = map['additionalDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      annotation: (() { final guardedValue = map['annotation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkBootstrapDeviceName: pulumi.Input.fromValue(map['networkBootstrapDeviceName'] as String),
      networkBootstrapInterfaceName: (() { final guardedValue = map['networkBootstrapInterfaceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serialNumber: (() { final guardedValue = map['serialNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
