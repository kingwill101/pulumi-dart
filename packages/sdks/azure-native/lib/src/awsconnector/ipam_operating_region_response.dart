// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of IpamOperatingRegion
class IpamOperatingRegionResponse {
  /// &lt;p&gt;The name of the operating Region.&lt;/p&gt;
  final pulumi.Input<String?>? regionName;

  /// Creates a new [IpamOperatingRegionResponse].
  /// [regionName] &lt;p&gt;The name of the operating Region.&lt;/p&gt;
  const IpamOperatingRegionResponse({
    this.regionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'regionName': ?regionName,
    };
  }

  factory IpamOperatingRegionResponse.fromMap(Map<String, dynamic> map) {
    return IpamOperatingRegionResponse(
      regionName: (() { final guardedValue = map['regionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
