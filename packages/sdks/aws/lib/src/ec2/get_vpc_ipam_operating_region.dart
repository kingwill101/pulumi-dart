// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVpcIpamOperatingRegion {
  final pulumi.Input<String> regionName;

  /// Creates a new [GetVpcIpamOperatingRegion].
  /// [regionName] Required.
  GetVpcIpamOperatingRegion({
    required this.regionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'regionName': regionName,
    };
  }

  factory GetVpcIpamOperatingRegion.fromMap(Map<String, dynamic> map) {
    return GetVpcIpamOperatingRegion(
      regionName: pulumi.Input.fromValue(map['regionName'] as String),
    );
  }
}

