// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkmanager_get_site_get_site_args_doc}
/// Arguments for getSite.
/// {@endtemplate}
/// {@macro pulumi_networkmanager_get_site_get_site_args_doc}
class GetSiteArgs {
  /// ID of the Global Network of the site to retrieve.
  final pulumi.Input<String> globalNetworkId;
  /// ID of the specific site to retrieve.
  final pulumi.Input<String> siteId;
  /// Key-value tags for the Site.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetSiteArgs].
  /// [globalNetworkId] ID of the Global Network of the site to retrieve.
  /// [siteId] ID of the specific site to retrieve.
  /// [tags] Key-value tags for the Site.
  const GetSiteArgs({
    required this.globalNetworkId,
    required this.siteId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'globalNetworkId': globalNetworkId,
      'siteId': siteId,
      'tags': ?tags,
    };
  }

  factory GetSiteArgs.fromMap(Map<String, dynamic> map) {
    return GetSiteArgs(
      globalNetworkId: pulumi.Input.fromValue(map['globalNetworkId'] as String),
      siteId: pulumi.Input.fromValue(map['siteId'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

