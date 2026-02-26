// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getSite.
class GetSiteArgs {
  /// ID of the Global Network of the site to retrieve.
  final Input<String> globalNetworkId;

  /// ID of the specific site to retrieve.
  final Input<String> siteId;

  /// Key-value tags for the Site.
  final Input<Map<String, String>>? tags;

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
      globalNetworkId: Input.asInput<String>(map['globalNetworkId']),
      siteId: Input.asInput<String>(map['siteId']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
