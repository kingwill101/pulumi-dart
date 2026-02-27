// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'router_nat_log_config_response.dart';
import 'router_nat_rule_response.dart';
import 'router_nat_subnetwork_to_nat_response.dart';

/// Represents a Nat resource. It enables the VMs within the specified subnetworks to access Internet without external IP addresses. It specifies a list of subnetworks (and the ranges within) that want to use NAT. Customers can also provide the external IPs that would be used for NAT. GCP would auto-allocate ephemeral IPs if no external IPs are provided.
class RouterNatResponse {
  /// The network tier to use when automatically reserving NAT IP addresses. Must be one of: PREMIUM, STANDARD. If not specified, then the current project-level default tier is used.
  final String autoNetworkTier;

  /// A list of URLs of the IP resources to be drained. These IPs must be valid static external IPs that have been assigned to the NAT. These IPs should be used for updating/patching a NAT only.
  final List<String> drainNatIps;

  /// Enable Dynamic Port Allocation. If not specified, it is disabled by default. If set to true, - Dynamic Port Allocation will be enabled on this NAT config. - enableEndpointIndependentMapping cannot be set to true. - If minPorts is set, minPortsPerVm must be set to a power of two greater than or equal to 32. If minPortsPerVm is not set, a minimum of 32 ports will be allocated to a VM from this NAT config.
  final bool enableDynamicPortAllocation;
  final bool enableEndpointIndependentMapping;

  /// List of NAT-ted endpoint types supported by the Nat Gateway. If the list is empty, then it will be equivalent to include ENDPOINT_TYPE_VM
  final List<String> endpointTypes;

  /// Timeout (in seconds) for ICMP connections. Defaults to 30s if not set.
  final int icmpIdleTimeoutSec;

  /// Configure logging on this NAT.
  final RouterNatLogConfigResponse logConfig;

  /// Maximum number of ports allocated to a VM from this NAT config when Dynamic Port Allocation is enabled. If Dynamic Port Allocation is not enabled, this field has no effect. If Dynamic Port Allocation is enabled, and this field is set, it must be set to a power of two greater than minPortsPerVm, or 64 if minPortsPerVm is not set. If Dynamic Port Allocation is enabled and this field is not set, a maximum of 65536 ports will be allocated to a VM from this NAT config.
  final int maxPortsPerVm;

  /// Minimum number of ports allocated to a VM from this NAT config. If not set, a default number of ports is allocated to a VM. This is rounded up to the nearest power of 2. For example, if the value of this field is 50, at least 64 ports are allocated to a VM.
  final int minPortsPerVm;

  /// Unique name of this Nat service. The name must be 1-63 characters long and comply with RFC1035.
  final String name;

  /// Specify the NatIpAllocateOption, which can take one of the following values: - MANUAL_ONLY: Uses only Nat IP addresses provided by customers. When there are not enough specified Nat IPs, the Nat service fails for new VMs. - AUTO_ONLY: Nat IPs are allocated by Google Cloud Platform; customers can't specify any Nat IPs. When choosing AUTO_ONLY, then nat_ip should be empty.
  final String natIpAllocateOption;

  /// A list of URLs of the IP resources used for this Nat service. These IP addresses must be valid static external IP addresses assigned to the project.
  final List<String> natIps;

  /// A list of rules associated with this NAT.
  final List<RouterNatRuleResponse> rules;

  /// Specify the Nat option, which can take one of the following values: - ALL_SUBNETWORKS_ALL_IP_RANGES: All of the IP ranges in every Subnetwork are allowed to Nat. - ALL_SUBNETWORKS_ALL_PRIMARY_IP_RANGES: All of the primary IP ranges in every Subnetwork are allowed to Nat. - LIST_OF_SUBNETWORKS: A list of Subnetworks are allowed to Nat (specified in the field subnetwork below) The default is SUBNETWORK_IP_RANGE_TO_NAT_OPTION_UNSPECIFIED. Note that if this field contains ALL_SUBNETWORKS_ALL_IP_RANGES then there should not be any other Router.Nat section in any Router for this network in this region.
  final String sourceSubnetworkIpRangesToNat;

  /// A list of Subnetwork resources whose traffic should be translated by NAT Gateway. It is used only when LIST_OF_SUBNETWORKS is selected for the SubnetworkIpRangeToNatOption above.
  final List<RouterNatSubnetworkToNatResponse> subnetworks;

  /// Timeout (in seconds) for TCP established connections. Defaults to 1200s if not set.
  final int tcpEstablishedIdleTimeoutSec;

  /// Timeout (in seconds) for TCP connections that are in TIME_WAIT state. Defaults to 120s if not set.
  final int tcpTimeWaitTimeoutSec;

