// ignore_for_file: unused_element, unnecessary_cast

import 'instance_periodic_export_config_start_time.dart';

class InstancePeriodicExportConfig {
  /// Cloud Storage bucket URI for periodic export.
  /// Format: gs://{bucket_name}
  final String gcsUri;
  /// Name of the CMEK key in KMS.
  /// Format:
  /// projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}
  final String kmsKey;
  /// Time in UTC to start the periodic export job.
  /// Structure is documented below.
  final InstancePeriodicExportConfigStartTime startTime;

  /// Creates a new [InstancePeriodicExportConfig].
  /// [gcsUri] Cloud Storage bucket URI for periodic export.
  /// [kmsKey] Name of the CMEK key in KMS.
  /// [startTime] Time in UTC to start the periodic export job.
  InstancePeriodicExportConfig({
    required this.gcsUri,
    required this.kmsKey,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gcsUri': gcsUri,
      'kmsKey': kmsKey,
      'startTime': startTime.toMap(),
    };
  }

  factory InstancePeriodicExportConfig.fromMap(Map<String, dynamic> map) {
    return InstancePeriodicExportConfig(
      gcsUri: map['gcsUri'] as String,
      kmsKey: map['kmsKey'] as String,
      startTime: InstancePeriodicExportConfigStartTime.fromMap((map['startTime'] as Map).cast<String, dynamic>()),
    );
  }
}

