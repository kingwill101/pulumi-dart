// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_network_provision_status_response.dart';

class ManagedNetworkSettingsExResponse {
  final pulumi.Input<List<String>> changeableIsolationModes;
  /// Public IP address assigned to the Azure Firewall.
  final pulumi.Input<String> firewallPublicIpAddress;
  /// Firewall Sku used for FQDN Rules
  final pulumi.Input<String?>? firewallSku;
  /// Isolation mode for the managed network of a cognitive services account.
  final pulumi.Input<String?>? isolationMode;
  /// The Kind of the managed network. Users can switch from V1 to V2 for granular access controls, but cannot switch back to V1 once V2 is enabled.
  final pulumi.Input<String?>? managedNetworkKind;
  final pulumi.Input<String> networkId;
  /// Dictionary of &lt;OutboundRule&gt;
  final pulumi.Input<Map<String, dynamic>?>? outboundRules;
  /// The provisioning state of the managed network settings.
  final pulumi.Input<String> provisioningState;
  /// Status of the Provisioning for the managed network of a cognitive services account.
  final pulumi.Input<ManagedNetworkProvisionStatusResponse?>? status;

  /// Creates a new [ManagedNetworkSettingsExResponse].
  /// [changeableIsolationModes] Required.
  /// [firewallPublicIpAddress] Public IP address assigned to the Azure Firewall.
  /// [firewallSku] Firewall Sku used for FQDN Rules
  /// [isolationMode] Isolation mode for the managed network of a cognitive services account.
  /// [managedNetworkKind] The Kind of the managed network. Users can switch from V1 to V2 for granular access controls, but cannot switch back to V1 once V2 is enabled.
  /// [networkId] Required.
  /// [outboundRules] Dictionary of &lt;OutboundRule&gt;
  /// [provisioningState] The provisioning state of the managed network settings.
  /// [status] Status of the Provisioning for the managed network of a cognitive services account.
  const ManagedNetworkSettingsExResponse({
    required this.changeableIsolationModes,
    required this.firewallPublicIpAddress,
    this.firewallSku,
    this.isolationMode,
    this.managedNetworkKind,
    required this.networkId,
    this.outboundRules,
    required this.provisioningState,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'changeableIsolationModes': changeableIsolationModes,
      'firewallPublicIpAddress': firewallPublicIpAddress,
      'firewallSku': ?firewallSku,
      'isolationMode': ?isolationMode,
      'managedNetworkKind': ?managedNetworkKind,
      'networkId': networkId,
      'outboundRules': ?outboundRules,
      'provisioningState': provisioningState,
      'status': ?pulumi.Input.mapOptionalInputValue<ManagedNetworkProvisionStatusResponse, Map<String, dynamic>>(status, (value) => value.toMap()),
    };
  }

  factory ManagedNetworkSettingsExResponse.fromMap(Map<String, dynamic> map) {
    return ManagedNetworkSettingsExResponse(
      changeableIsolationModes: pulumi.Input.fromValue((map['changeableIsolationModes'] as List).cast<String>()),
      firewallPublicIpAddress: pulumi.Input.fromValue(map['firewallPublicIpAddress'] as String),
      firewallSku: (() { final guardedValue = map['firewallSku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isolationMode: (() { final guardedValue = map['isolationMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedNetworkKind: (() { final guardedValue = map['managedNetworkKind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkId: pulumi.Input.fromValue(map['networkId'] as String),
      outboundRules: (() { final guardedValue = map['outboundRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedNetworkProvisionStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
