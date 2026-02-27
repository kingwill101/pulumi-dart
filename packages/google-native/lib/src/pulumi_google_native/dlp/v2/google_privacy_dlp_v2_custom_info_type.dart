// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_custom_info_type_exclusion_type.dart';
import 'google_privacy_dlp_v2_custom_info_type_likelihood.dart';
import 'google_privacy_dlp_v2_detection_rule.dart';
import 'google_privacy_dlp_v2_dictionary.dart';
import 'google_privacy_dlp_v2_info_type.dart';
import 'google_privacy_dlp_v2_regex.dart';
import 'google_privacy_dlp_v2_sensitivity_score.dart';
import 'google_privacy_dlp_v2_stored_type.dart';

/// Custom information type provided by the user. Used to find domain-specific sensitive information configurable to the data in question.
class GooglePrivacyDlpV2CustomInfoType {
  /// Set of detection rules to apply to all findings of this CustomInfoType. Rules are applied in order that they are specified. Not supported for the `surrogate_type` CustomInfoType.
  final List<GooglePrivacyDlpV2DetectionRule>? detectionRules;

  /// A list of phrases to detect as a CustomInfoType.
  final GooglePrivacyDlpV2Dictionary? dictionary;

  /// If set to EXCLUSION_TYPE_EXCLUDE this infoType will not cause a finding to be returned. It still can be used for rules matching.
  final GooglePrivacyDlpV2CustomInfoTypeExclusionType? exclusionType;

  /// CustomInfoType can either be a new infoType, or an extension of built-in infoType, when the name matches one of existing infoTypes and that infoType is specified in `InspectContent.info_types` field. Specifying the latter adds findings to the one detected by the system. If built-in info type is not specified in `InspectContent.info_types` list then the name is treated as a custom info type.
  final GooglePrivacyDlpV2InfoType? infoType;

  /// Likelihood to return for this CustomInfoType. This base value can be altered by a detection rule if the finding meets the criteria specified by the rule. Defaults to `VERY_LIKELY` if not specified.
  final GooglePrivacyDlpV2CustomInfoTypeLikelihood? likelihood;

  /// Regular expression based CustomInfoType.
  final GooglePrivacyDlpV2Regex? regex;

  /// Sensitivity for this CustomInfoType. If this CustomInfoType extends an existing InfoType, the sensitivity here will take precedence over that of the original InfoType. If unset for a CustomInfoType, it will default to HIGH. This only applies to data profiling.
  final GooglePrivacyDlpV2SensitivityScore? sensitivityScore;

  /// Load an existing `StoredInfoType` resource for use in `InspectDataSource`. Not currently supported in `InspectContent`.
  final GooglePrivacyDlpV2StoredType? storedType;

  /// Message for detecting output from deidentification transformations that support reversing.
  final Map<String, dynamic>? surrogateType;

  GooglePrivacyDlpV2CustomInfoType({
    this.detectionRules,
    this.dictionary,
    this.exclusionType,
    this.infoType,
    this.likelihood,
    this.regex,
    this.sensitivityScore,
    this.storedType,
    this.surrogateType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final detectionRulesValue = detectionRules;
    if (detectionRulesValue != null) {
      map['detectionRules'] = pulumi.Input.encodeList<
          GooglePrivacyDlpV2DetectionRule,
          Map<String, dynamic>>(detectionRulesValue, (value) => value.toMap());
    }
    final dictionaryValue = dictionary;
    if (dictionaryValue != null) {
      map['dictionary'] = dictionaryValue.toMap();
    }
    final exclusionTypeValue = exclusionType;
    if (exclusionTypeValue != null) {
      map['exclusionType'] = exclusionTypeValue.value;
    }
    final infoTypeValue = infoType;
    if (infoTypeValue != null) {
      map['infoType'] = infoTypeValue.toMap();
    }
    final likelihoodValue = likelihood;
    if (likelihoodValue != null) {
      map['likelihood'] = likelihoodValue.value;
    }
    final regexValue = regex;
    if (regexValue != null) {
      map['regex'] = regexValue.toMap();
    }
    final sensitivityScoreValue = sensitivityScore;
    if (sensitivityScoreValue != null) {
      map['sensitivityScore'] = sensitivityScoreValue.toMap();
    }
    final storedTypeValue = storedType;
    if (storedTypeValue != null) {
      map['storedType'] = storedTypeValue.toMap();
    }
    final surrogateTypeValue = surrogateType;
    if (surrogateTypeValue != null) {
      map['surrogateType'] = surrogateTypeValue;
    }
    return map;
  }

  factory GooglePrivacyDlpV2CustomInfoType.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2CustomInfoType(
      detectionRules: map['detectionRules'] == null
          ? null
          : pulumi.Input.decodeList<GooglePrivacyDlpV2DetectionRule>(
              map['detectionRules'],
              (value) => GooglePrivacyDlpV2DetectionRule.fromMap(
                  (value as Map).cast<String, dynamic>())),
      dictionary: map['dictionary'] == null
          ? null
          : GooglePrivacyDlpV2Dictionary.fromMap(
              (map['dictionary'] as Map).cast<String, dynamic>()),
      exclusionType: map['exclusionType'] == null
          ? null
          : GooglePrivacyDlpV2CustomInfoTypeExclusionType.fromValue(
              map['exclusionType'] as String),
      infoType: map['infoType'] == null
          ? null
          : GooglePrivacyDlpV2InfoType.fromMap(
              (map['infoType'] as Map).cast<String, dynamic>()),
      likelihood: map['likelihood'] == null
          ? null
          : GooglePrivacyDlpV2CustomInfoTypeLikelihood.fromValue(
              map['likelihood'] as String),
      regex: map['regex'] == null
          ? null
          : GooglePrivacyDlpV2Regex.fromMap(
              (map['regex'] as Map).cast<String, dynamic>()),
      sensitivityScore: map['sensitivityScore'] == null
          ? null
          : GooglePrivacyDlpV2SensitivityScore.fromMap(
              (map['sensitivityScore'] as Map).cast<String, dynamic>()),
      storedType: map['storedType'] == null
          ? null
          : GooglePrivacyDlpV2StoredType.fromMap(
              (map['storedType'] as Map).cast<String, dynamic>()),
      surrogateType: map['surrogateType'] == null
          ? null
          : (map['surrogateType'] as Map).cast<String, dynamic>(),
    );
  }
}
