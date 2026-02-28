// ignore_for_file: unused_element, unnecessary_cast

import 'workteam_worker_access_configuration_s3_presign.dart';

class WorkteamWorkerAccessConfiguration {
  /// Defines any Amazon S3 resource constraints. see S3 Presign details below.
  final WorkteamWorkerAccessConfigurationS3Presign? s3Presign;

  /// Creates a new [WorkteamWorkerAccessConfiguration].
  /// [s3Presign] Defines any Amazon S3 resource constraints. see S3 Presign details below.
  WorkteamWorkerAccessConfiguration({
    this.s3Presign,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      's3Presign': ?s3Presign == null ? null : s3Presign!.toMap(),
    };
  }

  factory WorkteamWorkerAccessConfiguration.fromMap(Map<String, dynamic> map) {
    return WorkteamWorkerAccessConfiguration(
      s3Presign: map['s3Presign'] == null ? null : WorkteamWorkerAccessConfigurationS3Presign.fromMap((map['s3Presign'] as Map).cast<String, dynamic>()),
    );
  }
}

