// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fast_http_app_monitor.dart';
import 'fast_http_app_pool_member.dart';
import 'fast_http_app_virtual_server.dart';
import 'fast_http_app_waf_security_policy.dart';

/// {@template pulumi_index_fast_http_app_fast_http_app_args_doc}
/// The set of arguments for FastHttpApp.
/// {@endtemplate}
/// {@macro pulumi_index_fast_http_app_fast_http_app_args_doc}
class FastHttpAppArgs {
  /// Name of the FAST HTTPS application.
  final pulumi.Input<String> application;
  /// List of LTM Policies to be applied FAST HTTP Application.
  final pulumi.Input<List<String>>? endpointLtmPolicies;
  /// Name of an existing BIG-IP HTTPS pool monitor. Monitors are used to determine the health of the application on each server.
  final pulumi.Input<String>? existingMonitor;
  /// Select an existing BIG-IP Pool
  final pulumi.Input<String>? existingPool;
  /// Name of an existing BIG-IP SNAT pool.
  final pulumi.Input<String>? existingSnatPool;
  /// Name of an existing WAF Security policy.
  final pulumi.Input<String>? existingWafSecurityPolicy;
  /// Type of fallback persistence record to be created for each new client connection.
  final pulumi.Input<String>? fallbackPersistence;
  /// A `load balancing method` is an algorithm that the BIG-IP system uses to select a pool member for processing a request. F5 recommends the Least Connections load balancing method
  final pulumi.Input<String>? loadBalancingMode;
  /// `monitor` block takes input for FAST-Generated Pool Monitor.
  /// See Pool Monitor below for more details.
  final pulumi.Input<FastHttpAppMonitor>? monitor;
  /// Name of an existing BIG-IP persistence profile to be used.
  final pulumi.Input<String>? persistenceProfile;
  /// Type of persistence profile to be created. Using this option will enable use of FAST generated persistence profiles.
  final pulumi.Input<String>? persistenceType;
  /// `pool_members` block takes input for FAST-Generated Pool.
  /// See Pool Members below for more details.
  final pulumi.Input<List<FastHttpAppPoolMember>>? poolMembers;
  /// List of security log profiles to be used for FAST application
  final pulumi.Input<List<String>>? securityLogProfiles;
  /// List of different cloud service discovery config provided as string, provided `service_discovery` block to Automatically Discover Pool Members with Service Discovery on different clouds.
  final pulumi.Input<List<String>>? serviceDiscoveries;
  /// Slow ramp temporarily throttles the number of connections to a new pool member. The recommended value is 300 seconds
  final pulumi.Input<int>? slowRampTime;
  /// List of address to be used for FAST-Generated SNAT Pool.
  final pulumi.Input<List<String>>? snatPoolAddresses;
  /// Name of the FAST HTTPS application tenant.
  final pulumi.Input<String> tenant;
  /// `virtual_server` block will provide `ip` and `port` options to be used for virtual server.
  /// See virtual server below for more details.
  final pulumi.Input<FastHttpAppVirtualServer>? virtualServer;
  /// `waf_security_policy` block takes input for FAST-Generated WAF Security Policy.
  /// See WAF Security Policy below for more details.
  final pulumi.Input<FastHttpAppWafSecurityPolicy>? wafSecurityPolicy;

