// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_avs_hcx_enterprise_site_args_doc}
/// The set of arguments for HcxEnterpriseSite.
/// {@endtemplate}
/// {@macro pulumi_avs_hcx_enterprise_site_args_doc}
class HcxEnterpriseSiteArgs {
  /// Name of the HCX Enterprise Site
  final pulumi.Input<String>? hcxEnterpriseSiteName;
  /// Name of the private cloud
  final pulumi.Input<String> privateCloudName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [HcxEnterpriseSiteArgs].
  /// [hcxEnterpriseSiteName] Name of the HCX Enterprise Site
  /// [privateCloudName] Name of the private cloud
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  HcxEnterpriseSiteArgs({
    pulumi.Output<String>? hcxEnterpriseSiteName,
    required pulumi.Output<String> privateCloudName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      hcxEnterpriseSiteName = pulumi.Input.asOptionalInput<String>(hcxEnterpriseSiteName),
      privateCloudName = pulumi.Input.asInput<String>(privateCloudName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hcxEnterpriseSiteName': ?hcxEnterpriseSiteName,
      'privateCloudName': privateCloudName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory HcxEnterpriseSiteArgs.fromMap(Map<String, dynamic> map) {
    return HcxEnterpriseSiteArgs(
      hcxEnterpriseSiteName: map['hcxEnterpriseSiteName'] == null ? null : pulumi.Output.create<String>(map['hcxEnterpriseSiteName'] as String),
      privateCloudName: pulumi.Output.create<String>(map['privateCloudName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

