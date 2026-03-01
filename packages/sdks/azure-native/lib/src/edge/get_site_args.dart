// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_edge_get_site_args_doc}
/// Arguments for getSite.
/// {@endtemplate}
/// {@macro pulumi_edge_get_site_args_doc}
class GetSiteArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Site
  final pulumi.Input<String> siteName;

  /// Creates a new [GetSiteArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [siteName] The name of the Site
  GetSiteArgs({
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> siteName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      siteName = pulumi.Input.asInput<String>(siteName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'siteName': siteName,
    };
  }

  factory GetSiteArgs.fromMap(Map<String, dynamic> map) {
    return GetSiteArgs(
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      siteName: pulumi.Output.create<String>(map['siteName'] as String),
    );
  }
}

