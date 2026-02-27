// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getSite.
class GetSiteArgs {
  /// ID of the Global Network of the site to retrieve.
  final pulumi.Input<String> globalNetworkId;

  /// ID of the specific site to retrieve.
  final pulumi.Input<String> siteId;

  /// Key-value tags for the Site.
  final pulumi.Input<Map<String, String>>? tags;

  GetSiteArgs({
    required this.globalNetworkId,
    required this.siteId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['globalNetworkId'] = globalNetworkId;
    map['siteId'] = siteId;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetSiteArgs.fromMap(Map<String, dynamic> map) {
    return GetSiteArgs(
      globalNetworkId: pulumi.Input.asInput<String>(map['globalNetworkId']),
      siteId: pulumi.Input.asInput<String>(map['siteId']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
