// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_assuredworkloads_v1beta1_workload_kmssettings_response.dart';

/// Settings specific to resources needed for IL4.
class GoogleCloudAssuredworkloadsV1beta1WorkloadIL4SettingsResponse {
  /// Input only. Immutable. Settings used to create a CMEK crypto key.
  final GoogleCloudAssuredworkloadsV1beta1WorkloadKMSSettingsResponse
      kmsSettings;

  /// Creates a new [GoogleCloudAssuredworkloadsV1beta1WorkloadIL4SettingsResponse].
  /// [kmsSettings] Input only. Immutable. Settings used to create a CMEK crypto key.
  GoogleCloudAssuredworkloadsV1beta1WorkloadIL4SettingsResponse({
    required this.kmsSettings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kmsSettings'] = kmsSettings.toMap();
    return map;
  }

  factory GoogleCloudAssuredworkloadsV1beta1WorkloadIL4SettingsResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAssuredworkloadsV1beta1WorkloadIL4SettingsResponse(
      kmsSettings:
          GoogleCloudAssuredworkloadsV1beta1WorkloadKMSSettingsResponse.fromMap(
              (map['kmsSettings'] as Map).cast<String, dynamic>()),
    );
  }
}
