// ignore_for_file: unused_element, unnecessary_cast

import 'google_privacy_dlp_v2_deidentify_template_response.dart';

/// De-identification options.
class GooglePrivacyDlpV2RequestedDeidentifyOptionsResponse {
  /// Snapshot of the state of the `DeidentifyTemplate` from the Deidentify action at the time this job was run.
  final GooglePrivacyDlpV2DeidentifyTemplateResponse snapshotDeidentifyTemplate;

  /// Snapshot of the state of the image transformation `DeidentifyTemplate` from the `Deidentify` action at the time this job was run.
  final GooglePrivacyDlpV2DeidentifyTemplateResponse
      snapshotImageRedactTemplate;

  /// Snapshot of the state of the structured `DeidentifyTemplate` from the `Deidentify` action at the time this job was run.
  final GooglePrivacyDlpV2DeidentifyTemplateResponse
      snapshotStructuredDeidentifyTemplate;

  GooglePrivacyDlpV2RequestedDeidentifyOptionsResponse({
    required this.snapshotDeidentifyTemplate,
    required this.snapshotImageRedactTemplate,
    required this.snapshotStructuredDeidentifyTemplate,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['snapshotDeidentifyTemplate'] = snapshotDeidentifyTemplate.toMap();
    map['snapshotImageRedactTemplate'] = snapshotImageRedactTemplate.toMap();
    map['snapshotStructuredDeidentifyTemplate'] =
        snapshotStructuredDeidentifyTemplate.toMap();
    return map;
  }

  factory GooglePrivacyDlpV2RequestedDeidentifyOptionsResponse.fromMap(
      Map<String, dynamic> map) {
    return GooglePrivacyDlpV2RequestedDeidentifyOptionsResponse(
      snapshotDeidentifyTemplate:
          GooglePrivacyDlpV2DeidentifyTemplateResponse.fromMap(
              (map['snapshotDeidentifyTemplate'] as Map)
                  .cast<String, dynamic>()),
      snapshotImageRedactTemplate:
          GooglePrivacyDlpV2DeidentifyTemplateResponse.fromMap(
              (map['snapshotImageRedactTemplate'] as Map)
                  .cast<String, dynamic>()),
      snapshotStructuredDeidentifyTemplate:
          GooglePrivacyDlpV2DeidentifyTemplateResponse.fromMap(
              (map['snapshotStructuredDeidentifyTemplate'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
