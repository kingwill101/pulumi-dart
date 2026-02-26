// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getDevices.
class GetDevicesArgs {
  /// ID of the Global Network of the devices to retrieve.
  final Input<String> globalNetworkId;

  /// ID of the site of the devices to retrieve.
  final Input<String>? siteId;

  /// Restricts the list to the devices with these tags.
  final Input<Map<String, String>>? tags;

  GetDevicesArgs({
    required this.globalNetworkId,
    this.siteId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['globalNetworkId'] = globalNetworkId;
    final siteIdValue = siteId;
    if (siteIdValue != null) {
      map['siteId'] = siteIdValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetDevicesArgs.fromMap(Map<String, dynamic> map) {
    return GetDevicesArgs(
      globalNetworkId: Input.asInput<String>(map['globalNetworkId']),
      siteId: Input.asOptionalInput<String>(map['siteId']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
