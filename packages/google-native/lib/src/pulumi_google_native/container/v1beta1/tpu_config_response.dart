// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for Cloud TPU.
class TpuConfigResponse {
  /// Whether Cloud TPU integration is enabled or not.
  final bool enabled;

  /// IPv4 CIDR block reserved for Cloud TPU in the VPC.
  final String ipv4CidrBlock;

  /// Whether to use service networking for Cloud TPU or not.
  final bool useServiceNetworking;

  TpuConfigResponse({
    required this.enabled,
    required this.ipv4CidrBlock,
    required this.useServiceNetworking,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    map['ipv4CidrBlock'] = ipv4CidrBlock;
    map['useServiceNetworking'] = useServiceNetworking;
    return map;
  }

  factory TpuConfigResponse.fromMap(Map<String, dynamic> map) {
    return TpuConfigResponse(
      enabled: map['enabled'] as bool,
      ipv4CidrBlock: map['ipv4CidrBlock'] as String,
      useServiceNetworking: map['useServiceNetworking'] as bool,
    );
  }
}
