// ignore_for_file: unused_element, unnecessary_cast

import 'storage_billing_properties.dart';

/// described the storage properties of the azure bare metal storage instance
class StorageProperties {
  /// the kind of storage instance
  final String? generation;
  /// the hardware type of the storage instance
  final String? hardwareType;
  /// the offering type for which the resource is getting provisioned
  final String? offeringType;
  /// State of provisioning of the AzureBareMetalStorageInstance
  final String? provisioningState;
  /// the billing related information for the resource
  final StorageBillingProperties? storageBillingProperties;
  /// the storage protocol for which the resource is getting provisioned
  final String? storageType;
  /// the workload for which the resource is getting provisioned
  final String? workloadType;

  /// Creates a new [StorageProperties].
  /// [generation] the kind of storage instance
  /// [hardwareType] the hardware type of the storage instance
  /// [offeringType] the offering type for which the resource is getting provisioned
  /// [provisioningState] State of provisioning of the AzureBareMetalStorageInstance
  /// [storageBillingProperties] the billing related information for the resource
  /// [storageType] the storage protocol for which the resource is getting provisioned
  /// [workloadType] the workload for which the resource is getting provisioned
  StorageProperties({
    this.generation,
    this.hardwareType,
    this.offeringType,
    this.provisioningState,
    this.storageBillingProperties,
    this.storageType,
    this.workloadType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'generation': ?generation,
      'hardwareType': ?hardwareType,
      'offeringType': ?offeringType,
      'provisioningState': ?provisioningState,
      'storageBillingProperties': ?storageBillingProperties == null ? null : storageBillingProperties!.toMap(),
      'storageType': ?storageType,
      'workloadType': ?workloadType,
    };
  }

  factory StorageProperties.fromMap(Map<String, dynamic> map) {
    return StorageProperties(
      generation: map['generation'] == null ? null : map['generation'] as String,
      hardwareType: map['hardwareType'] == null ? null : map['hardwareType'] as String,
      offeringType: map['offeringType'] == null ? null : map['offeringType'] as String,
      provisioningState: map['provisioningState'] == null ? null : map['provisioningState'] as String,
      storageBillingProperties: map['storageBillingProperties'] == null ? null : StorageBillingProperties.fromMap((map['storageBillingProperties'] as Map).cast<String, dynamic>()),
      storageType: map['storageType'] == null ? null : map['storageType'] as String,
      workloadType: map['workloadType'] == null ? null : map['workloadType'] as String,
    );
  }
}

