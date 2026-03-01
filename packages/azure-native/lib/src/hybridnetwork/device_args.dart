// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_hybridnetwork_device_args_doc}
/// The set of arguments for Device.
/// {@endtemplate}
/// {@macro pulumi_hybridnetwork_device_args_doc}
class DeviceArgs {
  /// Resource name for the device resource.
  final pulumi.Input<String>? deviceName;
  /// The type of the device.
  final pulumi.Input<String> deviceType;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [DeviceArgs].
  /// [deviceName] Resource name for the device resource.
  /// [deviceType] The type of the device.
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  DeviceArgs({
    String? deviceName,
    required String deviceType,
    String? location,
    required String resourceGroupName,
    Map<String, String>? tags,
  }) :
      deviceName = pulumi.Input.asOptionalInput<String>(deviceName),
      deviceType = pulumi.Input.asInput<String>(deviceType),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceName': ?deviceName,
      'deviceType': deviceType,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory DeviceArgs.fromMap(Map<String, dynamic> map) {
    return DeviceArgs(
      deviceName: map['deviceName'] == null ? null : map['deviceName'] as String,
      deviceType: map['deviceType'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

