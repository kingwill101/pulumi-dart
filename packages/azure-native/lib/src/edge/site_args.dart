// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'site_properties.dart';

/// {@template pulumi_edge_site_args_doc}
/// The set of arguments for Site.
/// {@endtemplate}
/// {@macro pulumi_edge_site_args_doc}
class SiteArgs {
  /// The resource-specific properties for this resource.
  final pulumi.Input<SiteProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Site
  final pulumi.Input<String>? siteName;

  /// Creates a new [SiteArgs].
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [siteName] The name of the Site
  SiteArgs({
    SiteProperties? properties,
    required String resourceGroupName,
    String? siteName,
  }) :
      properties = pulumi.Input.asOptionalInput<SiteProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      siteName = pulumi.Input.asOptionalInput<String>(siteName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties': ?pulumi.Input.mapOptionalInputValue<SiteProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'siteName': ?siteName,
    };
  }

  factory SiteArgs.fromMap(Map<String, dynamic> map) {
    return SiteArgs(
      properties: map['properties'] == null ? null : SiteProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      siteName: map['siteName'] == null ? null : map['siteName'] as String,
    );
  }
}

