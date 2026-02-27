// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../link_bandwidth/link_bandwidth.dart';

/// The set of arguments for Link.
class LinkArgs {
  /// Upload speed and download speed in Mbps. See below.
  final Input<LinkBandwidth> bandwidth;

  /// Description of the link.
  final Input<String>? description;

  /// ID of the global network.
  final Input<String> globalNetworkId;

  /// Provider of the link.
  final Input<String>? providerName;

  /// ID of the site.
  ///
  /// The following arguments are optional:
  final Input<String> siteId;

  /// Key-value tags for the link. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// Type of the link.
  final Input<String>? type;

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
    map['bandwidth'] = Input.mapInputValue<LinkBandwidth, Map<String, dynamic>>(
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
      bandwidth: Input.asInput<LinkBandwidth>(map['bandwidth']),
      description: Input.asOptionalInput<String>(map['description']),
      globalNetworkId: Input.asInput<String>(map['globalNetworkId']),
      providerName: Input.asOptionalInput<String>(map['providerName']),
      siteId: Input.asInput<String>(map['siteId']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      type: Input.asOptionalInput<String>(map['type']),
    );
  }
}
