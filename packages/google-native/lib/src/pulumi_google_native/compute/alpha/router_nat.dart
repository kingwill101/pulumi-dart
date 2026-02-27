// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'router_nat_auto_network_tier.dart';
import 'router_nat_endpoint_types_item.dart';
import 'router_nat_log_config.dart';
import 'router_nat_nat_ip_allocate_option.dart';
import 'router_nat_rule.dart';
import 'router_nat_source_subnetwork_ip_ranges_to_nat.dart';
import 'router_nat_subnetwork_to_nat.dart';
import 'router_nat_type.dart';

/// Represents a Nat resource. It enables the VMs within the specified subnetworks to access Internet without external IP addresses. It specifies a list of subnetworks (and the ranges within) that want to use NAT. Customers can also provide the external IPs that would be used for NAT. GCP would auto-allocate ephemeral IPs if no external IPs are provided.
class RouterNat {
  /// The network tier to use when automatically reserving NAT IP addresses. Must be one of: PREMIUM, STANDARD. If not specified, then the current project-level default tier is used.
  final RouterNatAutoNetworkTier? autoNetworkTier;

  /// A list of URLs of the IP resources to be drained. These IPs must be valid static external IPs that have been assigned to the NAT. These IPs should be used for updating/patching a NAT only.
  final List<String>? drainNatIps;

  /// Enable Dynamic Port Allocation. If not specified, it is disabled by default. If set to true, - Dynamic Port Allocation will be enabled on this NAT config. - enableEndpointIndependentMapping cannot be set to true. - If minPorts is set, minPortsPerVm must be set to a power of two greater than or equal to 32. If minPortsPerVm is not set, a minimum of 32 ports will be allocated to a VM from this NAT config.
  final bool? enableDynamicPortAllocation;
  final bool? enableEndpointIndependentMapping;

  /// List of NAT-ted endpoint types supported by the Nat Gateway. If the list is empty, then it will be equivalent to include ENDPOINT_TYPE_VM
  final List<RouterNatEndpointTypesItem>? endpointTypes;

  /// Timeout (in seconds) for ICMP connections. Defaults to 30s if not set.
  final int? icmpIdleTimeoutSec;

  /// Configure logging on this NAT.
  final RouterNatLogConfig? logConfig;

  /// Maximum number of ports allocated to a VM from this NAT config when Dynamic Port Allocation is enabled. If Dynamic Port Allocation is not enabled, this field has no effect. If Dynamic Port Allocation is enabled, and this field is set, it must be set to a power of two greater than minPortsPerVm, or 64 if minPortsPerVm is not set. If Dynamic Port Allocation is enabled and this field is not set, a maximum of 65536 ports will be allocated to a VM from this NAT config.
  final int? maxPortsPerVm;

  /// Minimum number of ports allocated to a VM from this NAT config. If not set, a default number of ports is allocated to a VM. This is rounded up to the nearest power of 2. For example, if the value of this field is 50, at least 64 ports are allocated to a VM.
  final int? minPortsPerVm;

  /// Unique name of this Nat service. The name must be 1-63 characters long and comply with RFC1035.
  final String? name;

  /// Specify the NatIpAllocateOption, which can take one of the following values: - MANUAL_ONLY: Uses only Nat IP addresses provided by customers. When there are not enough specified Nat IPs, the Nat service fails for new VMs. - AUTO_ONLY: Nat IPs are allocated by Google Cloud Platform; customers can't specify any Nat IPs. When choosing AUTO_ONLY, then nat_ip should be empty.
  final RouterNatNatIpAllocateOption? natIpAllocateOption;

  /// A list of URLs of the IP resources used for this Nat service. These IP addresses must be valid static external IP addresses assigned to the project.
  final List<String>? natIps;

  /// A list of rules associated with this NAT.
  final List<RouterNatRule>? rules;

  /// Specify the Nat option, which can take one of the following values: - ALL_SUBNETWORKS_ALL_IP_RANGES: All of the IP ranges in every Subnetwork are allowed to Nat. - ALL_SUBNETWORKS_ALL_PRIMARY_IP_RANGES: All of the primary IP ranges in every Subnetwork are allowed to Nat. - LIST_OF_SUBNETWORKS: A list of Subnetworks are allowed to Nat (specified in the field subnetwork below) The default is SUBNETWORK_IP_RANGE_TO_NAT_OPTION_UNSPECIFIED. Note that if this field contains ALL_SUBNETWORKS_ALL_IP_RANGES then there should not be any other Router.Nat section in any Router for this network in this region.
  final RouterNatSourceSubnetworkIpRangesToNat? sourceSubnetworkIpRangesToNat;

