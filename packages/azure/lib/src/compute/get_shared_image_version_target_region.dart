// ignore_for_file: unused_element, unnecessary_cast


class GetSharedImageVersionTargetRegion {
  /// The name of the Image Version.
  ///
  /// > **Note:** You may specify `latest` to obtain the latest version or `recent` to obtain the most recently updated version.
  ///
  /// > **Note:** In 3.0, `latest` may return an image version with `exclude_from_latest` set to `true`. Starting from 4.0 onwards `latest` will not return image versions with `exlude_from_latest` set to `true`.
  final String name;
  /// The number of replicas of the Image Version to be created per region.
  final int regionalReplicaCount;
  /// The storage account type for the image version.
  final String storageAccountType;

  /// Creates a new [GetSharedImageVersionTargetRegion].
  /// [name] The name of the Image Version.
  /// [regionalReplicaCount] The number of replicas of the Image Version to be created per region.
  /// [storageAccountType] The storage account type for the image version.
  GetSharedImageVersionTargetRegion({
    required this.name,
    required this.regionalReplicaCount,
    required this.storageAccountType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'regionalReplicaCount': regionalReplicaCount,
      'storageAccountType': storageAccountType,
    };
  }

  factory GetSharedImageVersionTargetRegion.fromMap(Map<String, dynamic> map) {
    return GetSharedImageVersionTargetRegion(
      name: map['name'] as String,
      regionalReplicaCount: map['regionalReplicaCount'] as int,
      storageAccountType: map['storageAccountType'] as String,
    );
  }
}

