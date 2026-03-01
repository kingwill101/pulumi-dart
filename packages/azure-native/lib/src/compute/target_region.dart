// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'additional_replica_set.dart';
import 'encryption_images.dart';

/// Describes the target region information.
class TargetRegion {
  /// List of storage sku with replica count to create direct drive replicas.
  final List<AdditionalReplicaSet>? additionalReplicaSets;
  /// Optional. Allows users to provide customer managed keys for encrypting the OS and data disks in the gallery artifact.
  final EncryptionImages? encryption;
  /// Contains the flag setting to hide an image when users specify version='latest'
  final bool? excludeFromLatest;
  /// The name of the region.
  final String name;
  /// The number of replicas of the Image Version to be created per region. This property is updatable.
  final int? regionalReplicaCount;
  /// Specifies the storage account type to be used to store the image. This property is not updatable.
  final String? storageAccountType;

  /// Creates a new [TargetRegion].
  /// [additionalReplicaSets] List of storage sku with replica count to create direct drive replicas.
  /// [encryption] Optional. Allows users to provide customer managed keys for encrypting the OS and data disks in the gallery artifact.
  /// [excludeFromLatest] Contains the flag setting to hide an image when users specify version='latest'
  /// [name] The name of the region.
  /// [regionalReplicaCount] The number of replicas of the Image Version to be created per region. This property is updatable.
  /// [storageAccountType] Specifies the storage account type to be used to store the image. This property is not updatable.
  TargetRegion({
    this.additionalReplicaSets,
    this.encryption,
    this.excludeFromLatest,
    required this.name,
    this.regionalReplicaCount,
    this.storageAccountType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalReplicaSets': ?additionalReplicaSets == null ? null : pulumi.Input.encodeList<AdditionalReplicaSet, Map<String, dynamic>>(additionalReplicaSets!, (value) => value.toMap()),
      'encryption': ?encryption == null ? null : encryption!.toMap(),
      'excludeFromLatest': ?excludeFromLatest,
      'name': name,
      'regionalReplicaCount': ?regionalReplicaCount,
      'storageAccountType': ?storageAccountType,
    };
  }

  factory TargetRegion.fromMap(Map<String, dynamic> map) {
    return TargetRegion(
      additionalReplicaSets: map['additionalReplicaSets'] == null ? null : pulumi.Input.decodeList<AdditionalReplicaSet>(map['additionalReplicaSets'], (value) => AdditionalReplicaSet.fromMap((value as Map).cast<String, dynamic>())),
      encryption: map['encryption'] == null ? null : EncryptionImages.fromMap((map['encryption'] as Map).cast<String, dynamic>()),
      excludeFromLatest: map['excludeFromLatest'] == null ? null : map['excludeFromLatest'] as bool,
      name: map['name'] as String,
      regionalReplicaCount: map['regionalReplicaCount'] == null ? null : map['regionalReplicaCount'] as int,
      storageAccountType: map['storageAccountType'] == null ? null : map['storageAccountType'] as String,
    );
  }
}

