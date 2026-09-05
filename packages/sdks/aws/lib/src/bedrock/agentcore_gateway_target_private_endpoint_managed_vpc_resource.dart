// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreGatewayTargetPrivateEndpointManagedVpcResource {
  /// IP address type for the resource configuration endpoint. Valid values: `IPV4`, `IPV6`.
  final pulumi.Input<String> endpointIpAddressType;
  /// Intermediate domain (e.g. a VPCE or ALB DNS name) to use instead of the actual target domain. Useful when the MCP server uses a private TLS certificate — place an ALB with a public ACM cert in front and set this to the ALB DNS name.
  final pulumi.Input<String?>? routingDomain;
  /// Set of security group IDs (up to 5) to associate with the Lattice resource gateway. Defaults to the VPC default security group.
  final pulumi.Input<List<String>?>? securityGroupIds;
  /// Set of subnet IDs inside the VPC where Lattice ENIs are placed.
  final pulumi.Input<List<String>> subnetIds;
  /// Map of tags to apply to the managed Lattice resource gateway.
  final pulumi.Input<Map<String, String>?>? tags;
  /// ID of the VPC that contains the private resource.
  final pulumi.Input<String> vpcIdentifier;

  /// Creates a new [AgentcoreGatewayTargetPrivateEndpointManagedVpcResource].
  /// [endpointIpAddressType] IP address type for the resource configuration endpoint. Valid values: `IPV4`, `IPV6`.
  /// [routingDomain] Intermediate domain (e.g. a VPCE or ALB DNS name) to use instead of the actual target domain. Useful when the MCP server uses a private TLS certificate — place an ALB with a public ACM cert in front and set this to the ALB DNS name.
  /// [securityGroupIds] Set of security group IDs (up to 5) to associate with the Lattice resource gateway. Defaults to the VPC default security group.
  /// [subnetIds] Set of subnet IDs inside the VPC where Lattice ENIs are placed.
  /// [tags] Map of tags to apply to the managed Lattice resource gateway.
  /// [vpcIdentifier] ID of the VPC that contains the private resource.
  const AgentcoreGatewayTargetPrivateEndpointManagedVpcResource({
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

  factory AgentcoreGatewayTargetPrivateEndpointManagedVpcResource.fromMap(Map<String, dynamic> map) {
    return AgentcoreGatewayTargetPrivateEndpointManagedVpcResource(
      endpointIpAddressType: pulumi.Input.fromValue(map['endpointIpAddressType'] as String),
      routingDomain: (() { final guardedValue = map['routingDomain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityGroupIds: (() { final guardedValue = map['securityGroupIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      subnetIds: pulumi.Input.fromValue((map['subnetIds'] as List).cast<String>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      vpcIdentifier: pulumi.Input.fromValue(map['vpcIdentifier'] as String),
    );
  }
}
