// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_custom_info_type_response.dart';
import 'google_privacy_dlp_v2_finding_limits_response.dart';
import 'google_privacy_dlp_v2_info_type_likelihood_response.dart';
import 'google_privacy_dlp_v2_info_type_response.dart';
import 'google_privacy_dlp_v2_inspection_rule_set_response.dart';

/// Configuration description of the scanning process. When used with redactContent only info_types and min_likelihood are currently used.
class GooglePrivacyDlpV2InspectConfigResponse {
  /// Deprecated and unused.
  final List<String> contentOptions;

  /// CustomInfoTypes provided by the user. See https://cloud.google.com/dlp/docs/creating-custom-infotypes to learn more.
  final List<GooglePrivacyDlpV2CustomInfoTypeResponse> customInfoTypes;

  /// When true, excludes type information of the findings. This is not used for data profiling.
  final bool excludeInfoTypes;

  /// When true, a contextual quote from the data that triggered a finding is included in the response; see Finding.quote. This is not used for data profiling.
  final bool includeQuote;

  /// Restricts what info_types to look for. The values must correspond to InfoType values returned by ListInfoTypes or listed at https://cloud.google.com/dlp/docs/infotypes-reference. When no InfoTypes or CustomInfoTypes are specified in a request, the system may automatically choose a default list of detectors to run, which may change over time. If you need precise control and predictability as to what detectors are run you should specify specific InfoTypes listed in the reference, otherwise a default list will be used, which may change over time.
  final List<GooglePrivacyDlpV2InfoTypeResponse> infoTypes;

  /// Configuration to control the number of findings returned. This is not used for data profiling. When redacting sensitive data from images, finding limits don't apply. They can cause unexpected or inconsistent results, where only some data is redacted. Don't include finding limits in RedactImage requests. Otherwise, Cloud DLP returns an error. When set within an InspectJobConfig, the specified maximum values aren't hard limits. If an inspection job reaches these limits, the job ends gradually, not abruptly. Therefore, the actual number of findings that Cloud DLP returns can be multiple times higher than these maximum values.
  final GooglePrivacyDlpV2FindingLimitsResponse limits;

  /// Only returns findings equal to or above this threshold. The default is POSSIBLE. In general, the highest likelihood setting yields the fewest findings in results and the lowest chance of a false positive. For more information, see [Match likelihood](https://cloud.google.com/dlp/docs/likelihood).
  final String minLikelihood;

  /// Minimum likelihood per infotype. For each infotype, a user can specify a minimum likelihood. The system only returns a finding if its likelihood is above this threshold. If this field is not set, the system uses the InspectConfig min_likelihood.
  final List<GooglePrivacyDlpV2InfoTypeLikelihoodResponse>
      minLikelihoodPerInfoType;

  /// Set of rules to apply to the findings for this InspectConfig. Exclusion rules, contained in the set are executed in the end, other rules are executed in the order they are specified for each info type.
  final List<GooglePrivacyDlpV2InspectionRuleSetResponse> ruleSet;

