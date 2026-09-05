// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_link_bandwidth.dart';

/// Result data returned by getLink.
class GetLinkResult {
  /// ARN of the link.
  final String? arn;
  /// Upload speed and download speed of the link as documented below
  final List<GetLinkBandwidth>? bandwidths;
  /// Description of the link.
  final String? description;
  final String? globalNetworkId;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? linkId;
  /// Provider of the link.
  final String? providerName;
  /// ID of the site.
  final String? siteId;
  /// Key-value tags for the link.
  final Map<String, String>? tags;
  /// Type of the link.
  final String? type;

  /// Creates a new [GetLinkResult].
  /// [arn] ARN of the link.
  /// [bandwidths] Upload speed and download speed of the link as documented below
  /// [description] Description of the link.
  /// [globalNetworkId] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [linkId] Optional.
  /// [providerName] Provider of the link.
  /// [siteId] ID of the site.
  /// [tags] Key-value tags for the link.
  /// [type] Type of the link.
  const GetLinkResult({
    this.arn,
    this.bandwidths,
    this.description,
    this.globalNetworkId,
    this.id,
    this.linkId,
    this.providerName,
    this.siteId,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'bandwidths': ?(() { final guardedValue = bandwidths; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetLinkBandwidth, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'description': ?description,
      'globalNetworkId': ?globalNetworkId,
      'id': ?id,
      'linkId': ?linkId,
      'providerName': ?providerName,
      'siteId': ?siteId,
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetLinkResult.fromMap(Map<String, dynamic> map) {
    return GetLinkResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      bandwidths: (() { final guardedValue = map['bandwidths']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetLinkBandwidth>(guardedValue, (value) => GetLinkBandwidth.fromMap((value as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      globalNetworkId: (() { final guardedValue = map['globalNetworkId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      linkId: (() { final guardedValue = map['linkId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      providerName: (() { final guardedValue = map['providerName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      siteId: (() { final guardedValue = map['siteId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
