// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_control_folder_intelligence_config_effective_intelligence_config/get_control_folder_intelligence_config_effective_intelligence_config.dart';
import '../get_control_folder_intelligence_config_filter/get_control_folder_intelligence_config_filter.dart';
import '../get_control_folder_intelligence_config_trial_config/get_control_folder_intelligence_config_trial_config.dart';

/// Result data returned by getControlFolderIntelligenceConfig.
class GetControlFolderIntelligenceConfigResult {
  final String editionConfig;
  final List<GetControlFolderIntelligenceConfigEffectiveIntelligenceConfig>
      effectiveIntelligenceConfigs;
  final List<GetControlFolderIntelligenceConfigFilter> filters;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final List<GetControlFolderIntelligenceConfigTrialConfig> trialConfigs;
  final String updateTime;

  GetControlFolderIntelligenceConfigResult({
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
            GetControlFolderIntelligenceConfigEffectiveIntelligenceConfig,
            Map<String, dynamic>>(
        effectiveIntelligenceConfigs, (value) => value.toMap());
    map['filters'] = Input.encodeList<GetControlFolderIntelligenceConfigFilter,
        Map<String, dynamic>>(filters, (value) => value.toMap());
    map['id'] = id;
    map['name'] = name;
    map['trialConfigs'] = Input.encodeList<
        GetControlFolderIntelligenceConfigTrialConfig,
        Map<String, dynamic>>(trialConfigs, (value) => value.toMap());
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetControlFolderIntelligenceConfigResult.fromMap(
      Map<String, dynamic> map) {
    return GetControlFolderIntelligenceConfigResult(
      editionConfig: map['editionConfig'] as String,
      effectiveIntelligenceConfigs: Input.decodeList<
              GetControlFolderIntelligenceConfigEffectiveIntelligenceConfig>(
          map['effectiveIntelligenceConfigs'],
          (value) =>
              GetControlFolderIntelligenceConfigEffectiveIntelligenceConfig
                  .fromMap((value as Map).cast<String, dynamic>())),
      filters: Input.decodeList<GetControlFolderIntelligenceConfigFilter>(
          map['filters'],
          (value) => GetControlFolderIntelligenceConfigFilter.fromMap(
              (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      name: map['name'] as String,
      trialConfigs:
          Input.decodeList<GetControlFolderIntelligenceConfigTrialConfig>(
              map['trialConfigs'],
              (value) => GetControlFolderIntelligenceConfigTrialConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      updateTime: map['updateTime'] as String,
    );
  }
}
