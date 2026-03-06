// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkmanager_get_link_get_link_args_doc}
/// Arguments for getLink.
/// {@endtemplate}
/// {@macro pulumi_networkmanager_get_link_get_link_args_doc}
class GetLinkArgs {
  /// ID of the Global Network of the link to retrieve.
  final pulumi.Input<String> globalNetworkId;
  /// ID of the specific link to retrieve.
  final pulumi.Input<String> linkId;
  /// Key-value tags for the link.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetLinkArgs].
  /// [globalNetworkId] ID of the Global Network of the link to retrieve.
  /// [linkId] ID of the specific link to retrieve.
  /// [tags] Key-value tags for the link.
  const GetLinkArgs({
    required this.globalNetworkId,
    required this.linkId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'globalNetworkId': globalNetworkId,
      'linkId': linkId,
      'tags': ?tags,
    };
  }

  factory GetLinkArgs.fromMap(Map<String, dynamic> map) {
    return GetLinkArgs(
      globalNetworkId: pulumi.Input.fromValue(map['globalNetworkId'] as String),
      linkId: pulumi.Input.fromValue(map['linkId'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

