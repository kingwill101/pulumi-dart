// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'device_aws_location.dart';
import 'device_location.dart';

/// Input properties used for looking up and filtering Device resources.
class DeviceState {
  /// ARN of the device.
  final pulumi.Input<String>? arn;
  /// AWS location of the device. Documented below.
  final pulumi.Input<DeviceAwsLocation>? awsLocation;
  /// Description of the device.
  final pulumi.Input<String>? description;
  /// ID of the global network.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? globalNetworkId;
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
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Type of device.
  final pulumi.Input<String>? type;
  /// Vendor of the device.
  final pulumi.Input<String>? vendor;

  /// Creates a new [DeviceState].
  /// [arn] ARN of the device.
  /// [awsLocation] AWS location of the device. Documented below.
  /// [description] Description of the device.
  /// [globalNetworkId] ID of the global network.
  /// [location] Location of the device. Documented below.
  /// [model] Model of device.
  /// [serialNumber] Serial number of the device.
  /// [siteId] ID of the site.
  /// [tags] Key-value tags for the device. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [type] Type of device.
  /// [vendor] Vendor of the device.
  DeviceState({
    this.arn,
    this.awsLocation,
    this.description,
    this.globalNetworkId,
    this.location,
    this.model,
    this.serialNumber,
    this.siteId,
    this.tags,
    this.tagsAll,
    this.type,
    this.vendor,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'awsLocation': ?pulumi.Input.mapOptionalInputValue<DeviceAwsLocation, Map<String, dynamic>>(awsLocation, (value) => value.toMap()),
      'description': ?description,
      'globalNetworkId': ?globalNetworkId,
      'location': ?pulumi.Input.mapOptionalInputValue<DeviceLocation, Map<String, dynamic>>(location, (value) => value.toMap()),
      'model': ?model,
      'serialNumber': ?serialNumber,
      'siteId': ?siteId,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'type': ?type,
      'vendor': ?vendor,
    };
  }

  factory DeviceState.fromMap(Map<String, dynamic> map) {
    return DeviceState(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      awsLocation: map['awsLocation'] == null ? null : (DeviceAwsLocation.fromMap((map['awsLocation'] as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      globalNetworkId: map['globalNetworkId'] == null ? null : (map['globalNetworkId'] as String).input(),
      location: map['location'] == null ? null : (DeviceLocation.fromMap((map['location'] as Map).cast<String, dynamic>())).input(),
      model: map['model'] == null ? null : (map['model'] as String).input(),
      serialNumber: map['serialNumber'] == null ? null : (map['serialNumber'] as String).input(),
      siteId: map['siteId'] == null ? null : (map['siteId'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
      vendor: map['vendor'] == null ? null : (map['vendor'] as String).input(),
    );
  }
}

