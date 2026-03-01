// ignore_for_file: unused_element, unnecessary_cast


class VirtualNetworksPropertiesVipPool {
  /// Ending IP address for the IP Pool
  final String? endIP;
  /// Starting IP address for the IP Pool
  final String? startIP;

  /// Creates a new [VirtualNetworksPropertiesVipPool].
  /// [endIP] Ending IP address for the IP Pool
  /// [startIP] Starting IP address for the IP Pool
  VirtualNetworksPropertiesVipPool({
    this.endIP,
    this.startIP,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endIP': ?endIP,
      'startIP': ?startIP,
    };
  }

  factory VirtualNetworksPropertiesVipPool.fromMap(Map<String, dynamic> map) {
    return VirtualNetworksPropertiesVipPool(
      endIP: map['endIP'] == null ? null : map['endIP'] as String,
      startIP: map['startIP'] == null ? null : map['startIP'] as String,
    );
  }
}

