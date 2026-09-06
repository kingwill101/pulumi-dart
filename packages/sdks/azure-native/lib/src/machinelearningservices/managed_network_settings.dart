// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_network_provision_status.dart';

/// Managed Network settings for a machine learning workspace.
class ManagedNetworkSettings {
  /// A flag to indicate if monitoring needs to be enabled for the managed network.
  final pulumi.Input<bool?>? enableNetworkMonitor;
  /// Firewall Sku used for FQDN Rules
  final pulumi.Input<dynamic>? firewallSku;
  /// Isolation mode for the managed network of a machine learning workspace.
  final pulumi.Input<dynamic>? isolationMode;
  /// The Kind of the managed network. Users can switch from V1 to V2 for granular access controls, but cannot switch back to V1 once V2 is enabled.
  final pulumi.Input<dynamic>? managedNetworkKind;
  /// Dictionary of &lt;OutboundRule&gt;
  final pulumi.Input<Map<String, dynamic>?>? outboundRules;
  /// Status of the Provisioning for the managed network of a machine learning workspace.
  final pulumi.Input<ManagedNetworkProvisionStatus?>? status;

  /// Creates a new [ManagedNetworkSettings].
  /// [enableNetworkMonitor] A flag to indicate if monitoring needs to be enabled for the managed network.
  /// [firewallSku] Firewall Sku used for FQDN Rules
  /// [isolationMode] Isolation mode for the managed network of a machine learning workspace.
  /// [managedNetworkKind] The Kind of the managed network. Users can switch from V1 to V2 for granular access controls, but cannot switch back to V1 once V2 is enabled.
  /// [outboundRules] Dictionary of &lt;OutboundRule&gt;
  /// [status] Status of the Provisioning for the managed network of a machine learning workspace.
  ManagedNetworkSettings({
    pulumi.Input<bool?>? enableNetworkMonitor,
    this.firewallSku,
    this.isolationMode,
    this.managedNetworkKind,
    this.outboundRules,
    this.status,
  }) : enableNetworkMonitor = enableNetworkMonitor ?? pulumi.Input.fromValue(false);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableNetworkMonitor': ?enableNetworkMonitor,
      'firewallSku': ?firewallSku,
      'isolationMode': ?isolationMode,
      'managedNetworkKind': ?managedNetworkKind,
      'outboundRules': ?outboundRules,
      'status': ?pulumi.Input.mapOptionalInputValue<ManagedNetworkProvisionStatus, Map<String, dynamic>>(status, (value) => value.toMap()),
    };
  }

  factory ManagedNetworkSettings.fromMap(Map<String, dynamic> map) {
    return ManagedNetworkSettings(
      enableNetworkMonitor: (() { final guardedValue = map['enableNetworkMonitor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      firewallSku: (() { final guardedValue = map['firewallSku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      isolationMode: (() { final guardedValue = map['isolationMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      managedNetworkKind: (() { final guardedValue = map['managedNetworkKind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      outboundRules: (() { final guardedValue = map['outboundRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedNetworkProvisionStatus.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
