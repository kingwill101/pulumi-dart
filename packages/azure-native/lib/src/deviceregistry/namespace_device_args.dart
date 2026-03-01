// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location.dart';
import 'messaging_endpoints.dart';

/// {@template pulumi_deviceregistry_namespace_device_args_doc}
/// The set of arguments for NamespaceDevice.
/// {@endtemplate}
/// {@macro pulumi_deviceregistry_namespace_device_args_doc}
class NamespaceDeviceArgs {
  /// A set of key-value pairs that contain custom attributes set by the customer.
  final pulumi.Input<dynamic>? attributes;
  /// The name of the device.
  final pulumi.Input<String>? deviceName;
  /// Reference to a device. Populated only if the device had been created from discovery flow. Discovered device name must be provided.
  final pulumi.Input<String>? discoveredDeviceRef;
  /// Indicates if the resource is enabled or not.
  final pulumi.Input<bool>? enabled;
  /// Property bag containing the device's unassigned and assigned endpoints.
  final pulumi.Input<MessagingEndpoints>? endpoints;
  /// The extended location.
  final pulumi.Input<ExtendedLocation>? extendedLocation;
  /// The Device ID provided by the customer.
  final pulumi.Input<String>? externalDeviceId;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Device manufacturer.
  final pulumi.Input<String>? manufacturer;
  /// Device model.
  final pulumi.Input<String>? model;
  /// The name of the namespace.
  final pulumi.Input<String> namespaceName;
  /// Device operating system.
  final pulumi.Input<String>? operatingSystem;
  /// Device operating system version.
  final pulumi.Input<String>? operatingSystemVersion;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [NamespaceDeviceArgs].
  /// [attributes] A set of key-value pairs that contain custom attributes set by the customer.
  /// [deviceName] The name of the device.
  /// [discoveredDeviceRef] Reference to a device. Populated only if the device had been created from discovery flow. Discovered device name must be provided.
  /// [enabled] Indicates if the resource is enabled or not.
  /// [endpoints] Property bag containing the device's unassigned and assigned endpoints.
  /// [extendedLocation] The extended location.
  /// [externalDeviceId] The Device ID provided by the customer.
  /// [location] The geo-location where the resource lives
  /// [manufacturer] Device manufacturer.
  /// [model] Device model.
  /// [namespaceName] The name of the namespace.
  /// [operatingSystem] Device operating system.
  /// [operatingSystemVersion] Device operating system version.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  NamespaceDeviceArgs({
    dynamic attributes,
    String? deviceName,
    String? discoveredDeviceRef,
    bool? enabled,
    MessagingEndpoints? endpoints,
    ExtendedLocation? extendedLocation,
    String? externalDeviceId,
    String? location,
    String? manufacturer,
    String? model,
    required String namespaceName,
    String? operatingSystem,
    String? operatingSystemVersion,
    required String resourceGroupName,
    Map<String, String>? tags,
  }) :
      attributes = pulumi.Input.asOptionalInput<dynamic>(attributes),
      deviceName = pulumi.Input.asOptionalInput<String>(deviceName),
      discoveredDeviceRef = pulumi.Input.asOptionalInput<String>(discoveredDeviceRef),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      endpoints = pulumi.Input.asOptionalInput<MessagingEndpoints>(endpoints),
      extendedLocation = pulumi.Input.asOptionalInput<ExtendedLocation>(extendedLocation),
      externalDeviceId = pulumi.Input.asOptionalInput<String>(externalDeviceId),
      location = pulumi.Input.asOptionalInput<String>(location),
      manufacturer = pulumi.Input.asOptionalInput<String>(manufacturer),
      model = pulumi.Input.asOptionalInput<String>(model),
      namespaceName = pulumi.Input.asInput<String>(namespaceName),
      operatingSystem = pulumi.Input.asOptionalInput<String>(operatingSystem),
      operatingSystemVersion = pulumi.Input.asOptionalInput<String>(operatingSystemVersion),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributes': ?attributes,
      'deviceName': ?deviceName,
      'discoveredDeviceRef': ?discoveredDeviceRef,
      'enabled': ?enabled,
      'endpoints': ?pulumi.Input.mapOptionalInputValue<MessagingEndpoints, Map<String, dynamic>>(endpoints, (value) => value.toMap()),
      'extendedLocation': ?pulumi.Input.mapOptionalInputValue<ExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'externalDeviceId': ?externalDeviceId,
      'location': ?location,
      'manufacturer': ?manufacturer,
      'model': ?model,
      'namespaceName': namespaceName,
      'operatingSystem': ?operatingSystem,
      'operatingSystemVersion': ?operatingSystemVersion,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory NamespaceDeviceArgs.fromMap(Map<String, dynamic> map) {
    return NamespaceDeviceArgs(
      attributes: map['attributes'] == null ? null : map['attributes'],
      deviceName: map['deviceName'] == null ? null : map['deviceName'] as String,
      discoveredDeviceRef: map['discoveredDeviceRef'] == null ? null : map['discoveredDeviceRef'] as String,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      endpoints: map['endpoints'] == null ? null : MessagingEndpoints.fromMap((map['endpoints'] as Map).cast<String, dynamic>()),
      extendedLocation: map['extendedLocation'] == null ? null : ExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>()),
      externalDeviceId: map['externalDeviceId'] == null ? null : map['externalDeviceId'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      manufacturer: map['manufacturer'] == null ? null : map['manufacturer'] as String,
      model: map['model'] == null ? null : map['model'] as String,
      namespaceName: map['namespaceName'] as String,
      operatingSystem: map['operatingSystem'] == null ? null : map['operatingSystem'] as String,
      operatingSystemVersion: map['operatingSystemVersion'] == null ? null : map['operatingSystemVersion'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

