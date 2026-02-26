// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_privacy_dlp_v2_auxiliary_table.dart';
import 'google_privacy_dlp_v2_tagged_field.dart';

/// Reidentifiability metric. This corresponds to a risk model similar to what is called "journalist risk" in the literature, except the attack dataset is statistically modeled instead of being perfectly known. This can be done using publicly available data (like the US Census), or using a custom statistical model (indicated as one or several BigQuery tables), or by extrapolating from the distribution of values in the input dataset.
class GooglePrivacyDlpV2KMapEstimationConfig {
  /// Several auxiliary tables can be used in the analysis. Each custom_tag used to tag a quasi-identifiers column must appear in exactly one column of one auxiliary table.
  final List<GooglePrivacyDlpV2AuxiliaryTable>? auxiliaryTables;

  /// Fields considered to be quasi-identifiers. No two columns can have the same tag.
  final List<GooglePrivacyDlpV2TaggedField> quasiIds;

  /// ISO 3166-1 alpha-2 region code to use in the statistical modeling. Set if no column is tagged with a region-specific InfoType (like US_ZIP_5) or a region code.
  final String? regionCode;

  GooglePrivacyDlpV2KMapEstimationConfig({
    this.auxiliaryTables,
    required this.quasiIds,
    this.regionCode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final auxiliaryTablesValue = auxiliaryTables;
    if (auxiliaryTablesValue != null) {
      map['auxiliaryTables'] = Input.encodeList<
          GooglePrivacyDlpV2AuxiliaryTable,
          Map<String, dynamic>>(auxiliaryTablesValue, (value) => value.toMap());
    }
    map['quasiIds'] =
        Input.encodeList<GooglePrivacyDlpV2TaggedField, Map<String, dynamic>>(
            quasiIds, (value) => value.toMap());
    final regionCodeValue = regionCode;
    if (regionCodeValue != null) {
      map['regionCode'] = regionCodeValue;
    }
    return map;
  }

  factory GooglePrivacyDlpV2KMapEstimationConfig.fromMap(
      Map<String, dynamic> map) {
    return GooglePrivacyDlpV2KMapEstimationConfig(
      auxiliaryTables: map['auxiliaryTables'] == null
          ? null
          : Input.decodeList<GooglePrivacyDlpV2AuxiliaryTable>(
              map['auxiliaryTables'],
              (value) => GooglePrivacyDlpV2AuxiliaryTable.fromMap(
                  (value as Map).cast<String, dynamic>())),
      quasiIds: Input.decodeList<GooglePrivacyDlpV2TaggedField>(
          map['quasiIds'],
          (value) => GooglePrivacyDlpV2TaggedField.fromMap(
              (value as Map).cast<String, dynamic>())),
      regionCode:
          map['regionCode'] == null ? null : map['regionCode'] as String,
    );
  }
}
