// ignore_for_file: unused_element, unnecessary_cast

import 'google_privacy_dlp_v2_info_type.dart';

/// Max findings configuration per infoType, per content item or long running DlpJob.
class GooglePrivacyDlpV2InfoTypeLimit {
  /// Type of information the findings limit applies to. Only one limit per info_type should be provided. If InfoTypeLimit does not have an info_type, the DLP API applies the limit against all info_types that are found but not specified in another InfoTypeLimit.
  final GooglePrivacyDlpV2InfoType? infoType;
  /// Max findings limit for the given infoType.
  final int? maxFindings;

  /// Creates a new [GooglePrivacyDlpV2InfoTypeLimit].
  /// [infoType] Type of information the findings limit applies to. Only one limit per info_type should be provided. If InfoTypeLimit does not have an info_type, the DLP API applies the limit against all info_types that are found but not specified in another InfoTypeLimit.
  /// [maxFindings] Max findings limit for the given infoType.
  GooglePrivacyDlpV2InfoTypeLimit({
    this.infoType,
    this.maxFindings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'infoType': ?infoType == null ? null : infoType!.toMap(),
      'maxFindings': ?maxFindings,
    };
  }

  factory GooglePrivacyDlpV2InfoTypeLimit.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2InfoTypeLimit(
      infoType: map['infoType'] == null ? null : GooglePrivacyDlpV2InfoType.fromMap((map['infoType'] as Map).cast<String, dynamic>()),
      maxFindings: map['maxFindings'] == null ? null : map['maxFindings'] as int,
    );
  }
}

