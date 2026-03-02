// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_route53_traffic_policy_instance_traffic_policy_instance_args_doc}
/// The set of arguments for TrafficPolicyInstance.
/// {@endtemplate}
/// {@macro pulumi_route53_traffic_policy_instance_traffic_policy_instance_args_doc}
class TrafficPolicyInstanceArgs {
  /// ID of the hosted zone that you want Amazon Route 53 to create resource record sets in by using the configuration in a traffic policy.
  final pulumi.Input<String> hostedZoneId;
  /// Domain name for which Amazon Route 53 responds to DNS queries by using the resource record sets that Route 53 creates for this traffic policy instance.
  final pulumi.Input<String>? name;
  /// ID of the traffic policy that you want to use to create resource record sets in the specified hosted zone.
  final pulumi.Input<String> trafficPolicyId;
  /// Version of the traffic policy
  final pulumi.Input<int> trafficPolicyVersion;
  /// TTL that you want Amazon Route 53 to assign to all the resource record sets that it creates in the specified hosted zone.
  final pulumi.Input<int> ttl;

  /// Creates a new [TrafficPolicyInstanceArgs].
  /// [hostedZoneId] ID of the hosted zone that you want Amazon Route 53 to create resource record sets in by using the configuration in a traffic policy.
  /// [name] Domain name for which Amazon Route 53 responds to DNS queries by using the resource record sets that Route 53 creates for this traffic policy instance.
  /// [trafficPolicyId] ID of the traffic policy that you want to use to create resource record sets in the specified hosted zone.
  /// [trafficPolicyVersion] Version of the traffic policy
  /// [ttl] TTL that you want Amazon Route 53 to assign to all the resource record sets that it creates in the specified hosted zone.
  TrafficPolicyInstanceArgs({
    required this.hostedZoneId,
    this.name,
    required this.trafficPolicyId,
    required this.trafficPolicyVersion,
    required this.ttl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostedZoneId': hostedZoneId,
      'name': ?name,
      'trafficPolicyId': trafficPolicyId,
      'trafficPolicyVersion': trafficPolicyVersion,
      'ttl': ttl,
    };
  }

  factory TrafficPolicyInstanceArgs.fromMap(Map<String, dynamic> map) {
    return TrafficPolicyInstanceArgs(
      hostedZoneId: (map['hostedZoneId'] as String).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      trafficPolicyId: (map['trafficPolicyId'] as String).input(),
      trafficPolicyVersion: (map['trafficPolicyVersion'] as int).input(),
      ttl: (map['ttl'] as int).input(),
    );
  }
}

