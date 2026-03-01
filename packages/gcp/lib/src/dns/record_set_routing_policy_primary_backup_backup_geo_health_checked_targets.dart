// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'record_set_routing_policy_primary_backup_backup_geo_health_checked_targets_internal_load_balancer.dart';

class RecordSetRoutingPolicyPrimaryBackupBackupGeoHealthCheckedTargets {
  /// The list of external endpoint addresses to health check.
  final List<String>? externalEndpoints;
  /// The list of internal load balancers to health check.
  /// Structure is documented below.
  final List<RecordSetRoutingPolicyPrimaryBackupBackupGeoHealthCheckedTargetsInternalLoadBalancer>? internalLoadBalancers;

  /// Creates a new [RecordSetRoutingPolicyPrimaryBackupBackupGeoHealthCheckedTargets].
  /// [externalEndpoints] The list of external endpoint addresses to health check.
  /// [internalLoadBalancers] The list of internal load balancers to health check.
  RecordSetRoutingPolicyPrimaryBackupBackupGeoHealthCheckedTargets({
    this.externalEndpoints,
    this.internalLoadBalancers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'externalEndpoints': ?externalEndpoints,
      'internalLoadBalancers': ?internalLoadBalancers == null ? null : pulumi.Input.encodeList<RecordSetRoutingPolicyPrimaryBackupBackupGeoHealthCheckedTargetsInternalLoadBalancer, Map<String, dynamic>>(internalLoadBalancers!, (value) => value.toMap()),
    };
  }

  factory RecordSetRoutingPolicyPrimaryBackupBackupGeoHealthCheckedTargets.fromMap(Map<String, dynamic> map) {
    return RecordSetRoutingPolicyPrimaryBackupBackupGeoHealthCheckedTargets(
      externalEndpoints: map['externalEndpoints'] == null ? null : (map['externalEndpoints'] as List).cast<String>(),
      internalLoadBalancers: map['internalLoadBalancers'] == null ? null : pulumi.Input.decodeList<RecordSetRoutingPolicyPrimaryBackupBackupGeoHealthCheckedTargetsInternalLoadBalancer>(map['internalLoadBalancers'], (value) => RecordSetRoutingPolicyPrimaryBackupBackupGeoHealthCheckedTargetsInternalLoadBalancer.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

