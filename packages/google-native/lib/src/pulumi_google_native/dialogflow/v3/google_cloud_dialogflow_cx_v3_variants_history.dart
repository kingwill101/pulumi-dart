// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dialogflow_cx_v3_version_variants.dart';

/// The history of variants update.
class GoogleCloudDialogflowCxV3VariantsHistory {
  /// Update time of the variants.
  final String? updateTime;

  /// The flow versions as the variants.
  final GoogleCloudDialogflowCxV3VersionVariants? versionVariants;

  GoogleCloudDialogflowCxV3VariantsHistory({
    this.updateTime,
    this.versionVariants,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final updateTimeValue = updateTime;
    if (updateTimeValue != null) {
      map['updateTime'] = updateTimeValue;
    }
    final versionVariantsValue = versionVariants;
    if (versionVariantsValue != null) {
      map['versionVariants'] = versionVariantsValue.toMap();
    }
    return map;
  }

  factory GoogleCloudDialogflowCxV3VariantsHistory.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3VariantsHistory(
      updateTime:
          map['updateTime'] == null ? null : map['updateTime'] as String,
      versionVariants: map['versionVariants'] == null
          ? null
          : GoogleCloudDialogflowCxV3VersionVariants.fromMap(
              (map['versionVariants'] as Map).cast<String, dynamic>()),
    );
  }
}
