// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of IpamOperatingRegion
class IpamOperatingRegionResponse {
  /// <p>The name of the operating Region.</p>
  final pulumi.Input<String>? regionName;

  /// Creates a new [IpamOperatingRegionResponse].
  /// [regionName] <p>The name of the operating Region.</p>
  IpamOperatingRegionResponse({
    this.regionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'regionName': ?regionName,
    };
  }

  factory IpamOperatingRegionResponse.fromMap(Map<String, dynamic> map) {
    return IpamOperatingRegionResponse(
      regionName: map['regionName'] == null ? null : (map['regionName'] as String).input(),
    );
  }
}

