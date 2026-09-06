// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_network_provision_status.dart';

class ManagedNetworkSettingsEx {
  /// Firewall Sku used for FQDN Rules
  final pulumi.Input<dynamic>? firewallSku;
  /// Isolation mode for the managed network of a cognitive services account.
  final pulumi.Input<dynamic>? isolationMode;
  /// The Kind of the managed network. Users can switch from V1 to V2 for granular access controls, but cannot switch back to V1 once V2 is enabled.
  final pulumi.Input<dynamic>? managedNetworkKind;
  /// Dictionary of &lt;OutboundRule&gt;
  final pulumi.Input<Map<String, dynamic>?>? outboundRules;
  /// Status of the Provisioning for the managed network of a cognitive services account.
  final pulumi.Input<ManagedNetworkProvisionStatus?>? status;

  /// Creates a new [ManagedNetworkSettingsEx].
  /// [firewallSku] Firewall Sku used for FQDN Rules
  /// [isolationMode] Isolation mode for the managed network of a cognitive services account.
  /// [managedNetworkKind] The Kind of the managed network. Users can switch from V1 to V2 for granular access controls, but cannot switch back to V1 once V2 is enabled.
  /// [outboundRules] Dictionary of &lt;OutboundRule&gt;
  /// [status] Status of the Provisioning for the managed network of a cognitive services account.
  const ManagedNetworkSettingsEx({
    this.firewallSku,
    this.isolationMode,
    this.managedNetworkKind,
    this.outboundRules,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'firewallSku': ?firewallSku,
      'isolationMode': ?isolationMode,
      'managedNetworkKind': ?managedNetworkKind,
      'outboundRules': ?outboundRules,
      'status': ?pulumi.Input.mapOptionalInputValue<ManagedNetworkProvisionStatus, Map<String, dynamic>>(status, (value) => value.toMap()),
    };
  }

  factory ManagedNetworkSettingsEx.fromMap(Map<String, dynamic> map) {
    return ManagedNetworkSettingsEx(
      firewallSku: (() { final guardedValue = map['firewallSku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      isolationMode: (() { final guardedValue = map['isolationMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      managedNetworkKind: (() { final guardedValue = map['managedNetworkKind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      outboundRules: (() { final guardedValue = map['outboundRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedNetworkProvisionStatus.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
