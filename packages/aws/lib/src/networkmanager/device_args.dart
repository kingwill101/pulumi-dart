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
    DeviceAwsLocation? awsLocation,
    String? description,
    required String globalNetworkId,
    DeviceLocation? location,
    String? model,
    String? serialNumber,
    String? siteId,
    Map<String, String>? tags,
    String? type,
    String? vendor,
  }) :
      awsLocation = pulumi.Input.asOptionalInput<DeviceAwsLocation>(awsLocation),
      description = pulumi.Input.asOptionalInput<String>(description),
      globalNetworkId = pulumi.Input.asInput<String>(globalNetworkId),
      location = pulumi.Input.asOptionalInput<DeviceLocation>(location),
      model = pulumi.Input.asOptionalInput<String>(model),
      serialNumber = pulumi.Input.asOptionalInput<String>(serialNumber),
      siteId = pulumi.Input.asOptionalInput<String>(siteId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      type = pulumi.Input.asOptionalInput<String>(type),
      vendor = pulumi.Input.asOptionalInput<String>(vendor);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsLocation': ?pulumi.Input.mapOptionalInputValue<DeviceAwsLocation, Map<String, dynamic>>(awsLocation, (value) => value.toMap()),
      'description': ?description,
      'globalNetworkId': globalNetworkId,
      'location': ?pulumi.Input.mapOptionalInputValue<DeviceLocation, Map<String, dynamic>>(location, (value) => value.toMap()),
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
      awsLocation: map['awsLocation'] == null ? null : DeviceAwsLocation.fromMap((map['awsLocation'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description'] as String,
      globalNetworkId: map['globalNetworkId'] as String,
      location: map['location'] == null ? null : DeviceLocation.fromMap((map['location'] as Map).cast<String, dynamic>()),
      model: map['model'] == null ? null : map['model'] as String,
      serialNumber: map['serialNumber'] == null ? null : map['serialNumber'] as String,
      siteId: map['siteId'] == null ? null : map['siteId'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] == null ? null : map['type'] as String,
      vendor: map['vendor'] == null ? null : map['vendor'] as String,
    );
  }
}

