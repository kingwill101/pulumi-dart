// ignore_for_file: unused_element, unnecessary_cast

class VpcIpamResourceDiscoveryOperatingRegion {
  /// The name of the Region you want to add to the IPAM.
  final String regionName;

  VpcIpamResourceDiscoveryOperatingRegion({
    required this.regionName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['regionName'] = regionName;
    return map;
  }

  factory VpcIpamResourceDiscoveryOperatingRegion.fromMap(
      Map<String, dynamic> map) {
    return VpcIpamResourceDiscoveryOperatingRegion(
      regionName: map['regionName'] as String,
    );
  }
}
