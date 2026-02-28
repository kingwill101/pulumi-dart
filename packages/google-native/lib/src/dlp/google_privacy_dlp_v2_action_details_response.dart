// ignore_for_file: unused_element, unnecessary_cast

import 'google_privacy_dlp_v2_deidentify_data_source_details_response.dart';

/// The results of an Action.
class GooglePrivacyDlpV2ActionDetailsResponse {
  /// Outcome of a de-identification action.
  final GooglePrivacyDlpV2DeidentifyDataSourceDetailsResponse deidentifyDetails;

  /// Creates a new [GooglePrivacyDlpV2ActionDetailsResponse].
  /// [deidentifyDetails] Outcome of a de-identification action.
  GooglePrivacyDlpV2ActionDetailsResponse({
    required this.deidentifyDetails,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['deidentifyDetails'] = deidentifyDetails.toMap();
    return map;
  }

  factory GooglePrivacyDlpV2ActionDetailsResponse.fromMap(
      Map<String, dynamic> map) {
    return GooglePrivacyDlpV2ActionDetailsResponse(
      deidentifyDetails:
          GooglePrivacyDlpV2DeidentifyDataSourceDetailsResponse.fromMap(
              (map['deidentifyDetails'] as Map).cast<String, dynamic>()),
    );
  }
}
