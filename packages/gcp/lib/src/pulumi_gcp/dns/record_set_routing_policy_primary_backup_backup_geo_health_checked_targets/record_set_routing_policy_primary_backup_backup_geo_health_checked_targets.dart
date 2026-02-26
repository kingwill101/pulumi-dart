// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../record_set_routing_policy_primary_backup_backup_geo_health_checked_targets_internal_load_balancer/record_set_routing_policy_primary_backup_backup_geo_health_checked_targets_internal_load_balancer.dart';

class RecordSetRoutingPolicyPrimaryBackupBackupGeoHealthCheckedTargets {
  /// The list of external endpoint addresses to health check.
  final List<String>? externalEndpoints;

  /// The list of internal load balancers to health check.
  /// Structure is documented below.
  final List<
          RecordSetRoutingPolicyPrimaryBackupBackupGeoHealthCheckedTargetsInternalLoadBalancer>?
      internalLoadBalancers;

  RecordSetRoutingPolicyPrimaryBackupBackupGeoHealthCheckedTargets({
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
      map['internalLoadBalancers'] = Input.encodeList<
          RecordSetRoutingPolicyPrimaryBackupBackupGeoHealthCheckedTargetsInternalLoadBalancer,
          Map<String,
              dynamic>>(internalLoadBalancersValue, (value) => value.toMap());
    }
    return map;
  }

  factory RecordSetRoutingPolicyPrimaryBackupBackupGeoHealthCheckedTargets.fromMap(
      Map<String, dynamic> map) {
    return RecordSetRoutingPolicyPrimaryBackupBackupGeoHealthCheckedTargets(
      externalEndpoints: map['externalEndpoints'] == null
          ? null
          : (map['externalEndpoints'] as List).cast<String>(),
      internalLoadBalancers: map['internalLoadBalancers'] == null
          ? null
          : Input.decodeList<
                  RecordSetRoutingPolicyPrimaryBackupBackupGeoHealthCheckedTargetsInternalLoadBalancer>(
              map['internalLoadBalancers'],
              (value) =>
                  RecordSetRoutingPolicyPrimaryBackupBackupGeoHealthCheckedTargetsInternalLoadBalancer
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
