// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_residency.dart';
import 'resource_identity.dart';
import 'sku.dart';

/// {@template pulumi_databoxedge_device_args_doc}
/// The set of arguments for Device.
/// {@endtemplate}
/// {@macro pulumi_databoxedge_device_args_doc}
class DeviceArgs {
  /// The details of data-residency related properties for this resource
  final pulumi.Input<DataResidency>? dataResidency;
  /// The device name.
  final pulumi.Input<String>? deviceName;
  /// Msi identity of the resource
  final pulumi.Input<ResourceIdentity>? identity;
  /// The location of the device. This is a supported and registered Azure geographical region (for example, West US, East US, or Southeast Asia). The geographical region of a device cannot be changed once it is created, but if an identical geographical region is specified on update, the request will succeed.
  final pulumi.Input<String>? location;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;
  /// The SKU type.
  final pulumi.Input<Sku>? sku;
  /// The list of tags that describe the device. These tags can be used to view and group this device (across resource groups).
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [DeviceArgs].
  /// [dataResidency] The details of data-residency related properties for this resource
  /// [deviceName] The device name.
  /// [identity] Msi identity of the resource
  /// [location] The location of the device. This is a supported and registered Azure geographical region (for example, West US, East US, or Southeast Asia). The geographical region of a device cannot be changed once it is created, but if an identical geographical region is specified on update, the request will succeed.
  /// [resourceGroupName] The resource group name.
  /// [sku] The SKU type.
  /// [tags] The list of tags that describe the device. These tags can be used to view and group this device (across resource groups).
  DeviceArgs({
    this.dataResidency,
    this.deviceName,
    this.identity,
    this.location,
    required this.resourceGroupName,
    this.sku,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataResidency': ?pulumi.Input.mapOptionalInputValue<DataResidency, Map<String, dynamic>>(dataResidency, (value) => value.toMap()),
      'deviceName': ?deviceName,
      'identity': ?pulumi.Input.mapOptionalInputValue<ResourceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'sku': ?pulumi.Input.mapOptionalInputValue<Sku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory DeviceArgs.fromMap(Map<String, dynamic> map) {
    return DeviceArgs(
      dataResidency: (() { final guardedValue = map['dataResidency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataResidency.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deviceName: (() { final guardedValue = map['deviceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Sku.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

