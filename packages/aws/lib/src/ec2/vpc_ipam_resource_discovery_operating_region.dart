// ignore_for_file: unused_element, unnecessary_cast

class VpcIpamResourceDiscoveryOperatingRegion {
  /// The name of the Region you want to add to the IPAM.
  final String regionName;

  /// Creates a new [VpcIpamResourceDiscoveryOperatingRegion].
  /// [regionName] The name of the Region you want to add to the IPAM.
  VpcIpamResourceDiscoveryOperatingRegion({required this.regionName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'regionName': regionName};
  }

  factory VpcIpamResourceDiscoveryOperatingRegion.fromMap(
    Map<String, dynamic> map,
  ) {
    return VpcIpamResourceDiscoveryOperatingRegion(
      regionName: map['regionName'] as String,
    );
  }
}
