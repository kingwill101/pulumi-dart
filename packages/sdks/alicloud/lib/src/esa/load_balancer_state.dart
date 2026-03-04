// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_balancer_adaptive_routing.dart';
import 'load_balancer_monitor.dart';
import 'load_balancer_random_steering.dart';
import 'load_balancer_rule.dart';

/// Input properties used for looking up and filtering LoadBalancer resources.
class LoadBalancerState {
  /// Cross-pool origin configuration. See `adaptive_routing` below.
  final pulumi.Input<LoadBalancerAdaptiveRouting>? adaptiveRouting;

  /// List of default pool IDs.
  final pulumi.Input<List<int>>? defaultPools;

  /// The detailed description of the load balancer for easy management and identification.
  final pulumi.Input<String>? description;

  /// Whether the load balancer is enabled.
  final pulumi.Input<bool>? enabled;

  /// The fallback pool ID, to which traffic will be redirected if all other pools are unavailable.
  final pulumi.Input<int>? fallbackPool;

  /// The unique identifier ID of the load balancer.
  final pulumi.Input<int>? loadBalancerId;

  /// The name of the load balancer must meet the domain name format verification and be a subdomain name under the site.
  final pulumi.Input<String>? loadBalancerName;

  /// Monitor configuration for health check. See `monitor` below.
  final pulumi.Input<LoadBalancerMonitor>? monitor;

  /// Weighted round-robin configuration, used to control the traffic distribution weights among different pools. See `random_steering` below.
  final pulumi.Input<LoadBalancerRandomSteering>? randomSteering;

  /// Address pools corresponding to primary regions.
  final pulumi.Input<String>? regionPools;

  /// Rule configuration list, used to define behavior under specific conditions. See `rules` below.
  final pulumi.Input<List<LoadBalancerRule>>? rules;

  /// Session persistence. Valid values:
  final pulumi.Input<String>? sessionAffinity;

  /// The site ID.
  final pulumi.Input<String>? siteId;

  /// The status of the load balancer.
  final pulumi.Input<String>? status;

  /// Load balancing policy.
  final pulumi.Input<String>? steeringPolicy;

  /// Address pools corresponding to secondary regions. When multiple secondary regions share a set of address pools, the keys can be concatenated with commas.
  final pulumi.Input<String>? subRegionPools;

  /// TTL value, the time-to-live for DNS records. The default value is 30. The value range is 10-600.
  final pulumi.Input<int>? ttl;

  /// Creates a new [LoadBalancerState].
  /// [adaptiveRouting] Cross-pool origin configuration. See `adaptive_routing` below.
  /// [defaultPools] List of default pool IDs.
  /// [description] The detailed description of the load balancer for easy management and identification.
  /// [enabled] Whether the load balancer is enabled.
  /// [fallbackPool] The fallback pool ID, to which traffic will be redirected if all other pools are unavailable.
  /// [loadBalancerId] The unique identifier ID of the load balancer.
  /// [loadBalancerName] The name of the load balancer must meet the domain name format verification and be a subdomain name under the site.
  /// [monitor] Monitor configuration for health check. See `monitor` below.
  /// [randomSteering] Weighted round-robin configuration, used to control the traffic distribution weights among different pools. See `random_steering` below.
  /// [regionPools] Address pools corresponding to primary regions.
  /// [rules] Rule configuration list, used to define behavior under specific conditions. See `rules` below.
  /// [sessionAffinity] Session persistence. Valid values:
  /// [siteId] The site ID.
  /// [status] The status of the load balancer.
  /// [steeringPolicy] Load balancing policy.
  /// [subRegionPools] Address pools corresponding to secondary regions. When multiple secondary regions share a set of address pools, the keys can be concatenated with commas.
  /// [ttl] TTL value, the time-to-live for DNS records. The default value is 30. The value range is 10-600.
  LoadBalancerState({
    this.adaptiveRouting,
    this.defaultPools,
    this.description,
    this.enabled,
    this.fallbackPool,
    this.loadBalancerId,
    this.loadBalancerName,
    this.monitor,
    this.randomSteering,
    this.regionPools,
    this.rules,
    this.sessionAffinity,
    this.siteId,
    this.status,
    this.steeringPolicy,
    this.subRegionPools,
    this.ttl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adaptiveRouting':
          ?pulumi.Input.mapOptionalInputValue<
            LoadBalancerAdaptiveRouting,
            Map<String, dynamic>
          >(adaptiveRouting, (value) => value.toMap()),
      'defaultPools': ?defaultPools,
      'description': ?description,
      'enabled': ?enabled,
      'fallbackPool': ?fallbackPool,
      'loadBalancerId': ?loadBalancerId,
      'loadBalancerName': ?loadBalancerName,
      'monitor':
          ?pulumi.Input.mapOptionalInputValue<
            LoadBalancerMonitor,
            Map<String, dynamic>
          >(monitor, (value) => value.toMap()),
      'randomSteering':
          ?pulumi.Input.mapOptionalInputValue<
            LoadBalancerRandomSteering,
            Map<String, dynamic>
          >(randomSteering, (value) => value.toMap()),
      'regionPools': ?regionPools,
      'rules':
          ?pulumi.Input.mapOptionalInputValue<
            List<LoadBalancerRule>,
            List<Map<String, dynamic>>
          >(
            rules,
            (value) =>
                pulumi.Input.encodeList<LoadBalancerRule, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'sessionAffinity': ?sessionAffinity,
      'siteId': ?siteId,
      'status': ?status,
      'steeringPolicy': ?steeringPolicy,
      'subRegionPools': ?subRegionPools,
      'ttl': ?ttl,
    };
  }

  factory LoadBalancerState.fromMap(Map<String, dynamic> map) {
    return LoadBalancerState(
      adaptiveRouting: (() {
        final guardedValue = map['adaptiveRouting'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          LoadBalancerAdaptiveRouting.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      defaultPools: (() {
        final guardedValue = map['defaultPools'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<int>());
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      enabled: (() {
        final guardedValue = map['enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      fallbackPool: (() {
        final guardedValue = map['fallbackPool'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      loadBalancerId: (() {
        final guardedValue = map['loadBalancerId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      loadBalancerName: (() {
        final guardedValue = map['loadBalancerName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      monitor: (() {
        final guardedValue = map['monitor'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          LoadBalancerMonitor.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      randomSteering: (() {
        final guardedValue = map['randomSteering'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          LoadBalancerRandomSteering.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      regionPools: (() {
        final guardedValue = map['regionPools'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      rules: (() {
        final guardedValue = map['rules'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<LoadBalancerRule>(
            guardedValue,
            (value) => LoadBalancerRule.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      sessionAffinity: (() {
        final guardedValue = map['sessionAffinity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      siteId: (() {
        final guardedValue = map['siteId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      steeringPolicy: (() {
        final guardedValue = map['steeringPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      subRegionPools: (() {
        final guardedValue = map['subRegionPools'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ttl: (() {
        final guardedValue = map['ttl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
