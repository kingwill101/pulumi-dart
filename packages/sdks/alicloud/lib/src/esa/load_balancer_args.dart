// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_balancer_adaptive_routing.dart';
import 'load_balancer_monitor.dart';
import 'load_balancer_random_steering.dart';
import 'load_balancer_rule.dart';

/// {@template pulumi_esa_load_balancer_load_balancer_args_doc}
/// The set of arguments for LoadBalancer.
/// {@endtemplate}
/// {@macro pulumi_esa_load_balancer_load_balancer_args_doc}
class LoadBalancerArgs {
  /// Cross-pool origin configuration. See `adaptive_routing` below.
  final pulumi.Input<LoadBalancerAdaptiveRouting>? adaptiveRouting;

  /// List of default pool IDs.
  final pulumi.Input<List<int>> defaultPools;

  /// The detailed description of the load balancer for easy management and identification.
  final pulumi.Input<String>? description;

  /// Whether the load balancer is enabled.
  final pulumi.Input<bool>? enabled;

  /// The fallback pool ID, to which traffic will be redirected if all other pools are unavailable.
  final pulumi.Input<int> fallbackPool;

  /// The name of the load balancer must meet the domain name format verification and be a subdomain name under the site.
  final pulumi.Input<String> loadBalancerName;

  /// Monitor configuration for health check. See `monitor` below.
  final pulumi.Input<LoadBalancerMonitor> monitor;

  /// Weighted round-robin configuration, used to control the traffic distribution weights among different pools. See `random_steering` below.
  final pulumi.Input<LoadBalancerRandomSteering>? randomSteering;

  /// Address pools corresponding to primary regions.
  final pulumi.Input<String>? regionPools;

  /// Rule configuration list, used to define behavior under specific conditions. See `rules` below.
  final pulumi.Input<List<LoadBalancerRule>>? rules;

  /// Session persistence. Valid values:
  final pulumi.Input<String>? sessionAffinity;

  /// The site ID.
  final pulumi.Input<String> siteId;

  /// Load balancing policy.
  final pulumi.Input<String> steeringPolicy;

  /// Address pools corresponding to secondary regions. When multiple secondary regions share a set of address pools, the keys can be concatenated with commas.
  final pulumi.Input<String>? subRegionPools;

  /// TTL value, the time-to-live for DNS records. The default value is 30. The value range is 10-600.
  final pulumi.Input<int>? ttl;

  /// Creates a new [LoadBalancerArgs].
  /// [adaptiveRouting] Cross-pool origin configuration. See `adaptive_routing` below.
  /// [defaultPools] List of default pool IDs.
  /// [description] The detailed description of the load balancer for easy management and identification.
  /// [enabled] Whether the load balancer is enabled.
  /// [fallbackPool] The fallback pool ID, to which traffic will be redirected if all other pools are unavailable.
  /// [loadBalancerName] The name of the load balancer must meet the domain name format verification and be a subdomain name under the site.
  /// [monitor] Monitor configuration for health check. See `monitor` below.
  /// [randomSteering] Weighted round-robin configuration, used to control the traffic distribution weights among different pools. See `random_steering` below.
  /// [regionPools] Address pools corresponding to primary regions.
  /// [rules] Rule configuration list, used to define behavior under specific conditions. See `rules` below.
  /// [sessionAffinity] Session persistence. Valid values:
  /// [siteId] The site ID.
  /// [steeringPolicy] Load balancing policy.
  /// [subRegionPools] Address pools corresponding to secondary regions. When multiple secondary regions share a set of address pools, the keys can be concatenated with commas.
  /// [ttl] TTL value, the time-to-live for DNS records. The default value is 30. The value range is 10-600.
  LoadBalancerArgs({
    this.adaptiveRouting,
    required this.defaultPools,
    this.description,
    this.enabled,
    required this.fallbackPool,
    required this.loadBalancerName,
    required this.monitor,
    this.randomSteering,
    this.regionPools,
    this.rules,
    this.sessionAffinity,
    required this.siteId,
    required this.steeringPolicy,
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
      'defaultPools': defaultPools,
      'description': ?description,
      'enabled': ?enabled,
      'fallbackPool': fallbackPool,
      'loadBalancerName': loadBalancerName,
      'monitor':
          pulumi.Input.mapInputValue<LoadBalancerMonitor, Map<String, dynamic>>(
            monitor,
            (value) => value.toMap(),
          ),
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
      'siteId': siteId,
      'steeringPolicy': steeringPolicy,
      'subRegionPools': ?subRegionPools,
      'ttl': ?ttl,
    };
  }

  factory LoadBalancerArgs.fromMap(Map<String, dynamic> map) {
    return LoadBalancerArgs(
      adaptiveRouting: (() {
        final guardedValue = map['adaptiveRouting'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          LoadBalancerAdaptiveRouting.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      defaultPools: pulumi.Input.fromValue(
        (map['defaultPools'] as List).cast<int>(),
      ),
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
      fallbackPool: pulumi.Input.fromValue(map['fallbackPool'] as int),
      loadBalancerName: pulumi.Input.fromValue(
        map['loadBalancerName'] as String,
      ),
      monitor: pulumi.Input.fromValue(
        LoadBalancerMonitor.fromMap(
          (map['monitor']! as Map).cast<String, dynamic>(),
        ),
      ),
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
      siteId: pulumi.Input.fromValue(map['siteId'] as String),
      steeringPolicy: pulumi.Input.fromValue(map['steeringPolicy'] as String),
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
