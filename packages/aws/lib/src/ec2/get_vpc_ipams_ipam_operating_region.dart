// ignore_for_file: unused_element, unnecessary_cast


class GetVpcIpamsIpamOperatingRegion {
  final String regionName;

  /// Creates a new [GetVpcIpamsIpamOperatingRegion].
  /// [regionName] Required.
  GetVpcIpamsIpamOperatingRegion({
    required this.regionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'regionName': regionName,
    };
  }

  factory GetVpcIpamsIpamOperatingRegion.fromMap(Map<String, dynamic> map) {
    return GetVpcIpamsIpamOperatingRegion(
      regionName: map['regionName'] as String,
    );
  }
}

