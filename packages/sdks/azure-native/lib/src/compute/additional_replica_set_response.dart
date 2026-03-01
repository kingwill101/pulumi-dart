// ignore_for_file: unused_element, unnecessary_cast


/// Describes the additional replica set information.
class AdditionalReplicaSetResponse {
  /// The number of direct drive replicas of the Image Version to be created.This Property is updatable
  final int? regionalReplicaCount;
  /// Specifies the storage account type to be used to create the direct drive replicas
  final String? storageAccountType;

  /// Creates a new [AdditionalReplicaSetResponse].
  /// [regionalReplicaCount] The number of direct drive replicas of the Image Version to be created.This Property is updatable
  /// [storageAccountType] Specifies the storage account type to be used to create the direct drive replicas
  AdditionalReplicaSetResponse({
    this.regionalReplicaCount,
    this.storageAccountType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'regionalReplicaCount': ?regionalReplicaCount,
      'storageAccountType': ?storageAccountType,
    };
  }

  factory AdditionalReplicaSetResponse.fromMap(Map<String, dynamic> map) {
    return AdditionalReplicaSetResponse(
      regionalReplicaCount: map['regionalReplicaCount'] == null ? null : map['regionalReplicaCount'] as int,
      storageAccountType: map['storageAccountType'] == null ? null : map['storageAccountType'] as String,
    );
  }
}

