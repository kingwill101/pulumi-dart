// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_assuredworkloads_v1beta1_workload_kmssettings.dart';

/// Settings specific to resources needed for IL4.
class GoogleCloudAssuredworkloadsV1beta1WorkloadIL4Settings {
  /// Input only. Immutable. Settings used to create a CMEK crypto key.
  final GoogleCloudAssuredworkloadsV1beta1WorkloadKMSSettings? kmsSettings;

  /// Creates a new [GoogleCloudAssuredworkloadsV1beta1WorkloadIL4Settings].
  /// [kmsSettings] Input only. Immutable. Settings used to create a CMEK crypto key.
  GoogleCloudAssuredworkloadsV1beta1WorkloadIL4Settings({
    this.kmsSettings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final kmsSettingsValue = kmsSettings;
    if (kmsSettingsValue != null) {
      map['kmsSettings'] = kmsSettingsValue.toMap();
    }
    return map;
  }

  factory GoogleCloudAssuredworkloadsV1beta1WorkloadIL4Settings.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAssuredworkloadsV1beta1WorkloadIL4Settings(
      kmsSettings: map['kmsSettings'] == null
          ? null
          : GoogleCloudAssuredworkloadsV1beta1WorkloadKMSSettings.fromMap(
              (map['kmsSettings'] as Map).cast<String, dynamic>()),
    );
  }
}
