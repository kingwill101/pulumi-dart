// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_site_location.dart';

/// Result data returned by getSite.
class GetSiteResult {
  /// ARN of the site.
  final String arn;

  /// Description of the site.
  final String description;
  final String globalNetworkId;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Site location as documented below.
  final List<GetSiteLocation> locations;
  final String siteId;

  /// Key-value tags for the Site.
  final Map<String, String> tags;

  /// Creates a new [GetSiteResult].
  /// [arn] ARN of the site.
  /// [description] Description of the site.
  /// [globalNetworkId] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [locations] Site location as documented below.
  /// [siteId] Required.
  /// [tags] Key-value tags for the Site.
  GetSiteResult({
    required this.arn,
    required this.description,
    required this.globalNetworkId,
    required this.id,
    required this.locations,
    required this.siteId,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['description'] = description;
    map['globalNetworkId'] = globalNetworkId;
    map['id'] = id;
    map['locations'] =
        pulumi.Input.encodeList<GetSiteLocation, Map<String, dynamic>>(
            locations, (value) => value.toMap());
    map['siteId'] = siteId;
    map['tags'] = tags;
    return map;
  }

  factory GetSiteResult.fromMap(Map<String, dynamic> map) {
    return GetSiteResult(
      arn: map['arn'] as String,
      description: map['description'] as String,
      globalNetworkId: map['globalNetworkId'] as String,
      id: map['id'] as String,
      locations: pulumi.Input.decodeList<GetSiteLocation>(
          map['locations'],
          (value) =>
              GetSiteLocation.fromMap((value as Map).cast<String, dynamic>())),
      siteId: map['siteId'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
