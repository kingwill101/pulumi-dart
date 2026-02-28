// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'record_set_routing_policy_primary_backup_primary_internal_load_balancer.dart';

class RecordSetRoutingPolicyPrimaryBackupPrimary {
  /// The Internet IP addresses to be health checked.
  final List<String>? externalEndpoints;

  /// The list of internal load balancers to health check.
  final List<RecordSetRoutingPolicyPrimaryBackupPrimaryInternalLoadBalancer>?
      internalLoadBalancers;

  /// Creates a new [RecordSetRoutingPolicyPrimaryBackupPrimary].
  /// [externalEndpoints] The Internet IP addresses to be health checked.
  /// [internalLoadBalancers] The list of internal load balancers to health check.
  RecordSetRoutingPolicyPrimaryBackupPrimary({
    this.externalEndpoints,
    this.internalLoadBalancers,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final externalEndpointsValue = externalEndpoints;
    if (externalEndpointsValue != null) {
      map['externalEndpoints'] = externalEndpointsValue;
    }
    final internalLoadBalancersValue = internalLoadBalancers;
    if (internalLoadBalancersValue != null) {
      map['internalLoadBalancers'] = pulumi.Input.encodeList<
              RecordSetRoutingPolicyPrimaryBackupPrimaryInternalLoadBalancer,
              Map<String, dynamic>>(
          internalLoadBalancersValue, (value) => value.toMap());
    }
    return map;
  }

  factory RecordSetRoutingPolicyPrimaryBackupPrimary.fromMap(
      Map<String, dynamic> map) {
    return RecordSetRoutingPolicyPrimaryBackupPrimary(
      externalEndpoints: map['externalEndpoints'] == null
          ? null
          : (map['externalEndpoints'] as List).cast<String>(),
      internalLoadBalancers: map['internalLoadBalancers'] == null
          ? null
          : pulumi.Input.decodeList<
                  RecordSetRoutingPolicyPrimaryBackupPrimaryInternalLoadBalancer>(
              map['internalLoadBalancers'],
              (value) =>
                  RecordSetRoutingPolicyPrimaryBackupPrimaryInternalLoadBalancer
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
