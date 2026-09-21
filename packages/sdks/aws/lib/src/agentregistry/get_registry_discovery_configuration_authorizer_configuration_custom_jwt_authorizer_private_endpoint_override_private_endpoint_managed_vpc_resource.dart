// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridePrivateEndpointManagedVpcResource {
  /// IP address type used by the private endpoint, either `IPV4` or `IPV6`.
  final pulumi.Input<String> endpointIpAddressType;
  /// Routing domain used to resolve traffic through the private endpoint.
  final pulumi.Input<String> routingDomain;
  /// IDs of the security groups associated with the private endpoint network interfaces.
  final pulumi.Input<List<String>> securityGroupIds;
  /// IDs of the subnets in which the private endpoint network interfaces are placed.
  final pulumi.Input<List<String>> subnetIds;
  /// Tags applied to the service-managed VPC resource.
  final pulumi.Input<Map<String, String>> tags;
  /// ID of the VPC in which the private endpoint is provisioned.
  final pulumi.Input<String> vpcIdentifier;

  /// Creates a new [GetRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridePrivateEndpointManagedVpcResource].
  /// [endpointIpAddressType] IP address type used by the private endpoint, either `IPV4` or `IPV6`.
  /// [routingDomain] Routing domain used to resolve traffic through the private endpoint.
  /// [securityGroupIds] IDs of the security groups associated with the private endpoint network interfaces.
  /// [subnetIds] IDs of the subnets in which the private endpoint network interfaces are placed.
  /// [tags] Tags applied to the service-managed VPC resource.
  /// [vpcIdentifier] ID of the VPC in which the private endpoint is provisioned.
  const GetRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridePrivateEndpointManagedVpcResource({
    required this.endpointIpAddressType,
    required this.routingDomain,
    required this.securityGroupIds,
    required this.subnetIds,
    required this.tags,
    required this.vpcIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointIpAddressType': endpointIpAddressType,
      'routingDomain': routingDomain,
      'securityGroupIds': securityGroupIds,
      'subnetIds': subnetIds,
      'tags': tags,
      'vpcIdentifier': vpcIdentifier,
    };
  }

  factory GetRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridePrivateEndpointManagedVpcResource.fromMap(Map<String, dynamic> map) {
    return GetRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridePrivateEndpointManagedVpcResource(
      endpointIpAddressType: pulumi.Input.fromValue(map['endpointIpAddressType'] as String),
      routingDomain: pulumi.Input.fromValue(map['routingDomain'] as String),
      securityGroupIds: pulumi.Input.fromValue((map['securityGroupIds'] as List).cast<String>()),
      subnetIds: pulumi.Input.fromValue((map['subnetIds'] as List).cast<String>()),
      tags: pulumi.Input.fromValue((map['tags'] as Map).cast<String, String>()),
      vpcIdentifier: pulumi.Input.fromValue(map['vpcIdentifier'] as String),
    );
  }
}
