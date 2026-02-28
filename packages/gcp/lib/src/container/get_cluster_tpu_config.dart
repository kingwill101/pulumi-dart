// ignore_for_file: unused_element, unnecessary_cast


class GetClusterTpuConfig {
  /// Whether Cloud TPU integration is enabled or not
  final bool enabled;
  /// IPv4 CIDR block reserved for Cloud TPU in the VPC.
  final String ipv4CidrBlock;
  /// Whether to use service networking for Cloud TPU or not
  final bool useServiceNetworking;

  /// Creates a new [GetClusterTpuConfig].
  /// [enabled] Whether Cloud TPU integration is enabled or not
  /// [ipv4CidrBlock] IPv4 CIDR block reserved for Cloud TPU in the VPC.
  /// [useServiceNetworking] Whether to use service networking for Cloud TPU or not
  GetClusterTpuConfig({
    required this.enabled,
    required this.ipv4CidrBlock,
    required this.useServiceNetworking,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'ipv4CidrBlock': ipv4CidrBlock,
      'useServiceNetworking': useServiceNetworking,
    };
  }

  factory GetClusterTpuConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterTpuConfig(
      enabled: map['enabled'] as bool,
      ipv4CidrBlock: map['ipv4CidrBlock'] as String,
      useServiceNetworking: map['useServiceNetworking'] as bool,
    );
  }
}

