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
  final pulumi.Input<String?>? discoveredDeviceName;
  /// Identifier used to detect changes in the discovered device.
  final pulumi.Input<String> discoveryId;
  /// Endpoints for discovered devices.
  final pulumi.Input<DiscoveredMessagingEndpoints?>? endpoints;
  /// The extended location.
  final pulumi.Input<ExtendedLocation> extendedLocation;
  /// A device ID that represents the device in a system external to Azure. Unique within scope of an Azure tenant.
  final pulumi.Input<String?>? externalDeviceId;
  /// The geo-location where the resource lives
  final pulumi.Input<String?>? location;
  /// Device manufacturer.
  final pulumi.Input<String?>? manufacturer;
  /// Device model.
  final pulumi.Input<String?>? model;
  /// The name of the namespace.
  final pulumi.Input<String> namespaceName;
  /// Device operating system name.
  final pulumi.Input<String?>? operatingSystem;
  /// Device operating system version.
  final pulumi.Input<String?>? operatingSystemVersion;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;
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
  const NamespaceDiscoveredDeviceArgs({
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
      attributes: (() { final guardedValue = map['attributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      discoveredDeviceName: (() { final guardedValue = map['discoveredDeviceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      discoveryId: pulumi.Input.fromValue(map['discoveryId'] as String),
      endpoints: (() { final guardedValue = map['endpoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DiscoveredMessagingEndpoints.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      extendedLocation: pulumi.Input.fromValue(ExtendedLocation.fromMap((map['extendedLocation']! as Map).cast<String, dynamic>())),
      externalDeviceId: (() { final guardedValue = map['externalDeviceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      manufacturer: (() { final guardedValue = map['manufacturer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      model: (() { final guardedValue = map['model']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namespaceName: pulumi.Input.fromValue(map['namespaceName'] as String),
      operatingSystem: (() { final guardedValue = map['operatingSystem']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      operatingSystemVersion: (() { final guardedValue = map['operatingSystemVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      version: pulumi.Input.fromValue((map['version'] as num).toDouble()),
    );
  }
}
