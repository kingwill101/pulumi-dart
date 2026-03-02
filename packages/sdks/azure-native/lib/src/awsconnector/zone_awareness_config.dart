// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ZoneAwarenessConfig
class ZoneAwarenessConfig {
  /// <p>If you enabled multiple Availability Zones, this value is the number of zones that you want the domain to use. Valid values are <code>2</code> and <code>3</code>. If your domain is provisioned within a VPC, this value be equal to number of subnets.</p>
  final pulumi.Input<int>? availabilityZoneCount;

  /// Creates a new [ZoneAwarenessConfig].
  /// [availabilityZoneCount] <p>If you enabled multiple Availability Zones, this value is the number of zones that you want the domain to use. Valid values are <code>2</code> and <code>3</code>. If your domain is provisioned within a VPC, this value be equal to number of subnets.</p>
  ZoneAwarenessConfig({
    this.availabilityZoneCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZoneCount': ?availabilityZoneCount,
    };
  }

  factory ZoneAwarenessConfig.fromMap(Map<String, dynamic> map) {
    return ZoneAwarenessConfig(
      availabilityZoneCount: map['availabilityZoneCount'] == null ? null : (map['availabilityZoneCount']! as int).input(),
    );
  }
}

