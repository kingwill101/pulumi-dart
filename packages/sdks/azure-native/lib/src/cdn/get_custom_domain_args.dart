// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cdn_get_custom_domain_args_doc}
/// Arguments for getCustomDomain.
/// {@endtemplate}
/// {@macro pulumi_cdn_get_custom_domain_args_doc}
class GetCustomDomainArgs {
  /// Name of the custom domain within an endpoint.
  final pulumi.Input<String> customDomainName;
  /// Name of the endpoint under the profile which is unique globally.
  final pulumi.Input<String> endpointName;
  /// Name of the Azure Front Door Standard or Azure Front Door Premium or CDN profile which is unique within the resource group.
  final pulumi.Input<String> profileName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetCustomDomainArgs].
  /// [customDomainName] Name of the custom domain within an endpoint.
  /// [endpointName] Name of the endpoint under the profile which is unique globally.
  /// [profileName] Name of the Azure Front Door Standard or Azure Front Door Premium or CDN profile which is unique within the resource group.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetCustomDomainArgs({
    required this.customDomainName,
    required this.endpointName,
    required this.profileName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customDomainName': customDomainName,
      'endpointName': endpointName,
      'profileName': profileName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetCustomDomainArgs.fromMap(Map<String, dynamic> map) {
    return GetCustomDomainArgs(
      customDomainName: pulumi.Input.fromValue(map['customDomainName'] as String),
      endpointName: pulumi.Input.fromValue(map['endpointName'] as String),
      profileName: pulumi.Input.fromValue(map['profileName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

