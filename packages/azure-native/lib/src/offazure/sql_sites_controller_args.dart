// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'site_appliance_properties.dart';

/// {@template pulumi_offazure_sql_sites_controller_args_doc}
/// The set of arguments for SqlSitesController.
/// {@endtemplate}
/// {@macro pulumi_offazure_sql_sites_controller_args_doc}
class SqlSitesControllerArgs {
  /// Gets or sets the discovery scenario.
  final pulumi.Input<String>? discoveryScenario;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Gets or sets the appliance details used by service to communicate
  ///
  /// to the appliance.
  final pulumi.Input<List<SiteApplianceProperties>>? siteAppliancePropertiesCollection;
  /// Site name
  final pulumi.Input<String> siteName;
  /// SQL site name.
  final pulumi.Input<String>? sqlSiteName;

  /// Creates a new [SqlSitesControllerArgs].
  /// [discoveryScenario] Gets or sets the discovery scenario.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [siteAppliancePropertiesCollection] Gets or sets the appliance details used by service to communicate
  /// [siteName] Site name
  /// [sqlSiteName] SQL site name.
  SqlSitesControllerArgs({
    String? discoveryScenario,
    required String resourceGroupName,
    List<SiteApplianceProperties>? siteAppliancePropertiesCollection,
    required String siteName,
    String? sqlSiteName,
  }) :
      discoveryScenario = pulumi.Input.asOptionalInput<String>(discoveryScenario),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      siteAppliancePropertiesCollection = pulumi.Input.asOptionalInput<List<SiteApplianceProperties>>(siteAppliancePropertiesCollection),
      siteName = pulumi.Input.asInput<String>(siteName),
      sqlSiteName = pulumi.Input.asOptionalInput<String>(sqlSiteName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'discoveryScenario': ?discoveryScenario,
      'resourceGroupName': resourceGroupName,
      'siteAppliancePropertiesCollection': ?pulumi.Input.mapOptionalInputValue<List<SiteApplianceProperties>, List<Map<String, dynamic>>>(siteAppliancePropertiesCollection, (value) => pulumi.Input.encodeList<SiteApplianceProperties, Map<String, dynamic>>(value, (value) => value.toMap())),
      'siteName': siteName,
      'sqlSiteName': ?sqlSiteName,
    };
  }

  factory SqlSitesControllerArgs.fromMap(Map<String, dynamic> map) {
    return SqlSitesControllerArgs(
      discoveryScenario: map['discoveryScenario'] == null ? null : map['discoveryScenario'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      siteAppliancePropertiesCollection: map['siteAppliancePropertiesCollection'] == null ? null : pulumi.Input.decodeList<SiteApplianceProperties>(map['siteAppliancePropertiesCollection'], (value) => SiteApplianceProperties.fromMap((value as Map).cast<String, dynamic>())),
      siteName: map['siteName'] as String,
      sqlSiteName: map['sqlSiteName'] == null ? null : map['sqlSiteName'] as String,
    );
  }
}

