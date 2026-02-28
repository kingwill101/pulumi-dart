// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'router_nat_auto_network_tier_compute_beta.dart';
import 'router_nat_endpoint_types_item_compute_beta.dart';
import 'router_nat_log_config_compute_beta.dart';
import 'router_nat_nat_ip_allocate_option_compute_beta.dart';
import 'router_nat_rule_compute_beta.dart';
import 'router_nat_source_subnetwork_ip_ranges_to_nat_compute_beta.dart';
import 'router_nat_subnetwork_to_nat_compute_beta.dart';
import 'router_nat_type_compute_beta.dart';

/// Represents a Nat resource. It enables the VMs within the specified subnetworks to access Internet without external IP addresses. It specifies a list of subnetworks (and the ranges within) that want to use NAT. Customers can also provide the external IPs that would be used for NAT. GCP would auto-allocate ephemeral IPs if no external IPs are provided.
class RouterNatComputeBeta {
  /// The network tier to use when automatically reserving NAT IP addresses. Must be one of: PREMIUM, STANDARD. If not specified, then the current project-level default tier is used.
  final RouterNatAutoNetworkTierComputeBeta? autoNetworkTier;
  /// A list of URLs of the IP resources to be drained. These IPs must be valid static external IPs that have been assigned to the NAT. These IPs should be used for updating/patching a NAT only.
  final List<String>? drainNatIps;
  /// Enable Dynamic Port Allocation. If not specified, it is disabled by default. If set to true, - Dynamic Port Allocation will be enabled on this NAT config. - enableEndpointIndependentMapping cannot be set to true. - If minPorts is set, minPortsPerVm must be set to a power of two greater than or equal to 32. If minPortsPerVm is not set, a minimum of 32 ports will be allocated to a VM from this NAT config.
  final bool? enableDynamicPortAllocation;
  final bool? enableEndpointIndependentMapping;
  /// List of NAT-ted endpoint types supported by the Nat Gateway. If the list is empty, then it will be equivalent to include ENDPOINT_TYPE_VM
  final List<RouterNatEndpointTypesItemComputeBeta>? endpointTypes;
  /// Timeout (in seconds) for ICMP connections. Defaults to 30s if not set.
  final int? icmpIdleTimeoutSec;
  /// Configure logging on this NAT.
  final RouterNatLogConfigComputeBeta? logConfig;
  /// Maximum number of ports allocated to a VM from this NAT config when Dynamic Port Allocation is enabled. If Dynamic Port Allocation is not enabled, this field has no effect. If Dynamic Port Allocation is enabled, and this field is set, it must be set to a power of two greater than minPortsPerVm, or 64 if minPortsPerVm is not set. If Dynamic Port Allocation is enabled and this field is not set, a maximum of 65536 ports will be allocated to a VM from this NAT config.
  final int? maxPortsPerVm;
  /// Minimum number of ports allocated to a VM from this NAT config. If not set, a default number of ports is allocated to a VM. This is rounded up to the nearest power of 2. For example, if the value of this field is 50, at least 64 ports are allocated to a VM.
  final int? minPortsPerVm;
  /// Unique name of this Nat service. The name must be 1-63 characters long and comply with RFC1035.
  final String? name;
  /// Specify the NatIpAllocateOption, which can take one of the following values: - MANUAL_ONLY: Uses only Nat IP addresses provided by customers. When there are not enough specified Nat IPs, the Nat service fails for new VMs. - AUTO_ONLY: Nat IPs are allocated by Google Cloud Platform; customers can't specify any Nat IPs. When choosing AUTO_ONLY, then nat_ip should be empty.
  final RouterNatNatIpAllocateOptionComputeBeta? natIpAllocateOption;
  /// A list of URLs of the IP resources used for this Nat service. These IP addresses must be valid static external IP addresses assigned to the project.
  final List<String>? natIps;
  /// A list of rules associated with this NAT.
  final List<RouterNatRuleComputeBeta>? rules;
  /// Specify the Nat option, which can take one of the following values: - ALL_SUBNETWORKS_ALL_IP_RANGES: All of the IP ranges in every Subnetwork are allowed to Nat. - ALL_SUBNETWORKS_ALL_PRIMARY_IP_RANGES: All of the primary IP ranges in every Subnetwork are allowed to Nat. - LIST_OF_SUBNETWORKS: A list of Subnetworks are allowed to Nat (specified in the field subnetwork below) The default is SUBNETWORK_IP_RANGE_TO_NAT_OPTION_UNSPECIFIED. Note that if this field contains ALL_SUBNETWORKS_ALL_IP_RANGES then there should not be any other Router.Nat section in any Router for this network in this region.
  final RouterNatSourceSubnetworkIpRangesToNatComputeBeta? sourceSubnetworkIpRangesToNat;
  /// A list of Subnetwork resources whose traffic should be translated by NAT Gateway. It is used only when LIST_OF_SUBNETWORKS is selected for the SubnetworkIpRangeToNatOption above.
  final List<RouterNatSubnetworkToNatComputeBeta>? subnetworks;
  /// Timeout (in seconds) for TCP established connections. Defaults to 1200s if not set.
  final int? tcpEstablishedIdleTimeoutSec;
  /// Timeout (in seconds) for TCP connections that are in TIME_WAIT state. Defaults to 120s if not set.
  final int? tcpTimeWaitTimeoutSec;
  /// Timeout (in seconds) for TCP transitory connections. Defaults to 30s if not set.
  final int? tcpTransitoryIdleTimeoutSec;
  /// Indicates whether this NAT is used for public or private IP translation. If unspecified, it defaults to PUBLIC.
  final RouterNatTypeComputeBeta? type;
  /// Timeout (in seconds) for UDP connections. Defaults to 30s if not set.
  final int? udpIdleTimeoutSec;

