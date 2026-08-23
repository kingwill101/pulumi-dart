// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkmanager_get_devices_get_devices_args_doc}
/// Arguments for getDevices.
/// {@endtemplate}
/// {@macro pulumi_networkmanager_get_devices_get_devices_args_doc}
class GetDevicesArgs {
  /// ID of the Global Network of the devices to retrieve.
  final pulumi.Input<String> globalNetworkId;
  /// ID of the site of the devices to retrieve.
  final pulumi.Input<String>? siteId;
  /// Restricts the list to the devices with these tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetDevicesArgs].
  /// [globalNetworkId] ID of the Global Network of the devices to retrieve.
  /// [siteId] ID of the site of the devices to retrieve.
  /// [tags] Restricts the list to the devices with these tags.
  const GetDevicesArgs({
    required this.globalNetworkId,
    this.siteId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'globalNetworkId': globalNetworkId,
      'siteId': ?siteId,
      'tags': ?tags,
    };
  }

  factory GetDevicesArgs.fromMap(Map<String, dynamic> map) {
    return GetDevicesArgs(
      globalNetworkId: pulumi.Input.fromValue(map['globalNetworkId'] as String),
      siteId: (() { final guardedValue = map['siteId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
