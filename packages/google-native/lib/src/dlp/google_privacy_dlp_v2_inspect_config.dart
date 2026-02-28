// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_custom_info_type.dart';
import 'google_privacy_dlp_v2_finding_limits.dart';
import 'google_privacy_dlp_v2_info_type.dart';
import 'google_privacy_dlp_v2_info_type_likelihood.dart';
import 'google_privacy_dlp_v2_inspect_config_content_options_item.dart';
import 'google_privacy_dlp_v2_inspect_config_min_likelihood.dart';
import 'google_privacy_dlp_v2_inspection_rule_set.dart';

/// Configuration description of the scanning process. When used with redactContent only info_types and min_likelihood are currently used.
class GooglePrivacyDlpV2InspectConfig {
  /// Deprecated and unused.
  final List<GooglePrivacyDlpV2InspectConfigContentOptionsItem>? contentOptions;

  /// CustomInfoTypes provided by the user. See https://cloud.google.com/dlp/docs/creating-custom-infotypes to learn more.
  final List<GooglePrivacyDlpV2CustomInfoType>? customInfoTypes;

  /// When true, excludes type information of the findings. This is not used for data profiling.
  final bool? excludeInfoTypes;

  /// When true, a contextual quote from the data that triggered a finding is included in the response; see Finding.quote. This is not used for data profiling.
  final bool? includeQuote;

  /// Restricts what info_types to look for. The values must correspond to InfoType values returned by ListInfoTypes or listed at https://cloud.google.com/dlp/docs/infotypes-reference. When no InfoTypes or CustomInfoTypes are specified in a request, the system may automatically choose a default list of detectors to run, which may change over time. If you need precise control and predictability as to what detectors are run you should specify specific InfoTypes listed in the reference, otherwise a default list will be used, which may change over time.
  final List<GooglePrivacyDlpV2InfoType>? infoTypes;

  /// Configuration to control the number of findings returned. This is not used for data profiling. When redacting sensitive data from images, finding limits don't apply. They can cause unexpected or inconsistent results, where only some data is redacted. Don't include finding limits in RedactImage requests. Otherwise, Cloud DLP returns an error. When set within an InspectJobConfig, the specified maximum values aren't hard limits. If an inspection job reaches these limits, the job ends gradually, not abruptly. Therefore, the actual number of findings that Cloud DLP returns can be multiple times higher than these maximum values.
  final GooglePrivacyDlpV2FindingLimits? limits;

  /// Only returns findings equal to or above this threshold. The default is POSSIBLE. In general, the highest likelihood setting yields the fewest findings in results and the lowest chance of a false positive. For more information, see [Match likelihood](https://cloud.google.com/dlp/docs/likelihood).
  final GooglePrivacyDlpV2InspectConfigMinLikelihood? minLikelihood;

  /// Minimum likelihood per infotype. For each infotype, a user can specify a minimum likelihood. The system only returns a finding if its likelihood is above this threshold. If this field is not set, the system uses the InspectConfig min_likelihood.
  final List<GooglePrivacyDlpV2InfoTypeLikelihood>? minLikelihoodPerInfoType;

  /// Set of rules to apply to the findings for this InspectConfig. Exclusion rules, contained in the set are executed in the end, other rules are executed in the order they are specified for each info type.
  final List<GooglePrivacyDlpV2InspectionRuleSet>? ruleSet;

