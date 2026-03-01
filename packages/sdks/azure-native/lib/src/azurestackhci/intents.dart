// ignore_for_file: unused_element, unnecessary_cast

import 'adapter_property_overrides.dart';
import 'qos_policy_overrides.dart';
import 'virtual_switch_configuration_overrides.dart';

/// The Intents of a cluster.
class Intents {
  /// Array of network interfaces used for the network intent.
  final List<String>? adapter;
  /// Set Adapter PropertyOverrides for cluster.
  final AdapterPropertyOverrides? adapterPropertyOverrides;
  /// Name of the network intent you wish to create.
  final String? name;
  /// This parameter should only be modified based on your OEM guidance. Do not modify this parameter without OEM validation.
  final bool? overrideAdapterProperty;
  /// This parameter should only be modified based on your OEM guidance. Do not modify this parameter without OEM validation.
  final bool? overrideQosPolicy;
  /// This parameter should only be modified based on your OEM guidance. Do not modify this parameter without OEM validation.
  final bool? overrideVirtualSwitchConfiguration;
  /// Set QoS PolicyOverrides for cluster.
  final QosPolicyOverrides? qosPolicyOverrides;
  /// List of network traffic types. Only allowed values are 'Compute', 'Storage', 'Management'.
  final List<String>? trafficType;
  /// Set virtualSwitch ConfigurationOverrides for cluster.
  final VirtualSwitchConfigurationOverrides? virtualSwitchConfigurationOverrides;

  /// Creates a new [Intents].
  /// [adapter] Array of network interfaces used for the network intent.
  /// [adapterPropertyOverrides] Set Adapter PropertyOverrides for cluster.
  /// [name] Name of the network intent you wish to create.
  /// [overrideAdapterProperty] This parameter should only be modified based on your OEM guidance. Do not modify this parameter without OEM validation.
  /// [overrideQosPolicy] This parameter should only be modified based on your OEM guidance. Do not modify this parameter without OEM validation.
  /// [overrideVirtualSwitchConfiguration] This parameter should only be modified based on your OEM guidance. Do not modify this parameter without OEM validation.
  /// [qosPolicyOverrides] Set QoS PolicyOverrides for cluster.
  /// [trafficType] List of network traffic types. Only allowed values are 'Compute', 'Storage', 'Management'.
  /// [virtualSwitchConfigurationOverrides] Set virtualSwitch ConfigurationOverrides for cluster.
  Intents({
    this.adapter,
    this.adapterPropertyOverrides,
    this.name,
    this.overrideAdapterProperty,
    this.overrideQosPolicy,
    this.overrideVirtualSwitchConfiguration,
    this.qosPolicyOverrides,
    this.trafficType,
    this.virtualSwitchConfigurationOverrides,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adapter': ?adapter,
      'adapterPropertyOverrides': ?adapterPropertyOverrides == null ? null : adapterPropertyOverrides!.toMap(),
      'name': ?name,
      'overrideAdapterProperty': ?overrideAdapterProperty,
      'overrideQosPolicy': ?overrideQosPolicy,
      'overrideVirtualSwitchConfiguration': ?overrideVirtualSwitchConfiguration,
      'qosPolicyOverrides': ?qosPolicyOverrides == null ? null : qosPolicyOverrides!.toMap(),
      'trafficType': ?trafficType,
      'virtualSwitchConfigurationOverrides': ?virtualSwitchConfigurationOverrides == null ? null : virtualSwitchConfigurationOverrides!.toMap(),
    };
  }

  factory Intents.fromMap(Map<String, dynamic> map) {
    return Intents(
      adapter: map['adapter'] == null ? null : (map['adapter'] as List).cast<String>(),
      adapterPropertyOverrides: map['adapterPropertyOverrides'] == null ? null : AdapterPropertyOverrides.fromMap((map['adapterPropertyOverrides'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      overrideAdapterProperty: map['overrideAdapterProperty'] == null ? null : map['overrideAdapterProperty'] as bool,
      overrideQosPolicy: map['overrideQosPolicy'] == null ? null : map['overrideQosPolicy'] as bool,
      overrideVirtualSwitchConfiguration: map['overrideVirtualSwitchConfiguration'] == null ? null : map['overrideVirtualSwitchConfiguration'] as bool,
      qosPolicyOverrides: map['qosPolicyOverrides'] == null ? null : QosPolicyOverrides.fromMap((map['qosPolicyOverrides'] as Map).cast<String, dynamic>()),
      trafficType: map['trafficType'] == null ? null : (map['trafficType'] as List).cast<String>(),
      virtualSwitchConfigurationOverrides: map['virtualSwitchConfigurationOverrides'] == null ? null : VirtualSwitchConfigurationOverrides.fromMap((map['virtualSwitchConfigurationOverrides'] as Map).cast<String, dynamic>()),
    );
  }
}

