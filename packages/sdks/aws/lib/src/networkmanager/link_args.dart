// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'link_bandwidth.dart';

/// {@template pulumi_networkmanager_link_link_args_doc}
/// The set of arguments for Link.
/// {@endtemplate}
/// {@macro pulumi_networkmanager_link_link_args_doc}
class LinkArgs {
  /// Upload speed and download speed in Mbps. See below.
  final pulumi.Input<LinkBandwidth> bandwidth;
  /// Description of the link.
  final pulumi.Input<String>? description;
  /// ID of the global network.
  final pulumi.Input<String> globalNetworkId;
  /// Provider of the link.
  final pulumi.Input<String>? providerName;
  /// ID of the site.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> siteId;
  /// Key-value tags for the link. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Type of the link.
  final pulumi.Input<String>? type;

  /// Creates a new [LinkArgs].
  /// [bandwidth] Upload speed and download speed in Mbps. See below.
  /// [description] Description of the link.
  /// [globalNetworkId] ID of the global network.
  /// [providerName] Provider of the link.
  /// [siteId] ID of the site.
  /// [tags] Key-value tags for the link. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [type] Type of the link.
  LinkArgs({
    required this.bandwidth,
    this.description,
    required this.globalNetworkId,
    this.providerName,
    required this.siteId,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bandwidth': pulumi.Input.mapInputValue<LinkBandwidth, Map<String, dynamic>>(bandwidth, (value) => value.toMap()),
      'description': ?description,
      'globalNetworkId': globalNetworkId,
      'providerName': ?providerName,
      'siteId': siteId,
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory LinkArgs.fromMap(Map<String, dynamic> map) {
    return LinkArgs(
      bandwidth: pulumi.Input.fromValue(LinkBandwidth.fromMap((map['bandwidth']! as Map).cast<String, dynamic>())),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      globalNetworkId: pulumi.Input.fromValue(map['globalNetworkId'] as String),
      providerName: (() { final guardedValue = map['providerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      siteId: pulumi.Input.fromValue(map['siteId'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

