// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_edge_get_sites_by_service_group_args_doc}
/// Arguments for getSitesByServiceGroup.
/// {@endtemplate}
/// {@macro pulumi_edge_get_sites_by_service_group_args_doc}
class GetSitesByServiceGroupArgs {
  /// The name of the service group
  final pulumi.Input<String> servicegroupName;

  /// The name of the Site
  final pulumi.Input<String> siteName;

  /// Creates a new [GetSitesByServiceGroupArgs].
  /// [servicegroupName] The name of the service group
  /// [siteName] The name of the Site
  GetSitesByServiceGroupArgs({
    required this.servicegroupName,
    required this.siteName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'servicegroupName': servicegroupName,
      'siteName': siteName,
    };
  }

  factory GetSitesByServiceGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetSitesByServiceGroupArgs(
      servicegroupName: pulumi.Input.fromValue(
        map['servicegroupName'] as String,
      ),
      siteName: pulumi.Input.fromValue(map['siteName'] as String),
    );
  }
}
