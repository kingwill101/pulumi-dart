// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'site_properties.dart';

/// {@template pulumi_edge_sites_by_service_group_args_doc}
/// The set of arguments for SitesByServiceGroup.
/// {@endtemplate}
/// {@macro pulumi_edge_sites_by_service_group_args_doc}
class SitesByServiceGroupArgs {
  /// The resource-specific properties for this resource.
  final pulumi.Input<SiteProperties>? properties;
  /// The name of the service group
  final pulumi.Input<String> servicegroupName;
  /// The name of the Site
  final pulumi.Input<String>? siteName;

  /// Creates a new [SitesByServiceGroupArgs].
  /// [properties] The resource-specific properties for this resource.
  /// [servicegroupName] The name of the service group
  /// [siteName] The name of the Site
  SitesByServiceGroupArgs({
    this.properties,
    required this.servicegroupName,
    this.siteName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties': ?pulumi.Input.mapOptionalInputValue<SiteProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'servicegroupName': servicegroupName,
      'siteName': ?siteName,
    };
  }

  factory SitesByServiceGroupArgs.fromMap(Map<String, dynamic> map) {
    return SitesByServiceGroupArgs(
      properties: map['properties'] == null ? null : (SiteProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())).input(),
      servicegroupName: (map['servicegroupName'] as String).input(),
      siteName: map['siteName'] == null ? null : (map['siteName']! as String).input(),
    );
  }
}

