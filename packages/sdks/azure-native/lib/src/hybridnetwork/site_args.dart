// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'site_properties_format.dart';

/// {@template pulumi_hybridnetwork_site_args_doc}
/// The set of arguments for Site.
/// {@endtemplate}
/// {@macro pulumi_hybridnetwork_site_args_doc}
class SiteArgs {
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Site properties.
  final pulumi.Input<SitePropertiesFormat>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the network service site.
  final pulumi.Input<String>? siteName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [SiteArgs].
  /// [location] The geo-location where the resource lives
  /// [properties] Site properties.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [siteName] The name of the network service site.
  /// [tags] Resource tags.
  SiteArgs({
    this.location,
    this.properties,
    required this.resourceGroupName,
    this.siteName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'properties': ?pulumi.Input.mapOptionalInputValue<SitePropertiesFormat, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'siteName': ?siteName,
      'tags': ?tags,
    };
  }

  factory SiteArgs.fromMap(Map<String, dynamic> map) {
    return SiteArgs(
      location: map['location'] == null ? null : (map['location']! as String).input(),
      properties: map['properties'] == null ? null : (SitePropertiesFormat.fromMap((map['properties']! as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      siteName: map['siteName'] == null ? null : (map['siteName']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

