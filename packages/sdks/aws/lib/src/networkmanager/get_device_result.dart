// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_device_aws_location.dart';
import 'get_device_location.dart';

/// Result data returned by getDevice.
class GetDeviceResult {
  /// ARN of the device.
  final String arn;
  /// AWS location of the device. Documented below.
  final List<GetDeviceAwsLocation> awsLocations;
  /// Description of the device.
  final String description;
  final String deviceId;
  final String globalNetworkId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// Location of the device. Documented below.
  final List<GetDeviceLocation> locations;
  /// Model of device.
  final String model;
  /// Serial number of the device.
  final String serialNumber;
  /// ID of the site.
  final String siteId;
  /// Key-value tags for the device.
  final Map<String, String> tags;
  /// Type of device.
  final String type;
  /// Vendor of the device.
  final String vendor;

  /// Creates a new [GetDeviceResult].
  /// [arn] ARN of the device.
  /// [awsLocations] AWS location of the device. Documented below.
  /// [description] Description of the device.
  /// [deviceId] Required.
  /// [globalNetworkId] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [locations] Location of the device. Documented below.
  /// [model] Model of device.
  /// [serialNumber] Serial number of the device.
  /// [siteId] ID of the site.
  /// [tags] Key-value tags for the device.
  /// [type] Type of device.
  /// [vendor] Vendor of the device.
  GetDeviceResult({
    required this.arn,
    required this.awsLocations,
    required this.description,
    required this.deviceId,
    required this.globalNetworkId,
    required this.id,
    required this.locations,
    required this.model,
    required this.serialNumber,
    required this.siteId,
    required this.tags,
    required this.type,
    required this.vendor,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'awsLocations': pulumi.Input.encodeList<GetDeviceAwsLocation, Map<String, dynamic>>(awsLocations, (value) => value.toMap()),
      'description': description,
      'deviceId': deviceId,
      'globalNetworkId': globalNetworkId,
      'id': id,
      'locations': pulumi.Input.encodeList<GetDeviceLocation, Map<String, dynamic>>(locations, (value) => value.toMap()),
      'model': model,
      'serialNumber': serialNumber,
      'siteId': siteId,
      'tags': tags,
      'type': type,
      'vendor': vendor,
    };
  }

  factory GetDeviceResult.fromMap(Map<String, dynamic> map) {
    return GetDeviceResult(
      arn: map['arn'] as String,
      awsLocations: pulumi.Input.decodeList<GetDeviceAwsLocation>(map['awsLocations']!, (value) => GetDeviceAwsLocation.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] as String,
      deviceId: map['deviceId'] as String,
      globalNetworkId: map['globalNetworkId'] as String,
      id: map['id'] as String,
      locations: pulumi.Input.decodeList<GetDeviceLocation>(map['locations']!, (value) => GetDeviceLocation.fromMap((value as Map).cast<String, dynamic>())),
      model: map['model'] as String,
      serialNumber: map['serialNumber'] as String,
      siteId: map['siteId'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
      vendor: map['vendor'] as String,
    );
  }
}

