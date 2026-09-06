// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of IpamOperatingRegion
class IpamOperatingRegion {
  /// &lt;p&gt;The name of the operating Region.&lt;/p&gt;
  final pulumi.Input<String?>? regionName;

  /// Creates a new [IpamOperatingRegion].
  /// [regionName] &lt;p&gt;The name of the operating Region.&lt;/p&gt;
  const IpamOperatingRegion({
    this.regionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'regionName': ?regionName,
    };
  }

  factory IpamOperatingRegion.fromMap(Map<String, dynamic> map) {
    return IpamOperatingRegion(
      regionName: (() { final guardedValue = map['regionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
