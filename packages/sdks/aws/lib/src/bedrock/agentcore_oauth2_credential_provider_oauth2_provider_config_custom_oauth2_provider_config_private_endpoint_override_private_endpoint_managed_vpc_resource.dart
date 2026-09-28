// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigPrivateEndpointOverridePrivateEndpointManagedVpcResource {
  /// IP address type for the endpoint. Valid values: `IPV4`, `DUALSTACK`.
  final pulumi.Input<String> endpointIpAddressType;
  /// Routing domain for the managed VPC resource.
  final pulumi.Input<String?>? routingDomain;
  /// Set of up to 5 security group IDs for the managed VPC resource.
  final pulumi.Input<List<String>?>? securityGroupIds;
  /// Set of subnet IDs for the managed VPC resource.
  final pulumi.Input<List<String>> subnetIds;
  /// Key-value map of tags for the managed VPC resource.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Identifier of the VPC.
  final pulumi.Input<String> vpcIdentifier;

  /// Creates a new [AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigPrivateEndpointOverridePrivateEndpointManagedVpcResource].
  /// [endpointIpAddressType] IP address type for the endpoint. Valid values: `IPV4`, `DUALSTACK`.
  /// [routingDomain] Routing domain for the managed VPC resource.
  /// [securityGroupIds] Set of up to 5 security group IDs for the managed VPC resource.
  /// [subnetIds] Set of subnet IDs for the managed VPC resource.
  /// [tags] Key-value map of tags for the managed VPC resource.
  /// [vpcIdentifier] Identifier of the VPC.
  const AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigPrivateEndpointOverridePrivateEndpointManagedVpcResource({
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

  factory AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigPrivateEndpointOverridePrivateEndpointManagedVpcResource.fromMap(Map<String, dynamic> map) {
    return AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigPrivateEndpointOverridePrivateEndpointManagedVpcResource(
      endpointIpAddressType: pulumi.Input.fromValue(map['endpointIpAddressType'] as String),
      routingDomain: (() { final guardedValue = map['routingDomain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityGroupIds: (() { final guardedValue = map['securityGroupIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      subnetIds: pulumi.Input.fromValue((map['subnetIds'] as List).cast<String>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      vpcIdentifier: pulumi.Input.fromValue(map['vpcIdentifier'] as String),
    );
  }
}
