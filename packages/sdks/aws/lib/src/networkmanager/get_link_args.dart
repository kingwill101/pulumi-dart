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
  GetLinkArgs({
    required pulumi.Output<String> globalNetworkId,
    required pulumi.Output<String> linkId,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      globalNetworkId = pulumi.Input.asInput<String>(globalNetworkId),
      linkId = pulumi.Input.asInput<String>(linkId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'globalNetworkId': globalNetworkId,
      'linkId': linkId,
      'tags': ?tags,
    };
  }

  factory GetLinkArgs.fromMap(Map<String, dynamic> map) {
    return GetLinkArgs(
      globalNetworkId: pulumi.Output.create<String>(map['globalNetworkId'] as String),
      linkId: pulumi.Output.create<String>(map['linkId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

