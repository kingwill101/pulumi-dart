// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'volume_response2.dart';

/// Machine resources for a version.
class ResourcesResponse2 {
  /// Number of CPU cores needed.
  final double cpu;

  /// Disk size (GB) needed.
  final double diskGb;

  /// The name of the encryption key that is stored in Google Cloud KMS. Only should be used by Cloud Composer to encrypt the vm disk
  final String kmsKeyReference;

  /// Memory (GB) needed.
  final double memoryGb;

  /// User specified volumes.
  final List<VolumeResponse2> volumes;

  ResourcesResponse2({
    required this.cpu,
    required this.diskGb,
    required this.kmsKeyReference,
    required this.memoryGb,
    required this.volumes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cpu'] = cpu;
    map['diskGb'] = diskGb;
    map['kmsKeyReference'] = kmsKeyReference;
    map['memoryGb'] = memoryGb;
    map['volumes'] = Input.encodeList<VolumeResponse2, Map<String, dynamic>>(
        volumes, (value) => value.toMap());
    return map;
  }

  factory ResourcesResponse2.fromMap(Map<String, dynamic> map) {
    return ResourcesResponse2(
      cpu: map['cpu'] as double,
      diskGb: map['diskGb'] as double,
      kmsKeyReference: map['kmsKeyReference'] as String,
      memoryGb: map['memoryGb'] as double,
      volumes: Input.decodeList<VolumeResponse2>(
          map['volumes'],
          (value) =>
              VolumeResponse2.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
