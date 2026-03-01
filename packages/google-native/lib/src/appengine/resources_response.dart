// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'volume_response.dart';

/// Machine resources for a version.
class ResourcesResponse {
  /// Number of CPU cores needed.
  final double cpu;

  /// Disk size (GB) needed.
  final double diskGb;

  /// The name of the encryption key that is stored in Google Cloud KMS. Only should be used by Cloud Composer to encrypt the vm disk
  final String kmsKeyReference;

  /// Memory (GB) needed.
  final double memoryGb;

  /// User specified volumes.
  final List<VolumeResponse> volumes;

  /// Creates a new [ResourcesResponse].
  /// [cpu] Number of CPU cores needed.
  /// [diskGb] Disk size (GB) needed.
  /// [kmsKeyReference] The name of the encryption key that is stored in Google Cloud KMS. Only should be used by Cloud Composer to encrypt the vm disk
  /// [memoryGb] Memory (GB) needed.
  /// [volumes] User specified volumes.
  ResourcesResponse({
    required this.cpu,
    required this.diskGb,
    required this.kmsKeyReference,
    required this.memoryGb,
    required this.volumes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpu': cpu,
      'diskGb': diskGb,
      'kmsKeyReference': kmsKeyReference,
      'memoryGb': memoryGb,
      'volumes': pulumi.Input.encodeList<VolumeResponse, Map<String, dynamic>>(
        volumes,
        (value) => value.toMap(),
      ),
    };
  }

  factory ResourcesResponse.fromMap(Map<String, dynamic> map) {
    return ResourcesResponse(
      cpu: map['cpu'] as double,
      diskGb: map['diskGb'] as double,
      kmsKeyReference: map['kmsKeyReference'] as String,
      memoryGb: map['memoryGb'] as double,
      volumes: pulumi.Input.decodeList<VolumeResponse>(
        map['volumes'],
        (value) =>
            VolumeResponse.fromMap((value as Map).cast<String, dynamic>()),
      ),
    );
  }
}
