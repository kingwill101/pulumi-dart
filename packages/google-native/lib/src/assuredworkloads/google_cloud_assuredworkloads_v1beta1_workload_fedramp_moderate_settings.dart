// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_assuredworkloads_v1beta1_workload_kmssettings.dart';

/// Settings specific to resources needed for FedRAMP Moderate.
class GoogleCloudAssuredworkloadsV1beta1WorkloadFedrampModerateSettings {
  /// Input only. Immutable. Settings used to create a CMEK crypto key.
  final GoogleCloudAssuredworkloadsV1beta1WorkloadKMSSettings? kmsSettings;

  /// Creates a new [GoogleCloudAssuredworkloadsV1beta1WorkloadFedrampModerateSettings].
  /// [kmsSettings] Input only. Immutable. Settings used to create a CMEK crypto key.
  GoogleCloudAssuredworkloadsV1beta1WorkloadFedrampModerateSettings({
    this.kmsSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsSettings': ?kmsSettings == null ? null : kmsSettings!.toMap(),
    };
  }

  factory GoogleCloudAssuredworkloadsV1beta1WorkloadFedrampModerateSettings.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudAssuredworkloadsV1beta1WorkloadFedrampModerateSettings(
      kmsSettings: map['kmsSettings'] == null
          ? null
          : GoogleCloudAssuredworkloadsV1beta1WorkloadKMSSettings.fromMap(
              (map['kmsSettings'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
