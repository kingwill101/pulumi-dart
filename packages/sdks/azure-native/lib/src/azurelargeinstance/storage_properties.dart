// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_billing_properties.dart';

/// described the storage properties of the azure large storage instance
class StorageProperties {
  /// the kind of storage instance
  final pulumi.Input<String>? generation;
  /// the hardware type of the storage instance
  final pulumi.Input<String>? hardwareType;
  /// the offering type for which the resource is getting provisioned
  final pulumi.Input<String>? offeringType;
  /// the billing related information for the resource
  final pulumi.Input<StorageBillingProperties>? storageBillingProperties;
  /// the storage protocol for which the resource is getting provisioned
  final pulumi.Input<String>? storageType;
  /// the workload for which the resource is getting provisioned
  final pulumi.Input<String>? workloadType;

  /// Creates a new [StorageProperties].
  /// [generation] the kind of storage instance
  /// [hardwareType] the hardware type of the storage instance
  /// [offeringType] the offering type for which the resource is getting provisioned
  /// [storageBillingProperties] the billing related information for the resource
  /// [storageType] the storage protocol for which the resource is getting provisioned
  /// [workloadType] the workload for which the resource is getting provisioned
  StorageProperties({
    this.generation,
    this.hardwareType,
    this.offeringType,
    this.storageBillingProperties,
    this.storageType,
    this.workloadType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'generation': ?generation,
      'hardwareType': ?hardwareType,
      'offeringType': ?offeringType,
      'storageBillingProperties': ?pulumi.Input.mapOptionalInputValue<StorageBillingProperties, Map<String, dynamic>>(storageBillingProperties, (value) => value.toMap()),
      'storageType': ?storageType,
      'workloadType': ?workloadType,
    };
  }

  factory StorageProperties.fromMap(Map<String, dynamic> map) {
    return StorageProperties(
      generation: (() { final guardedValue = map['generation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hardwareType: (() { final guardedValue = map['hardwareType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      offeringType: (() { final guardedValue = map['offeringType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageBillingProperties: (() { final guardedValue = map['storageBillingProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StorageBillingProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      storageType: (() { final guardedValue = map['storageType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workloadType: (() { final guardedValue = map['workloadType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