  /// Timeout (in seconds) for TCP transitory connections. Defaults to 30s if not set.
  final int tcpTransitoryIdleTimeoutSec;

  /// Indicates whether this NAT is used for public or private IP translation. If unspecified, it defaults to PUBLIC.
  final String type;

  /// Timeout (in seconds) for UDP connections. Defaults to 30s if not set.
  final int udpIdleTimeoutSec;

  RouterNatResponse({
    required this.autoNetworkTier,
    required this.drainNatIps,
    required this.enableDynamicPortAllocation,
    required this.enableEndpointIndependentMapping,
    required this.endpointTypes,
    required this.icmpIdleTimeoutSec,
    required this.logConfig,
    required this.maxPortsPerVm,
    required this.minPortsPerVm,
    required this.name,
    required this.natIpAllocateOption,
    required this.natIps,
    required this.rules,
    required this.sourceSubnetworkIpRangesToNat,
    required this.subnetworks,
    required this.tcpEstablishedIdleTimeoutSec,
    required this.tcpTimeWaitTimeoutSec,
    required this.tcpTransitoryIdleTimeoutSec,
    required this.type,
    required this.udpIdleTimeoutSec,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['autoNetworkTier'] = autoNetworkTier;
    map['drainNatIps'] = drainNatIps;
    map['enableDynamicPortAllocation'] = enableDynamicPortAllocation;
    map['enableEndpointIndependentMapping'] = enableEndpointIndependentMapping;
    map['endpointTypes'] = endpointTypes;
    map['icmpIdleTimeoutSec'] = icmpIdleTimeoutSec;
    map['logConfig'] = logConfig.toMap();
    map['maxPortsPerVm'] = maxPortsPerVm;
    map['minPortsPerVm'] = minPortsPerVm;
    map['name'] = name;
    map['natIpAllocateOption'] = natIpAllocateOption;
    map['natIps'] = natIps;
    map['rules'] =
        Input.encodeList<RouterNatRuleResponse, Map<String, dynamic>>(
            rules, (value) => value.toMap());
    map['sourceSubnetworkIpRangesToNat'] = sourceSubnetworkIpRangesToNat;
    map['subnetworks'] = Input.encodeList<RouterNatSubnetworkToNatResponse,
        Map<String, dynamic>>(subnetworks, (value) => value.toMap());
    map['tcpEstablishedIdleTimeoutSec'] = tcpEstablishedIdleTimeoutSec;
    map['tcpTimeWaitTimeoutSec'] = tcpTimeWaitTimeoutSec;
    map['tcpTransitoryIdleTimeoutSec'] = tcpTransitoryIdleTimeoutSec;
    map['type'] = type;
    map['udpIdleTimeoutSec'] = udpIdleTimeoutSec;
    return map;
  }

  factory RouterNatResponse.fromMap(Map<String, dynamic> map) {
    return RouterNatResponse(
      autoNetworkTier: map['autoNetworkTier'] as String,
      drainNatIps: (map['drainNatIps'] as List).cast<String>(),
      enableDynamicPortAllocation: map['enableDynamicPortAllocation'] as bool,
      enableEndpointIndependentMapping:
          map['enableEndpointIndependentMapping'] as bool,
      endpointTypes: (map['endpointTypes'] as List).cast<String>(),
      icmpIdleTimeoutSec: map['icmpIdleTimeoutSec'] as int,
      logConfig: RouterNatLogConfigResponse.fromMap(
          (map['logConfig'] as Map).cast<String, dynamic>()),
      maxPortsPerVm: map['maxPortsPerVm'] as int,
      minPortsPerVm: map['minPortsPerVm'] as int,
      name: map['name'] as String,
      natIpAllocateOption: map['natIpAllocateOption'] as String,
      natIps: (map['natIps'] as List).cast<String>(),
      rules: Input.decodeList<RouterNatRuleResponse>(
          map['rules'],
          (value) => RouterNatRuleResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      sourceSubnetworkIpRangesToNat:
          map['sourceSubnetworkIpRangesToNat'] as String,
      subnetworks: Input.decodeList<RouterNatSubnetworkToNatResponse>(
          map['subnetworks'],
          (value) => RouterNatSubnetworkToNatResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      tcpEstablishedIdleTimeoutSec: map['tcpEstablishedIdleTimeoutSec'] as int,
      tcpTimeWaitTimeoutSec: map['tcpTimeWaitTimeoutSec'] as int,
      tcpTransitoryIdleTimeoutSec: map['tcpTransitoryIdleTimeoutSec'] as int,
      type: map['type'] as String,
      udpIdleTimeoutSec: map['udpIdleTimeoutSec'] as int,
    );
  }
}
