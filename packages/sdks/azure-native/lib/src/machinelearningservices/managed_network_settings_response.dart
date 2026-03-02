// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fqdn_outbound_rule_response.dart';
import 'managed_network_provision_status_response.dart';

/// Managed Network settings for a machine learning workspace.
class ManagedNetworkSettingsResponse {
  /// A flag to indicate if monitoring needs to be enabled for the managed network firewall.
  final pulumi.Input<bool>? enableFirewallLog;
  /// A flag to indicate if monitoring needs to be enabled for the managed network.
  final pulumi.Input<bool>? enableNetworkMonitor;
  /// Public IP address assigned to the Azure Firewall.
  final pulumi.Input<String>? firewallPublicIpAddress;
  /// Firewall Sku used for FQDN Rules
  final pulumi.Input<String>? firewallSku;
  /// Isolation mode for the managed network of a machine learning workspace.
  final pulumi.Input<String>? isolationMode;
  /// The Kind of the managed network. Users can switch from V1 to V2 for granular access controls, but cannot switch back to V1 once V2 is enabled.
  final pulumi.Input<String>? managedNetworkKind;
  final pulumi.Input<String> networkId;
  final pulumi.Input<Map<String, FqdnOutboundRuleResponse>>? outboundRules;
  /// Status of the Provisioning for the managed network of a machine learning workspace.
  final pulumi.Input<ManagedNetworkProvisionStatusResponse>? status;

  /// Creates a new [ManagedNetworkSettingsResponse].
  /// [enableFirewallLog] A flag to indicate if monitoring needs to be enabled for the managed network firewall.
  /// [enableNetworkMonitor] A flag to indicate if monitoring needs to be enabled for the managed network.
  /// [firewallPublicIpAddress] Public IP address assigned to the Azure Firewall.
  /// [firewallSku] Firewall Sku used for FQDN Rules
  /// [isolationMode] Isolation mode for the managed network of a machine learning workspace.
  /// [managedNetworkKind] The Kind of the managed network. Users can switch from V1 to V2 for granular access controls, but cannot switch back to V1 once V2 is enabled.
  /// [networkId] Required.
  /// [outboundRules] Optional.
  /// [status] Status of the Provisioning for the managed network of a machine learning workspace.
  ManagedNetworkSettingsResponse({
    this.enableFirewallLog,
    this.enableNetworkMonitor,
    this.firewallPublicIpAddress,
    this.firewallSku,
    this.isolationMode,
    this.managedNetworkKind,
    required this.networkId,
    this.outboundRules,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableFirewallLog': ?enableFirewallLog,
      'enableNetworkMonitor': ?enableNetworkMonitor,
      'firewallPublicIpAddress': ?firewallPublicIpAddress,
      'firewallSku': ?firewallSku,
      'isolationMode': ?isolationMode,
      'managedNetworkKind': ?managedNetworkKind,
      'networkId': networkId,
      'outboundRules': ?pulumi.Input.mapOptionalInputValue<Map<String, FqdnOutboundRuleResponse>, Map<String, Map<String, dynamic>>>(outboundRules, (value) => pulumi.Input.encodeMapValues<FqdnOutboundRuleResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'status': ?pulumi.Input.mapOptionalInputValue<ManagedNetworkProvisionStatusResponse, Map<String, dynamic>>(status, (value) => value.toMap()),
    };
  }

  factory ManagedNetworkSettingsResponse.fromMap(Map<String, dynamic> map) {
    return ManagedNetworkSettingsResponse(
      enableFirewallLog: map['enableFirewallLog'] == null ? null : (map['enableFirewallLog']! as bool).input(),
      enableNetworkMonitor: map['enableNetworkMonitor'] == null ? null : (map['enableNetworkMonitor']! as bool).input(),
      firewallPublicIpAddress: map['firewallPublicIpAddress'] == null ? null : (map['firewallPublicIpAddress']! as String).input(),
      firewallSku: map['firewallSku'] == null ? null : (map['firewallSku']! as String).input(),
      isolationMode: map['isolationMode'] == null ? null : (map['isolationMode']! as String).input(),
      managedNetworkKind: map['managedNetworkKind'] == null ? null : (map['managedNetworkKind']! as String).input(),
      networkId: (map['networkId'] as String).input(),
      outboundRules: map['outboundRules'] == null ? null : (pulumi.Input.decodeMapValues<FqdnOutboundRuleResponse>(map['outboundRules']!, (value) => FqdnOutboundRuleResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      status: map['status'] == null ? null : (ManagedNetworkProvisionStatusResponse.fromMap((map['status']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

