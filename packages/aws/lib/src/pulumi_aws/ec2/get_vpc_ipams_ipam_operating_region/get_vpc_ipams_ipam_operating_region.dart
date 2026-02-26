// ignore_for_file: unused_element, unnecessary_cast

class GetVpcIpamsIpamOperatingRegion {
  final String regionName;

  GetVpcIpamsIpamOperatingRegion({
    required this.regionName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['regionName'] = regionName;
    return map;
  }

  factory GetVpcIpamsIpamOperatingRegion.fromMap(Map<String, dynamic> map) {
    return GetVpcIpamsIpamOperatingRegion(
      regionName: map['regionName'] as String,
    );
  }
}
