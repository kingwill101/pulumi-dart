// ignore_for_file: unused_element, unnecessary_cast

class DistributionOrigin {
  /// Name of the origin resource. Your origin can be an instance with an attached static IP, a bucket, or a load balancer that has at least one instance attached to it.
  final String name;

  /// Protocol that your Amazon Lightsail distribution uses when establishing a connection with your origin to pull content.
  final String? protocolPolicy;

  /// AWS Region name of the origin resource.
  final String regionName;

  /// Lightsail resource type (e.g., Distribution).
  final String? resourceType;

  /// Creates a new [DistributionOrigin].
  /// [name] Name of the origin resource. Your origin can be an instance with an attached static IP, a bucket, or a load balancer that has at least one instance attached to it.
  /// [protocolPolicy] Protocol that your Amazon Lightsail distribution uses when establishing a connection with your origin to pull content.
  /// [regionName] AWS Region name of the origin resource.
  /// [resourceType] Lightsail resource type (e.g., Distribution).
  DistributionOrigin({
    required this.name,
    this.protocolPolicy,
    required this.regionName,
    this.resourceType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    final protocolPolicyValue = protocolPolicy;
    if (protocolPolicyValue != null) {
      map['protocolPolicy'] = protocolPolicyValue;
    }
    map['regionName'] = regionName;
    final resourceTypeValue = resourceType;
    if (resourceTypeValue != null) {
      map['resourceType'] = resourceTypeValue;
    }
    return map;
  }

  factory DistributionOrigin.fromMap(Map<String, dynamic> map) {
    return DistributionOrigin(
      name: map['name'] as String,
      protocolPolicy: map['protocolPolicy'] == null
          ? null
          : map['protocolPolicy'] as String,
      regionName: map['regionName'] as String,
      resourceType:
          map['resourceType'] == null ? null : map['resourceType'] as String,
    );
  }
}
