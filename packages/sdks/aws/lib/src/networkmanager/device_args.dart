// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'device_aws_location.dart';
import 'device_location.dart';

/// {@template pulumi_networkmanager_device_device_args_doc}
/// The set of arguments for Device.
/// {@endtemplate}
/// {@macro pulumi_networkmanager_device_device_args_doc}
class DeviceArgs {
  /// AWS location of the device. Documented below.
  final pulumi.Input<DeviceAwsLocation>? awsLocation;

  /// Description of the device.
  final pulumi.Input<String>? description;

  /// ID of the global network.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> globalNetworkId;

  /// Location of the device. Documented below.
  final pulumi.Input<DeviceLocation>? location;

  /// Model of device.
  final pulumi.Input<String>? model;

  /// Serial number of the device.
  final pulumi.Input<String>? serialNumber;

  /// ID of the site.
  final pulumi.Input<String>? siteId;

  /// Key-value tags for the device. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Type of device.
  final pulumi.Input<String>? type;

  /// Vendor of the device.
  final pulumi.Input<String>? vendor;

  /// Creates a new [DeviceArgs].
  /// [awsLocation] AWS location of the device. Documented below.
  /// [description] Description of the device.
  /// [globalNetworkId] ID of the global network.
  /// [location] Location of the device. Documented below.
  /// [model] Model of device.
  /// [serialNumber] Serial number of the device.
  /// [siteId] ID of the site.
  /// [tags] Key-value tags for the device. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [type] Type of device.
  /// [vendor] Vendor of the device.
  DeviceArgs({
    this.awsLocation,
    this.description,
    required this.globalNetworkId,
    this.location,
    this.model,
    this.serialNumber,
    this.siteId,
    this.tags,
    this.type,
    this.vendor,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsLocation':
          ?pulumi.Input.mapOptionalInputValue<
            DeviceAwsLocation,
            Map<String, dynamic>
          >(awsLocation, (value) => value.toMap()),
      'description': ?description,
      'globalNetworkId': globalNetworkId,
      'location':
          ?pulumi.Input.mapOptionalInputValue<
            DeviceLocation,
            Map<String, dynamic>
          >(location, (value) => value.toMap()),
      'model': ?model,
      'serialNumber': ?serialNumber,
      'siteId': ?siteId,
      'tags': ?tags,
      'type': ?type,
      'vendor': ?vendor,
    };
  }

  factory DeviceArgs.fromMap(Map<String, dynamic> map) {
    return DeviceArgs(
      awsLocation: (() {
        final guardedValue = map['awsLocation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DeviceAwsLocation.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      globalNetworkId: pulumi.Input.fromValue(map['globalNetworkId'] as String),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DeviceLocation.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      model: (() {
        final guardedValue = map['model'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serialNumber: (() {
        final guardedValue = map['serialNumber'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      siteId: (() {
        final guardedValue = map['siteId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vendor: (() {
        final guardedValue = map['vendor'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
