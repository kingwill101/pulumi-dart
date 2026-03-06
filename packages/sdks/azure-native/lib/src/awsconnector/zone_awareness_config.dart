// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ZoneAwarenessConfig
class ZoneAwarenessConfig {
  /// &lt;p&gt;If you enabled multiple Availability Zones, this value is the number of zones that you want the domain to use. Valid values are &lt;code&gt;2&lt;/code&gt; and &lt;code&gt;3&lt;/code&gt;. If your domain is provisioned within a VPC, this value be equal to number of subnets.&lt;/p&gt;
  final pulumi.Input<int>? availabilityZoneCount;

  /// Creates a new [ZoneAwarenessConfig].
  /// [availabilityZoneCount] &lt;p&gt;If you enabled multiple Availability Zones, this value is the number of zones that you want the domain to use. Valid values are &lt;code&gt;2&lt;/code&gt; and &lt;code&gt;3&lt;/code&gt;. If your domain is provisioned within a VPC, this value be equal to number of subnets.&lt;/p&gt;
  const ZoneAwarenessConfig({
    this.availabilityZoneCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZoneCount': ?availabilityZoneCount,
    };
  }

  factory ZoneAwarenessConfig.fromMap(Map<String, dynamic> map) {
    return ZoneAwarenessConfig(
      availabilityZoneCount: (() { final guardedValue = map['availabilityZoneCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