  /// Creates a new [FastHttpAppArgs].
  /// [application] Name of the FAST HTTPS application.
  /// [endpointLtmPolicies] List of LTM Policies to be applied FAST HTTP Application.
  /// [existingMonitor] Name of an existing BIG-IP HTTPS pool monitor. Monitors are used to determine the health of the application on each server.
  /// [existingPool] Select an existing BIG-IP Pool
  /// [existingSnatPool] Name of an existing BIG-IP SNAT pool.
  /// [existingWafSecurityPolicy] Name of an existing WAF Security policy.
  /// [fallbackPersistence] Type of fallback persistence record to be created for each new client connection.
  /// [loadBalancingMode] A `load balancing method` is an algorithm that the BIG-IP system uses to select a pool member for processing a request. F5 recommends the Least Connections load balancing method
  /// [monitor] `monitor` block takes input for FAST-Generated Pool Monitor.
  /// [persistenceProfile] Name of an existing BIG-IP persistence profile to be used.
  /// [persistenceType] Type of persistence profile to be created. Using this option will enable use of FAST generated persistence profiles.
  /// [poolMembers] `pool_members` block takes input for FAST-Generated Pool.
  /// [securityLogProfiles] List of security log profiles to be used for FAST application
  /// [serviceDiscoveries] List of different cloud service discovery config provided as string, provided `service_discovery` block to Automatically Discover Pool Members with Service Discovery on different clouds.
  /// [slowRampTime] Slow ramp temporarily throttles the number of connections to a new pool member. The recommended value is 300 seconds
  /// [snatPoolAddresses] List of address to be used for FAST-Generated SNAT Pool.
  /// [tenant] Name of the FAST HTTPS application tenant.
  /// [virtualServer] `virtual_server` block will provide `ip` and `port` options to be used for virtual server.
  /// [wafSecurityPolicy] `waf_security_policy` block takes input for FAST-Generated WAF Security Policy.
  FastHttpAppArgs({
    required String application,
    List<String>? endpointLtmPolicies,
    String? existingMonitor,
    String? existingPool,
    String? existingSnatPool,
    String? existingWafSecurityPolicy,
    String? fallbackPersistence,
    String? loadBalancingMode,
    FastHttpAppMonitor? monitor,
    String? persistenceProfile,
    String? persistenceType,
    List<FastHttpAppPoolMember>? poolMembers,
    List<String>? securityLogProfiles,
    List<String>? serviceDiscoveries,
    int? slowRampTime,
    List<String>? snatPoolAddresses,
    required String tenant,
    FastHttpAppVirtualServer? virtualServer,
    FastHttpAppWafSecurityPolicy? wafSecurityPolicy,
  }) :
      application = pulumi.Input.asInput<String>(application),
      endpointLtmPolicies = pulumi.Input.asOptionalInput<List<String>>(endpointLtmPolicies),
      existingMonitor = pulumi.Input.asOptionalInput<String>(existingMonitor),
      existingPool = pulumi.Input.asOptionalInput<String>(existingPool),
      existingSnatPool = pulumi.Input.asOptionalInput<String>(existingSnatPool),
      existingWafSecurityPolicy = pulumi.Input.asOptionalInput<String>(existingWafSecurityPolicy),
      fallbackPersistence = pulumi.Input.asOptionalInput<String>(fallbackPersistence),
      loadBalancingMode = pulumi.Input.asOptionalInput<String>(loadBalancingMode),
      monitor = pulumi.Input.asOptionalInput<FastHttpAppMonitor>(monitor),
      persistenceProfile = pulumi.Input.asOptionalInput<String>(persistenceProfile),
      persistenceType = pulumi.Input.asOptionalInput<String>(persistenceType),
      poolMembers = pulumi.Input.asOptionalInput<List<FastHttpAppPoolMember>>(poolMembers),
      securityLogProfiles = pulumi.Input.asOptionalInput<List<String>>(securityLogProfiles),
      serviceDiscoveries = pulumi.Input.asOptionalInput<List<String>>(serviceDiscoveries),
      slowRampTime = pulumi.Input.asOptionalInput<int>(slowRampTime),
      snatPoolAddresses = pulumi.Input.asOptionalInput<List<String>>(snatPoolAddresses),
      tenant = pulumi.Input.asInput<String>(tenant),
      virtualServer = pulumi.Input.asOptionalInput<FastHttpAppVirtualServer>(virtualServer),
      wafSecurityPolicy = pulumi.Input.asOptionalInput<FastHttpAppWafSecurityPolicy>(wafSecurityPolicy);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'application': application,
      'endpointLtmPolicies': ?endpointLtmPolicies,
      'existingMonitor': ?existingMonitor,
      'existingPool': ?existingPool,
      'existingSnatPool': ?existingSnatPool,
      'existingWafSecurityPolicy': ?existingWafSecurityPolicy,
      'fallbackPersistence': ?fallbackPersistence,
      'loadBalancingMode': ?loadBalancingMode,
      'monitor': ?pulumi.Input.mapOptionalInputValue<FastHttpAppMonitor, Map<String, dynamic>>(monitor, (value) => value.toMap()),
      'persistenceProfile': ?persistenceProfile,
      'persistenceType': ?persistenceType,
      'poolMembers': ?pulumi.Input.mapOptionalInputValue<List<FastHttpAppPoolMember>, List<Map<String, dynamic>>>(poolMembers, (value) => pulumi.Input.encodeList<FastHttpAppPoolMember, Map<String, dynamic>>(value, (value) => value.toMap())),
      'securityLogProfiles': ?securityLogProfiles,
      'serviceDiscoveries': ?serviceDiscoveries,
      'slowRampTime': ?slowRampTime,
      'snatPoolAddresses': ?snatPoolAddresses,
      'tenant': tenant,
      'virtualServer': ?pulumi.Input.mapOptionalInputValue<FastHttpAppVirtualServer, Map<String, dynamic>>(virtualServer, (value) => value.toMap()),
      'wafSecurityPolicy': ?pulumi.Input.mapOptionalInputValue<FastHttpAppWafSecurityPolicy, Map<String, dynamic>>(wafSecurityPolicy, (value) => value.toMap()),
    };
  }

  factory FastHttpAppArgs.fromMap(Map<String, dynamic> map) {
    return FastHttpAppArgs(
      application: map['application'] as String,
      endpointLtmPolicies: map['endpointLtmPolicies'] == null ? null : (map['endpointLtmPolicies'] as List).cast<String>(),
      existingMonitor: map['existingMonitor'] == null ? null : map['existingMonitor'] as String,
      existingPool: map['existingPool'] == null ? null : map['existingPool'] as String,
      existingSnatPool: map['existingSnatPool'] == null ? null : map['existingSnatPool'] as String,
      existingWafSecurityPolicy: map['existingWafSecurityPolicy'] == null ? null : map['existingWafSecurityPolicy'] as String,
      fallbackPersistence: map['fallbackPersistence'] == null ? null : map['fallbackPersistence'] as String,
      loadBalancingMode: map['loadBalancingMode'] == null ? null : map['loadBalancingMode'] as String,
      monitor: map['monitor'] == null ? null : FastHttpAppMonitor.fromMap((map['monitor'] as Map).cast<String, dynamic>()),
      persistenceProfile: map['persistenceProfile'] == null ? null : map['persistenceProfile'] as String,
      persistenceType: map['persistenceType'] == null ? null : map['persistenceType'] as String,
      poolMembers: map['poolMembers'] == null ? null : pulumi.Input.decodeList<FastHttpAppPoolMember>(map['poolMembers'], (value) => FastHttpAppPoolMember.fromMap((value as Map).cast<String, dynamic>())),
      securityLogProfiles: map['securityLogProfiles'] == null ? null : (map['securityLogProfiles'] as List).cast<String>(),
      serviceDiscoveries: map['serviceDiscoveries'] == null ? null : (map['serviceDiscoveries'] as List).cast<String>(),
      slowRampTime: map['slowRampTime'] == null ? null : map['slowRampTime'] as int,
      snatPoolAddresses: map['snatPoolAddresses'] == null ? null : (map['snatPoolAddresses'] as List).cast<String>(),
      tenant: map['tenant'] as String,
      virtualServer: map['virtualServer'] == null ? null : FastHttpAppVirtualServer.fromMap((map['virtualServer'] as Map).cast<String, dynamic>()),
      wafSecurityPolicy: map['wafSecurityPolicy'] == null ? null : FastHttpAppWafSecurityPolicy.fromMap((map['wafSecurityPolicy'] as Map).cast<String, dynamic>()),
    );
  }
}

