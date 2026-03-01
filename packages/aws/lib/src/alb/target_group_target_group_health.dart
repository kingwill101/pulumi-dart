// ignore_for_file: unused_element, unnecessary_cast

import 'target_group_target_group_health_dns_failover.dart';
import 'target_group_target_group_health_unhealthy_state_routing.dart';

class TargetGroupTargetGroupHealth {
  /// Block to configure DNS Failover requirements. See DNS Failover below for details on attributes.
  final TargetGroupTargetGroupHealthDnsFailover? dnsFailover;

  /// Block to configure Unhealthy State Routing requirements. See Unhealthy State Routing below for details on attributes.
  final TargetGroupTargetGroupHealthUnhealthyStateRouting?
  unhealthyStateRouting;

  /// Creates a new [TargetGroupTargetGroupHealth].
  /// [dnsFailover] Block to configure DNS Failover requirements. See DNS Failover below for details on attributes.
  /// [unhealthyStateRouting] Block to configure Unhealthy State Routing requirements. See Unhealthy State Routing below for details on attributes.
  TargetGroupTargetGroupHealth({this.dnsFailover, this.unhealthyStateRouting});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsFailover': ?dnsFailover == null ? null : dnsFailover!.toMap(),
      'unhealthyStateRouting': ?unhealthyStateRouting == null
          ? null
          : unhealthyStateRouting!.toMap(),
    };
  }

  factory TargetGroupTargetGroupHealth.fromMap(Map<String, dynamic> map) {
    return TargetGroupTargetGroupHealth(
      dnsFailover: map['dnsFailover'] == null
          ? null
          : TargetGroupTargetGroupHealthDnsFailover.fromMap(
              (map['dnsFailover'] as Map).cast<String, dynamic>(),
            ),
      unhealthyStateRouting: map['unhealthyStateRouting'] == null
          ? null
          : TargetGroupTargetGroupHealthUnhealthyStateRouting.fromMap(
              (map['unhealthyStateRouting'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
