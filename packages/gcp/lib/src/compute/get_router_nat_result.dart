// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_router_nat_log_config.dart';
import 'get_router_nat_nat64_subnetwork.dart';
import 'get_router_nat_rule.dart';
import 'get_router_nat_subnetwork.dart';

/// Result data returned by getRouterNat.
class GetRouterNatResult {
  final String autoNetworkTier;
  final List<String> drainNatIps;
  final bool enableDynamicPortAllocation;
  final bool enableEndpointIndependentMapping;
  final List<String> endpointTypes;
  final int icmpIdleTimeoutSec;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> initialNatIps;
  final List<GetRouterNatLogConfig> logConfigs;
  final int maxPortsPerVm;
  final int minPortsPerVm;
  final String name;
  final List<GetRouterNatNat64Subnetwork> nat64Subnetworks;
  final String natIpAllocateOption;
  final List<String> natIps;
  final String? project;
  final String? region;
  final String router;
  final List<GetRouterNatRule> rules;
  final String sourceSubnetworkIpRangesToNat;
  final String sourceSubnetworkIpRangesToNat64;
  final List<GetRouterNatSubnetwork> subnetworks;
  final int tcpEstablishedIdleTimeoutSec;
  final int tcpTimeWaitTimeoutSec;
  final int tcpTransitoryIdleTimeoutSec;
  final String type;
  final int udpIdleTimeoutSec;

  /// Creates a new [GetRouterNatResult].
  /// [autoNetworkTier] Required.
  /// [drainNatIps] Required.
  /// [enableDynamicPortAllocation] Required.
  /// [enableEndpointIndependentMapping] Required.
  /// [endpointTypes] Required.
  /// [icmpIdleTimeoutSec] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [initialNatIps] Required.
  /// [logConfigs] Required.
  /// [maxPortsPerVm] Required.
  /// [minPortsPerVm] Required.
  /// [name] Required.
  /// [nat64Subnetworks] Required.
  /// [natIpAllocateOption] Required.
  /// [natIps] Required.
  /// [project] Optional.
  /// [region] Optional.
  /// [router] Required.
  /// [rules] Required.
  /// [sourceSubnetworkIpRangesToNat] Required.
  /// [sourceSubnetworkIpRangesToNat64] Required.
  /// [subnetworks] Required.
  /// [tcpEstablishedIdleTimeoutSec] Required.
  /// [tcpTimeWaitTimeoutSec] Required.
  /// [tcpTransitoryIdleTimeoutSec] Required.
  /// [type] Required.
  /// [udpIdleTimeoutSec] Required.
  GetRouterNatResult({
    required this.autoNetworkTier,
    required this.drainNatIps,
    required this.enableDynamicPortAllocation,
    required this.enableEndpointIndependentMapping,
    required this.endpointTypes,
    required this.icmpIdleTimeoutSec,
    required this.id,
    required this.initialNatIps,
    required this.logConfigs,
    required this.maxPortsPerVm,
    required this.minPortsPerVm,
    required this.name,
    required this.nat64Subnetworks,
    required this.natIpAllocateOption,
    required this.natIps,
    this.project,
    this.region,
    required this.router,
    required this.rules,
    required this.sourceSubnetworkIpRangesToNat,
    required this.sourceSubnetworkIpRangesToNat64,
    required this.subnetworks,
    required this.tcpEstablishedIdleTimeoutSec,
    required this.tcpTimeWaitTimeoutSec,
    required this.tcpTransitoryIdleTimeoutSec,
    required this.type,
    required this.udpIdleTimeoutSec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoNetworkTier': autoNetworkTier,
      'drainNatIps': drainNatIps,
      'enableDynamicPortAllocation': enableDynamicPortAllocation,
      'enableEndpointIndependentMapping': enableEndpointIndependentMapping,
      'endpointTypes': endpointTypes,
      'icmpIdleTimeoutSec': icmpIdleTimeoutSec,
      'id': id,
      'initialNatIps': initialNatIps,
      'logConfigs': pulumi.Input.encodeList<GetRouterNatLogConfig, Map<String, dynamic>>(logConfigs, (value) => value.toMap()),
      'maxPortsPerVm': maxPortsPerVm,
      'minPortsPerVm': minPortsPerVm,
      'name': name,
      'nat64Subnetworks': pulumi.Input.encodeList<GetRouterNatNat64Subnetwork, Map<String, dynamic>>(nat64Subnetworks, (value) => value.toMap()),
      'natIpAllocateOption': natIpAllocateOption,
      'natIps': natIps,
      'project': ?project,
      'region': ?region,
      'router': router,
      'rules': pulumi.Input.encodeList<GetRouterNatRule, Map<String, dynamic>>(rules, (value) => value.toMap()),
      'sourceSubnetworkIpRangesToNat': sourceSubnetworkIpRangesToNat,
      'sourceSubnetworkIpRangesToNat64': sourceSubnetworkIpRangesToNat64,
      'subnetworks': pulumi.Input.encodeList<GetRouterNatSubnetwork, Map<String, dynamic>>(subnetworks, (value) => value.toMap()),
      'tcpEstablishedIdleTimeoutSec': tcpEstablishedIdleTimeoutSec,
      'tcpTimeWaitTimeoutSec': tcpTimeWaitTimeoutSec,
      'tcpTransitoryIdleTimeoutSec': tcpTransitoryIdleTimeoutSec,
      'type': type,
      'udpIdleTimeoutSec': udpIdleTimeoutSec,
    };
  }

