// ignore_for_file: unused_element, unnecessary_cast


class KubernetesClusterNetworkProfileLoadBalancerProfile {
  /// The type of the managed inbound Load Balancer Backend Pool. Possible values are `NodeIP` and `NodeIPConfiguration`. Defaults to `NodeIPConfiguration`. See [the documentation](https://learn.microsoft.com/en-us/azure/aks/load-balancer-standard#change-the-inbound-pool-type) for more information.
  final String? backendPoolType;
  /// The outcome (resource IDs) of the specified arguments.
  final List<String>? effectiveOutboundIps;
  /// Desired outbound flow idle timeout in minutes for the cluster load balancer. Must be between `4` and `100` inclusive. Defaults to `30`.
  final int? idleTimeoutInMinutes;
  /// Count of desired managed outbound IPs for the cluster load balancer. Must be between `1` and `100` inclusive.
  final int? managedOutboundIpCount;
  /// The desired number of IPv6 outbound IPs created and managed by Azure for the cluster load balancer. Must be in the range of 1 to 100 (inclusive). The default value is 0 for single-stack and 1 for dual-stack.
  ///
  /// > **Note:** `managed_outbound_ipv6_count` requires dual-stack networking. To enable dual-stack networking the Preview Feature `Microsoft.ContainerService/AKS-EnableDualStack` needs to be enabled and the Resource Provider re-registered, see [the documentation](https://docs.microsoft.com/azure/aks/configure-kubenet-dual-stack?tabs=azure-cli%2Ckubectl#register-the-aks-enabledualstack-preview-feature) for more information.
  final int? managedOutboundIpv6Count;
  /// The ID of the Public IP Addresses which should be used for outbound communication for the cluster load balancer.
  ///
  /// > **Note:** Set `outbound_ip_address_ids` to an empty slice `[]` in order to unlink it from the cluster. Unlinking a `outbound_ip_address_ids` will revert the load balancing for the cluster back to a managed one.
  final List<String>? outboundIpAddressIds;
  /// The ID of the outbound Public IP Address Prefixes which should be used for the cluster load balancer.
  ///
  /// > **Note:** Set `outbound_ip_prefix_ids` to an empty slice `[]` in order to unlink it from the cluster. Unlinking a `outbound_ip_prefix_ids` will revert the load balancing for the cluster back to a managed one.
  final List<String>? outboundIpPrefixIds;
  /// Number of desired SNAT port for each VM in the clusters load balancer. Must be between `0` and `64000` inclusive. Defaults to `0`.
  final int? outboundPortsAllocated;

  /// Creates a new [KubernetesClusterNetworkProfileLoadBalancerProfile].
  /// [backendPoolType] The type of the managed inbound Load Balancer Backend Pool. Possible values are `NodeIP` and `NodeIPConfiguration`. Defaults to `NodeIPConfiguration`. See [the documentation](https://learn.microsoft.com/en-us/azure/aks/load-balancer-standard#change-the-inbound-pool-type) for more information.
  /// [effectiveOutboundIps] The outcome (resource IDs) of the specified arguments.
  /// [idleTimeoutInMinutes] Desired outbound flow idle timeout in minutes for the cluster load balancer. Must be between `4` and `100` inclusive. Defaults to `30`.
  /// [managedOutboundIpCount] Count of desired managed outbound IPs for the cluster load balancer. Must be between `1` and `100` inclusive.
  /// [managedOutboundIpv6Count] The desired number of IPv6 outbound IPs created and managed by Azure for the cluster load balancer. Must be in the range of 1 to 100 (inclusive). The default value is 0 for single-stack and 1 for dual-stack.
  /// [outboundIpAddressIds] The ID of the Public IP Addresses which should be used for outbound communication for the cluster load balancer.
  /// [outboundIpPrefixIds] The ID of the outbound Public IP Address Prefixes which should be used for the cluster load balancer.
  /// [outboundPortsAllocated] Number of desired SNAT port for each VM in the clusters load balancer. Must be between `0` and `64000` inclusive. Defaults to `0`.
  KubernetesClusterNetworkProfileLoadBalancerProfile({
    this.backendPoolType,
    this.effectiveOutboundIps,
    this.idleTimeoutInMinutes,
    this.managedOutboundIpCount,
    this.managedOutboundIpv6Count,
    this.outboundIpAddressIds,
    this.outboundIpPrefixIds,
    this.outboundPortsAllocated,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendPoolType': ?backendPoolType,
      'effectiveOutboundIps': ?effectiveOutboundIps,
      'idleTimeoutInMinutes': ?idleTimeoutInMinutes,
      'managedOutboundIpCount': ?managedOutboundIpCount,
      'managedOutboundIpv6Count': ?managedOutboundIpv6Count,
      'outboundIpAddressIds': ?outboundIpAddressIds,
      'outboundIpPrefixIds': ?outboundIpPrefixIds,
      'outboundPortsAllocated': ?outboundPortsAllocated,
    };
  }

  factory KubernetesClusterNetworkProfileLoadBalancerProfile.fromMap(Map<String, dynamic> map) {
    return KubernetesClusterNetworkProfileLoadBalancerProfile(
      backendPoolType: map['backendPoolType'] == null ? null : map['backendPoolType'] as String,
      effectiveOutboundIps: map['effectiveOutboundIps'] == null ? null : (map['effectiveOutboundIps'] as List).cast<String>(),
      idleTimeoutInMinutes: map['idleTimeoutInMinutes'] == null ? null : map['idleTimeoutInMinutes'] as int,
      managedOutboundIpCount: map['managedOutboundIpCount'] == null ? null : map['managedOutboundIpCount'] as int,
      managedOutboundIpv6Count: map['managedOutboundIpv6Count'] == null ? null : map['managedOutboundIpv6Count'] as int,
      outboundIpAddressIds: map['outboundIpAddressIds'] == null ? null : (map['outboundIpAddressIds'] as List).cast<String>(),
      outboundIpPrefixIds: map['outboundIpPrefixIds'] == null ? null : (map['outboundIpPrefixIds'] as List).cast<String>(),
      outboundPortsAllocated: map['outboundPortsAllocated'] == null ? null : map['outboundPortsAllocated'] as int,
    );
  }
}

