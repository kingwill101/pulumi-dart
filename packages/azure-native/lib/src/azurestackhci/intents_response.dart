// ignore_for_file: unused_element, unnecessary_cast

import 'adapter_property_overrides_response.dart';
import 'qos_policy_overrides_response.dart';
import 'virtual_switch_configuration_overrides_response.dart';

/// The Intents of a cluster.
class IntentsResponse {
  /// Array of network interfaces used for the network intent.
  final List<String>? adapter;
  /// Set Adapter PropertyOverrides for cluster.
  final AdapterPropertyOverridesResponse adapterPropertyOverrides;
  /// Array of adapters used for the network intent.
  final List<String> intentAdapters;
  /// Name of the network intent you wish to create.
  final String intentName;
  /// IntentType for host network intent.
  final double intentType;
  /// IsComputeIntentSet for host network intent.
  final bool isComputeIntentSet;
  /// IsManagementIntentSet for host network intent.
  final bool isManagementIntentSet;
  /// IsNetworkIntentType for host network intent.
  final bool isNetworkIntentType;
  /// IntentType for host network intent.
  final bool isOnlyStorage;
  /// IsOnlyStretch for host network intent.
  final bool isOnlyStretch;
  /// IsStorageIntentSet for host network intent.
  final bool isStorageIntentSet;
  /// IsStretchIntentSet for host network intent.
  final bool isStretchIntentSet;
  /// Name of the network intent you wish to create.
  final String? name;
  /// This parameter should only be modified based on your OEM guidance. Do not modify this parameter without OEM validation.
  final bool overrideAdapterProperty;
  /// This parameter should only be modified based on your OEM guidance. Do not modify this parameter without OEM validation.
  final bool overrideQosPolicy;
  /// This parameter should only be modified based on your OEM guidance. Do not modify this parameter without OEM validation.
  final bool overrideVirtualSwitchConfiguration;
  /// Set QoS PolicyOverrides for cluster.
  final QosPolicyOverridesResponse qosPolicyOverrides;
  /// Scope for host network intent.
  final double scope;
  /// List of network traffic types. Only allowed values are 'Compute', 'Storage', 'Management'.
  final List<String>? trafficType;
  /// Set virtualSwitch ConfigurationOverrides for cluster.
  final VirtualSwitchConfigurationOverridesResponse virtualSwitchConfigurationOverrides;

  /// Creates a new [IntentsResponse].
  /// [adapter] Array of network interfaces used for the network intent.
  /// [adapterPropertyOverrides] Set Adapter PropertyOverrides for cluster.
  /// [intentAdapters] Array of adapters used for the network intent.
  /// [intentName] Name of the network intent you wish to create.
  /// [intentType] IntentType for host network intent.
  /// [isComputeIntentSet] IsComputeIntentSet for host network intent.
  /// [isManagementIntentSet] IsManagementIntentSet for host network intent.
  /// [isNetworkIntentType] IsNetworkIntentType for host network intent.
  /// [isOnlyStorage] IntentType for host network intent.
  /// [isOnlyStretch] IsOnlyStretch for host network intent.
  /// [isStorageIntentSet] IsStorageIntentSet for host network intent.
  /// [isStretchIntentSet] IsStretchIntentSet for host network intent.
  /// [name] Name of the network intent you wish to create.
  /// [overrideAdapterProperty] This parameter should only be modified based on your OEM guidance. Do not modify this parameter without OEM validation.
  /// [overrideQosPolicy] This parameter should only be modified based on your OEM guidance. Do not modify this parameter without OEM validation.
  /// [overrideVirtualSwitchConfiguration] This parameter should only be modified based on your OEM guidance. Do not modify this parameter without OEM validation.
  /// [qosPolicyOverrides] Set QoS PolicyOverrides for cluster.
  /// [scope] Scope for host network intent.
  /// [trafficType] List of network traffic types. Only allowed values are 'Compute', 'Storage', 'Management'.
  /// [virtualSwitchConfigurationOverrides] Set virtualSwitch ConfigurationOverrides for cluster.
  IntentsResponse({
    this.adapter,
    required this.adapterPropertyOverrides,
    required this.intentAdapters,
    required this.intentName,
    required this.intentType,
    required this.isComputeIntentSet,
    required this.isManagementIntentSet,
    required this.isNetworkIntentType,
    required this.isOnlyStorage,
    required this.isOnlyStretch,
    required this.isStorageIntentSet,
    required this.isStretchIntentSet,
    this.name,
    required this.overrideAdapterProperty,
    required this.overrideQosPolicy,
    required this.overrideVirtualSwitchConfiguration,
    required this.qosPolicyOverrides,
    required this.scope,
    this.trafficType,
    required this.virtualSwitchConfigurationOverrides,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adapter': ?adapter,
      'adapterPropertyOverrides': adapterPropertyOverrides.toMap(),
      'intentAdapters': intentAdapters,
      'intentName': intentName,
      'intentType': intentType,
      'isComputeIntentSet': isComputeIntentSet,
      'isManagementIntentSet': isManagementIntentSet,
      'isNetworkIntentType': isNetworkIntentType,
      'isOnlyStorage': isOnlyStorage,
      'isOnlyStretch': isOnlyStretch,
      'isStorageIntentSet': isStorageIntentSet,
      'isStretchIntentSet': isStretchIntentSet,
      'name': ?name,
      'overrideAdapterProperty': overrideAdapterProperty,
      'overrideQosPolicy': overrideQosPolicy,
      'overrideVirtualSwitchConfiguration': overrideVirtualSwitchConfiguration,
      'qosPolicyOverrides': qosPolicyOverrides.toMap(),
      'scope': scope,
      'trafficType': ?trafficType,
      'virtualSwitchConfigurationOverrides': virtualSwitchConfigurationOverrides.toMap(),
    };
  }

  factory IntentsResponse.fromMap(Map<String, dynamic> map) {
    return IntentsResponse(
      adapter: map['adapter'] == null ? null : (map['adapter'] as List).cast<String>(),
      adapterPropertyOverrides: AdapterPropertyOverridesResponse.fromMap((map['adapterPropertyOverrides'] as Map).cast<String, dynamic>()),
      intentAdapters: (map['intentAdapters'] as List).cast<String>(),
      intentName: map['intentName'] as String,
      intentType: map['intentType'] as double,
      isComputeIntentSet: map['isComputeIntentSet'] as bool,
      isManagementIntentSet: map['isManagementIntentSet'] as bool,
      isNetworkIntentType: map['isNetworkIntentType'] as bool,
      isOnlyStorage: map['isOnlyStorage'] as bool,
      isOnlyStretch: map['isOnlyStretch'] as bool,
      isStorageIntentSet: map['isStorageIntentSet'] as bool,
      isStretchIntentSet: map['isStretchIntentSet'] as bool,
      name: map['name'] == null ? null : map['name'] as String,
      overrideAdapterProperty: map['overrideAdapterProperty'] as bool,
      overrideQosPolicy: map['overrideQosPolicy'] as bool,
      overrideVirtualSwitchConfiguration: map['overrideVirtualSwitchConfiguration'] as bool,
      qosPolicyOverrides: QosPolicyOverridesResponse.fromMap((map['qosPolicyOverrides'] as Map).cast<String, dynamic>()),
      scope: map['scope'] as double,
      trafficType: map['trafficType'] == null ? null : (map['trafficType'] as List).cast<String>(),
      virtualSwitchConfigurationOverrides: VirtualSwitchConfigurationOverridesResponse.fromMap((map['virtualSwitchConfigurationOverrides'] as Map).cast<String, dynamic>()),
    );
  }
}