  /// Creates a new [RouterNatComputeBeta].
  /// [autoNetworkTier] The network tier to use when automatically reserving NAT IP addresses. Must be one of: PREMIUM, STANDARD. If not specified, then the current project-level default tier is used.
  /// [drainNatIps] A list of URLs of the IP resources to be drained. These IPs must be valid static external IPs that have been assigned to the NAT. These IPs should be used for updating/patching a NAT only.
  /// [enableDynamicPortAllocation] Enable Dynamic Port Allocation. If not specified, it is disabled by default. If set to true, - Dynamic Port Allocation will be enabled on this NAT config. - enableEndpointIndependentMapping cannot be set to true. - If minPorts is set, minPortsPerVm must be set to a power of two greater than or equal to 32. If minPortsPerVm is not set, a minimum of 32 ports will be allocated to a VM from this NAT config.
  /// [enableEndpointIndependentMapping] Optional.
  /// [endpointTypes] List of NAT-ted endpoint types supported by the Nat Gateway. If the list is empty, then it will be equivalent to include ENDPOINT_TYPE_VM
  /// [icmpIdleTimeoutSec] Timeout (in seconds) for ICMP connections. Defaults to 30s if not set.
  /// [logConfig] Configure logging on this NAT.
  /// [maxPortsPerVm] Maximum number of ports allocated to a VM from this NAT config when Dynamic Port Allocation is enabled. If Dynamic Port Allocation is not enabled, this field has no effect. If Dynamic Port Allocation is enabled, and this field is set, it must be set to a power of two greater than minPortsPerVm, or 64 if minPortsPerVm is not set. If Dynamic Port Allocation is enabled and this field is not set, a maximum of 65536 ports will be allocated to a VM from this NAT config.
  /// [minPortsPerVm] Minimum number of ports allocated to a VM from this NAT config. If not set, a default number of ports is allocated to a VM. This is rounded up to the nearest power of 2. For example, if the value of this field is 50, at least 64 ports are allocated to a VM.
  /// [name] Unique name of this Nat service. The name must be 1-63 characters long and comply with RFC1035.
  /// [natIpAllocateOption] Specify the NatIpAllocateOption, which can take one of the following values: - MANUAL_ONLY: Uses only Nat IP addresses provided by customers. When there are not enough specified Nat IPs, the Nat service fails for new VMs. - AUTO_ONLY: Nat IPs are allocated by Google Cloud Platform; customers can't specify any Nat IPs. When choosing AUTO_ONLY, then nat_ip should be empty.
  /// [natIps] A list of URLs of the IP resources used for this Nat service. These IP addresses must be valid static external IP addresses assigned to the project.
  /// [rules] A list of rules associated with this NAT.
  /// [sourceSubnetworkIpRangesToNat] Specify the Nat option, which can take one of the following values: - ALL_SUBNETWORKS_ALL_IP_RANGES: All of the IP ranges in every Subnetwork are allowed to Nat. - ALL_SUBNETWORKS_ALL_PRIMARY_IP_RANGES: All of the primary IP ranges in every Subnetwork are allowed to Nat. - LIST_OF_SUBNETWORKS: A list of Subnetworks are allowed to Nat (specified in the field subnetwork below) The default is SUBNETWORK_IP_RANGE_TO_NAT_OPTION_UNSPECIFIED. Note that if this field contains ALL_SUBNETWORKS_ALL_IP_RANGES then there should not be any other Router.Nat section in any Router for this network in this region.
  /// [subnetworks] A list of Subnetwork resources whose traffic should be translated by NAT Gateway. It is used only when LIST_OF_SUBNETWORKS is selected for the SubnetworkIpRangeToNatOption above.
  /// [tcpEstablishedIdleTimeoutSec] Timeout (in seconds) for TCP established connections. Defaults to 1200s if not set.
  /// [tcpTimeWaitTimeoutSec] Timeout (in seconds) for TCP connections that are in TIME_WAIT state. Defaults to 120s if not set.
  /// [tcpTransitoryIdleTimeoutSec] Timeout (in seconds) for TCP transitory connections. Defaults to 30s if not set.
  /// [type] Indicates whether this NAT is used for public or private IP translation. If unspecified, it defaults to PUBLIC.
  /// [udpIdleTimeoutSec] Timeout (in seconds) for UDP connections. Defaults to 30s if not set.
  RouterNatComputeBeta({
    this.autoNetworkTier,
    this.drainNatIps,
    this.enableDynamicPortAllocation,
    this.enableEndpointIndependentMapping,
    this.endpointTypes,
    this.icmpIdleTimeoutSec,
    this.logConfig,
    this.maxPortsPerVm,
    this.minPortsPerVm,
    this.name,
    this.natIpAllocateOption,
    this.natIps,
    this.rules,
    this.sourceSubnetworkIpRangesToNat,
    this.subnetworks,
    this.tcpEstablishedIdleTimeoutSec,
    this.tcpTimeWaitTimeoutSec,
    this.tcpTransitoryIdleTimeoutSec,
    this.type,
    this.udpIdleTimeoutSec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoNetworkTier': ?autoNetworkTier == null ? null : autoNetworkTier!.value,
      'drainNatIps': ?drainNatIps,
      'enableDynamicPortAllocation': ?enableDynamicPortAllocation,
      'enableEndpointIndependentMapping': ?enableEndpointIndependentMapping,
      'endpointTypes': ?endpointTypes == null ? null : pulumi.Input.encodeList<RouterNatEndpointTypesItemComputeBeta, String>(endpointTypes!, (value) => value.value),
      'icmpIdleTimeoutSec': ?icmpIdleTimeoutSec,
      'logConfig': ?logConfig == null ? null : logConfig!.toMap(),
      'maxPortsPerVm': ?maxPortsPerVm,
      'minPortsPerVm': ?minPortsPerVm,
      'name': ?name,
      'natIpAllocateOption': ?natIpAllocateOption == null ? null : natIpAllocateOption!.value,
      'natIps': ?natIps,
      'rules': ?rules == null ? null : pulumi.Input.encodeList<RouterNatRuleComputeBeta, Map<String, dynamic>>(rules!, (value) => value.toMap()),
      'sourceSubnetworkIpRangesToNat': ?sourceSubnetworkIpRangesToNat == null ? null : sourceSubnetworkIpRangesToNat!.value,
      'subnetworks': ?subnetworks == null ? null : pulumi.Input.encodeList<RouterNatSubnetworkToNatComputeBeta, Map<String, dynamic>>(subnetworks!, (value) => value.toMap()),
      'tcpEstablishedIdleTimeoutSec': ?tcpEstablishedIdleTimeoutSec,
      'tcpTimeWaitTimeoutSec': ?tcpTimeWaitTimeoutSec,
      'tcpTransitoryIdleTimeoutSec': ?tcpTransitoryIdleTimeoutSec,
      'type': ?type == null ? null : type!.value,
      'udpIdleTimeoutSec': ?udpIdleTimeoutSec,
    };
  }

