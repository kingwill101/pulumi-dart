// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for LinkAssociation.
class LinkAssociationArgs {
  /// ID of the device.
  final Input<String> deviceId;

  /// ID of the global network.
  final Input<String> globalNetworkId;

  /// ID of the link.
  final Input<String> linkId;

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
      deviceId: Input.asInput<String>(map['deviceId']),
      globalNetworkId: Input.asInput<String>(map['globalNetworkId']),
      linkId: Input.asInput<String>(map['linkId']),
    );
  }
}
