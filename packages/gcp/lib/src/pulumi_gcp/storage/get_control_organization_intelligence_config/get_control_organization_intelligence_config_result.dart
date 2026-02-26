// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_control_organization_intelligence_config_effective_intelligence_config/get_control_organization_intelligence_config_effective_intelligence_config.dart';
import '../get_control_organization_intelligence_config_filter/get_control_organization_intelligence_config_filter.dart';
import '../get_control_organization_intelligence_config_trial_config/get_control_organization_intelligence_config_trial_config.dart';

/// Result data returned by getControlOrganizationIntelligenceConfig.
class GetControlOrganizationIntelligenceConfigResult {
  final String editionConfig;
  final List<
          GetControlOrganizationIntelligenceConfigEffectiveIntelligenceConfig>
      effectiveIntelligenceConfigs;
  final List<GetControlOrganizationIntelligenceConfigFilter> filters;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final List<GetControlOrganizationIntelligenceConfigTrialConfig> trialConfigs;
  final String updateTime;

  GetControlOrganizationIntelligenceConfigResult({
    required this.editionConfig,
    required this.effectiveIntelligenceConfigs,
    required this.filters,
    required this.id,
    required this.name,
    required this.trialConfigs,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['editionConfig'] = editionConfig;
    map['effectiveIntelligenceConfigs'] = Input.encodeList<
            GetControlOrganizationIntelligenceConfigEffectiveIntelligenceConfig,
            Map<String, dynamic>>(
        effectiveIntelligenceConfigs, (value) => value.toMap());
    map['filters'] = Input.encodeList<
        GetControlOrganizationIntelligenceConfigFilter,
        Map<String, dynamic>>(filters, (value) => value.toMap());
    map['id'] = id;
    map['name'] = name;
    map['trialConfigs'] = Input.encodeList<
        GetControlOrganizationIntelligenceConfigTrialConfig,
        Map<String, dynamic>>(trialConfigs, (value) => value.toMap());
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetControlOrganizationIntelligenceConfigResult.fromMap(
      Map<String, dynamic> map) {
    return GetControlOrganizationIntelligenceConfigResult(
      editionConfig: map['editionConfig'] as String,
      effectiveIntelligenceConfigs: Input.decodeList<
              GetControlOrganizationIntelligenceConfigEffectiveIntelligenceConfig>(
          map['effectiveIntelligenceConfigs'],
          (value) =>
              GetControlOrganizationIntelligenceConfigEffectiveIntelligenceConfig
                  .fromMap((value as Map).cast<String, dynamic>())),
      filters: Input.decodeList<GetControlOrganizationIntelligenceConfigFilter>(
          map['filters'],
          (value) => GetControlOrganizationIntelligenceConfigFilter.fromMap(
              (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      name: map['name'] as String,
      trialConfigs:
          Input.decodeList<GetControlOrganizationIntelligenceConfigTrialConfig>(
              map['trialConfigs'],
              (value) =>
                  GetControlOrganizationIntelligenceConfigTrialConfig.fromMap(
                      (value as Map).cast<String, dynamic>())),
      updateTime: map['updateTime'] as String,
    );
  }
}
