// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'discovered_messaging_endpoints.dart';
import 'extended_location.dart';

/// {@template pulumi_deviceregistry_namespace_discovered_device_args_doc}
/// The set of arguments for NamespaceDiscoveredDevice.
/// {@endtemplate}
/// {@macro pulumi_deviceregistry_namespace_discovered_device_args_doc}
class NamespaceDiscoveredDeviceArgs {
  /// A set of key-value pairs that contain custom attributes.
  final pulumi.Input<dynamic>? attributes;
  /// The name of the discovered device.
  final pulumi.Input<String>? discoveredDeviceName;
  /// Identifier used to detect changes in the discovered device.
  final pulumi.Input<String> discoveryId;
  /// Endpoints for discovered devices.
  final pulumi.Input<DiscoveredMessagingEndpoints>? endpoints;
  /// The extended location.
  final pulumi.Input<ExtendedLocation> extendedLocation;
  /// A device ID that represents the device in a system external to Azure. Unique within scope of an Azure tenant.
  final pulumi.Input<String>? externalDeviceId;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Device manufacturer.
  final pulumi.Input<String>? manufacturer;
  /// Device model.
  final pulumi.Input<String>? model;
  /// The name of the namespace.
  final pulumi.Input<String> namespaceName;
  /// Device operating system name.
  final pulumi.Input<String>? operatingSystem;
  /// Device operating system version.
  final pulumi.Input<String>? operatingSystemVersion;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// An integer that is incremented each time the resource is modified.
  final pulumi.Input<double> version;

  /// Creates a new [NamespaceDiscoveredDeviceArgs].
  /// [attributes] A set of key-value pairs that contain custom attributes.
  /// [discoveredDeviceName] The name of the discovered device.
  /// [discoveryId] Identifier used to detect changes in the discovered device.
  /// [endpoints] Endpoints for discovered devices.
  /// [extendedLocation] The extended location.
  /// [externalDeviceId] A device ID that represents the device in a system external to Azure. Unique within scope of an Azure tenant.
  /// [location] The geo-location where the resource lives
  /// [manufacturer] Device manufacturer.
  /// [model] Device model.
  /// [namespaceName] The name of the namespace.
  /// [operatingSystem] Device operating system name.
  /// [operatingSystemVersion] Device operating system version.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  /// [version] An integer that is incremented each time the resource is modified.
  NamespaceDiscoveredDeviceArgs({
    this.attributes,
    this.discoveredDeviceName,
    required this.discoveryId,
    this.endpoints,
    required this.extendedLocation,
    this.externalDeviceId,
    this.location,
    this.manufacturer,
    this.model,
    required this.namespaceName,
    this.operatingSystem,
    this.operatingSystemVersion,
    required this.resourceGroupName,
    this.tags,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributes': ?attributes,
      'discoveredDeviceName': ?discoveredDeviceName,
      'discoveryId': discoveryId,
      'endpoints': ?pulumi.Input.mapOptionalInputValue<DiscoveredMessagingEndpoints, Map<String, dynamic>>(endpoints, (value) => value.toMap()),
      'extendedLocation': pulumi.Input.mapInputValue<ExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'externalDeviceId': ?externalDeviceId,
      'location': ?location,
      'manufacturer': ?manufacturer,
      'model': ?model,
      'namespaceName': namespaceName,
      'operatingSystem': ?operatingSystem,
      'operatingSystemVersion': ?operatingSystemVersion,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'version': version,
    };
  }

  factory NamespaceDiscoveredDeviceArgs.fromMap(Map<String, dynamic> map) {
    return NamespaceDiscoveredDeviceArgs(
      attributes: map['attributes'] == null ? null : (map['attributes']!).input(),
      discoveredDeviceName: map['discoveredDeviceName'] == null ? null : (map['discoveredDeviceName']! as String).input(),
      discoveryId: (map['discoveryId'] as String).input(),
      endpoints: map['endpoints'] == null ? null : (DiscoveredMessagingEndpoints.fromMap((map['endpoints']! as Map).cast<String, dynamic>())).input(),
      extendedLocation: (ExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>())).input(),
      externalDeviceId: map['externalDeviceId'] == null ? null : (map['externalDeviceId']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      manufacturer: map['manufacturer'] == null ? null : (map['manufacturer']! as String).input(),
      model: map['model'] == null ? null : (map['model']! as String).input(),
      namespaceName: (map['namespaceName'] as String).input(),
      operatingSystem: map['operatingSystem'] == null ? null : (map['operatingSystem']! as String).input(),
      operatingSystemVersion: map['operatingSystemVersion'] == null ? null : (map['operatingSystemVersion']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      version: (map['version'] as double).input(),
    );
  }
}

