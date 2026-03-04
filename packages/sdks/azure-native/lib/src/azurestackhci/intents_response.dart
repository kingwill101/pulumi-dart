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
  final pulumi.Input<AdapterPropertyOverridesResponse> adapterPropertyOverrides;

  /// Array of adapters used for the network intent.
  final pulumi.Input<List<String>> intentAdapters;

  /// Name of the network intent you wish to create.
  final pulumi.Input<String> intentName;

  /// IntentType for host network intent.
  final pulumi.Input<double> intentType;

  /// IsComputeIntentSet for host network intent.
  final pulumi.Input<bool> isComputeIntentSet;

  /// IsManagementIntentSet for host network intent.
  final pulumi.Input<bool> isManagementIntentSet;

  /// IsNetworkIntentType for host network intent.
  final pulumi.Input<bool> isNetworkIntentType;

  /// IntentType for host network intent.
  final pulumi.Input<bool> isOnlyStorage;

  /// IsOnlyStretch for host network intent.
  final pulumi.Input<bool> isOnlyStretch;

  /// IsStorageIntentSet for host network intent.
  final pulumi.Input<bool> isStorageIntentSet;

  /// IsStretchIntentSet for host network intent.
  final pulumi.Input<bool> isStretchIntentSet;

  /// Name of the network intent you wish to create.
  final pulumi.Input<String>? name;

  /// This parameter should only be modified based on your OEM guidance. Do not modify this parameter without OEM validation.
  final pulumi.Input<bool> overrideAdapterProperty;

  /// This parameter should only be modified based on your OEM guidance. Do not modify this parameter without OEM validation.
  final pulumi.Input<bool> overrideQosPolicy;

  /// This parameter should only be modified based on your OEM guidance. Do not modify this parameter without OEM validation.
  final pulumi.Input<bool> overrideVirtualSwitchConfiguration;

  /// Set QoS PolicyOverrides for cluster.
  final pulumi.Input<QosPolicyOverridesResponse> qosPolicyOverrides;

  /// Scope for host network intent.
  final pulumi.Input<double> scope;

  /// List of network traffic types. Only allowed values are 'Compute', 'Storage', 'Management'.
  final pulumi.Input<List<String>>? trafficType;

  /// Set virtualSwitch ConfigurationOverrides for cluster.
  final pulumi.Input<VirtualSwitchConfigurationOverridesResponse>
  virtualSwitchConfigurationOverrides;

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
      'adapterPropertyOverrides':
          pulumi.Input.mapInputValue<
            AdapterPropertyOverridesResponse,
            Map<String, dynamic>
          >(adapterPropertyOverrides, (value) => value.toMap()),
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
      'qosPolicyOverrides':
          pulumi.Input.mapInputValue<
            QosPolicyOverridesResponse,
            Map<String, dynamic>
          >(qosPolicyOverrides, (value) => value.toMap()),
      'scope': scope,
      'trafficType': ?trafficType,
      'virtualSwitchConfigurationOverrides':
          pulumi.Input.mapInputValue<
            VirtualSwitchConfigurationOverridesResponse,
            Map<String, dynamic>
          >(virtualSwitchConfigurationOverrides, (value) => value.toMap()),
    };
  }

  factory IntentsResponse.fromMap(Map<String, dynamic> map) {
    return IntentsResponse(
      adapter: (() {
        final guardedValue = map['adapter'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      adapterPropertyOverrides: pulumi.Input.fromValue(
        AdapterPropertyOverridesResponse.fromMap(
          (map['adapterPropertyOverrides']! as Map).cast<String, dynamic>(),
        ),
      ),
      intentAdapters: pulumi.Input.fromValue(
        (map['intentAdapters'] as List).cast<String>(),
      ),
      intentName: pulumi.Input.fromValue(map['intentName'] as String),
      intentType: pulumi.Input.fromValue(map['intentType'] as double),
      isComputeIntentSet: pulumi.Input.fromValue(
        map['isComputeIntentSet'] as bool,
      ),
      isManagementIntentSet: pulumi.Input.fromValue(
        map['isManagementIntentSet'] as bool,
      ),
      isNetworkIntentType: pulumi.Input.fromValue(
        map['isNetworkIntentType'] as bool,
      ),
      isOnlyStorage: pulumi.Input.fromValue(map['isOnlyStorage'] as bool),
      isOnlyStretch: pulumi.Input.fromValue(map['isOnlyStretch'] as bool),
      isStorageIntentSet: pulumi.Input.fromValue(
        map['isStorageIntentSet'] as bool,
      ),
      isStretchIntentSet: pulumi.Input.fromValue(
        map['isStretchIntentSet'] as bool,
      ),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      overrideAdapterProperty: pulumi.Input.fromValue(
        map['overrideAdapterProperty'] as bool,
      ),
      overrideQosPolicy: pulumi.Input.fromValue(
        map['overrideQosPolicy'] as bool,
      ),
      overrideVirtualSwitchConfiguration: pulumi.Input.fromValue(
        map['overrideVirtualSwitchConfiguration'] as bool,
      ),
      qosPolicyOverrides: pulumi.Input.fromValue(
        QosPolicyOverridesResponse.fromMap(
          (map['qosPolicyOverrides']! as Map).cast<String, dynamic>(),
        ),
      ),
      scope: pulumi.Input.fromValue(map['scope'] as double),
      trafficType: (() {
        final guardedValue = map['trafficType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      virtualSwitchConfigurationOverrides: pulumi.Input.fromValue(
        VirtualSwitchConfigurationOverridesResponse.fromMap(
          (map['virtualSwitchConfigurationOverrides']! as Map)
              .cast<String, dynamic>(),
        ),
      ),
    );
  }
}
