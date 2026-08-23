// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'adapter_property_overrides_response.dart';
import 'qos_policy_overrides_response.dart';
import 'virtual_switch_configuration_overrides_response.dart';

/// The Intents of a cluster.
class IntentsResponse {
  /// Array of network interfaces used for the network intent.
  final pulumi.Input<List<String>>? adapter;
  /// Set Adapter PropertyOverrides for cluster.
  final pulumi.Input<AdapterPropertyOverridesResponse>? adapterPropertyOverrides;
  /// Name of the network intent you wish to create.
  final pulumi.Input<String>? name;
  /// This parameter should only be modified based on your OEM guidance. Do not modify this parameter without OEM validation.
  final pulumi.Input<bool>? overrideAdapterProperty;
  /// This parameter should only be modified based on your OEM guidance. Do not modify this parameter without OEM validation.
  final pulumi.Input<bool>? overrideQosPolicy;
  /// This parameter should only be modified based on your OEM guidance. Do not modify this parameter without OEM validation.
  final pulumi.Input<bool>? overrideVirtualSwitchConfiguration;
  /// Set QoS PolicyOverrides for cluster.
  final pulumi.Input<QosPolicyOverridesResponse>? qosPolicyOverrides;
  /// List of network traffic types. Only allowed values are 'Compute', 'Storage', 'Management'.
  final pulumi.Input<List<String>>? trafficType;
  /// Set virtualSwitch ConfigurationOverrides for cluster.
  final pulumi.Input<VirtualSwitchConfigurationOverridesResponse>? virtualSwitchConfigurationOverrides;

  /// Creates a new [IntentsResponse].
  /// [adapter] Array of network interfaces used for the network intent.
  /// [adapterPropertyOverrides] Set Adapter PropertyOverrides for cluster.
  /// [name] Name of the network intent you wish to create.
  /// [overrideAdapterProperty] This parameter should only be modified based on your OEM guidance. Do not modify this parameter without OEM validation.
  /// [overrideQosPolicy] This parameter should only be modified based on your OEM guidance. Do not modify this parameter without OEM validation.
  /// [overrideVirtualSwitchConfiguration] This parameter should only be modified based on your OEM guidance. Do not modify this parameter without OEM validation.
  /// [qosPolicyOverrides] Set QoS PolicyOverrides for cluster.
  /// [trafficType] List of network traffic types. Only allowed values are 'Compute', 'Storage', 'Management'.
  /// [virtualSwitchConfigurationOverrides] Set virtualSwitch ConfigurationOverrides for cluster.
  const IntentsResponse({
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
      'adapterPropertyOverrides': ?pulumi.Input.mapOptionalInputValue<AdapterPropertyOverridesResponse, Map<String, dynamic>>(adapterPropertyOverrides, (value) => value.toMap()),
      'name': ?name,
      'overrideAdapterProperty': ?overrideAdapterProperty,
      'overrideQosPolicy': ?overrideQosPolicy,
      'overrideVirtualSwitchConfiguration': ?overrideVirtualSwitchConfiguration,
      'qosPolicyOverrides': ?pulumi.Input.mapOptionalInputValue<QosPolicyOverridesResponse, Map<String, dynamic>>(qosPolicyOverrides, (value) => value.toMap()),
      'trafficType': ?trafficType,
      'virtualSwitchConfigurationOverrides': ?pulumi.Input.mapOptionalInputValue<VirtualSwitchConfigurationOverridesResponse, Map<String, dynamic>>(virtualSwitchConfigurationOverrides, (value) => value.toMap()),
    };
  }

  factory IntentsResponse.fromMap(Map<String, dynamic> map) {
    return IntentsResponse(
      adapter: (() { final guardedValue = map['adapter']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      adapterPropertyOverrides: (() { final guardedValue = map['adapterPropertyOverrides']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AdapterPropertyOverridesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      overrideAdapterProperty: (() { final guardedValue = map['overrideAdapterProperty']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      overrideQosPolicy: (() { final guardedValue = map['overrideQosPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      overrideVirtualSwitchConfiguration: (() { final guardedValue = map['overrideVirtualSwitchConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      qosPolicyOverrides: (() { final guardedValue = map['qosPolicyOverrides']; if (guardedValue == null) return null; return pulumi.Input.fromValue(QosPolicyOverridesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      trafficType: (() { final guardedValue = map['trafficType']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      virtualSwitchConfigurationOverrides: (() { final guardedValue = map['virtualSwitchConfigurationOverrides']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualSwitchConfigurationOverridesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
