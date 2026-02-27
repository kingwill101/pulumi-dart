// ignore_for_file: unused_element, unnecessary_cast

import '../target_group_target_group_health_dns_failover/target_group_target_group_health_dns_failover_lb.dart';
import '../target_group_target_group_health_unhealthy_state_routing/target_group_target_group_health_unhealthy_state_routing_lb.dart';

class TargetGroupTargetGroupHealthLb {
  /// Block to configure DNS Failover requirements. See DNS Failover below for details on attributes.
  final TargetGroupTargetGroupHealthDnsFailoverLb? dnsFailover;

  /// Block to configure Unhealthy State Routing requirements. See Unhealthy State Routing below for details on attributes.
  final TargetGroupTargetGroupHealthUnhealthyStateRoutingLb?
      unhealthyStateRouting;

  TargetGroupTargetGroupHealthLb({
    this.dnsFailover,
    this.unhealthyStateRouting,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dnsFailoverValue = dnsFailover;
    if (dnsFailoverValue != null) {
      map['dnsFailover'] = dnsFailoverValue.toMap();
    }
    final unhealthyStateRoutingValue = unhealthyStateRouting;
    if (unhealthyStateRoutingValue != null) {
      map['unhealthyStateRouting'] = unhealthyStateRoutingValue.toMap();
    }
    return map;
  }

  factory TargetGroupTargetGroupHealthLb.fromMap(Map<String, dynamic> map) {
    return TargetGroupTargetGroupHealthLb(
      dnsFailover: map['dnsFailover'] == null
          ? null
          : TargetGroupTargetGroupHealthDnsFailoverLb.fromMap(
              (map['dnsFailover'] as Map).cast<String, dynamic>()),
      unhealthyStateRouting: map['unhealthyStateRouting'] == null
          ? null
          : TargetGroupTargetGroupHealthUnhealthyStateRoutingLb.fromMap(
              (map['unhealthyStateRouting'] as Map).cast<String, dynamic>()),
    );
  }
}
