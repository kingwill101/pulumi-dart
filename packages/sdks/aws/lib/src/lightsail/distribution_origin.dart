// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DistributionOrigin {
  /// Name of the origin resource. Your origin can be an instance with an attached static IP, a bucket, or a load balancer that has at least one instance attached to it.
  final pulumi.Input<String> name;
  /// Protocol that your Amazon Lightsail distribution uses when establishing a connection with your origin to pull content.
  final pulumi.Input<String>? protocolPolicy;
  /// AWS Region name of the origin resource.
  final pulumi.Input<String> regionName;
  /// Lightsail resource type (e.g., Distribution).
  final pulumi.Input<String>? resourceType;

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
    return <String, dynamic>{
      'name': name,
      'protocolPolicy': ?protocolPolicy,
      'regionName': regionName,
      'resourceType': ?resourceType,
    };
  }

  factory DistributionOrigin.fromMap(Map<String, dynamic> map) {
    return DistributionOrigin(
      name: pulumi.Input.fromValue(map['name'] as String),
      protocolPolicy: (() { final guardedValue = map['protocolPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      regionName: pulumi.Input.fromValue(map['regionName'] as String),
      resourceType: (() { final guardedValue = map['resourceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

