// ignore_for_file: unused_element, unnecessary_cast

import 'prevention_job_trigger_inspect_job_inspect_config_custom_info_type_dictionary.dart';
import 'prevention_job_trigger_inspect_job_inspect_config_custom_info_type_info_type.dart';
import 'prevention_job_trigger_inspect_job_inspect_config_custom_info_type_regex.dart';
import 'prevention_job_trigger_inspect_job_inspect_config_custom_info_type_sensitivity_score.dart';
import 'prevention_job_trigger_inspect_job_inspect_config_custom_info_type_stored_type.dart';

class PreventionJobTriggerInspectJobInspectConfigCustomInfoType {
  /// Dictionary which defines the rule.
  /// Structure is documented below.
  final PreventionJobTriggerInspectJobInspectConfigCustomInfoTypeDictionary?
      dictionary;

  /// If set to EXCLUSION_TYPE_EXCLUDE this infoType will not cause a finding to be returned. It still can be used for rules matching.
  /// Possible values are: `EXCLUSION_TYPE_EXCLUDE`.
  final String? exclusionType;

  /// CustomInfoType can either be a new infoType, or an extension of built-in infoType, when the name matches one of existing
  /// infoTypes and that infoType is specified in `info_types` field. Specifying the latter adds findings to the
  /// one detected by the system. If built-in info type is not specified in `info_types` list then the name is
  /// treated as a custom info type.
  /// Structure is documented below.
  final PreventionJobTriggerInspectJobInspectConfigCustomInfoTypeInfoType
      infoType;

  /// Likelihood to return for this CustomInfoType. This base value can be altered by a detection rule if the finding meets the criteria
  /// specified by the rule.
  /// Default value is `VERY_LIKELY`.
  /// Possible values are: `VERY_UNLIKELY`, `UNLIKELY`, `POSSIBLE`, `LIKELY`, `VERY_LIKELY`.
  final String? likelihood;

  /// Regular expression which defines the rule.
  /// Structure is documented below.
  final PreventionJobTriggerInspectJobInspectConfigCustomInfoTypeRegex? regex;

  /// Optional custom sensitivity for this InfoType. This only applies to data profiling.
  /// Structure is documented below.
  final PreventionJobTriggerInspectJobInspectConfigCustomInfoTypeSensitivityScore?
      sensitivityScore;

  /// A reference to a StoredInfoType to use with scanning.
  /// Structure is documented below.
  final PreventionJobTriggerInspectJobInspectConfigCustomInfoTypeStoredType?
      storedType;

  /// Message for detecting output from deidentification transformations that support reversing.
  final Map<String, dynamic>? surrogateType;

  /// Creates a new [PreventionJobTriggerInspectJobInspectConfigCustomInfoType].
  /// [dictionary] Dictionary which defines the rule.
  /// [exclusionType] If set to EXCLUSION_TYPE_EXCLUDE this infoType will not cause a finding to be returned. It still can be used for rules matching.
  /// [infoType] CustomInfoType can either be a new infoType, or an extension of built-in infoType, when the name matches one of existing
  /// [likelihood] Likelihood to return for this CustomInfoType. This base value can be altered by a detection rule if the finding meets the criteria
  /// [regex] Regular expression which defines the rule.
  /// [sensitivityScore] Optional custom sensitivity for this InfoType. This only applies to data profiling.
  /// [storedType] A reference to a StoredInfoType to use with scanning.
  /// [surrogateType] Message for detecting output from deidentification transformations that support reversing.
  PreventionJobTriggerInspectJobInspectConfigCustomInfoType({
    this.dictionary,
    this.exclusionType,
    required this.infoType,
    this.likelihood,
    this.regex,
    this.sensitivityScore,
    this.storedType,
    this.surrogateType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dictionaryValue = dictionary;
    if (dictionaryValue != null) {
      map['dictionary'] = dictionaryValue.toMap();
    }
    final exclusionTypeValue = exclusionType;
    if (exclusionTypeValue != null) {
      map['exclusionType'] = exclusionTypeValue;
    }
    map['infoType'] = infoType.toMap();
    final likelihoodValue = likelihood;
    if (likelihoodValue != null) {
      map['likelihood'] = likelihoodValue;
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

  factory PreventionJobTriggerInspectJobInspectConfigCustomInfoType.fromMap(
      Map<String, dynamic> map) {
    return PreventionJobTriggerInspectJobInspectConfigCustomInfoType(
      dictionary: map['dictionary'] == null
          ? null
          : PreventionJobTriggerInspectJobInspectConfigCustomInfoTypeDictionary
              .fromMap((map['dictionary'] as Map).cast<String, dynamic>()),
      exclusionType:
          map['exclusionType'] == null ? null : map['exclusionType'] as String,
      infoType:
          PreventionJobTriggerInspectJobInspectConfigCustomInfoTypeInfoType
              .fromMap((map['infoType'] as Map).cast<String, dynamic>()),
      likelihood:
          map['likelihood'] == null ? null : map['likelihood'] as String,
      regex: map['regex'] == null
          ? null
          : PreventionJobTriggerInspectJobInspectConfigCustomInfoTypeRegex
              .fromMap((map['regex'] as Map).cast<String, dynamic>()),
      sensitivityScore: map['sensitivityScore'] == null
          ? null
          : PreventionJobTriggerInspectJobInspectConfigCustomInfoTypeSensitivityScore
              .fromMap(
                  (map['sensitivityScore'] as Map).cast<String, dynamic>()),
      storedType: map['storedType'] == null
          ? null
          : PreventionJobTriggerInspectJobInspectConfigCustomInfoTypeStoredType
              .fromMap((map['storedType'] as Map).cast<String, dynamic>()),
      surrogateType: map['surrogateType'] == null
          ? null
          : (map['surrogateType'] as Map).cast<String, dynamic>(),
    );
  }
}
