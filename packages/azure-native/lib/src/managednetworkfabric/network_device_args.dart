// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_managednetworkfabric_network_device_args_doc}
/// The set of arguments for NetworkDevice.
/// {@endtemplate}
/// {@macro pulumi_managednetworkfabric_network_device_args_doc}
class NetworkDeviceArgs {
  /// Switch configuration description.
  final pulumi.Input<String>? annotation;
  /// The host name of the device.
  final pulumi.Input<String>? hostName;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Name of the Network Device.
  final pulumi.Input<String>? networkDeviceName;
  /// Network Device SKU name.
  final pulumi.Input<String>? networkDeviceSku;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Serial number of the device. Format of serial Number - Make;Model;HardwareRevisionId;SerialNumber.
  final pulumi.Input<String> serialNumber;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [NetworkDeviceArgs].
  /// [annotation] Switch configuration description.
  /// [hostName] The host name of the device.
  /// [location] The geo-location where the resource lives
  /// [networkDeviceName] Name of the Network Device.
  /// [networkDeviceSku] Network Device SKU name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serialNumber] Serial number of the device. Format of serial Number - Make;Model;HardwareRevisionId;SerialNumber.
  /// [tags] Resource tags.
  NetworkDeviceArgs({
    String? annotation,
    String? hostName,
    String? location,
    String? networkDeviceName,
    String? networkDeviceSku,
    required String resourceGroupName,
    required String serialNumber,
    Map<String, String>? tags,
  }) :
      annotation = pulumi.Input.asOptionalInput<String>(annotation),
      hostName = pulumi.Input.asOptionalInput<String>(hostName),
      location = pulumi.Input.asOptionalInput<String>(location),
      networkDeviceName = pulumi.Input.asOptionalInput<String>(networkDeviceName),
      networkDeviceSku = pulumi.Input.asOptionalInput<String>(networkDeviceSku),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serialNumber = pulumi.Input.asInput<String>(serialNumber),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotation': ?annotation,
      'hostName': ?hostName,
      'location': ?location,
      'networkDeviceName': ?networkDeviceName,
      'networkDeviceSku': ?networkDeviceSku,
      'resourceGroupName': resourceGroupName,
      'serialNumber': serialNumber,
      'tags': ?tags,
    };
  }

  factory NetworkDeviceArgs.fromMap(Map<String, dynamic> map) {
    return NetworkDeviceArgs(
      annotation: map['annotation'] == null ? null : map['annotation'] as String,
      hostName: map['hostName'] == null ? null : map['hostName'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      networkDeviceName: map['networkDeviceName'] == null ? null : map['networkDeviceName'] as String,
      networkDeviceSku: map['networkDeviceSku'] == null ? null : map['networkDeviceSku'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      serialNumber: map['serialNumber'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

