// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_privacy_dlp_v2_detection_rule_response.dart';
import 'google_privacy_dlp_v2_dictionary_response.dart';
import 'google_privacy_dlp_v2_info_type_response.dart';
import 'google_privacy_dlp_v2_regex_response.dart';
import 'google_privacy_dlp_v2_sensitivity_score_response.dart';
import 'google_privacy_dlp_v2_stored_type_response.dart';

/// Custom information type provided by the user. Used to find domain-specific sensitive information configurable to the data in question.
class GooglePrivacyDlpV2CustomInfoTypeResponse {
  /// Set of detection rules to apply to all findings of this CustomInfoType. Rules are applied in order that they are specified. Not supported for the `surrogate_type` CustomInfoType.
  final List<GooglePrivacyDlpV2DetectionRuleResponse> detectionRules;

  /// A list of phrases to detect as a CustomInfoType.
  final GooglePrivacyDlpV2DictionaryResponse dictionary;

  /// If set to EXCLUSION_TYPE_EXCLUDE this infoType will not cause a finding to be returned. It still can be used for rules matching.
  final String exclusionType;

  /// CustomInfoType can either be a new infoType, or an extension of built-in infoType, when the name matches one of existing infoTypes and that infoType is specified in `InspectContent.info_types` field. Specifying the latter adds findings to the one detected by the system. If built-in info type is not specified in `InspectContent.info_types` list then the name is treated as a custom info type.
  final GooglePrivacyDlpV2InfoTypeResponse infoType;

  /// Likelihood to return for this CustomInfoType. This base value can be altered by a detection rule if the finding meets the criteria specified by the rule. Defaults to `VERY_LIKELY` if not specified.
  final String likelihood;

  /// Regular expression based CustomInfoType.
  final GooglePrivacyDlpV2RegexResponse regex;

  /// Sensitivity for this CustomInfoType. If this CustomInfoType extends an existing InfoType, the sensitivity here will take precedence over that of the original InfoType. If unset for a CustomInfoType, it will default to HIGH. This only applies to data profiling.
  final GooglePrivacyDlpV2SensitivityScoreResponse sensitivityScore;

  /// Load an existing `StoredInfoType` resource for use in `InspectDataSource`. Not currently supported in `InspectContent`.
  final GooglePrivacyDlpV2StoredTypeResponse storedType;

  /// Message for detecting output from deidentification transformations that support reversing.
  final Map<String, dynamic> surrogateType;

  GooglePrivacyDlpV2CustomInfoTypeResponse({
    required this.detectionRules,
    required this.dictionary,
    required this.exclusionType,
    required this.infoType,
    required this.likelihood,
    required this.regex,
    required this.sensitivityScore,
    required this.storedType,
    required this.surrogateType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['detectionRules'] = Input.encodeList<
        GooglePrivacyDlpV2DetectionRuleResponse,
        Map<String, dynamic>>(detectionRules, (value) => value.toMap());
    map['dictionary'] = dictionary.toMap();
    map['exclusionType'] = exclusionType;
    map['infoType'] = infoType.toMap();
    map['likelihood'] = likelihood;
    map['regex'] = regex.toMap();
    map['sensitivityScore'] = sensitivityScore.toMap();
    map['storedType'] = storedType.toMap();
    map['surrogateType'] = surrogateType;
    return map;
  }

  factory GooglePrivacyDlpV2CustomInfoTypeResponse.fromMap(
      Map<String, dynamic> map) {
    return GooglePrivacyDlpV2CustomInfoTypeResponse(
      detectionRules: Input.decodeList<GooglePrivacyDlpV2DetectionRuleResponse>(
          map['detectionRules'],
          (value) => GooglePrivacyDlpV2DetectionRuleResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      dictionary: GooglePrivacyDlpV2DictionaryResponse.fromMap(
          (map['dictionary'] as Map).cast<String, dynamic>()),
      exclusionType: map['exclusionType'] as String,
      infoType: GooglePrivacyDlpV2InfoTypeResponse.fromMap(
          (map['infoType'] as Map).cast<String, dynamic>()),
      likelihood: map['likelihood'] as String,
      regex: GooglePrivacyDlpV2RegexResponse.fromMap(
          (map['regex'] as Map).cast<String, dynamic>()),
      sensitivityScore: GooglePrivacyDlpV2SensitivityScoreResponse.fromMap(
          (map['sensitivityScore'] as Map).cast<String, dynamic>()),
      storedType: GooglePrivacyDlpV2StoredTypeResponse.fromMap(
          (map['storedType'] as Map).cast<String, dynamic>()),
      surrogateType: (map['surrogateType'] as Map).cast<String, dynamic>(),
    );
  }
}
