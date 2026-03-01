// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_static_site_user_provided_function_app_for_static_site_build_args_doc}
/// The set of arguments for StaticSiteUserProvidedFunctionAppForStaticSiteBuild.
/// {@endtemplate}
/// {@macro pulumi_web_static_site_user_provided_function_app_for_static_site_build_args_doc}
class StaticSiteUserProvidedFunctionAppForStaticSiteBuildArgs {
  /// The stage site identifier.
  final pulumi.Input<String> environmentName;
  /// Name of the function app to register with the static site build.
  final pulumi.Input<String>? functionAppName;
  /// The region of the function app registered with the static site
  final pulumi.Input<String>? functionAppRegion;
  /// The resource id of the function app registered with the static site
  final pulumi.Input<String>? functionAppResourceId;
  /// Specify <code>true</code> to force the update of the auth configuration on the function app even if an AzureStaticWebApps provider is already configured on the function app. The default is <code>false</code>.
  final pulumi.Input<bool>? isForced;
  /// Kind of resource.
  final pulumi.Input<String>? kind;
  /// Name of the static site.
  final pulumi.Input<String> name;
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [StaticSiteUserProvidedFunctionAppForStaticSiteBuildArgs].
  /// [environmentName] The stage site identifier.
  /// [functionAppName] Name of the function app to register with the static site build.
  /// [functionAppRegion] The region of the function app registered with the static site
  /// [functionAppResourceId] The resource id of the function app registered with the static site
  /// [isForced] Specify <code>true</code> to force the update of the auth configuration on the function app even if an AzureStaticWebApps provider is already configured on the function app. The default is <code>false</code>.
  /// [kind] Kind of resource.
  /// [name] Name of the static site.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  StaticSiteUserProvidedFunctionAppForStaticSiteBuildArgs({
    required String environmentName,
    String? functionAppName,
    String? functionAppRegion,
    String? functionAppResourceId,
    bool? isForced,
    String? kind,
    required String name,
    required String resourceGroupName,
  }) :
      environmentName = pulumi.Input.asInput<String>(environmentName),
      functionAppName = pulumi.Input.asOptionalInput<String>(functionAppName),
      functionAppRegion = pulumi.Input.asOptionalInput<String>(functionAppRegion),
      functionAppResourceId = pulumi.Input.asOptionalInput<String>(functionAppResourceId),
      isForced = pulumi.Input.asOptionalInput<bool>(isForced),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentName': environmentName,
      'functionAppName': ?functionAppName,
      'functionAppRegion': ?functionAppRegion,
      'functionAppResourceId': ?functionAppResourceId,
      'isForced': ?isForced,
      'kind': ?kind,
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory StaticSiteUserProvidedFunctionAppForStaticSiteBuildArgs.fromMap(Map<String, dynamic> map) {
    return StaticSiteUserProvidedFunctionAppForStaticSiteBuildArgs(
      environmentName: map['environmentName'] as String,
      functionAppName: map['functionAppName'] == null ? null : map['functionAppName'] as String,
      functionAppRegion: map['functionAppRegion'] == null ? null : map['functionAppRegion'] as String,
      functionAppResourceId: map['functionAppResourceId'] == null ? null : map['functionAppResourceId'] as String,
      isForced: map['isForced'] == null ? null : map['isForced'] as bool,
      kind: map['kind'] == null ? null : map['kind'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

