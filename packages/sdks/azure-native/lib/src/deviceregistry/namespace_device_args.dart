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
    this.attributes,
    this.deviceName,
    this.discoveredDeviceRef,
    this.enabled,
    this.endpoints,
    this.extendedLocation,
    this.externalDeviceId,
    this.location,
    this.manufacturer,
    this.model,
    required this.namespaceName,
    this.operatingSystem,
    this.operatingSystemVersion,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributes': ?attributes,
      'deviceName': ?deviceName,
      'discoveredDeviceRef': ?discoveredDeviceRef,
      'enabled': ?enabled,
      'endpoints':
          ?pulumi.Input.mapOptionalInputValue<
            MessagingEndpoints,
            Map<String, dynamic>
          >(endpoints, (value) => value.toMap()),
      'extendedLocation':
          ?pulumi.Input.mapOptionalInputValue<
            ExtendedLocation,
            Map<String, dynamic>
          >(extendedLocation, (value) => value.toMap()),
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
      attributes: (() {
        final guardedValue = map['attributes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      deviceName: (() {
        final guardedValue = map['deviceName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      discoveredDeviceRef: (() {
        final guardedValue = map['discoveredDeviceRef'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      enabled: (() {
        final guardedValue = map['enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      endpoints: (() {
        final guardedValue = map['endpoints'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          MessagingEndpoints.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      extendedLocation: (() {
        final guardedValue = map['extendedLocation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ExtendedLocation.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      externalDeviceId: (() {
        final guardedValue = map['externalDeviceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      manufacturer: (() {
        final guardedValue = map['manufacturer'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      model: (() {
        final guardedValue = map['model'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      namespaceName: pulumi.Input.fromValue(map['namespaceName'] as String),
      operatingSystem: (() {
        final guardedValue = map['operatingSystem'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      operatingSystemVersion: (() {
        final guardedValue = map['operatingSystemVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
