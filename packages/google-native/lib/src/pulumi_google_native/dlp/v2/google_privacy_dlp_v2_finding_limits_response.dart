// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_privacy_dlp_v2_info_type_limit_response.dart';

/// Configuration to control the number of findings returned for inspection. This is not used for de-identification or data profiling. When redacting sensitive data from images, finding limits don't apply. They can cause unexpected or inconsistent results, where only some data is redacted. Don't include finding limits in RedactImage requests. Otherwise, Cloud DLP returns an error.
class GooglePrivacyDlpV2FindingLimitsResponse {
  /// Configuration of findings limit given for specified infoTypes.
  final List<GooglePrivacyDlpV2InfoTypeLimitResponse> maxFindingsPerInfoType;

  /// Max number of findings that are returned for each item scanned. When set within an InspectContentRequest, this field is ignored. This value isn't a hard limit. If the number of findings for an item reaches this limit, the inspection of that item ends gradually, not abruptly. Therefore, the actual number of findings that Cloud DLP returns for the item can be multiple times higher than this value.
  final int maxFindingsPerItem;

  /// Max number of findings that are returned per request or job. If you set this field in an InspectContentRequest, the resulting maximum value is the value that you set or 3,000, whichever is lower. This value isn't a hard limit. If an inspection reaches this limit, the inspection ends gradually, not abruptly. Therefore, the actual number of findings that Cloud DLP returns can be multiple times higher than this value.
  final int maxFindingsPerRequest;

  GooglePrivacyDlpV2FindingLimitsResponse({
    required this.maxFindingsPerInfoType,
    required this.maxFindingsPerItem,
    required this.maxFindingsPerRequest,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['maxFindingsPerInfoType'] = Input.encodeList<
        GooglePrivacyDlpV2InfoTypeLimitResponse,
        Map<String, dynamic>>(maxFindingsPerInfoType, (value) => value.toMap());
    map['maxFindingsPerItem'] = maxFindingsPerItem;
    map['maxFindingsPerRequest'] = maxFindingsPerRequest;
    return map;
  }

  factory GooglePrivacyDlpV2FindingLimitsResponse.fromMap(
      Map<String, dynamic> map) {
    return GooglePrivacyDlpV2FindingLimitsResponse(
      maxFindingsPerInfoType:
          Input.decodeList<GooglePrivacyDlpV2InfoTypeLimitResponse>(
              map['maxFindingsPerInfoType'],
              (value) => GooglePrivacyDlpV2InfoTypeLimitResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
      maxFindingsPerItem: map['maxFindingsPerItem'] as int,
      maxFindingsPerRequest: map['maxFindingsPerRequest'] as int,
    );
  }
}
