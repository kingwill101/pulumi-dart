// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'additional_replica_set_response.dart';
import 'encryption_images_response.dart';

/// Describes the target region information.
class TargetRegionResponse {
  /// List of storage sku with replica count to create direct drive replicas.
  final pulumi.Input<List<AdditionalReplicaSetResponse>>? additionalReplicaSets;

  /// Optional. Allows users to provide customer managed keys for encrypting the OS and data disks in the gallery artifact.
  final pulumi.Input<EncryptionImagesResponse>? encryption;

  /// Contains the flag setting to hide an image when users specify version='latest'
  final pulumi.Input<bool>? excludeFromLatest;

  /// The name of the region.
  final pulumi.Input<String> name;

  /// The number of replicas of the Image Version to be created per region. This property is updatable.
  final pulumi.Input<int>? regionalReplicaCount;

  /// Specifies the storage account type to be used to store the image. This property is not updatable.
  final pulumi.Input<String>? storageAccountType;

  /// Creates a new [TargetRegionResponse].
  /// [additionalReplicaSets] List of storage sku with replica count to create direct drive replicas.
  /// [encryption] Optional. Allows users to provide customer managed keys for encrypting the OS and data disks in the gallery artifact.
  /// [excludeFromLatest] Contains the flag setting to hide an image when users specify version='latest'
  /// [name] The name of the region.
  /// [regionalReplicaCount] The number of replicas of the Image Version to be created per region. This property is updatable.
  /// [storageAccountType] Specifies the storage account type to be used to store the image. This property is not updatable.
  TargetRegionResponse({
    this.additionalReplicaSets,
    this.encryption,
    this.excludeFromLatest,
    required this.name,
    this.regionalReplicaCount,
    this.storageAccountType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalReplicaSets':
          ?pulumi.Input.mapOptionalInputValue<
            List<AdditionalReplicaSetResponse>,
            List<Map<String, dynamic>>
          >(
            additionalReplicaSets,
            (value) =>
                pulumi.Input.encodeList<
                  AdditionalReplicaSetResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'encryption':
          ?pulumi.Input.mapOptionalInputValue<
            EncryptionImagesResponse,
            Map<String, dynamic>
          >(encryption, (value) => value.toMap()),
      'excludeFromLatest': ?excludeFromLatest,
      'name': name,
      'regionalReplicaCount': ?regionalReplicaCount,
      'storageAccountType': ?storageAccountType,
    };
  }

  factory TargetRegionResponse.fromMap(Map<String, dynamic> map) {
    return TargetRegionResponse(
      additionalReplicaSets: (() {
        final guardedValue = map['additionalReplicaSets'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<AdditionalReplicaSetResponse>(
            guardedValue,
            (value) => AdditionalReplicaSetResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      encryption: (() {
        final guardedValue = map['encryption'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          EncryptionImagesResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      excludeFromLatest: (() {
        final guardedValue = map['excludeFromLatest'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      regionalReplicaCount: (() {
        final guardedValue = map['regionalReplicaCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      storageAccountType: (() {
        final guardedValue = map['storageAccountType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
