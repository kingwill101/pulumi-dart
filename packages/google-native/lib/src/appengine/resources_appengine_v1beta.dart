// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'volume_appengine_v1beta.dart';

/// Machine resources for a version.
class ResourcesAppengineV1beta {
  /// Number of CPU cores needed.
  final double? cpu;

  /// Disk size (GB) needed.
  final double? diskGb;

  /// The name of the encryption key that is stored in Google Cloud KMS. Only should be used by Cloud Composer to encrypt the vm disk
  final String? kmsKeyReference;

  /// Memory (GB) needed.
  final double? memoryGb;

  /// User specified volumes.
  final List<VolumeAppengineV1beta>? volumes;

  /// Creates a new [ResourcesAppengineV1beta].
  /// [cpu] Number of CPU cores needed.
  /// [diskGb] Disk size (GB) needed.
  /// [kmsKeyReference] The name of the encryption key that is stored in Google Cloud KMS. Only should be used by Cloud Composer to encrypt the vm disk
  /// [memoryGb] Memory (GB) needed.
  /// [volumes] User specified volumes.
  ResourcesAppengineV1beta({
    this.cpu,
    this.diskGb,
    this.kmsKeyReference,
    this.memoryGb,
    this.volumes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpu': ?cpu,
      'diskGb': ?diskGb,
      'kmsKeyReference': ?kmsKeyReference,
      'memoryGb': ?memoryGb,
      'volumes': ?volumes == null
          ? null
          : pulumi.Input.encodeList<
              VolumeAppengineV1beta,
              Map<String, dynamic>
            >(volumes!, (value) => value.toMap()),
    };
  }

  factory ResourcesAppengineV1beta.fromMap(Map<String, dynamic> map) {
    return ResourcesAppengineV1beta(
      cpu: map['cpu'] == null ? null : map['cpu'] as double,
      diskGb: map['diskGb'] == null ? null : map['diskGb'] as double,
      kmsKeyReference: map['kmsKeyReference'] == null
          ? null
          : map['kmsKeyReference'] as String,
      memoryGb: map['memoryGb'] == null ? null : map['memoryGb'] as double,
      volumes: map['volumes'] == null
          ? null
          : pulumi.Input.decodeList<VolumeAppengineV1beta>(
              map['volumes'],
              (value) => VolumeAppengineV1beta.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
    );
  }
}
