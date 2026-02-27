// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_privacy_dlp_v2_field_id.dart';

/// l-diversity metric, used for analysis of reidentification risk.
class GooglePrivacyDlpV2LDiversityConfig {
  /// Set of quasi-identifiers indicating how equivalence classes are defined for the l-diversity computation. When multiple fields are specified, they are considered a single composite key.
  final List<GooglePrivacyDlpV2FieldId>? quasiIds;

  /// Sensitive field for computing the l-value.
  final GooglePrivacyDlpV2FieldId? sensitiveAttribute;

  GooglePrivacyDlpV2LDiversityConfig({
    this.quasiIds,
    this.sensitiveAttribute,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final quasiIdsValue = quasiIds;
    if (quasiIdsValue != null) {
      map['quasiIds'] =
          Input.encodeList<GooglePrivacyDlpV2FieldId, Map<String, dynamic>>(
              quasiIdsValue, (value) => value.toMap());
    }
    final sensitiveAttributeValue = sensitiveAttribute;
    if (sensitiveAttributeValue != null) {
      map['sensitiveAttribute'] = sensitiveAttributeValue.toMap();
    }
    return map;
  }

  factory GooglePrivacyDlpV2LDiversityConfig.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2LDiversityConfig(
      quasiIds: map['quasiIds'] == null
          ? null
          : Input.decodeList<GooglePrivacyDlpV2FieldId>(
              map['quasiIds'],
              (value) => GooglePrivacyDlpV2FieldId.fromMap(
                  (value as Map).cast<String, dynamic>())),
      sensitiveAttribute: map['sensitiveAttribute'] == null
          ? null
          : GooglePrivacyDlpV2FieldId.fromMap(
              (map['sensitiveAttribute'] as Map).cast<String, dynamic>()),
    );
  }
}
