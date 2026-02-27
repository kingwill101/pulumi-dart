// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../device_aws_location/device_aws_location.dart';
import '../device_location/device_location.dart';

/// The set of arguments for Device.
class DeviceArgs {
  /// AWS location of the device. Documented below.
  final Input<DeviceAwsLocation>? awsLocation;

  /// Description of the device.
  final Input<String>? description;

  /// ID of the global network.
  ///
  /// The following arguments are optional:
  final Input<String> globalNetworkId;

  /// Location of the device. Documented below.
  final Input<DeviceLocation>? location;

  /// Model of device.
  final Input<String>? model;

  /// Serial number of the device.
  final Input<String>? serialNumber;

  /// ID of the site.
  final Input<String>? siteId;

  /// Key-value tags for the device. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// Type of device.
  final Input<String>? type;

  /// Vendor of the device.
  final Input<String>? vendor;

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
    final map = <String, dynamic>{};
    final awsLocationValue = awsLocation;
    if (awsLocationValue != null) {
      map['awsLocation'] =
          Input.mapOptionalInputValue<DeviceAwsLocation, Map<String, dynamic>>(
              awsLocationValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['globalNetworkId'] = globalNetworkId;
    final locationValue = location;
    if (locationValue != null) {
      map['location'] =
          Input.mapOptionalInputValue<DeviceLocation, Map<String, dynamic>>(
              locationValue, (value) => value.toMap());
    }
    final modelValue = model;
    if (modelValue != null) {
      map['model'] = modelValue;
    }
    final serialNumberValue = serialNumber;
    if (serialNumberValue != null) {
      map['serialNumber'] = serialNumberValue;
    }
    final siteIdValue = siteId;
    if (siteIdValue != null) {
      map['siteId'] = siteIdValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    final vendorValue = vendor;
    if (vendorValue != null) {
      map['vendor'] = vendorValue;
    }
    return map;
  }

  factory DeviceArgs.fromMap(Map<String, dynamic> map) {
    return DeviceArgs(
      awsLocation: Input.asOptionalInput<DeviceAwsLocation>(map['awsLocation']),
      description: Input.asOptionalInput<String>(map['description']),
      globalNetworkId: Input.asInput<String>(map['globalNetworkId']),
      location: Input.asOptionalInput<DeviceLocation>(map['location']),
      model: Input.asOptionalInput<String>(map['model']),
      serialNumber: Input.asOptionalInput<String>(map['serialNumber']),
      siteId: Input.asOptionalInput<String>(map['siteId']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      type: Input.asOptionalInput<String>(map['type']),
      vendor: Input.asOptionalInput<String>(map['vendor']),
    );
  }
}
