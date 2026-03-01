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
  GetCustomDomainArgs({
    required String customDomainName,
    required String endpointName,
    required String profileName,
    required String resourceGroupName,
  }) :
      customDomainName = pulumi.Input.asInput<String>(customDomainName),
      endpointName = pulumi.Input.asInput<String>(endpointName),
      profileName = pulumi.Input.asInput<String>(profileName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

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
      customDomainName: map['customDomainName'] as String,
      endpointName: map['endpointName'] as String,
      profileName: map['profileName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

