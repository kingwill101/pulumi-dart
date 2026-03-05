// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VpcIpamOperatingRegion {
  /// The name of the Region you want to add to the IPAM.
  final pulumi.Input<String> regionName;

  /// Creates a new [VpcIpamOperatingRegion].
  /// [regionName] The name of the Region you want to add to the IPAM.
  VpcIpamOperatingRegion({
    required this.regionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'regionName': regionName,
    };
  }

  factory VpcIpamOperatingRegion.fromMap(Map<String, dynamic> map) {
    return VpcIpamOperatingRegion(
      regionName: pulumi.Input.fromValue(map['regionName'] as String),
    );
  }
}

