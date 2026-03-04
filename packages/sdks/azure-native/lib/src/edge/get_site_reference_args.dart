// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_edge_get_site_reference_args_doc}
/// Arguments for getSiteReference.
/// {@endtemplate}
/// {@macro pulumi_edge_get_site_reference_args_doc}
class GetSiteReferenceArgs {
  /// The name of the Context.
  final pulumi.Input<String> contextName;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// The name of the SiteReference
  final pulumi.Input<String> siteReferenceName;

  /// Creates a new [GetSiteReferenceArgs].
  /// [contextName] The name of the Context.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [siteReferenceName] The name of the SiteReference
  GetSiteReferenceArgs({
    required this.contextName,
    required this.resourceGroupName,
    required this.siteReferenceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contextName': contextName,
      'resourceGroupName': resourceGroupName,
      'siteReferenceName': siteReferenceName,
    };
  }

  factory GetSiteReferenceArgs.fromMap(Map<String, dynamic> map) {
    return GetSiteReferenceArgs(
      contextName: pulumi.Input.fromValue(map['contextName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      siteReferenceName: pulumi.Input.fromValue(
        map['siteReferenceName'] as String,
      ),
    );
  }
}
