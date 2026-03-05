// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cdn_get_afdcustom_domain_args_doc}
/// Arguments for getAFDCustomDomain.
/// {@endtemplate}
/// {@macro pulumi_cdn_get_afdcustom_domain_args_doc}
class GetAFDCustomDomainArgs {
  /// Name of the domain under the profile which is unique globally.
  final pulumi.Input<String> customDomainName;
  /// Name of the Azure Front Door Standard or Azure Front Door Premium or CDN profile which is unique within the resource group.
  final pulumi.Input<String> profileName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetAFDCustomDomainArgs].
  /// [customDomainName] Name of the domain under the profile which is unique globally.
  /// [profileName] Name of the Azure Front Door Standard or Azure Front Door Premium or CDN profile which is unique within the resource group.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetAFDCustomDomainArgs({
    required this.customDomainName,
    required this.profileName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customDomainName': customDomainName,
      'profileName': profileName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetAFDCustomDomainArgs.fromMap(Map<String, dynamic> map) {
    return GetAFDCustomDomainArgs(
      customDomainName: pulumi.Input.fromValue(map['customDomainName'] as String),
      profileName: pulumi.Input.fromValue(map['profileName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

