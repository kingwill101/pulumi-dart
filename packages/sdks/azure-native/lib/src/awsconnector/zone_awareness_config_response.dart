// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ZoneAwarenessConfig
class ZoneAwarenessConfigResponse {
  /// &lt;p&gt;If you enabled multiple Availability Zones, this value is the number of zones that you want the domain to use. Valid values are &lt;code&gt;2&lt;/code&gt; and &lt;code&gt;3&lt;/code&gt;. If your domain is provisioned within a VPC, this value be equal to number of subnets.&lt;/p&gt;
  final pulumi.Input<int?>? availabilityZoneCount;

  /// Creates a new [ZoneAwarenessConfigResponse].
  /// [availabilityZoneCount] &lt;p&gt;If you enabled multiple Availability Zones, this value is the number of zones that you want the domain to use. Valid values are &lt;code&gt;2&lt;/code&gt; and &lt;code&gt;3&lt;/code&gt;. If your domain is provisioned within a VPC, this value be equal to number of subnets.&lt;/p&gt;
  const ZoneAwarenessConfigResponse({
    this.availabilityZoneCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZoneCount': ?availabilityZoneCount,
    };
  }

  factory ZoneAwarenessConfigResponse.fromMap(Map<String, dynamic> map) {
    return ZoneAwarenessConfigResponse(
      availabilityZoneCount: (() { final guardedValue = map['availabilityZoneCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
