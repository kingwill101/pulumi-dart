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
    pulumi.Output<String>? location,
    pulumi.Output<SitePropertiesFormat>? properties,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? siteName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      properties = pulumi.Input.asOptionalInput<SitePropertiesFormat>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      siteName = pulumi.Input.asOptionalInput<String>(siteName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<SitePropertiesFormat>(SitePropertiesFormat.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      siteName: map['siteName'] == null ? null : pulumi.Output.create<String>(map['siteName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

