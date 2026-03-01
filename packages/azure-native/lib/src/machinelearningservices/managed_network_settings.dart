// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fqdn_outbound_rule.dart';
import 'managed_network_provision_status.dart';

/// Managed Network settings for a machine learning workspace.
class ManagedNetworkSettings {
  /// A flag to indicate if monitoring needs to be enabled for the managed network firewall.
  final bool? enableFirewallLog;
  /// A flag to indicate if monitoring needs to be enabled for the managed network.
  final bool? enableNetworkMonitor;
  /// Public IP address assigned to the Azure Firewall.
  final String? firewallPublicIpAddress;
  /// Firewall Sku used for FQDN Rules
  final String? firewallSku;
  /// Isolation mode for the managed network of a machine learning workspace.
  final String? isolationMode;
  /// The Kind of the managed network. Users can switch from V1 to V2 for granular access controls, but cannot switch back to V1 once V2 is enabled.
  final String? managedNetworkKind;
  final Map<String, FqdnOutboundRule>? outboundRules;
  /// Status of the Provisioning for the managed network of a machine learning workspace.
  final ManagedNetworkProvisionStatus? status;

  /// Creates a new [ManagedNetworkSettings].
  /// [enableFirewallLog] A flag to indicate if monitoring needs to be enabled for the managed network firewall.
  /// [enableNetworkMonitor] A flag to indicate if monitoring needs to be enabled for the managed network.
  /// [firewallPublicIpAddress] Public IP address assigned to the Azure Firewall.
  /// [firewallSku] Firewall Sku used for FQDN Rules
  /// [isolationMode] Isolation mode for the managed network of a machine learning workspace.
  /// [managedNetworkKind] The Kind of the managed network. Users can switch from V1 to V2 for granular access controls, but cannot switch back to V1 once V2 is enabled.
  /// [outboundRules] Optional.
  /// [status] Status of the Provisioning for the managed network of a machine learning workspace.
  ManagedNetworkSettings({
    this.enableFirewallLog,
    this.enableNetworkMonitor,
    this.firewallPublicIpAddress,
    this.firewallSku,
    this.isolationMode,
    this.managedNetworkKind,
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
      'outboundRules': ?outboundRules == null ? null : pulumi.Input.encodeMapValues<FqdnOutboundRule, Map<String, dynamic>>(outboundRules!, (value) => value.toMap()),
      'status': ?status == null ? null : status!.toMap(),
    };
  }

  factory ManagedNetworkSettings.fromMap(Map<String, dynamic> map) {
    return ManagedNetworkSettings(
      enableFirewallLog: map['enableFirewallLog'] == null ? null : map['enableFirewallLog'] as bool,
      enableNetworkMonitor: map['enableNetworkMonitor'] == null ? null : map['enableNetworkMonitor'] as bool,
      firewallPublicIpAddress: map['firewallPublicIpAddress'] == null ? null : map['firewallPublicIpAddress'] as String,
      firewallSku: map['firewallSku'] == null ? null : map['firewallSku'] as String,
      isolationMode: map['isolationMode'] == null ? null : map['isolationMode'] as String,
      managedNetworkKind: map['managedNetworkKind'] == null ? null : map['managedNetworkKind'] as String,
      outboundRules: map['outboundRules'] == null ? null : pulumi.Input.decodeMapValues<FqdnOutboundRule>(map['outboundRules'], (value) => FqdnOutboundRule.fromMap((value as Map).cast<String, dynamic>())),
      status: map['status'] == null ? null : ManagedNetworkProvisionStatus.fromMap((map['status'] as Map).cast<String, dynamic>()),
    );
  }
}

