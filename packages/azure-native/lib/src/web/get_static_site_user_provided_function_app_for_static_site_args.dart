// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_get_static_site_user_provided_function_app_for_static_site_args_doc}
/// Arguments for getStaticSiteUserProvidedFunctionAppForStaticSite.
/// {@endtemplate}
/// {@macro pulumi_web_get_static_site_user_provided_function_app_for_static_site_args_doc}
class GetStaticSiteUserProvidedFunctionAppForStaticSiteArgs {
  /// Name of the function app registered with the static site.
  final pulumi.Input<String> functionAppName;
  /// Name of the static site.
  final pulumi.Input<String> name;
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetStaticSiteUserProvidedFunctionAppForStaticSiteArgs].
  /// [functionAppName] Name of the function app registered with the static site.
  /// [name] Name of the static site.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  GetStaticSiteUserProvidedFunctionAppForStaticSiteArgs({
    required String functionAppName,
    required String name,
    required String resourceGroupName,
  }) :
      functionAppName = pulumi.Input.asInput<String>(functionAppName),
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'functionAppName': functionAppName,
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetStaticSiteUserProvidedFunctionAppForStaticSiteArgs.fromMap(Map<String, dynamic> map) {
    return GetStaticSiteUserProvidedFunctionAppForStaticSiteArgs(
      functionAppName: map['functionAppName'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

