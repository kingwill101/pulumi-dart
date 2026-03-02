// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering LinkAssociation resources.
class LinkAssociationState {
  /// ID of the device.
  final pulumi.Input<String>? deviceId;
  /// ID of the global network.
  final pulumi.Input<String>? globalNetworkId;
  /// ID of the link.
  final pulumi.Input<String>? linkId;

  /// Creates a new [LinkAssociationState].
  /// [deviceId] ID of the device.
  /// [globalNetworkId] ID of the global network.
  /// [linkId] ID of the link.
  LinkAssociationState({
    this.deviceId,
    this.globalNetworkId,
    this.linkId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceId': ?deviceId,
      'globalNetworkId': ?globalNetworkId,
      'linkId': ?linkId,
    };
  }

  factory LinkAssociationState.fromMap(Map<String, dynamic> map) {
    return LinkAssociationState(
      deviceId: map['deviceId'] == null ? null : ((map['deviceId'] as String).input()).input(),
      globalNetworkId: map['globalNetworkId'] == null ? null : ((map['globalNetworkId'] as String).input()).input(),
      linkId: map['linkId'] == null ? null : ((map['linkId'] as String).input()).input(),
    );
  }
}

