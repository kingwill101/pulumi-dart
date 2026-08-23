// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridePrivateEndpointManagedVpcResource {
  /// IP address type for the endpoint. Valid values are `IPV4` and `IPV6`.
  final pulumi.Input<String> endpointIpAddressType;
  /// Routing domain for the endpoint.
  final pulumi.Input<String>? routingDomain;
  /// IDs of the security groups for the endpoint.
  final pulumi.Input<List<String>>? securityGroupIds;
  /// IDs of the subnets for the endpoint.
  final pulumi.Input<List<String>> subnetIds;
  /// Tags to assign to the managed VPC resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// Identifier of the VPC for the endpoint.
  final pulumi.Input<String> vpcIdentifier;

  /// Creates a new [AgentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridePrivateEndpointManagedVpcResource].
  /// [endpointIpAddressType] IP address type for the endpoint. Valid values are `IPV4` and `IPV6`.
  /// [routingDomain] Routing domain for the endpoint.
  /// [securityGroupIds] IDs of the security groups for the endpoint.
  /// [subnetIds] IDs of the subnets for the endpoint.
  /// [tags] Tags to assign to the managed VPC resource.
  /// [vpcIdentifier] Identifier of the VPC for the endpoint.
  const AgentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridePrivateEndpointManagedVpcResource({
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

  factory AgentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridePrivateEndpointManagedVpcResource.fromMap(Map<String, dynamic> map) {
    return AgentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridePrivateEndpointManagedVpcResource(
      endpointIpAddressType: pulumi.Input.fromValue(map['endpointIpAddressType'] as String),
      routingDomain: (() { final guardedValue = map['routingDomain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityGroupIds: (() { final guardedValue = map['securityGroupIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      subnetIds: pulumi.Input.fromValue((map['subnetIds'] as List).cast<String>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      vpcIdentifier: pulumi.Input.fromValue(map['vpcIdentifier'] as String),
    );
  }
}
