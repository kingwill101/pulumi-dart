// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'adapter_property_overrides.dart';
import 'qos_policy_overrides.dart';
import 'virtual_switch_configuration_overrides.dart';

/// The Intents of a cluster.
class Intents {
  /// Array of network interfaces used for the network intent.
  final pulumi.Input<List<String>>? adapter;
  /// Set Adapter PropertyOverrides for cluster.
  final pulumi.Input<AdapterPropertyOverrides>? adapterPropertyOverrides;
  /// Name of the network intent you wish to create.
  final pulumi.Input<String>? name;
  /// This parameter should only be modified based on your OEM guidance. Do not modify this parameter without OEM validation.
  final pulumi.Input<bool>? overrideAdapterProperty;
  /// This parameter should only be modified based on your OEM guidance. Do not modify this parameter without OEM validation.
  final pulumi.Input<bool>? overrideQosPolicy;
  /// This parameter should only be modified based on your OEM guidance. Do not modify this parameter without OEM validation.
  final pulumi.Input<bool>? overrideVirtualSwitchConfiguration;
  /// Set QoS PolicyOverrides for cluster.
  final pulumi.Input<QosPolicyOverrides>? qosPolicyOverrides;
  /// List of network traffic types. Only allowed values are 'Compute', 'Storage', 'Management'.
  final pulumi.Input<List<String>>? trafficType;
  /// Set virtualSwitch ConfigurationOverrides for cluster.
  final pulumi.Input<VirtualSwitchConfigurationOverrides>? virtualSwitchConfigurationOverrides;

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
      'adapterPropertyOverrides': ?pulumi.Input.mapOptionalInputValue<AdapterPropertyOverrides, Map<String, dynamic>>(adapterPropertyOverrides, (value) => value.toMap()),
      'name': ?name,
      'overrideAdapterProperty': ?overrideAdapterProperty,
      'overrideQosPolicy': ?overrideQosPolicy,
      'overrideVirtualSwitchConfiguration': ?overrideVirtualSwitchConfiguration,
      'qosPolicyOverrides': ?pulumi.Input.mapOptionalInputValue<QosPolicyOverrides, Map<String, dynamic>>(qosPolicyOverrides, (value) => value.toMap()),
      'trafficType': ?trafficType,
      'virtualSwitchConfigurationOverrides': ?pulumi.Input.mapOptionalInputValue<VirtualSwitchConfigurationOverrides, Map<String, dynamic>>(virtualSwitchConfigurationOverrides, (value) => value.toMap()),
    };
  }

  factory Intents.fromMap(Map<String, dynamic> map) {
    return Intents(
      adapter: map['adapter'] == null ? null : ((map['adapter']! as List).cast<String>()).input(),
      adapterPropertyOverrides: map['adapterPropertyOverrides'] == null ? null : (AdapterPropertyOverrides.fromMap((map['adapterPropertyOverrides']! as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      overrideAdapterProperty: map['overrideAdapterProperty'] == null ? null : (map['overrideAdapterProperty']! as bool).input(),
      overrideQosPolicy: map['overrideQosPolicy'] == null ? null : (map['overrideQosPolicy']! as bool).input(),
      overrideVirtualSwitchConfiguration: map['overrideVirtualSwitchConfiguration'] == null ? null : (map['overrideVirtualSwitchConfiguration']! as bool).input(),
      qosPolicyOverrides: map['qosPolicyOverrides'] == null ? null : (QosPolicyOverrides.fromMap((map['qosPolicyOverrides']! as Map).cast<String, dynamic>())).input(),
      trafficType: map['trafficType'] == null ? null : ((map['trafficType']! as List).cast<String>()).input(),
      virtualSwitchConfigurationOverrides: map['virtualSwitchConfigurationOverrides'] == null ? null : (VirtualSwitchConfigurationOverrides.fromMap((map['virtualSwitchConfigurationOverrides']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

