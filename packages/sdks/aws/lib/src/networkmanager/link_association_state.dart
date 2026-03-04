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
  LinkAssociationState({this.deviceId, this.globalNetworkId, this.linkId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceId': ?deviceId,
      'globalNetworkId': ?globalNetworkId,
      'linkId': ?linkId,
    };
  }

  factory LinkAssociationState.fromMap(Map<String, dynamic> map) {
    return LinkAssociationState(
      deviceId: (() {
        final guardedValue = map['deviceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      globalNetworkId: (() {
        final guardedValue = map['globalNetworkId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      linkId: (() {
        final guardedValue = map['linkId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
