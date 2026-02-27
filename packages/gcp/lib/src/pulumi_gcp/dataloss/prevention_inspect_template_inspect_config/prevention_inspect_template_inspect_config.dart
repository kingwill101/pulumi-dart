// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../prevention_inspect_template_inspect_config_custom_info_type/prevention_inspect_template_inspect_config_custom_info_type.dart';
import '../prevention_inspect_template_inspect_config_info_type/prevention_inspect_template_inspect_config_info_type.dart';
import '../prevention_inspect_template_inspect_config_limits/prevention_inspect_template_inspect_config_limits.dart';
import '../prevention_inspect_template_inspect_config_rule_set/prevention_inspect_template_inspect_config_rule_set.dart';

class PreventionInspectTemplateInspectConfig {
  /// List of options defining data content to scan. If empty, text, images, and other content will be included.
  /// Each value may be one of: `CONTENT_TEXT`, `CONTENT_IMAGE`.
  final List<String>? contentOptions;

  /// Custom info types to be used. See https://cloud.google.com/dlp/docs/creating-custom-infotypes to learn more.
  /// Structure is documented below.
  final List<PreventionInspectTemplateInspectConfigCustomInfoType>?
      customInfoTypes;

  /// When true, excludes type information of the findings.
  final bool? excludeInfoTypes;

  /// When true, a contextual quote from the data that triggered a finding is included in the response.
  final bool? includeQuote;

  /// Restricts what infoTypes to look for. The values must correspond to InfoType values returned by infoTypes.list
  /// or listed at https://cloud.google.com/dlp/docs/infotypes-reference.
  /// When no InfoTypes or CustomInfoTypes are specified in a request, the system may automatically choose what detectors to run.
  /// By default this may be all types, but may change over time as detectors are updated.
  /// Structure is documented below.
  final List<PreventionInspectTemplateInspectConfigInfoType>? infoTypes;

  /// Configuration to control the number of findings returned.
  /// Structure is documented below.
  final PreventionInspectTemplateInspectConfigLimits? limits;

  /// Only returns findings equal or above this threshold. See https://cloud.google.com/dlp/docs/likelihood for more info
  /// Default value is `POSSIBLE`.
  /// Possible values are: `VERY_UNLIKELY`, `UNLIKELY`, `POSSIBLE`, `LIKELY`, `VERY_LIKELY`.
  final String? minLikelihood;

  /// Set of rules to apply to the findings for this InspectConfig. Exclusion rules, contained in the set are executed in the end,
  /// other rules are executed in the order they are specified for each info type.
  /// Structure is documented below.
  final List<PreventionInspectTemplateInspectConfigRuleSet>? ruleSets;

  PreventionInspectTemplateInspectConfig({
    this.contentOptions,
    this.customInfoTypes,
    this.excludeInfoTypes,
    this.includeQuote,
    this.infoTypes,
    this.limits,
    this.minLikelihood,
    this.ruleSets,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final contentOptionsValue = contentOptions;
    if (contentOptionsValue != null) {
      map['contentOptions'] = contentOptionsValue;
    }
    final customInfoTypesValue = customInfoTypes;
    if (customInfoTypesValue != null) {
      map['customInfoTypes'] = pulumi.Input.encodeList<
          PreventionInspectTemplateInspectConfigCustomInfoType,
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
      map['infoTypes'] = pulumi.Input.encodeList<
          PreventionInspectTemplateInspectConfigInfoType,
          Map<String, dynamic>>(infoTypesValue, (value) => value.toMap());
    }
    final limitsValue = limits;
    if (limitsValue != null) {
      map['limits'] = limitsValue.toMap();
    }
    final minLikelihoodValue = minLikelihood;
    if (minLikelihoodValue != null) {
      map['minLikelihood'] = minLikelihoodValue;
    }
    final ruleSetsValue = ruleSets;
    if (ruleSetsValue != null) {
      map['ruleSets'] = pulumi.Input.encodeList<
          PreventionInspectTemplateInspectConfigRuleSet,
          Map<String, dynamic>>(ruleSetsValue, (value) => value.toMap());
    }
    return map;
  }

  factory PreventionInspectTemplateInspectConfig.fromMap(
      Map<String, dynamic> map) {
    return PreventionInspectTemplateInspectConfig(
      contentOptions: map['contentOptions'] == null
          ? null
          : (map['contentOptions'] as List).cast<String>(),
      customInfoTypes: map['customInfoTypes'] == null
          ? null
          : pulumi.Input.decodeList<
                  PreventionInspectTemplateInspectConfigCustomInfoType>(
              map['customInfoTypes'],
              (value) =>
                  PreventionInspectTemplateInspectConfigCustomInfoType.fromMap(
                      (value as Map).cast<String, dynamic>())),
      excludeInfoTypes: map['excludeInfoTypes'] == null
          ? null
          : map['excludeInfoTypes'] as bool,
      includeQuote:
          map['includeQuote'] == null ? null : map['includeQuote'] as bool,
      infoTypes: map['infoTypes'] == null
          ? null
          : pulumi.Input.decodeList<
                  PreventionInspectTemplateInspectConfigInfoType>(
              map['infoTypes'],
              (value) => PreventionInspectTemplateInspectConfigInfoType.fromMap(
                  (value as Map).cast<String, dynamic>())),
      limits: map['limits'] == null
          ? null
          : PreventionInspectTemplateInspectConfigLimits.fromMap(
              (map['limits'] as Map).cast<String, dynamic>()),
      minLikelihood:
          map['minLikelihood'] == null ? null : map['minLikelihood'] as String,
      ruleSets: map['ruleSets'] == null
          ? null
          : pulumi.Input.decodeList<
                  PreventionInspectTemplateInspectConfigRuleSet>(
              map['ruleSets'],
              (value) => PreventionInspectTemplateInspectConfigRuleSet.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
