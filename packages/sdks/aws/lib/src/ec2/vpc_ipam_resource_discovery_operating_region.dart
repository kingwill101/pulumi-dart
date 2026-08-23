// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VpcIpamResourceDiscoveryOperatingRegion {
  /// The name of the Region you want to add to the IPAM.
  final pulumi.Input<String> regionName;

  /// Creates a new [VpcIpamResourceDiscoveryOperatingRegion].
  /// [regionName] The name of the Region you want to add to the IPAM.
  const VpcIpamResourceDiscoveryOperatingRegion({
    required this.regionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'regionName': regionName,
    };
  }

  factory VpcIpamResourceDiscoveryOperatingRegion.fromMap(Map<String, dynamic> map) {
    return VpcIpamResourceDiscoveryOperatingRegion(
      regionName: pulumi.Input.fromValue(map['regionName'] as String),
    );
  }
}
