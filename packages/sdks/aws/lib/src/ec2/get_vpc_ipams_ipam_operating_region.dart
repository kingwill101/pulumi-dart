// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVpcIpamsIpamOperatingRegion {
  /// Name of the Region.
  final pulumi.Input<String> regionName;

  /// Creates a new [GetVpcIpamsIpamOperatingRegion].
  /// [regionName] Name of the Region.
  const GetVpcIpamsIpamOperatingRegion({
    required this.regionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'regionName': regionName,
    };
  }

  factory GetVpcIpamsIpamOperatingRegion.fromMap(Map<String, dynamic> map) {
    return GetVpcIpamsIpamOperatingRegion(
      regionName: pulumi.Input.fromValue(map['regionName'] as String),
    );
  }
}
