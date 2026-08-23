// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_service_identity.dart';

/// {@template pulumi_managednetworkfabric_network_bootstrap_device_args_doc}
/// The set of arguments for NetworkBootstrapDevice.
/// {@endtemplate}
/// {@macro pulumi_managednetworkfabric_network_bootstrap_device_args_doc}
class NetworkBootstrapDeviceArgs {
  /// Switch configuration description.
  final pulumi.Input<String>? annotation;
  /// The host name of the device.
  final pulumi.Input<String>? hostName;
  /// The managed service identities assigned to this resource.
  final pulumi.Input<ManagedServiceIdentity>? identity;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Name of the Network Bootstrap Device.
  final pulumi.Input<String>? networkBootstrapDeviceName;
  /// Network Bootstrap Device SKU name.
  final pulumi.Input<String>? networkDeviceSku;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Serial number of the device. Format of serial Number - Make;Model;HardwareRevisionId;SerialNumber.
  final pulumi.Input<String>? serialNumber;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [NetworkBootstrapDeviceArgs].
  /// [annotation] Switch configuration description.
  /// [hostName] The host name of the device.
  /// [identity] The managed service identities assigned to this resource.
  /// [location] The geo-location where the resource lives
  /// [networkBootstrapDeviceName] Name of the Network Bootstrap Device.
  /// [networkDeviceSku] Network Bootstrap Device SKU name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serialNumber] Serial number of the device. Format of serial Number - Make;Model;HardwareRevisionId;SerialNumber.
  /// [tags] Resource tags.
  const NetworkBootstrapDeviceArgs({
    this.annotation,
    this.hostName,
    this.identity,
    this.location,
    this.networkBootstrapDeviceName,
    this.networkDeviceSku,
    required this.resourceGroupName,
    this.serialNumber,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotation': ?annotation,
      'hostName': ?hostName,
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'networkBootstrapDeviceName': ?networkBootstrapDeviceName,
      'networkDeviceSku': ?networkDeviceSku,
      'resourceGroupName': resourceGroupName,
      'serialNumber': ?serialNumber,
      'tags': ?tags,
    };
  }

  factory NetworkBootstrapDeviceArgs.fromMap(Map<String, dynamic> map) {
    return NetworkBootstrapDeviceArgs(
      annotation: (() { final guardedValue = map['annotation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostName: (() { final guardedValue = map['hostName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedServiceIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkBootstrapDeviceName: (() { final guardedValue = map['networkBootstrapDeviceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkDeviceSku: (() { final guardedValue = map['networkDeviceSku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serialNumber: (() { final guardedValue = map['serialNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
