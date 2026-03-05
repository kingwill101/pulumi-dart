// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workteam_worker_access_configuration_s3_presign.dart';

class WorkteamWorkerAccessConfiguration {
  /// Defines any Amazon S3 resource constraints. see S3 Presign details below.
  final pulumi.Input<WorkteamWorkerAccessConfigurationS3Presign>? s3Presign;

  /// Creates a new [WorkteamWorkerAccessConfiguration].
  /// [s3Presign] Defines any Amazon S3 resource constraints. see S3 Presign details below.
  WorkteamWorkerAccessConfiguration({
    this.s3Presign,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      's3Presign': ?pulumi.Input.mapOptionalInputValue<WorkteamWorkerAccessConfigurationS3Presign, Map<String, dynamic>>(s3Presign, (value) => value.toMap()),
    };
  }

  factory WorkteamWorkerAccessConfiguration.fromMap(Map<String, dynamic> map) {
    return WorkteamWorkerAccessConfiguration(
      s3Presign: (() { final guardedValue = map['s3Presign']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkteamWorkerAccessConfigurationS3Presign.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

