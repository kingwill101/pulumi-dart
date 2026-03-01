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
    pulumi.Output<dynamic>? attributes,
    pulumi.Output<String>? discoveredDeviceName,
    required pulumi.Output<String> discoveryId,
    pulumi.Output<DiscoveredMessagingEndpoints>? endpoints,
    required pulumi.Output<ExtendedLocation> extendedLocation,
    pulumi.Output<String>? externalDeviceId,
    pulumi.Output<String>? location,
    pulumi.Output<String>? manufacturer,
    pulumi.Output<String>? model,
    required pulumi.Output<String> namespaceName,
    pulumi.Output<String>? operatingSystem,
    pulumi.Output<String>? operatingSystemVersion,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<double> version,
  }) :
      attributes = pulumi.Input.asOptionalInput<dynamic>(attributes),
      discoveredDeviceName = pulumi.Input.asOptionalInput<String>(discoveredDeviceName),
      discoveryId = pulumi.Input.asInput<String>(discoveryId),
      endpoints = pulumi.Input.asOptionalInput<DiscoveredMessagingEndpoints>(endpoints),
      extendedLocation = pulumi.Input.asInput<ExtendedLocation>(extendedLocation),
      externalDeviceId = pulumi.Input.asOptionalInput<String>(externalDeviceId),
      location = pulumi.Input.asOptionalInput<String>(location),
      manufacturer = pulumi.Input.asOptionalInput<String>(manufacturer),
      model = pulumi.Input.asOptionalInput<String>(model),
      namespaceName = pulumi.Input.asInput<String>(namespaceName),
      operatingSystem = pulumi.Input.asOptionalInput<String>(operatingSystem),
      operatingSystemVersion = pulumi.Input.asOptionalInput<String>(operatingSystemVersion),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      version = pulumi.Input.asInput<double>(version);

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
      attributes: map['attributes'] == null ? null : pulumi.Output.create<dynamic>(map['attributes']),
      discoveredDeviceName: map['discoveredDeviceName'] == null ? null : pulumi.Output.create<String>(map['discoveredDeviceName'] as String),
      discoveryId: pulumi.Output.create<String>(map['discoveryId'] as String),
      endpoints: map['endpoints'] == null ? null : pulumi.Output.create<DiscoveredMessagingEndpoints>(DiscoveredMessagingEndpoints.fromMap((map['endpoints'] as Map).cast<String, dynamic>())),
      extendedLocation: pulumi.Output.create<ExtendedLocation>(ExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>())),
      externalDeviceId: map['externalDeviceId'] == null ? null : pulumi.Output.create<String>(map['externalDeviceId'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      manufacturer: map['manufacturer'] == null ? null : pulumi.Output.create<String>(map['manufacturer'] as String),
      model: map['model'] == null ? null : pulumi.Output.create<String>(map['model'] as String),
      namespaceName: pulumi.Output.create<String>(map['namespaceName'] as String),
      operatingSystem: map['operatingSystem'] == null ? null : pulumi.Output.create<String>(map['operatingSystem'] as String),
      operatingSystemVersion: map['operatingSystemVersion'] == null ? null : pulumi.Output.create<String>(map['operatingSystemVersion'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      version: pulumi.Output.create<double>(map['version'] as double),
    );
  }
}

