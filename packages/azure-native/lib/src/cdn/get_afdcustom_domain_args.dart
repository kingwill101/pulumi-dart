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
    required String customDomainName,
    required String profileName,
    required String resourceGroupName,
  }) :
      customDomainName = pulumi.Input.asInput<String>(customDomainName),
      profileName = pulumi.Input.asInput<String>(profileName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customDomainName': customDomainName,
      'profileName': profileName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetAFDCustomDomainArgs.fromMap(Map<String, dynamic> map) {
    return GetAFDCustomDomainArgs(
      customDomainName: map['customDomainName'] as String,
      profileName: map['profileName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

