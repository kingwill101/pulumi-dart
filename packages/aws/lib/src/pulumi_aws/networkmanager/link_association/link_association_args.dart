// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for LinkAssociation.
class LinkAssociationArgs {
  /// ID of the device.
  final pulumi.Input<String> deviceId;

  /// ID of the global network.
  final pulumi.Input<String> globalNetworkId;

  /// ID of the link.
  final pulumi.Input<String> linkId;

  LinkAssociationArgs({
    required this.deviceId,
    required this.globalNetworkId,
    required this.linkId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['deviceId'] = deviceId;
    map['globalNetworkId'] = globalNetworkId;
    map['linkId'] = linkId;
    return map;
  }

  factory LinkAssociationArgs.fromMap(Map<String, dynamic> map) {
    return LinkAssociationArgs(
      deviceId: pulumi.Input.asInput<String>(map['deviceId']),
      globalNetworkId: pulumi.Input.asInput<String>(map['globalNetworkId']),
      linkId: pulumi.Input.asInput<String>(map['linkId']),
    );
  }
}
