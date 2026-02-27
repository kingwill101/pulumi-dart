// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'volume2.dart';

/// Machine resources for a version.
class Resources2 {
  /// Number of CPU cores needed.
  final double? cpu;

  /// Disk size (GB) needed.
  final double? diskGb;

  /// The name of the encryption key that is stored in Google Cloud KMS. Only should be used by Cloud Composer to encrypt the vm disk
  final String? kmsKeyReference;

  /// Memory (GB) needed.
  final double? memoryGb;

  /// User specified volumes.
  final List<Volume2>? volumes;

  Resources2({
    this.cpu,
    this.diskGb,
    this.kmsKeyReference,
    this.memoryGb,
    this.volumes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cpuValue = cpu;
    if (cpuValue != null) {
      map['cpu'] = cpuValue;
    }
    final diskGbValue = diskGb;
    if (diskGbValue != null) {
      map['diskGb'] = diskGbValue;
    }
    final kmsKeyReferenceValue = kmsKeyReference;
    if (kmsKeyReferenceValue != null) {
      map['kmsKeyReference'] = kmsKeyReferenceValue;
    }
    final memoryGbValue = memoryGb;
    if (memoryGbValue != null) {
      map['memoryGb'] = memoryGbValue;
    }
    final volumesValue = volumes;
    if (volumesValue != null) {
      map['volumes'] = Input.encodeList<Volume2, Map<String, dynamic>>(
          volumesValue, (value) => value.toMap());
    }
    return map;
  }

  factory Resources2.fromMap(Map<String, dynamic> map) {
    return Resources2(
      cpu: map['cpu'] == null ? null : map['cpu'] as double,
      diskGb: map['diskGb'] == null ? null : map['diskGb'] as double,
      kmsKeyReference: map['kmsKeyReference'] == null
          ? null
          : map['kmsKeyReference'] as String,
      memoryGb: map['memoryGb'] == null ? null : map['memoryGb'] as double,
      volumes: map['volumes'] == null
          ? null
          : Input.decodeList<Volume2>(
              map['volumes'],
              (value) =>
                  Volume2.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
