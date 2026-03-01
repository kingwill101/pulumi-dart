// ignore_for_file: unused_element, unnecessary_cast


/// Describes the additional replica set information.
class AdditionalReplicaSet {
  /// The number of direct drive replicas of the Image Version to be created.This Property is updatable
  final int? regionalReplicaCount;
  /// Specifies the storage account type to be used to create the direct drive replicas
  final String? storageAccountType;

  /// Creates a new [AdditionalReplicaSet].
  /// [regionalReplicaCount] The number of direct drive replicas of the Image Version to be created.This Property is updatable
  /// [storageAccountType] Specifies the storage account type to be used to create the direct drive replicas
  AdditionalReplicaSet({
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
      regionalReplicaCount: map['regionalReplicaCount'] == null ? null : map['regionalReplicaCount'] as int,
      storageAccountType: map['storageAccountType'] == null ? null : map['storageAccountType'] as String,
    );
  }
}

