// ignore_for_file: unused_element, unnecessary_cast

import '../prevention_inspect_template_inspect_config_custom_info_type_dictionary/prevention_inspect_template_inspect_config_custom_info_type_dictionary.dart';
import '../prevention_inspect_template_inspect_config_custom_info_type_info_type/prevention_inspect_template_inspect_config_custom_info_type_info_type.dart';
import '../prevention_inspect_template_inspect_config_custom_info_type_regex/prevention_inspect_template_inspect_config_custom_info_type_regex.dart';
import '../prevention_inspect_template_inspect_config_custom_info_type_sensitivity_score/prevention_inspect_template_inspect_config_custom_info_type_sensitivity_score.dart';
import '../prevention_inspect_template_inspect_config_custom_info_type_stored_type/prevention_inspect_template_inspect_config_custom_info_type_stored_type.dart';

class PreventionInspectTemplateInspectConfigCustomInfoType {
  /// Dictionary which defines the rule.
  /// Structure is documented below.
  final PreventionInspectTemplateInspectConfigCustomInfoTypeDictionary?
      dictionary;

  /// If set to EXCLUSION_TYPE_EXCLUDE this infoType will not cause a finding to be returned. It still can be used for rules matching.
  /// Possible values are: `EXCLUSION_TYPE_EXCLUDE`.
  final String? exclusionType;

  /// CustomInfoType can either be a new infoType, or an extension of built-in infoType, when the name matches one of existing
  /// infoTypes and that infoType is specified in <span pulumi-lang-nodejs="`infoTypes`" pulumi-lang-dotnet="`InfoTypes`" pulumi-lang-go="`infoTypes`" pulumi-lang-python="`info_types`" pulumi-lang-yaml="`infoTypes`" pulumi-lang-java="`infoTypes`">`info_types`</span> field. Specifying the latter adds findings to the
  /// one detected by the system. If built-in info type is not specified in <span pulumi-lang-nodejs="`infoTypes`" pulumi-lang-dotnet="`InfoTypes`" pulumi-lang-go="`infoTypes`" pulumi-lang-python="`info_types`" pulumi-lang-yaml="`infoTypes`" pulumi-lang-java="`infoTypes`">`info_types`</span> list then the name is
  /// treated as a custom info type.
  /// Structure is documented below.
  final PreventionInspectTemplateInspectConfigCustomInfoTypeInfoType infoType;

  /// Likelihood to return for this CustomInfoType. This base value can be altered by a detection rule if the finding meets the criteria
  /// specified by the rule.
  /// Default value is `VERY_LIKELY`.
  /// Possible values are: `VERY_UNLIKELY`, `UNLIKELY`, `POSSIBLE`, `LIKELY`, `VERY_LIKELY`.
  final String? likelihood;

  /// Regular expression which defines the rule.
  /// Structure is documented below.
  final PreventionInspectTemplateInspectConfigCustomInfoTypeRegex? regex;

  /// Optional custom sensitivity for this InfoType. This only applies to data profiling.
  /// Structure is documented below.
  final PreventionInspectTemplateInspectConfigCustomInfoTypeSensitivityScore?
      sensitivityScore;

  /// A reference to a StoredInfoType to use with scanning.
  /// Structure is documented below.
  final PreventionInspectTemplateInspectConfigCustomInfoTypeStoredType?
      storedType;

  /// Message for detecting output from deidentification transformations that support reversing.
  final Map<String, dynamic>? surrogateType;

  PreventionInspectTemplateInspectConfigCustomInfoType({
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

  factory PreventionInspectTemplateInspectConfigCustomInfoType.fromMap(
      Map<String, dynamic> map) {
    return PreventionInspectTemplateInspectConfigCustomInfoType(
      dictionary: map['dictionary'] == null
          ? null
          : PreventionInspectTemplateInspectConfigCustomInfoTypeDictionary
              .fromMap((map['dictionary'] as Map).cast<String, dynamic>()),
      exclusionType:
          map['exclusionType'] == null ? null : map['exclusionType'] as String,
      infoType:
          PreventionInspectTemplateInspectConfigCustomInfoTypeInfoType.fromMap(
              (map['infoType'] as Map).cast<String, dynamic>()),
      likelihood:
          map['likelihood'] == null ? null : map['likelihood'] as String,
      regex: map['regex'] == null
          ? null
          : PreventionInspectTemplateInspectConfigCustomInfoTypeRegex.fromMap(
              (map['regex'] as Map).cast<String, dynamic>()),
      sensitivityScore: map['sensitivityScore'] == null
          ? null
          : PreventionInspectTemplateInspectConfigCustomInfoTypeSensitivityScore
              .fromMap(
                  (map['sensitivityScore'] as Map).cast<String, dynamic>()),
      storedType: map['storedType'] == null
          ? null
          : PreventionInspectTemplateInspectConfigCustomInfoTypeStoredType
              .fromMap((map['storedType'] as Map).cast<String, dynamic>()),
      surrogateType: map['surrogateType'] == null
          ? null
          : (map['surrogateType'] as Map).cast<String, dynamic>(),
    );
  }
}
