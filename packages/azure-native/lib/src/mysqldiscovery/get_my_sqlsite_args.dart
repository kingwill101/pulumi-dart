// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_mysqldiscovery_get_my_sqlsite_args_doc}
/// Arguments for getMySQLSite.
/// {@endtemplate}
/// {@macro pulumi_mysqldiscovery_get_my_sqlsite_args_doc}
class GetMySQLSiteArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of Site
  final pulumi.Input<String> siteName;

  /// Creates a new [GetMySQLSiteArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [siteName] The name of Site
  GetMySQLSiteArgs({
    required String resourceGroupName,
    required String siteName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      siteName = pulumi.Input.asInput<String>(siteName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'siteName': siteName,
    };
  }

  factory GetMySQLSiteArgs.fromMap(Map<String, dynamic> map) {
    return GetMySQLSiteArgs(
      resourceGroupName: map['resourceGroupName'] as String,
      siteName: map['siteName'] as String,
    );
  }
}

