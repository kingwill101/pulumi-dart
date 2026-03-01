// ignore_for_file: unused_element, unnecessary_cast


class GetResolverInboundEndpointIpConfiguration {
  /// The private IP address of the IP configuration.
  final String privateIpAddress;
  /// The private IP address allocation method.
  final String privateIpAllocationMethod;
  /// The subnet ID of the IP configuration.
  final String subnetId;

  /// Creates a new [GetResolverInboundEndpointIpConfiguration].
  /// [privateIpAddress] The private IP address of the IP configuration.
  /// [privateIpAllocationMethod] The private IP address allocation method.
  /// [subnetId] The subnet ID of the IP configuration.
  GetResolverInboundEndpointIpConfiguration({
    required this.privateIpAddress,
    required this.privateIpAllocationMethod,
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateIpAddress': privateIpAddress,
      'privateIpAllocationMethod': privateIpAllocationMethod,
      'subnetId': subnetId,
    };
  }

  factory GetResolverInboundEndpointIpConfiguration.fromMap(Map<String, dynamic> map) {
    return GetResolverInboundEndpointIpConfiguration(
      privateIpAddress: map['privateIpAddress'] as String,
      privateIpAllocationMethod: map['privateIpAllocationMethod'] as String,
      subnetId: map['subnetId'] as String,
    );
  }
}

