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
  GetSiteArgs({
    required pulumi.Output<String> globalNetworkId,
    required pulumi.Output<String> siteId,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      globalNetworkId = pulumi.Input.asInput<String>(globalNetworkId),
      siteId = pulumi.Input.asInput<String>(siteId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'globalNetworkId': globalNetworkId,
      'siteId': siteId,
      'tags': ?tags,
    };
  }

  factory GetSiteArgs.fromMap(Map<String, dynamic> map) {
    return GetSiteArgs(
      globalNetworkId: pulumi.Output.create<String>(map['globalNetworkId'] as String),
      siteId: pulumi.Output.create<String>(map['siteId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

