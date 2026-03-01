// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_job_trigger_inspect_job_inspect_config_custom_info_type.dart';
import 'prevention_job_trigger_inspect_job_inspect_config_info_type.dart';
import 'prevention_job_trigger_inspect_job_inspect_config_limits.dart';
import 'prevention_job_trigger_inspect_job_inspect_config_rule_set.dart';

class PreventionJobTriggerInspectJobInspectConfig {
  /// Custom info types to be used. See https://cloud.google.com/dlp/docs/creating-custom-infotypes to learn more.
  /// Structure is documented below.
  final List<PreventionJobTriggerInspectJobInspectConfigCustomInfoType>?
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
  final List<PreventionJobTriggerInspectJobInspectConfigInfoType>? infoTypes;

  /// Configuration to control the number of findings returned.
  /// Structure is documented below.
  final PreventionJobTriggerInspectJobInspectConfigLimits? limits;

  /// Only returns findings equal or above this threshold. See https://cloud.google.com/dlp/docs/likelihood for more info
  /// Default value is `POSSIBLE`.
  /// Possible values are: `VERY_UNLIKELY`, `UNLIKELY`, `POSSIBLE`, `LIKELY`, `VERY_LIKELY`.
  final String? minLikelihood;

  /// Set of rules to apply to the findings for this InspectConfig. Exclusion rules, contained in the set are executed in the end,
  /// other rules are executed in the order they are specified for each info type.
  /// Structure is documented below.
  final List<PreventionJobTriggerInspectJobInspectConfigRuleSet>? ruleSets;

  /// Creates a new [PreventionJobTriggerInspectJobInspectConfig].
  /// [customInfoTypes] Custom info types to be used. See https://cloud.google.com/dlp/docs/creating-custom-infotypes to learn more.
  /// [excludeInfoTypes] When true, excludes type information of the findings.
  /// [includeQuote] When true, a contextual quote from the data that triggered a finding is included in the response.
  /// [infoTypes] Restricts what infoTypes to look for. The values must correspond to InfoType values returned by infoTypes.list
  /// [limits] Configuration to control the number of findings returned.
  /// [minLikelihood] Only returns findings equal or above this threshold. See https://cloud.google.com/dlp/docs/likelihood for more info
  /// [ruleSets] Set of rules to apply to the findings for this InspectConfig. Exclusion rules, contained in the set are executed in the end,
  PreventionJobTriggerInspectJobInspectConfig({
    this.customInfoTypes,
    this.excludeInfoTypes,
    this.includeQuote,
    this.infoTypes,
    this.limits,
    this.minLikelihood,
    this.ruleSets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customInfoTypes': ?customInfoTypes == null
          ? null
          : pulumi.Input.encodeList<
              PreventionJobTriggerInspectJobInspectConfigCustomInfoType,
              Map<String, dynamic>
            >(customInfoTypes!, (value) => value.toMap()),
      'excludeInfoTypes': ?excludeInfoTypes,
      'includeQuote': ?includeQuote,
      'infoTypes': ?infoTypes == null
          ? null
          : pulumi.Input.encodeList<
              PreventionJobTriggerInspectJobInspectConfigInfoType,
              Map<String, dynamic>
            >(infoTypes!, (value) => value.toMap()),
      'limits': ?limits == null ? null : limits!.toMap(),
      'minLikelihood': ?minLikelihood,
      'ruleSets': ?ruleSets == null
          ? null
          : pulumi.Input.encodeList<
              PreventionJobTriggerInspectJobInspectConfigRuleSet,
              Map<String, dynamic>
            >(ruleSets!, (value) => value.toMap()),
    };
  }

  factory PreventionJobTriggerInspectJobInspectConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return PreventionJobTriggerInspectJobInspectConfig(
      customInfoTypes: map['customInfoTypes'] == null
          ? null
          : pulumi.Input.decodeList<
              PreventionJobTriggerInspectJobInspectConfigCustomInfoType
            >(
              map['customInfoTypes'],
              (value) =>
                  PreventionJobTriggerInspectJobInspectConfigCustomInfoType.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      excludeInfoTypes: map['excludeInfoTypes'] == null
          ? null
          : map['excludeInfoTypes'] as bool,
      includeQuote: map['includeQuote'] == null
          ? null
          : map['includeQuote'] as bool,
      infoTypes: map['infoTypes'] == null
          ? null
          : pulumi.Input.decodeList<
              PreventionJobTriggerInspectJobInspectConfigInfoType
            >(
              map['infoTypes'],
              (value) =>
                  PreventionJobTriggerInspectJobInspectConfigInfoType.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      limits: map['limits'] == null
          ? null
          : PreventionJobTriggerInspectJobInspectConfigLimits.fromMap(
              (map['limits'] as Map).cast<String, dynamic>(),
            ),
      minLikelihood: map['minLikelihood'] == null
          ? null
          : map['minLikelihood'] as String,
      ruleSets: map['ruleSets'] == null
          ? null
          : pulumi.Input.decodeList<
              PreventionJobTriggerInspectJobInspectConfigRuleSet
            >(
              map['ruleSets'],
              (value) =>
                  PreventionJobTriggerInspectJobInspectConfigRuleSet.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
    );
  }
}