  factory GetRouterNatResult.fromMap(Map<String, dynamic> map) {
    return GetRouterNatResult(
      autoNetworkTier: map['autoNetworkTier'] as String,
      drainNatIps: (map['drainNatIps'] as List).cast<String>(),
      enableDynamicPortAllocation: map['enableDynamicPortAllocation'] as bool,
      enableEndpointIndependentMapping: map['enableEndpointIndependentMapping'] as bool,
      endpointTypes: (map['endpointTypes'] as List).cast<String>(),
      icmpIdleTimeoutSec: map['icmpIdleTimeoutSec'] as int,
      id: map['id'] as String,
      initialNatIps: (map['initialNatIps'] as List).cast<String>(),
      logConfigs: pulumi.Input.decodeList<GetRouterNatLogConfig>(map['logConfigs'], (value) => GetRouterNatLogConfig.fromMap((value as Map).cast<String, dynamic>())),
      maxPortsPerVm: map['maxPortsPerVm'] as int,
      minPortsPerVm: map['minPortsPerVm'] as int,
      name: map['name'] as String,
      nat64Subnetworks: pulumi.Input.decodeList<GetRouterNatNat64Subnetwork>(map['nat64Subnetworks'], (value) => GetRouterNatNat64Subnetwork.fromMap((value as Map).cast<String, dynamic>())),
      natIpAllocateOption: map['natIpAllocateOption'] as String,
      natIps: (map['natIps'] as List).cast<String>(),
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      router: map['router'] as String,
      rules: pulumi.Input.decodeList<GetRouterNatRule>(map['rules'], (value) => GetRouterNatRule.fromMap((value as Map).cast<String, dynamic>())),
      sourceSubnetworkIpRangesToNat: map['sourceSubnetworkIpRangesToNat'] as String,
      sourceSubnetworkIpRangesToNat64: map['sourceSubnetworkIpRangesToNat64'] as String,
      subnetworks: pulumi.Input.decodeList<GetRouterNatSubnetwork>(map['subnetworks'], (value) => GetRouterNatSubnetwork.fromMap((value as Map).cast<String, dynamic>())),
      tcpEstablishedIdleTimeoutSec: map['tcpEstablishedIdleTimeoutSec'] as int,
      tcpTimeWaitTimeoutSec: map['tcpTimeWaitTimeoutSec'] as int,
      tcpTransitoryIdleTimeoutSec: map['tcpTransitoryIdleTimeoutSec'] as int,
      type: map['type'] as String,
      udpIdleTimeoutSec: map['udpIdleTimeoutSec'] as int,
    );
  }
}