  factory RouterNatComputeBeta.fromMap(Map<String, dynamic> map) {
    return RouterNatComputeBeta(
      autoNetworkTier: map['autoNetworkTier'] == null ? null : RouterNatAutoNetworkTierComputeBeta.fromValue(map['autoNetworkTier'] as String),
      drainNatIps: map['drainNatIps'] == null ? null : (map['drainNatIps'] as List).cast<String>(),
      enableDynamicPortAllocation: map['enableDynamicPortAllocation'] == null ? null : map['enableDynamicPortAllocation'] as bool,
      enableEndpointIndependentMapping: map['enableEndpointIndependentMapping'] == null ? null : map['enableEndpointIndependentMapping'] as bool,
      endpointTypes: map['endpointTypes'] == null ? null : pulumi.Input.decodeList<RouterNatEndpointTypesItemComputeBeta>(map['endpointTypes'], (value) => RouterNatEndpointTypesItemComputeBeta.fromValue(value as String)),
      icmpIdleTimeoutSec: map['icmpIdleTimeoutSec'] == null ? null : map['icmpIdleTimeoutSec'] as int,
      logConfig: map['logConfig'] == null ? null : RouterNatLogConfigComputeBeta.fromMap((map['logConfig'] as Map).cast<String, dynamic>()),
      maxPortsPerVm: map['maxPortsPerVm'] == null ? null : map['maxPortsPerVm'] as int,
      minPortsPerVm: map['minPortsPerVm'] == null ? null : map['minPortsPerVm'] as int,
      name: map['name'] == null ? null : map['name'] as String,
      natIpAllocateOption: map['natIpAllocateOption'] == null ? null : RouterNatNatIpAllocateOptionComputeBeta.fromValue(map['natIpAllocateOption'] as String),
      natIps: map['natIps'] == null ? null : (map['natIps'] as List).cast<String>(),
      rules: map['rules'] == null ? null : pulumi.Input.decodeList<RouterNatRuleComputeBeta>(map['rules'], (value) => RouterNatRuleComputeBeta.fromMap((value as Map).cast<String, dynamic>())),
      sourceSubnetworkIpRangesToNat: map['sourceSubnetworkIpRangesToNat'] == null ? null : RouterNatSourceSubnetworkIpRangesToNatComputeBeta.fromValue(map['sourceSubnetworkIpRangesToNat'] as String),
      subnetworks: map['subnetworks'] == null ? null : pulumi.Input.decodeList<RouterNatSubnetworkToNatComputeBeta>(map['subnetworks'], (value) => RouterNatSubnetworkToNatComputeBeta.fromMap((value as Map).cast<String, dynamic>())),
      tcpEstablishedIdleTimeoutSec: map['tcpEstablishedIdleTimeoutSec'] == null ? null : map['tcpEstablishedIdleTimeoutSec'] as int,
      tcpTimeWaitTimeoutSec: map['tcpTimeWaitTimeoutSec'] == null ? null : map['tcpTimeWaitTimeoutSec'] as int,
      tcpTransitoryIdleTimeoutSec: map['tcpTransitoryIdleTimeoutSec'] == null ? null : map['tcpTransitoryIdleTimeoutSec'] as int,
      type: map['type'] == null ? null : RouterNatTypeComputeBeta.fromValue(map['type'] as String),
      udpIdleTimeoutSec: map['udpIdleTimeoutSec'] == null ? null : map['udpIdleTimeoutSec'] as int,
    );
  }
}