  /// A list of Subnetwork resources whose traffic should be translated by NAT Gateway. It is used only when LIST_OF_SUBNETWORKS is selected for the SubnetworkIpRangeToNatOption above.
  final List<RouterNatSubnetworkToNat>? subnetworks;

  /// Timeout (in seconds) for TCP established connections. Defaults to 1200s if not set.
  final int? tcpEstablishedIdleTimeoutSec;

  /// Timeout (in seconds) for TCP connections that are in TIME_WAIT state. Defaults to 120s if not set.
  final int? tcpTimeWaitTimeoutSec;

  /// Timeout (in seconds) for TCP transitory connections. Defaults to 30s if not set.
  final int? tcpTransitoryIdleTimeoutSec;

  /// Indicates whether this NAT is used for public or private IP translation. If unspecified, it defaults to PUBLIC.
  final RouterNatType? type;

  /// Timeout (in seconds) for UDP connections. Defaults to 30s if not set.
  final int? udpIdleTimeoutSec;

  RouterNat({
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
    final map = <String, dynamic>{};
    final autoNetworkTierValue = autoNetworkTier;
    if (autoNetworkTierValue != null) {
      map['autoNetworkTier'] = autoNetworkTierValue.value;
    }
    final drainNatIpsValue = drainNatIps;
    if (drainNatIpsValue != null) {
      map['drainNatIps'] = drainNatIpsValue;
    }
    final enableDynamicPortAllocationValue = enableDynamicPortAllocation;
    if (enableDynamicPortAllocationValue != null) {
      map['enableDynamicPortAllocation'] = enableDynamicPortAllocationValue;
    }
    final enableEndpointIndependentMappingValue =
        enableEndpointIndependentMapping;
    if (enableEndpointIndependentMappingValue != null) {
      map['enableEndpointIndependentMapping'] =
          enableEndpointIndependentMappingValue;
    }
    final endpointTypesValue = endpointTypes;
    if (endpointTypesValue != null) {
      map['endpointTypes'] =
          pulumi.Input.encodeList<RouterNatEndpointTypesItem, String>(
              endpointTypesValue, (value) => value.value);
    }
    final icmpIdleTimeoutSecValue = icmpIdleTimeoutSec;
    if (icmpIdleTimeoutSecValue != null) {
      map['icmpIdleTimeoutSec'] = icmpIdleTimeoutSecValue;
    }
    final logConfigValue = logConfig;
    if (logConfigValue != null) {
      map['logConfig'] = logConfigValue.toMap();
    }
    final maxPortsPerVmValue = maxPortsPerVm;
    if (maxPortsPerVmValue != null) {
      map['maxPortsPerVm'] = maxPortsPerVmValue;
    }
    final minPortsPerVmValue = minPortsPerVm;
    if (minPortsPerVmValue != null) {
      map['minPortsPerVm'] = minPortsPerVmValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final natIpAllocateOptionValue = natIpAllocateOption;
    if (natIpAllocateOptionValue != null) {
      map['natIpAllocateOption'] = natIpAllocateOptionValue.value;
    }
    final natIpsValue = natIps;
    if (natIpsValue != null) {
      map['natIps'] = natIpsValue;
    }
    final rulesValue = rules;
    if (rulesValue != null) {
      map['rules'] =
          pulumi.Input.encodeList<RouterNatRule, Map<String, dynamic>>(
              rulesValue, (value) => value.toMap());
    }
    final sourceSubnetworkIpRangesToNatValue = sourceSubnetworkIpRangesToNat;
    if (sourceSubnetworkIpRangesToNatValue != null) {
      map['sourceSubnetworkIpRangesToNat'] =
          sourceSubnetworkIpRangesToNatValue.value;
    }
    final subnetworksValue = subnetworks;
    if (subnetworksValue != null) {
      map['subnetworks'] = pulumi.Input.encodeList<RouterNatSubnetworkToNat,
          Map<String, dynamic>>(subnetworksValue, (value) => value.toMap());
    }
    final tcpEstablishedIdleTimeoutSecValue = tcpEstablishedIdleTimeoutSec;
    if (tcpEstablishedIdleTimeoutSecValue != null) {
      map['tcpEstablishedIdleTimeoutSec'] = tcpEstablishedIdleTimeoutSecValue;
    }
    final tcpTimeWaitTimeoutSecValue = tcpTimeWaitTimeoutSec;
    if (tcpTimeWaitTimeoutSecValue != null) {
      map['tcpTimeWaitTimeoutSec'] = tcpTimeWaitTimeoutSecValue;
    }
    final tcpTransitoryIdleTimeoutSecValue = tcpTransitoryIdleTimeoutSec;
    if (tcpTransitoryIdleTimeoutSecValue != null) {
      map['tcpTransitoryIdleTimeoutSec'] = tcpTransitoryIdleTimeoutSecValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue.value;
    }
    final udpIdleTimeoutSecValue = udpIdleTimeoutSec;
    if (udpIdleTimeoutSecValue != null) {
      map['udpIdleTimeoutSec'] = udpIdleTimeoutSecValue;
    }
    return map;
  }

  factory RouterNat.fromMap(Map<String, dynamic> map) {
    return RouterNat(
      autoNetworkTier: map['autoNetworkTier'] == null
          ? null
          : RouterNatAutoNetworkTier.fromValue(
              map['autoNetworkTier'] as String),
      drainNatIps: map['drainNatIps'] == null
          ? null
          : (map['drainNatIps'] as List).cast<String>(),
      enableDynamicPortAllocation: map['enableDynamicPortAllocation'] == null
          ? null
          : map['enableDynamicPortAllocation'] as bool,
      enableEndpointIndependentMapping:
          map['enableEndpointIndependentMapping'] == null
              ? null
              : map['enableEndpointIndependentMapping'] as bool,
      endpointTypes: map['endpointTypes'] == null
          ? null
          : pulumi.Input.decodeList<RouterNatEndpointTypesItem>(
              map['endpointTypes'],
              (value) => RouterNatEndpointTypesItem.fromValue(value as String)),
      icmpIdleTimeoutSec: map['icmpIdleTimeoutSec'] == null
          ? null
          : map['icmpIdleTimeoutSec'] as int,
      logConfig: map['logConfig'] == null
          ? null
          : RouterNatLogConfig.fromMap(
              (map['logConfig'] as Map).cast<String, dynamic>()),
      maxPortsPerVm:
          map['maxPortsPerVm'] == null ? null : map['maxPortsPerVm'] as int,
      minPortsPerVm:
          map['minPortsPerVm'] == null ? null : map['minPortsPerVm'] as int,
      name: map['name'] == null ? null : map['name'] as String,
      natIpAllocateOption: map['natIpAllocateOption'] == null
          ? null
          : RouterNatNatIpAllocateOption.fromValue(
              map['natIpAllocateOption'] as String),
      natIps:
          map['natIps'] == null ? null : (map['natIps'] as List).cast<String>(),
      rules: map['rules'] == null
          ? null
          : pulumi.Input.decodeList<RouterNatRule>(
              map['rules'],
              (value) => RouterNatRule.fromMap(
                  (value as Map).cast<String, dynamic>())),
      sourceSubnetworkIpRangesToNat:
          map['sourceSubnetworkIpRangesToNat'] == null
              ? null
              : RouterNatSourceSubnetworkIpRangesToNat.fromValue(
                  map['sourceSubnetworkIpRangesToNat'] as String),
      subnetworks: map['subnetworks'] == null
          ? null
          : pulumi.Input.decodeList<RouterNatSubnetworkToNat>(
              map['subnetworks'],
              (value) => RouterNatSubnetworkToNat.fromMap(
                  (value as Map).cast<String, dynamic>())),
      tcpEstablishedIdleTimeoutSec: map['tcpEstablishedIdleTimeoutSec'] == null
          ? null
          : map['tcpEstablishedIdleTimeoutSec'] as int,
      tcpTimeWaitTimeoutSec: map['tcpTimeWaitTimeoutSec'] == null
          ? null
          : map['tcpTimeWaitTimeoutSec'] as int,
      tcpTransitoryIdleTimeoutSec: map['tcpTransitoryIdleTimeoutSec'] == null
          ? null
          : map['tcpTransitoryIdleTimeoutSec'] as int,
      type: map['type'] == null
          ? null
          : RouterNatType.fromValue(map['type'] as String),
      udpIdleTimeoutSec: map['udpIdleTimeoutSec'] == null
          ? null
          : map['udpIdleTimeoutSec'] as int,
    );
  }
}
