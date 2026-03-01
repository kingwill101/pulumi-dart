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
    required pulumi.Output<LinkBandwidth> bandwidth,
    pulumi.Output<String>? description,
    required pulumi.Output<String> globalNetworkId,
    pulumi.Output<String>? providerName,
    required pulumi.Output<String> siteId,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? type,
  }) :
      bandwidth = pulumi.Input.asInput<LinkBandwidth>(bandwidth),
      description = pulumi.Input.asOptionalInput<String>(description),
      globalNetworkId = pulumi.Input.asInput<String>(globalNetworkId),
      providerName = pulumi.Input.asOptionalInput<String>(providerName),
      siteId = pulumi.Input.asInput<String>(siteId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      type = pulumi.Input.asOptionalInput<String>(type);

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
      bandwidth: pulumi.Output.create<LinkBandwidth>(LinkBandwidth.fromMap((map['bandwidth'] as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      globalNetworkId: pulumi.Output.create<String>(map['globalNetworkId'] as String),
      providerName: map['providerName'] == null ? null : pulumi.Output.create<String>(map['providerName'] as String),
      siteId: pulumi.Output.create<String>(map['siteId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

