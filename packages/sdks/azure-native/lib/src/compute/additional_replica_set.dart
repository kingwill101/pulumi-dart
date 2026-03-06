// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes the additional replica set information.
class AdditionalReplicaSet {
  /// The number of direct drive replicas of the Image Version to be created.This Property is updatable
  final pulumi.Input<int>? regionalReplicaCount;
  /// Specifies the storage account type to be used to create the direct drive replicas
  final pulumi.Input<String>? storageAccountType;

  /// Creates a new [AdditionalReplicaSet].
  /// [regionalReplicaCount] The number of direct drive replicas of the Image Version to be created.This Property is updatable
  /// [storageAccountType] Specifies the storage account type to be used to create the direct drive replicas
  const AdditionalReplicaSet({
    this.regionalReplicaCount,
    this.storageAccountType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'regionalReplicaCount': ?regionalReplicaCount,
      'storageAccountType': ?storageAccountType,
    };
  }

  factory AdditionalReplicaSet.fromMap(Map<String, dynamic> map) {
    return AdditionalReplicaSet(
      regionalReplicaCount: (() { final guardedValue = map['regionalReplicaCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      storageAccountType: (() { final guardedValue = map['storageAccountType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

