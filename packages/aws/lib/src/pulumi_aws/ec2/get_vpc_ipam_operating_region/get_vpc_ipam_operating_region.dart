// ignore_for_file: unused_element, unnecessary_cast

class GetVpcIpamOperatingRegion {
  final String regionName;

  GetVpcIpamOperatingRegion({
    required this.regionName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['regionName'] = regionName;
    return map;
  }

  factory GetVpcIpamOperatingRegion.fromMap(Map<String, dynamic> map) {
    return GetVpcIpamOperatingRegion(
      regionName: map['regionName'] as String,
    );
  }
}
