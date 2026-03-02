// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of IpamOperatingRegion
class IpamOperatingRegion {
  /// <p>The name of the operating Region.</p>
  final pulumi.Input<String>? regionName;

  /// Creates a new [IpamOperatingRegion].
  /// [regionName] <p>The name of the operating Region.</p>
  IpamOperatingRegion({
    this.regionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'regionName': ?regionName,
    };
  }

  factory IpamOperatingRegion.fromMap(Map<String, dynamic> map) {
    return IpamOperatingRegion(
      regionName: map['regionName'] == null ? null : (map['regionName'] as String).input(),
    );
  }
}

