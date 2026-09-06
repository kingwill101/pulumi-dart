// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cdn_custom_domain_args_doc}
/// The set of arguments for CustomDomain.
/// {@endtemplate}
/// {@macro pulumi_cdn_custom_domain_args_doc}
class CustomDomainArgs {
  /// Name of the custom domain within an endpoint.
  final pulumi.Input<String?>? customDomainName;
  /// Name of the endpoint under the profile which is unique globally.
  final pulumi.Input<String> endpointName;
  /// The host name of the custom domain. Must be a domain name.
  final pulumi.Input<String> hostName;
  /// Name of the Azure Front Door Standard or Azure Front Door Premium or CDN profile which is unique within the resource group.
  final pulumi.Input<String> profileName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [CustomDomainArgs].
  /// [customDomainName] Name of the custom domain within an endpoint.
  /// [endpointName] Name of the endpoint under the profile which is unique globally.
  /// [hostName] The host name of the custom domain. Must be a domain name.
  /// [profileName] Name of the Azure Front Door Standard or Azure Front Door Premium or CDN profile which is unique within the resource group.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const CustomDomainArgs({
    this.customDomainName,
    required this.endpointName,
    required this.hostName,
    required this.profileName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customDomainName': ?customDomainName,
      'endpointName': endpointName,
      'hostName': hostName,
      'profileName': profileName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory CustomDomainArgs.fromMap(Map<String, dynamic> map) {
    return CustomDomainArgs(
      customDomainName: (() { final guardedValue = map['customDomainName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpointName: pulumi.Input.fromValue(map['endpointName'] as String),
      hostName: pulumi.Input.fromValue(map['hostName'] as String),
      profileName: pulumi.Input.fromValue(map['profileName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
