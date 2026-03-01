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
    pulumi.Output<LoadBalancerAdaptiveRouting>? adaptiveRouting,
    pulumi.Output<List<int>>? defaultPools,
    pulumi.Output<String>? description,
    pulumi.Output<bool>? enabled,
    pulumi.Output<int>? fallbackPool,
    pulumi.Output<int>? loadBalancerId,
    pulumi.Output<String>? loadBalancerName,
    pulumi.Output<LoadBalancerMonitor>? monitor,
    pulumi.Output<LoadBalancerRandomSteering>? randomSteering,
    pulumi.Output<String>? regionPools,
    pulumi.Output<List<LoadBalancerRule>>? rules,
    pulumi.Output<String>? sessionAffinity,
    pulumi.Output<String>? siteId,
    pulumi.Output<String>? status,
    pulumi.Output<String>? steeringPolicy,
    pulumi.Output<String>? subRegionPools,
    pulumi.Output<int>? ttl,
  }) :
      adaptiveRouting = pulumi.Input.asOptionalInput<LoadBalancerAdaptiveRouting>(adaptiveRouting),
      defaultPools = pulumi.Input.asOptionalInput<List<int>>(defaultPools),
      description = pulumi.Input.asOptionalInput<String>(description),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      fallbackPool = pulumi.Input.asOptionalInput<int>(fallbackPool),
      loadBalancerId = pulumi.Input.asOptionalInput<int>(loadBalancerId),
      loadBalancerName = pulumi.Input.asOptionalInput<String>(loadBalancerName),
      monitor = pulumi.Input.asOptionalInput<LoadBalancerMonitor>(monitor),
      randomSteering = pulumi.Input.asOptionalInput<LoadBalancerRandomSteering>(randomSteering),
      regionPools = pulumi.Input.asOptionalInput<String>(regionPools),
      rules = pulumi.Input.asOptionalInput<List<LoadBalancerRule>>(rules),
      sessionAffinity = pulumi.Input.asOptionalInput<String>(sessionAffinity),
      siteId = pulumi.Input.asOptionalInput<String>(siteId),
      status = pulumi.Input.asOptionalInput<String>(status),
      steeringPolicy = pulumi.Input.asOptionalInput<String>(steeringPolicy),
      subRegionPools = pulumi.Input.asOptionalInput<String>(subRegionPools),
      ttl = pulumi.Input.asOptionalInput<int>(ttl);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adaptiveRouting': ?pulumi.Input.mapOptionalInputValue<LoadBalancerAdaptiveRouting, Map<String, dynamic>>(adaptiveRouting, (value) => value.toMap()),
      'defaultPools': ?defaultPools,
      'description': ?description,
      'enabled': ?enabled,
      'fallbackPool': ?fallbackPool,
      'loadBalancerId': ?loadBalancerId,
      'loadBalancerName': ?loadBalancerName,
      'monitor': ?pulumi.Input.mapOptionalInputValue<LoadBalancerMonitor, Map<String, dynamic>>(monitor, (value) => value.toMap()),
      'randomSteering': ?pulumi.Input.mapOptionalInputValue<LoadBalancerRandomSteering, Map<String, dynamic>>(randomSteering, (value) => value.toMap()),
      'regionPools': ?regionPools,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<LoadBalancerRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<LoadBalancerRule, Map<String, dynamic>>(value, (value) => value.toMap())),
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
      adaptiveRouting: map['adaptiveRouting'] == null ? null : pulumi.Output.create<LoadBalancerAdaptiveRouting>(LoadBalancerAdaptiveRouting.fromMap((map['adaptiveRouting'] as Map).cast<String, dynamic>())),
      defaultPools: map['defaultPools'] == null ? null : pulumi.Output.create<List<int>>((map['defaultPools'] as List).cast<int>()),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      fallbackPool: map['fallbackPool'] == null ? null : pulumi.Output.create<int>(map['fallbackPool'] as int),
      loadBalancerId: map['loadBalancerId'] == null ? null : pulumi.Output.create<int>(map['loadBalancerId'] as int),
      loadBalancerName: map['loadBalancerName'] == null ? null : pulumi.Output.create<String>(map['loadBalancerName'] as String),
      monitor: map['monitor'] == null ? null : pulumi.Output.create<LoadBalancerMonitor>(LoadBalancerMonitor.fromMap((map['monitor'] as Map).cast<String, dynamic>())),
      randomSteering: map['randomSteering'] == null ? null : pulumi.Output.create<LoadBalancerRandomSteering>(LoadBalancerRandomSteering.fromMap((map['randomSteering'] as Map).cast<String, dynamic>())),
      regionPools: map['regionPools'] == null ? null : pulumi.Output.create<String>(map['regionPools'] as String),
      rules: map['rules'] == null ? null : pulumi.Output.create<List<LoadBalancerRule>>(pulumi.Input.decodeList<LoadBalancerRule>(map['rules'], (value) => LoadBalancerRule.fromMap((value as Map).cast<String, dynamic>()))),
      sessionAffinity: map['sessionAffinity'] == null ? null : pulumi.Output.create<String>(map['sessionAffinity'] as String),
      siteId: map['siteId'] == null ? null : pulumi.Output.create<String>(map['siteId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      steeringPolicy: map['steeringPolicy'] == null ? null : pulumi.Output.create<String>(map['steeringPolicy'] as String),
      subRegionPools: map['subRegionPools'] == null ? null : pulumi.Output.create<String>(map['subRegionPools'] as String),
      ttl: map['ttl'] == null ? null : pulumi.Output.create<int>(map['ttl'] as int),
    );
  }
}

