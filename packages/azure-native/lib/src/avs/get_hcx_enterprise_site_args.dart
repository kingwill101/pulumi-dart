// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_avs_get_hcx_enterprise_site_args_doc}
/// Arguments for getHcxEnterpriseSite.
/// {@endtemplate}
/// {@macro pulumi_avs_get_hcx_enterprise_site_args_doc}
class GetHcxEnterpriseSiteArgs {
  /// Name of the HCX Enterprise Site
  final pulumi.Input<String> hcxEnterpriseSiteName;
  /// Name of the private cloud
  final pulumi.Input<String> privateCloudName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetHcxEnterpriseSiteArgs].
  /// [hcxEnterpriseSiteName] Name of the HCX Enterprise Site
  /// [privateCloudName] Name of the private cloud
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetHcxEnterpriseSiteArgs({
    required String hcxEnterpriseSiteName,
    required String privateCloudName,
    required String resourceGroupName,
  }) :
      hcxEnterpriseSiteName = pulumi.Input.asInput<String>(hcxEnterpriseSiteName),
      privateCloudName = pulumi.Input.asInput<String>(privateCloudName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hcxEnterpriseSiteName': hcxEnterpriseSiteName,
      'privateCloudName': privateCloudName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetHcxEnterpriseSiteArgs.fromMap(Map<String, dynamic> map) {
    return GetHcxEnterpriseSiteArgs(
      hcxEnterpriseSiteName: map['hcxEnterpriseSiteName'] as String,
      privateCloudName: map['privateCloudName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

