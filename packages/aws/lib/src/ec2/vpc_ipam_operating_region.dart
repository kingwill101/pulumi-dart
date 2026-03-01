// ignore_for_file: unused_element, unnecessary_cast

class VpcIpamOperatingRegion {
  /// The name of the Region you want to add to the IPAM.
  final String regionName;

  /// Creates a new [VpcIpamOperatingRegion].
  /// [regionName] The name of the Region you want to add to the IPAM.
  VpcIpamOperatingRegion({required this.regionName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'regionName': regionName};
  }

  factory VpcIpamOperatingRegion.fromMap(Map<String, dynamic> map) {
    return VpcIpamOperatingRegion(regionName: map['regionName'] as String);
  }
}