  /// Creates a new [GooglePrivacyDlpV2InspectConfig].
  /// [contentOptions] Deprecated and unused.
  /// [customInfoTypes] CustomInfoTypes provided by the user. See https://cloud.google.com/dlp/docs/creating-custom-infotypes to learn more.
  /// [excludeInfoTypes] When true, excludes type information of the findings. This is not used for data profiling.
  /// [includeQuote] When true, a contextual quote from the data that triggered a finding is included in the response; see Finding.quote. This is not used for data profiling.
  /// [infoTypes] Restricts what info_types to look for. The values must correspond to InfoType values returned by ListInfoTypes or listed at https://cloud.google.com/dlp/docs/infotypes-reference. When no InfoTypes or CustomInfoTypes are specified in a request, the system may automatically choose a default list of detectors to run, which may change over time. If you need precise control and predictability as to what detectors are run you should specify specific InfoTypes listed in the reference, otherwise a default list will be used, which may change over time.
  /// [limits] Configuration to control the number of findings returned. This is not used for data profiling. When redacting sensitive data from images, finding limits don't apply. They can cause unexpected or inconsistent results, where only some data is redacted. Don't include finding limits in RedactImage requests. Otherwise, Cloud DLP returns an error. When set within an InspectJobConfig, the specified maximum values aren't hard limits. If an inspection job reaches these limits, the job ends gradually, not abruptly. Therefore, the actual number of findings that Cloud DLP returns can be multiple times higher than these maximum values.
  /// [minLikelihood] Only returns findings equal to or above this threshold. The default is POSSIBLE. In general, the highest likelihood setting yields the fewest findings in results and the lowest chance of a false positive. For more information, see [Match likelihood](https://cloud.google.com/dlp/docs/likelihood).
  /// [minLikelihoodPerInfoType] Minimum likelihood per infotype. For each infotype, a user can specify a minimum likelihood. The system only returns a finding if its likelihood is above this threshold. If this field is not set, the system uses the InspectConfig min_likelihood.
  /// [ruleSet] Set of rules to apply to the findings for this InspectConfig. Exclusion rules, contained in the set are executed in the end, other rules are executed in the order they are specified for each info type.
  GooglePrivacyDlpV2InspectConfig({
    this.contentOptions,
    this.customInfoTypes,
    this.excludeInfoTypes,
    this.includeQuote,
    this.infoTypes,
    this.limits,
    this.minLikelihood,
    this.minLikelihoodPerInfoType,
    this.ruleSet,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final contentOptionsValue = contentOptions;
    if (contentOptionsValue != null) {
      map['contentOptions'] = pulumi.Input.encodeList<
          GooglePrivacyDlpV2InspectConfigContentOptionsItem,
          String>(contentOptionsValue, (value) => value.value);
    }
    final customInfoTypesValue = customInfoTypes;
    if (customInfoTypesValue != null) {
      map['customInfoTypes'] = pulumi.Input.encodeList<
          GooglePrivacyDlpV2CustomInfoType,
          Map<String, dynamic>>(customInfoTypesValue, (value) => value.toMap());
    }
    final excludeInfoTypesValue = excludeInfoTypes;
    if (excludeInfoTypesValue != null) {
      map['excludeInfoTypes'] = excludeInfoTypesValue;
    }
    final includeQuoteValue = includeQuote;
    if (includeQuoteValue != null) {
      map['includeQuote'] = includeQuoteValue;
    }
    final infoTypesValue = infoTypes;
    if (infoTypesValue != null) {
      map['infoTypes'] = pulumi.Input.encodeList<GooglePrivacyDlpV2InfoType,
          Map<String, dynamic>>(infoTypesValue, (value) => value.toMap());
    }
    final limitsValue = limits;
    if (limitsValue != null) {
      map['limits'] = limitsValue.toMap();
    }
    final minLikelihoodValue = minLikelihood;
    if (minLikelihoodValue != null) {
      map['minLikelihood'] = minLikelihoodValue.value;
    }
    final minLikelihoodPerInfoTypeValue = minLikelihoodPerInfoType;
    if (minLikelihoodPerInfoTypeValue != null) {
      map['minLikelihoodPerInfoType'] = pulumi.Input.encodeList<
              GooglePrivacyDlpV2InfoTypeLikelihood, Map<String, dynamic>>(
          minLikelihoodPerInfoTypeValue, (value) => value.toMap());
    }
    final ruleSetValue = ruleSet;
    if (ruleSetValue != null) {
      map['ruleSet'] = pulumi.Input.encodeList<
          GooglePrivacyDlpV2InspectionRuleSet,
          Map<String, dynamic>>(ruleSetValue, (value) => value.toMap());
    }
    return map;
  }

  factory GooglePrivacyDlpV2InspectConfig.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2InspectConfig(
      contentOptions: map['contentOptions'] == null
          ? null
          : pulumi.Input.decodeList<
                  GooglePrivacyDlpV2InspectConfigContentOptionsItem>(
              map['contentOptions'],
              (value) =>
                  GooglePrivacyDlpV2InspectConfigContentOptionsItem.fromValue(
                      value as String)),
      customInfoTypes: map['customInfoTypes'] == null
          ? null
          : pulumi.Input.decodeList<GooglePrivacyDlpV2CustomInfoType>(
              map['customInfoTypes'],
              (value) => GooglePrivacyDlpV2CustomInfoType.fromMap(
                  (value as Map).cast<String, dynamic>())),
      excludeInfoTypes: map['excludeInfoTypes'] == null
          ? null
          : map['excludeInfoTypes'] as bool,
      includeQuote:
          map['includeQuote'] == null ? null : map['includeQuote'] as bool,
      infoTypes: map['infoTypes'] == null
          ? null
          : pulumi.Input.decodeList<GooglePrivacyDlpV2InfoType>(
              map['infoTypes'],
              (value) => GooglePrivacyDlpV2InfoType.fromMap(
                  (value as Map).cast<String, dynamic>())),
      limits: map['limits'] == null
          ? null
          : GooglePrivacyDlpV2FindingLimits.fromMap(
              (map['limits'] as Map).cast<String, dynamic>()),
      minLikelihood: map['minLikelihood'] == null
          ? null
          : GooglePrivacyDlpV2InspectConfigMinLikelihood.fromValue(
              map['minLikelihood'] as String),
      minLikelihoodPerInfoType: map['minLikelihoodPerInfoType'] == null
          ? null
          : pulumi.Input.decodeList<GooglePrivacyDlpV2InfoTypeLikelihood>(
              map['minLikelihoodPerInfoType'],
              (value) => GooglePrivacyDlpV2InfoTypeLikelihood.fromMap(
                  (value as Map).cast<String, dynamic>())),
      ruleSet: map['ruleSet'] == null
          ? null
          : pulumi.Input.decodeList<GooglePrivacyDlpV2InspectionRuleSet>(
              map['ruleSet'],
              (value) => GooglePrivacyDlpV2InspectionRuleSet.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
