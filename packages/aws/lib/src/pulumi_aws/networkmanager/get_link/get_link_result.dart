// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_link_bandwidth/get_link_bandwidth.dart';

/// Result data returned by getLink.
class GetLinkResult {
  /// ARN of the link.
  final String arn;

  /// Upload speed and download speed of the link as documented below
  final List<GetLinkBandwidth> bandwidths;

  /// Description of the link.
  final String description;
  final String globalNetworkId;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String linkId;

  /// Provider of the link.
  final String providerName;

  /// ID of the site.
  final String siteId;

  /// Key-value tags for the link.
  final Map<String, String> tags;

  /// Type of the link.
  final String type;

  GetLinkResult({
    required this.arn,
    required this.bandwidths,
    required this.description,
    required this.globalNetworkId,
    required this.id,
    required this.linkId,
    required this.providerName,
    required this.siteId,
    required this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['bandwidths'] =
        pulumi.Input.encodeList<GetLinkBandwidth, Map<String, dynamic>>(
            bandwidths, (value) => value.toMap());
    map['description'] = description;
    map['globalNetworkId'] = globalNetworkId;
    map['id'] = id;
    map['linkId'] = linkId;
    map['providerName'] = providerName;
    map['siteId'] = siteId;
    map['tags'] = tags;
    map['type'] = type;
    return map;
  }

  factory GetLinkResult.fromMap(Map<String, dynamic> map) {
    return GetLinkResult(
      arn: map['arn'] as String,
      bandwidths: pulumi.Input.decodeList<GetLinkBandwidth>(
          map['bandwidths'],
          (value) =>
              GetLinkBandwidth.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] as String,
      globalNetworkId: map['globalNetworkId'] as String,
      id: map['id'] as String,
      linkId: map['linkId'] as String,
      providerName: map['providerName'] as String,
      siteId: map['siteId'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}
