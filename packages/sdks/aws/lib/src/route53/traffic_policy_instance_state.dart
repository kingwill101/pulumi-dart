// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering TrafficPolicyInstance resources.
class TrafficPolicyInstanceState {
  /// Amazon Resource Name (ARN) of the traffic policy instance.
  final pulumi.Input<String>? arn;
  /// ID of the hosted zone that you want Amazon Route 53 to create resource record sets in by using the configuration in a traffic policy.
  final pulumi.Input<String>? hostedZoneId;
  /// Domain name for which Amazon Route 53 responds to DNS queries by using the resource record sets that Route 53 creates for this traffic policy instance.
  final pulumi.Input<String>? name;
  /// ID of the traffic policy that you want to use to create resource record sets in the specified hosted zone.
  final pulumi.Input<String>? trafficPolicyId;
  /// Version of the traffic policy
  final pulumi.Input<int>? trafficPolicyVersion;
  /// TTL that you want Amazon Route 53 to assign to all the resource record sets that it creates in the specified hosted zone.
  final pulumi.Input<int>? ttl;

  /// Creates a new [TrafficPolicyInstanceState].
  /// [arn] Amazon Resource Name (ARN) of the traffic policy instance.
  /// [hostedZoneId] ID of the hosted zone that you want Amazon Route 53 to create resource record sets in by using the configuration in a traffic policy.
  /// [name] Domain name for which Amazon Route 53 responds to DNS queries by using the resource record sets that Route 53 creates for this traffic policy instance.
  /// [trafficPolicyId] ID of the traffic policy that you want to use to create resource record sets in the specified hosted zone.
  /// [trafficPolicyVersion] Version of the traffic policy
  /// [ttl] TTL that you want Amazon Route 53 to assign to all the resource record sets that it creates in the specified hosted zone.
  TrafficPolicyInstanceState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? hostedZoneId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? trafficPolicyId,
    pulumi.Output<int>? trafficPolicyVersion,
    pulumi.Output<int>? ttl,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      hostedZoneId = pulumi.Input.asOptionalInput<String>(hostedZoneId),
      name = pulumi.Input.asOptionalInput<String>(name),
      trafficPolicyId = pulumi.Input.asOptionalInput<String>(trafficPolicyId),
      trafficPolicyVersion = pulumi.Input.asOptionalInput<int>(trafficPolicyVersion),
      ttl = pulumi.Input.asOptionalInput<int>(ttl);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'hostedZoneId': ?hostedZoneId,
      'name': ?name,
      'trafficPolicyId': ?trafficPolicyId,
      'trafficPolicyVersion': ?trafficPolicyVersion,
      'ttl': ?ttl,
    };
  }

  factory TrafficPolicyInstanceState.fromMap(Map<String, dynamic> map) {
    return TrafficPolicyInstanceState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      hostedZoneId: map['hostedZoneId'] == null ? null : pulumi.Output.create<String>(map['hostedZoneId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      trafficPolicyId: map['trafficPolicyId'] == null ? null : pulumi.Output.create<String>(map['trafficPolicyId'] as String),
      trafficPolicyVersion: map['trafficPolicyVersion'] == null ? null : pulumi.Output.create<int>(map['trafficPolicyVersion'] as int),
      ttl: map['ttl'] == null ? null : pulumi.Output.create<int>(map['ttl'] as int),
    );
  }
}

