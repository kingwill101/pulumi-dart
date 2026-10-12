// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridePrivateEndpointManagedVpcResource {
  /// IP address type used by the private endpoint, either `IPV4` or `IPV6`.
  final pulumi.Input<String> endpointIpAddressType;
  /// Routing domain used to resolve traffic through the private endpoint.
  final pulumi.Input<String?>? routingDomain;
  /// IDs of the security groups associated with the private endpoint network interfaces.
  final pulumi.Input<List<String>?>? securityGroupIds;
  /// IDs of the subnets in which the private endpoint network interfaces are placed.
  final pulumi.Input<List<String>> subnetIds;
  /// Tags applied to the service-managed VPC resource.
  final pulumi.Input<Map<String, String>?>? tags;
  /// ID of the VPC in which the private endpoint is provisioned.
  final pulumi.Input<String> vpcIdentifier;

  /// Creates a new [RegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridePrivateEndpointManagedVpcResource].
  /// [endpointIpAddressType] IP address type used by the private endpoint, either `IPV4` or `IPV6`.
  /// [routingDomain] Routing domain used to resolve traffic through the private endpoint.
  /// [securityGroupIds] IDs of the security groups associated with the private endpoint network interfaces.
  /// [subnetIds] IDs of the subnets in which the private endpoint network interfaces are placed.
  /// [tags] Tags applied to the service-managed VPC resource.
  /// [vpcIdentifier] ID of the VPC in which the private endpoint is provisioned.
  const RegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridePrivateEndpointManagedVpcResource({
    required this.endpointIpAddressType,
    this.routingDomain,
    this.securityGroupIds,
    required this.subnetIds,
    this.tags,
    required this.vpcIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointIpAddressType': endpointIpAddressType,
      'routingDomain': ?routingDomain,
      'securityGroupIds': ?securityGroupIds,
      'subnetIds': subnetIds,
      'tags': ?tags,
      'vpcIdentifier': vpcIdentifier,
    };
  }

  factory RegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridePrivateEndpointManagedVpcResource.fromMap(Map<String, dynamic> map) {
    return RegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridePrivateEndpointManagedVpcResource(
      endpointIpAddressType: pulumi.Input.fromValue(map['endpointIpAddressType'] as String),
      routingDomain: (() { final guardedValue = map['routingDomain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityGroupIds: (() { final guardedValue = map['securityGroupIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      subnetIds: pulumi.Input.fromValue((map['subnetIds'] as List).cast<String>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      vpcIdentifier: pulumi.Input.fromValue(map['vpcIdentifier'] as String),
    );
  }
}
