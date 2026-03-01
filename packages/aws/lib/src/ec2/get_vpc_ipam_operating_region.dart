// ignore_for_file: unused_element, unnecessary_cast

class GetVpcIpamOperatingRegion {
  final String regionName;

  /// Creates a new [GetVpcIpamOperatingRegion].
  /// [regionName] Required.
  GetVpcIpamOperatingRegion({required this.regionName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'regionName': regionName};
  }

  factory GetVpcIpamOperatingRegion.fromMap(Map<String, dynamic> map) {
    return GetVpcIpamOperatingRegion(regionName: map['regionName'] as String);
  }
}
