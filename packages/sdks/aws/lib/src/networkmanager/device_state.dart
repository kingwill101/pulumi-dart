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
    pulumi.Output<String>? arn,
    pulumi.Output<DeviceAwsLocation>? awsLocation,
    pulumi.Output<String>? description,
    pulumi.Output<String>? globalNetworkId,
    pulumi.Output<DeviceLocation>? location,
    pulumi.Output<String>? model,
    pulumi.Output<String>? serialNumber,
    pulumi.Output<String>? siteId,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? type,
    pulumi.Output<String>? vendor,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      awsLocation = pulumi.Input.asOptionalInput<DeviceAwsLocation>(awsLocation),
      description = pulumi.Input.asOptionalInput<String>(description),
      globalNetworkId = pulumi.Input.asOptionalInput<String>(globalNetworkId),
      location = pulumi.Input.asOptionalInput<DeviceLocation>(location),
      model = pulumi.Input.asOptionalInput<String>(model),
      serialNumber = pulumi.Input.asOptionalInput<String>(serialNumber),
      siteId = pulumi.Input.asOptionalInput<String>(siteId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      type = pulumi.Input.asOptionalInput<String>(type),
      vendor = pulumi.Input.asOptionalInput<String>(vendor);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      awsLocation: map['awsLocation'] == null ? null : pulumi.Output.create<DeviceAwsLocation>(DeviceAwsLocation.fromMap((map['awsLocation'] as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      globalNetworkId: map['globalNetworkId'] == null ? null : pulumi.Output.create<String>(map['globalNetworkId'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<DeviceLocation>(DeviceLocation.fromMap((map['location'] as Map).cast<String, dynamic>())),
      model: map['model'] == null ? null : pulumi.Output.create<String>(map['model'] as String),
      serialNumber: map['serialNumber'] == null ? null : pulumi.Output.create<String>(map['serialNumber'] as String),
      siteId: map['siteId'] == null ? null : pulumi.Output.create<String>(map['siteId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      vendor: map['vendor'] == null ? null : pulumi.Output.create<String>(map['vendor'] as String),
    );
  }
}

