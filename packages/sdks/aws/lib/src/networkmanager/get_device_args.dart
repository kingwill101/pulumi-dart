// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkmanager_get_device_get_device_args_doc}
/// Arguments for getDevice.
/// {@endtemplate}
/// {@macro pulumi_networkmanager_get_device_get_device_args_doc}
class GetDeviceArgs {
  /// ID of the device.
  final pulumi.Input<String> deviceId;
  /// ID of the global network.
  final pulumi.Input<String> globalNetworkId;
  /// Key-value tags for the device.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetDeviceArgs].
  /// [deviceId] ID of the device.
  /// [globalNetworkId] ID of the global network.
  /// [tags] Key-value tags for the device.
  GetDeviceArgs({
    required this.deviceId,
    required this.globalNetworkId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceId': deviceId,
      'globalNetworkId': globalNetworkId,
      'tags': ?tags,
    };
  }

  factory GetDeviceArgs.fromMap(Map<String, dynamic> map) {
    return GetDeviceArgs(
      deviceId: (map['deviceId'] as String).input(),
      globalNetworkId: (map['globalNetworkId'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

