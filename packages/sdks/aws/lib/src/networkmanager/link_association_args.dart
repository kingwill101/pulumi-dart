// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkmanager_link_association_link_association_args_doc}
/// The set of arguments for LinkAssociation.
/// {@endtemplate}
/// {@macro pulumi_networkmanager_link_association_link_association_args_doc}
class LinkAssociationArgs {
  /// ID of the device.
  final pulumi.Input<String> deviceId;
  /// ID of the global network.
  final pulumi.Input<String> globalNetworkId;
  /// ID of the link.
  final pulumi.Input<String> linkId;

  /// Creates a new [LinkAssociationArgs].
  /// [deviceId] ID of the device.
  /// [globalNetworkId] ID of the global network.
  /// [linkId] ID of the link.
  LinkAssociationArgs({
    required pulumi.Output<String> deviceId,
    required pulumi.Output<String> globalNetworkId,
    required pulumi.Output<String> linkId,
  }) :
      deviceId = pulumi.Input.asInput<String>(deviceId),
      globalNetworkId = pulumi.Input.asInput<String>(globalNetworkId),
      linkId = pulumi.Input.asInput<String>(linkId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceId': deviceId,
      'globalNetworkId': globalNetworkId,
      'linkId': linkId,
    };
  }

  factory LinkAssociationArgs.fromMap(Map<String, dynamic> map) {
    return LinkAssociationArgs(
      deviceId: pulumi.Output.create<String>(map['deviceId'] as String),
      globalNetworkId: pulumi.Output.create<String>(map['globalNetworkId'] as String),
      linkId: pulumi.Output.create<String>(map['linkId'] as String),
    );
  }
}

