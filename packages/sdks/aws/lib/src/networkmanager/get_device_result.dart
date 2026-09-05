// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_device_aws_location.dart';
import 'get_device_location.dart';

/// Result data returned by getDevice.
class GetDeviceResult {
  /// ARN of the device.
  final String? arn;
  /// AWS location of the device. Documented below.
  final List<GetDeviceAwsLocation>? awsLocations;
  /// Description of the device.
  final String? description;
  final String? deviceId;
  final String? globalNetworkId;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Location of the device. Documented below.
  final List<GetDeviceLocation>? locations;
  /// Model of device.
  final String? model;
  /// Serial number of the device.
  final String? serialNumber;
  /// ID of the site.
  final String? siteId;
  /// Key-value tags for the device.
  final Map<String, String>? tags;
  /// Type of device.
  final String? type;
  /// Vendor of the device.
  final String? vendor;

  /// Creates a new [GetDeviceResult].
  /// [arn] ARN of the device.
  /// [awsLocations] AWS location of the device. Documented below.
  /// [description] Description of the device.
  /// [deviceId] Optional.
  /// [globalNetworkId] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [locations] Location of the device. Documented below.
  /// [model] Model of device.
  /// [serialNumber] Serial number of the device.
  /// [siteId] ID of the site.
  /// [tags] Key-value tags for the device.
  /// [type] Type of device.
  /// [vendor] Vendor of the device.
  const GetDeviceResult({
    this.arn,
    this.awsLocations,
    this.description,
    this.deviceId,
    this.globalNetworkId,
    this.id,
    this.locations,
    this.model,
    this.serialNumber,
    this.siteId,
    this.tags,
    this.type,
    this.vendor,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'awsLocations': ?(() { final guardedValue = awsLocations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDeviceAwsLocation, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'description': ?description,
      'deviceId': ?deviceId,
      'globalNetworkId': ?globalNetworkId,
      'id': ?id,
      'locations': ?(() { final guardedValue = locations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDeviceLocation, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'model': ?model,
      'serialNumber': ?serialNumber,
      'siteId': ?siteId,
      'tags': ?tags,
      'type': ?type,
      'vendor': ?vendor,
    };
  }

  factory GetDeviceResult.fromMap(Map<String, dynamic> map) {
    return GetDeviceResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      awsLocations: (() { final guardedValue = map['awsLocations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDeviceAwsLocation>(guardedValue, (value) => GetDeviceAwsLocation.fromMap((value as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deviceId: (() { final guardedValue = map['deviceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      globalNetworkId: (() { final guardedValue = map['globalNetworkId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      locations: (() { final guardedValue = map['locations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDeviceLocation>(guardedValue, (value) => GetDeviceLocation.fromMap((value as Map).cast<String, dynamic>())); })(),
      model: (() { final guardedValue = map['model']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serialNumber: (() { final guardedValue = map['serialNumber']; if (guardedValue == null) return null; return guardedValue as String; })(),
      siteId: (() { final guardedValue = map['siteId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vendor: (() { final guardedValue = map['vendor']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
