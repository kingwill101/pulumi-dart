// ignore_for_file: unused_element, unnecessary_cast


class EndpointGroupEndpointConfiguration {
  /// Indicates whether client IP addresses are reserved. Default Value: `false`. Valid values:
  final bool? enableClientipPreservation;
  /// Specifies whether to preserve client IP addresses by using the ProxyProtocol module. Default Value: `false`. Valid values:
  final bool? enableProxyProtocol;
  /// The IP address or domain name of Endpoint N in the endpoint group.
  final String endpoint;
  /// The private IP address of the ENI.
  /// > **NOTE:** `sub_address` is valid only when `type` is set to `ENI`.
  final String? subAddress;
  /// The type of Endpoint N in the endpoint group. Valid values:
  /// - `Domain`: A custom domain name.
  /// - `Ip`: A custom IP address.
  /// - `IpTarget`: (Available since v1.262.0) An Alibaba Cloud public IP address.
  /// - `PublicIp`: An Alibaba Cloud public IP address.
  /// - `ECS`: An Elastic Compute Service (ECS) instance.
  /// - `SLB`: A Classic Load Balancer (CLB) instance.
  /// - `ALB`: (Available since v1.232.0) An Application Load Balancer (ALB) instance.
  /// - `NLB`: (Available since v1.232.0) A Network Load Balancer (NLB) instance.
  /// - `ENI`: (Available since v1.232.0) An Elastic Network Interface (ENI).
  /// - `OSS`: (Available since v1.232.0) An Object Storage Service (OSS) bucket.
  final String type;
  /// The ID of the VPC.
  final String? vpcId;
  /// The IDs of vSwitches that are deployed in the VPC.
  final List<String>? vswitchIds;
  /// The weight of Endpoint N in the endpoint group. Valid values: `0` to `255`.
  /// > **NOTE:** If the weight of a terminal node is set to `0`, global acceleration will terminate the distribution of traffic to the terminal node. Please be careful.
  final int weight;

  /// Creates a new [EndpointGroupEndpointConfiguration].
  /// [enableClientipPreservation] Indicates whether client IP addresses are reserved. Default Value: `false`. Valid values:
  /// [enableProxyProtocol] Specifies whether to preserve client IP addresses by using the ProxyProtocol module. Default Value: `false`. Valid values:
  /// [endpoint] The IP address or domain name of Endpoint N in the endpoint group.
  /// [subAddress] The private IP address of the ENI.
  /// [type] The type of Endpoint N in the endpoint group. Valid values:
  /// [vpcId] The ID of the VPC.
  /// [vswitchIds] The IDs of vSwitches that are deployed in the VPC.
  /// [weight] The weight of Endpoint N in the endpoint group. Valid values: `0` to `255`.
  EndpointGroupEndpointConfiguration({
    this.enableClientipPreservation,
    this.enableProxyProtocol,
    required this.endpoint,
    this.subAddress,
    required this.type,
    this.vpcId,
    this.vswitchIds,
    required this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableClientipPreservation': ?enableClientipPreservation,
      'enableProxyProtocol': ?enableProxyProtocol,
      'endpoint': endpoint,
      'subAddress': ?subAddress,
      'type': type,
      'vpcId': ?vpcId,
      'vswitchIds': ?vswitchIds,
      'weight': weight,
    };
  }

  factory EndpointGroupEndpointConfiguration.fromMap(Map<String, dynamic> map) {
    return EndpointGroupEndpointConfiguration(
      enableClientipPreservation: map['enableClientipPreservation'] == null ? null : map['enableClientipPreservation'] as bool,
      enableProxyProtocol: map['enableProxyProtocol'] == null ? null : map['enableProxyProtocol'] as bool,
      endpoint: map['endpoint'] as String,
      subAddress: map['subAddress'] == null ? null : map['subAddress'] as String,
      type: map['type'] as String,
      vpcId: map['vpcId'] == null ? null : map['vpcId'] as String,
      vswitchIds: map['vswitchIds'] == null ? null : (map['vswitchIds'] as List).cast<String>(),
      weight: map['weight'] as int,
    );
  }
}

