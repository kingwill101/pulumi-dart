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
    required LinkBandwidth bandwidth,
    String? description,
    required String globalNetworkId,
    String? providerName,
    required String siteId,
    Map<String, String>? tags,
    String? type,
  }) : bandwidth = pulumi.Input.asInput<LinkBandwidth>(bandwidth),
       description = pulumi.Input.asOptionalInput<String>(description),
       globalNetworkId = pulumi.Input.asInput<String>(globalNetworkId),
       providerName = pulumi.Input.asOptionalInput<String>(providerName),
       siteId = pulumi.Input.asInput<String>(siteId),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
       type = pulumi.Input.asOptionalInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bandwidth':
          pulumi.Input.mapInputValue<LinkBandwidth, Map<String, dynamic>>(
            bandwidth,
            (value) => value.toMap(),
          ),
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
      bandwidth: LinkBandwidth.fromMap(
        (map['bandwidth'] as Map).cast<String, dynamic>(),
      ),
      description: map['description'] == null
          ? null
          : map['description'] as String,
      globalNetworkId: map['globalNetworkId'] as String,
      providerName: map['providerName'] == null
          ? null
          : map['providerName'] as String,
      siteId: map['siteId'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
