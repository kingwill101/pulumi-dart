// ignore_for_file: unused_element, unnecessary_cast


/// Describes the frontend configurations for the node type.
class FrontendConfiguration {
  /// The resource Id of application gateway backend address pool. The format of the resource Id is '/subscriptions/<subscriptionId>/resourceGroups/<resourceGroupName>/providers/Microsoft.Network/applicationGateways/<applicationGatewayName>/backendAddressPools/<backendAddressPoolName>'.
  final String? applicationGatewayBackendAddressPoolId;
  /// The IP address type of this frontend configuration. If omitted the default value is IPv4.
  final String? ipAddressType;
  /// The resource Id of the Load Balancer backend address pool that the VM instances of the node type are associated with. The format of the resource Id is '/subscriptions/<subscriptionId>/resourceGroups/<resourceGroupName>/providers/Microsoft.Network/loadBalancers/<loadBalancerName>/backendAddressPools/<backendAddressPoolName>'.
  final String? loadBalancerBackendAddressPoolId;
  /// The resource Id of the Load Balancer inbound NAT pool that the VM instances of the node type are associated with. The format of the resource Id is '/subscriptions/<subscriptionId>/resourceGroups/<resourceGroupName>/providers/Microsoft.Network/loadBalancers/<loadBalancerName>/inboundNatPools/<inboundNatPoolName>'.
  final String? loadBalancerInboundNatPoolId;

  /// Creates a new [FrontendConfiguration].
  /// [applicationGatewayBackendAddressPoolId] The resource Id of application gateway backend address pool. The format of the resource Id is '/subscriptions/<subscriptionId>/resourceGroups/<resourceGroupName>/providers/Microsoft.Network/applicationGateways/<applicationGatewayName>/backendAddressPools/<backendAddressPoolName>'.
  /// [ipAddressType] The IP address type of this frontend configuration. If omitted the default value is IPv4.
  /// [loadBalancerBackendAddressPoolId] The resource Id of the Load Balancer backend address pool that the VM instances of the node type are associated with. The format of the resource Id is '/subscriptions/<subscriptionId>/resourceGroups/<resourceGroupName>/providers/Microsoft.Network/loadBalancers/<loadBalancerName>/backendAddressPools/<backendAddressPoolName>'.
  /// [loadBalancerInboundNatPoolId] The resource Id of the Load Balancer inbound NAT pool that the VM instances of the node type are associated with. The format of the resource Id is '/subscriptions/<subscriptionId>/resourceGroups/<resourceGroupName>/providers/Microsoft.Network/loadBalancers/<loadBalancerName>/inboundNatPools/<inboundNatPoolName>'.
  FrontendConfiguration({
    this.applicationGatewayBackendAddressPoolId,
    this.ipAddressType,
    this.loadBalancerBackendAddressPoolId,
    this.loadBalancerInboundNatPoolId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationGatewayBackendAddressPoolId': ?applicationGatewayBackendAddressPoolId,
      'ipAddressType': ?ipAddressType,
      'loadBalancerBackendAddressPoolId': ?loadBalancerBackendAddressPoolId,
      'loadBalancerInboundNatPoolId': ?loadBalancerInboundNatPoolId,
    };
  }

  factory FrontendConfiguration.fromMap(Map<String, dynamic> map) {
    return FrontendConfiguration(
      applicationGatewayBackendAddressPoolId: map['applicationGatewayBackendAddressPoolId'] == null ? null : map['applicationGatewayBackendAddressPoolId'] as String,
      ipAddressType: map['ipAddressType'] == null ? null : map['ipAddressType'] as String,
      loadBalancerBackendAddressPoolId: map['loadBalancerBackendAddressPoolId'] == null ? null : map['loadBalancerBackendAddressPoolId'] as String,
      loadBalancerInboundNatPoolId: map['loadBalancerInboundNatPoolId'] == null ? null : map['loadBalancerInboundNatPoolId'] as String,
    );
  }
}

