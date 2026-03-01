// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_quasi_id.dart';
import 'google_privacy_dlp_v2_statistical_table.dart';

/// δ-presence metric, used to estimate how likely it is for an attacker to figure out that one given individual appears in a de-identified dataset. Similarly to the k-map metric, we cannot compute δ-presence exactly without knowing the attack dataset, so we use a statistical model instead.
class GooglePrivacyDlpV2DeltaPresenceEstimationConfig {
  /// Several auxiliary tables can be used in the analysis. Each custom_tag used to tag a quasi-identifiers field must appear in exactly one field of one auxiliary table.
  final List<GooglePrivacyDlpV2StatisticalTable>? auxiliaryTables;

  /// Fields considered to be quasi-identifiers. No two fields can have the same tag.
  final List<GooglePrivacyDlpV2QuasiId> quasiIds;

  /// ISO 3166-1 alpha-2 region code to use in the statistical modeling. Set if no column is tagged with a region-specific InfoType (like US_ZIP_5) or a region code.
  final String? regionCode;

  /// Creates a new [GooglePrivacyDlpV2DeltaPresenceEstimationConfig].
  /// [auxiliaryTables] Several auxiliary tables can be used in the analysis. Each custom_tag used to tag a quasi-identifiers field must appear in exactly one field of one auxiliary table.
  /// [quasiIds] Fields considered to be quasi-identifiers. No two fields can have the same tag.
  /// [regionCode] ISO 3166-1 alpha-2 region code to use in the statistical modeling. Set if no column is tagged with a region-specific InfoType (like US_ZIP_5) or a region code.
  GooglePrivacyDlpV2DeltaPresenceEstimationConfig({
    this.auxiliaryTables,
    required this.quasiIds,
    this.regionCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auxiliaryTables': ?auxiliaryTables == null
          ? null
          : pulumi.Input.encodeList<
              GooglePrivacyDlpV2StatisticalTable,
              Map<String, dynamic>
            >(auxiliaryTables!, (value) => value.toMap()),
      'quasiIds':
          pulumi.Input.encodeList<
            GooglePrivacyDlpV2QuasiId,
            Map<String, dynamic>
          >(quasiIds, (value) => value.toMap()),
      'regionCode': ?regionCode,
    };
  }

  factory GooglePrivacyDlpV2DeltaPresenceEstimationConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GooglePrivacyDlpV2DeltaPresenceEstimationConfig(
      auxiliaryTables: map['auxiliaryTables'] == null
          ? null
          : pulumi.Input.decodeList<GooglePrivacyDlpV2StatisticalTable>(
              map['auxiliaryTables'],
              (value) => GooglePrivacyDlpV2StatisticalTable.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      quasiIds: pulumi.Input.decodeList<GooglePrivacyDlpV2QuasiId>(
        map['quasiIds'],
        (value) => GooglePrivacyDlpV2QuasiId.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      regionCode: map['regionCode'] == null
          ? null
          : map['regionCode'] as String,
    );
  }
}
