// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getConnections.
class GetConnectionsArgs {
  /// ID of the device of the connections to retrieve.
  final pulumi.Input<String>? deviceId;

  /// ID of the Global Network of the connections to retrieve.
  final pulumi.Input<String> globalNetworkId;

  /// Restricts the list to the connections with these tags.
  final pulumi.Input<Map<String, String>>? tags;

  GetConnectionsArgs({
    this.deviceId,
    required this.globalNetworkId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final deviceIdValue = deviceId;
    if (deviceIdValue != null) {
      map['deviceId'] = deviceIdValue;
    }
    map['globalNetworkId'] = globalNetworkId;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetConnectionsArgs.fromMap(Map<String, dynamic> map) {
    return GetConnectionsArgs(
      deviceId: pulumi.Input.asOptionalInput<String>(map['deviceId']),
      globalNetworkId: pulumi.Input.asInput<String>(map['globalNetworkId']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
