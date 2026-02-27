// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getDevice.
class GetDeviceArgs {
  /// ID of the device.
  final pulumi.Input<String> deviceId;

  /// ID of the global network.
  final pulumi.Input<String> globalNetworkId;

  /// Key-value tags for the device.
  final pulumi.Input<Map<String, String>>? tags;

  GetDeviceArgs({
    required this.deviceId,
    required this.globalNetworkId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['deviceId'] = deviceId;
    map['globalNetworkId'] = globalNetworkId;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetDeviceArgs.fromMap(Map<String, dynamic> map) {
    return GetDeviceArgs(
      deviceId: pulumi.Input.asInput<String>(map['deviceId']),
      globalNetworkId: pulumi.Input.asInput<String>(map['globalNetworkId']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
