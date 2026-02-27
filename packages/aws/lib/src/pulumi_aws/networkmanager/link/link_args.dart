// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../link_bandwidth/link_bandwidth.dart';

/// The set of arguments for Link.
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
    final map = <String, dynamic>{};
    map['bandwidth'] =
        pulumi.Input.mapInputValue<LinkBandwidth, Map<String, dynamic>>(
            bandwidth, (value) => value.toMap());
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['globalNetworkId'] = globalNetworkId;
    final providerNameValue = providerName;
    if (providerNameValue != null) {
      map['providerName'] = providerNameValue;
    }
    map['siteId'] = siteId;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory LinkArgs.fromMap(Map<String, dynamic> map) {
    return LinkArgs(
      bandwidth: pulumi.Input.asInput<LinkBandwidth>(map['bandwidth']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      globalNetworkId: pulumi.Input.asInput<String>(map['globalNetworkId']),
      providerName: pulumi.Input.asOptionalInput<String>(map['providerName']),
      siteId: pulumi.Input.asInput<String>(map['siteId']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      type: pulumi.Input.asOptionalInput<String>(map['type']),
    );
  }
}
