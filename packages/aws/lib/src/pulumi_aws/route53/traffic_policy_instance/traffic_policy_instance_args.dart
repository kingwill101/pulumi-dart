// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for TrafficPolicyInstance.
class TrafficPolicyInstanceArgs {
  /// ID of the hosted zone that you want Amazon Route 53 to create resource record sets in by using the configuration in a traffic policy.
  final Input<String> hostedZoneId;

  /// Domain name for which Amazon Route 53 responds to DNS queries by using the resource record sets that Route 53 creates for this traffic policy instance.
  final Input<String>? name;

  /// ID of the traffic policy that you want to use to create resource record sets in the specified hosted zone.
  final Input<String> trafficPolicyId;

  /// Version of the traffic policy
  final Input<int> trafficPolicyVersion;

  /// TTL that you want Amazon Route 53 to assign to all the resource record sets that it creates in the specified hosted zone.
  final Input<int> ttl;

  TrafficPolicyInstanceArgs({
    required this.hostedZoneId,
    this.name,
    required this.trafficPolicyId,
    required this.trafficPolicyVersion,
    required this.ttl,
  });

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
      hostedZoneId: Input.asInput<String>(map['hostedZoneId']),
      name: Input.asOptionalInput<String>(map['name']),
      trafficPolicyId: Input.asInput<String>(map['trafficPolicyId']),
      trafficPolicyVersion: Input.asInput<int>(map['trafficPolicyVersion']),
      ttl: Input.asInput<int>(map['ttl']),
    );
  }
}
