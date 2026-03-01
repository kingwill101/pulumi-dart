// ignore_for_file: unused_element, unnecessary_cast


/// Definition of ZoneAwarenessConfig
class ZoneAwarenessConfigResponse {
  /// <p>If you enabled multiple Availability Zones, this value is the number of zones that you want the domain to use. Valid values are <code>2</code> and <code>3</code>. If your domain is provisioned within a VPC, this value be equal to number of subnets.</p>
  final int? availabilityZoneCount;

  /// Creates a new [ZoneAwarenessConfigResponse].
  /// [availabilityZoneCount] <p>If you enabled multiple Availability Zones, this value is the number of zones that you want the domain to use. Valid values are <code>2</code> and <code>3</code>. If your domain is provisioned within a VPC, this value be equal to number of subnets.</p>
  ZoneAwarenessConfigResponse({
    this.availabilityZoneCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZoneCount': ?availabilityZoneCount,
    };
  }

  factory ZoneAwarenessConfigResponse.fromMap(Map<String, dynamic> map) {
    return ZoneAwarenessConfigResponse(
      availabilityZoneCount: map['availabilityZoneCount'] == null ? null : map['availabilityZoneCount'] as int,
    );
  }
}

