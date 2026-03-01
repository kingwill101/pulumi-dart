// ignore_for_file: unused_element, unnecessary_cast


class ClusterNetworksNewVpdInfoVpdSubnet {
  /// Subnet cidr
  final String? subnetCidr;
  /// Subnet Type
  final String? subnetType;
  final String? zoneId;

  /// Creates a new [ClusterNetworksNewVpdInfoVpdSubnet].
  /// [subnetCidr] Subnet cidr
  /// [subnetType] Subnet Type
  /// [zoneId] Optional.
  ClusterNetworksNewVpdInfoVpdSubnet({
    this.subnetCidr,
    this.subnetType,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'subnetCidr': ?subnetCidr,
      'subnetType': ?subnetType,
      'zoneId': ?zoneId,
    };
  }

  factory ClusterNetworksNewVpdInfoVpdSubnet.fromMap(Map<String, dynamic> map) {
    return ClusterNetworksNewVpdInfoVpdSubnet(
      subnetCidr: map['subnetCidr'] == null ? null : map['subnetCidr'] as String,
      subnetType: map['subnetType'] == null ? null : map['subnetType'] as String,
      zoneId: map['zoneId'] == null ? null : map['zoneId'] as String,
    );
  }
}

