// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_site_location.dart';

/// Result data returned by getSite.
class GetSiteResult {
  /// ARN of the site.
  final String? arn;
  /// Description of the site.
  final String? description;
  final String? globalNetworkId;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Site location as documented below.
  final List<GetSiteLocation>? locations;
  final String? siteId;
  /// Key-value tags for the Site.
  final Map<String, String>? tags;

  /// Creates a new [GetSiteResult].
  /// [arn] ARN of the site.
  /// [description] Description of the site.
  /// [globalNetworkId] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [locations] Site location as documented below.
  /// [siteId] Optional.
  /// [tags] Key-value tags for the Site.
  const GetSiteResult({
    this.arn,
    this.description,
    this.globalNetworkId,
    this.id,
    this.locations,
    this.siteId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'description': ?description,
      'globalNetworkId': ?globalNetworkId,
      'id': ?id,
      'locations': ?(() { final guardedValue = locations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetSiteLocation, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'siteId': ?siteId,
      'tags': ?tags,
    };
  }

  factory GetSiteResult.fromMap(Map<String, dynamic> map) {
    return GetSiteResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      globalNetworkId: (() { final guardedValue = map['globalNetworkId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      locations: (() { final guardedValue = map['locations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetSiteLocation>(guardedValue, (value) => GetSiteLocation.fromMap((value as Map).cast<String, dynamic>())); })(),
      siteId: (() { final guardedValue = map['siteId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
