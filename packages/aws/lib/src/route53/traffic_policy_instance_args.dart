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
    required String hostedZoneId,
    String? name,
    required String trafficPolicyId,
    required int trafficPolicyVersion,
    required int ttl,
  })  : hostedZoneId = pulumi.Input.asInput<String>(hostedZoneId),
        name = pulumi.Input.asOptionalInput<String>(name),
        trafficPolicyId = pulumi.Input.asInput<String>(trafficPolicyId),
        trafficPolicyVersion = pulumi.Input.asInput<int>(trafficPolicyVersion),
        ttl = pulumi.Input.asInput<int>(ttl);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['hostedZoneId'] = hostedZoneId;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['trafficPolicyId'] = trafficPolicyId;
    map['trafficPolicyVersion'] = trafficPolicyVersion;
    map['ttl'] = ttl;
    return map;
  }

  factory TrafficPolicyInstanceArgs.fromMap(Map<String, dynamic> map) {
    return TrafficPolicyInstanceArgs(
      hostedZoneId: map['hostedZoneId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      trafficPolicyId: map['trafficPolicyId'] as String,
      trafficPolicyVersion: map['trafficPolicyVersion'] as int,
      ttl: map['ttl'] as int,
    );
  }
}
