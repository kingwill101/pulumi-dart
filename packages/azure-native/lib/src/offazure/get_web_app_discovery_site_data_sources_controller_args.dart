// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_offazure_get_web_app_discovery_site_data_sources_controller_args_doc}
/// Arguments for getWebAppDiscoverySiteDataSourcesController.
/// {@endtemplate}
/// {@macro pulumi_offazure_get_web_app_discovery_site_data_sources_controller_args_doc}
class GetWebAppDiscoverySiteDataSourcesControllerArgs {
  /// Data Source ARM name.
  final pulumi.Input<String> discoverySiteDataSourceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Site name
  final pulumi.Input<String> siteName;
  /// Web app site name.
  final pulumi.Input<String> webAppSiteName;

  /// Creates a new [GetWebAppDiscoverySiteDataSourcesControllerArgs].
  /// [discoverySiteDataSourceName] Data Source ARM name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [siteName] Site name
  /// [webAppSiteName] Web app site name.
  GetWebAppDiscoverySiteDataSourcesControllerArgs({
    required String discoverySiteDataSourceName,
    required String resourceGroupName,
    required String siteName,
    required String webAppSiteName,
  }) :
      discoverySiteDataSourceName = pulumi.Input.asInput<String>(discoverySiteDataSourceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      siteName = pulumi.Input.asInput<String>(siteName),
      webAppSiteName = pulumi.Input.asInput<String>(webAppSiteName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'discoverySiteDataSourceName': discoverySiteDataSourceName,
      'resourceGroupName': resourceGroupName,
      'siteName': siteName,
      'webAppSiteName': webAppSiteName,
    };
  }

  factory GetWebAppDiscoverySiteDataSourcesControllerArgs.fromMap(Map<String, dynamic> map) {
    return GetWebAppDiscoverySiteDataSourcesControllerArgs(
      discoverySiteDataSourceName: map['discoverySiteDataSourceName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      siteName: map['siteName'] as String,
      webAppSiteName: map['webAppSiteName'] as String,
    );
  }
}

