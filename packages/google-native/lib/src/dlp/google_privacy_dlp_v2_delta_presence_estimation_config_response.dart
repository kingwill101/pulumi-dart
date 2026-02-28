// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_quasi_id_response.dart';
import 'google_privacy_dlp_v2_statistical_table_response.dart';

/// δ-presence metric, used to estimate how likely it is for an attacker to figure out that one given individual appears in a de-identified dataset. Similarly to the k-map metric, we cannot compute δ-presence exactly without knowing the attack dataset, so we use a statistical model instead.
class GooglePrivacyDlpV2DeltaPresenceEstimationConfigResponse {
  /// Several auxiliary tables can be used in the analysis. Each custom_tag used to tag a quasi-identifiers field must appear in exactly one field of one auxiliary table.
  final List<GooglePrivacyDlpV2StatisticalTableResponse> auxiliaryTables;
  /// Fields considered to be quasi-identifiers. No two fields can have the same tag.
  final List<GooglePrivacyDlpV2QuasiIdResponse> quasiIds;
  /// ISO 3166-1 alpha-2 region code to use in the statistical modeling. Set if no column is tagged with a region-specific InfoType (like US_ZIP_5) or a region code.
  final String regionCode;

  /// Creates a new [GooglePrivacyDlpV2DeltaPresenceEstimationConfigResponse].
  /// [auxiliaryTables] Several auxiliary tables can be used in the analysis. Each custom_tag used to tag a quasi-identifiers field must appear in exactly one field of one auxiliary table.
  /// [quasiIds] Fields considered to be quasi-identifiers. No two fields can have the same tag.
  /// [regionCode] ISO 3166-1 alpha-2 region code to use in the statistical modeling. Set if no column is tagged with a region-specific InfoType (like US_ZIP_5) or a region code.
  GooglePrivacyDlpV2DeltaPresenceEstimationConfigResponse({
    required this.auxiliaryTables,
    required this.quasiIds,
    required this.regionCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auxiliaryTables': pulumi.Input.encodeList<GooglePrivacyDlpV2StatisticalTableResponse, Map<String, dynamic>>(auxiliaryTables, (value) => value.toMap()),
      'quasiIds': pulumi.Input.encodeList<GooglePrivacyDlpV2QuasiIdResponse, Map<String, dynamic>>(quasiIds, (value) => value.toMap()),
      'regionCode': regionCode,
    };
  }

  factory GooglePrivacyDlpV2DeltaPresenceEstimationConfigResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2DeltaPresenceEstimationConfigResponse(
      auxiliaryTables: pulumi.Input.decodeList<GooglePrivacyDlpV2StatisticalTableResponse>(map['auxiliaryTables'], (value) => GooglePrivacyDlpV2StatisticalTableResponse.fromMap((value as Map).cast<String, dynamic>())),
      quasiIds: pulumi.Input.decodeList<GooglePrivacyDlpV2QuasiIdResponse>(map['quasiIds'], (value) => GooglePrivacyDlpV2QuasiIdResponse.fromMap((value as Map).cast<String, dynamic>())),
      regionCode: map['regionCode'] as String,
    );
  }
}