  /// Creates a new [GooglePrivacyDlpV2InspectConfigResponse].
  /// [contentOptions] Deprecated and unused.
  /// [customInfoTypes] CustomInfoTypes provided by the user. See https://cloud.google.com/dlp/docs/creating-custom-infotypes to learn more.
  /// [excludeInfoTypes] When true, excludes type information of the findings. This is not used for data profiling.
  /// [includeQuote] When true, a contextual quote from the data that triggered a finding is included in the response; see Finding.quote. This is not used for data profiling.
  /// [infoTypes] Restricts what info_types to look for. The values must correspond to InfoType values returned by ListInfoTypes or listed at https://cloud.google.com/dlp/docs/infotypes-reference. When no InfoTypes or CustomInfoTypes are specified in a request, the system may automatically choose a default list of detectors to run, which may change over time. If you need precise control and predictability as to what detectors are run you should specify specific InfoTypes listed in the reference, otherwise a default list will be used, which may change over time.
  /// [limits] Configuration to control the number of findings returned. This is not used for data profiling. When redacting sensitive data from images, finding limits don't apply. They can cause unexpected or inconsistent results, where only some data is redacted. Don't include finding limits in RedactImage requests. Otherwise, Cloud DLP returns an error. When set within an InspectJobConfig, the specified maximum values aren't hard limits. If an inspection job reaches these limits, the job ends gradually, not abruptly. Therefore, the actual number of findings that Cloud DLP returns can be multiple times higher than these maximum values.
  /// [minLikelihood] Only returns findings equal to or above this threshold. The default is POSSIBLE. In general, the highest likelihood setting yields the fewest findings in results and the lowest chance of a false positive. For more information, see [Match likelihood](https://cloud.google.com/dlp/docs/likelihood).
  /// [minLikelihoodPerInfoType] Minimum likelihood per infotype. For each infotype, a user can specify a minimum likelihood. The system only returns a finding if its likelihood is above this threshold. If this field is not set, the system uses the InspectConfig min_likelihood.
  /// [ruleSet] Set of rules to apply to the findings for this InspectConfig. Exclusion rules, contained in the set are executed in the end, other rules are executed in the order they are specified for each info type.
  GooglePrivacyDlpV2InspectConfigResponse({
    required this.contentOptions,
    required this.customInfoTypes,
    required this.excludeInfoTypes,
    required this.includeQuote,
    required this.infoTypes,
    required this.limits,
    required this.minLikelihood,
    required this.minLikelihoodPerInfoType,
    required this.ruleSet,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['contentOptions'] = contentOptions;
    map['customInfoTypes'] = pulumi.Input.encodeList<
        GooglePrivacyDlpV2CustomInfoTypeResponse,
        Map<String, dynamic>>(customInfoTypes, (value) => value.toMap());
    map['excludeInfoTypes'] = excludeInfoTypes;
    map['includeQuote'] = includeQuote;
    map['infoTypes'] = pulumi.Input.encodeList<
        GooglePrivacyDlpV2InfoTypeResponse,
        Map<String, dynamic>>(infoTypes, (value) => value.toMap());
    map['limits'] = limits.toMap();
    map['minLikelihood'] = minLikelihood;
    map['minLikelihoodPerInfoType'] = pulumi.Input.encodeList<
            GooglePrivacyDlpV2InfoTypeLikelihoodResponse, Map<String, dynamic>>(
        minLikelihoodPerInfoType, (value) => value.toMap());
    map['ruleSet'] = pulumi.Input.encodeList<
        GooglePrivacyDlpV2InspectionRuleSetResponse,
        Map<String, dynamic>>(ruleSet, (value) => value.toMap());
    return map;
  }

  factory GooglePrivacyDlpV2InspectConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return GooglePrivacyDlpV2InspectConfigResponse(
      contentOptions: (map['contentOptions'] as List).cast<String>(),
      customInfoTypes:
          pulumi.Input.decodeList<GooglePrivacyDlpV2CustomInfoTypeResponse>(
              map['customInfoTypes'],
              (value) => GooglePrivacyDlpV2CustomInfoTypeResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
      excludeInfoTypes: map['excludeInfoTypes'] as bool,
      includeQuote: map['includeQuote'] as bool,
      infoTypes: pulumi.Input.decodeList<GooglePrivacyDlpV2InfoTypeResponse>(
          map['infoTypes'],
          (value) => GooglePrivacyDlpV2InfoTypeResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      limits: GooglePrivacyDlpV2FindingLimitsResponse.fromMap(
          (map['limits'] as Map).cast<String, dynamic>()),
      minLikelihood: map['minLikelihood'] as String,
      minLikelihoodPerInfoType:
          pulumi.Input.decodeList<GooglePrivacyDlpV2InfoTypeLikelihoodResponse>(
              map['minLikelihoodPerInfoType'],
              (value) => GooglePrivacyDlpV2InfoTypeLikelihoodResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
      ruleSet:
          pulumi.Input.decodeList<GooglePrivacyDlpV2InspectionRuleSetResponse>(
              map['ruleSet'],
              (value) => GooglePrivacyDlpV2InspectionRuleSetResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
