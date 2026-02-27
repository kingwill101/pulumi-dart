// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_instance_autoscaling_config/get_instance_autoscaling_config.dart';

/// Result data returned by getInstance.
class GetInstanceSpannerResult {
  final List<GetInstanceAutoscalingConfig> autoscalingConfigs;
  final String? config;
  final String defaultBackupScheduleType;
  final String? displayName;
  final String edition;
  final Map<String, String> effectiveLabels;
  final bool forceDestroy;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String instanceType;
  final Map<String, String> labels;
  final String name;
  final int numNodes;
  final int processingUnits;
  final String? project;
  final Map<String, String> pulumiLabels;
  final String state;

  GetInstanceSpannerResult({
    required this.autoscalingConfigs,
    this.config,
    required this.defaultBackupScheduleType,
    this.displayName,
    required this.edition,
    required this.effectiveLabels,
    required this.forceDestroy,
    required this.id,
    required this.instanceType,
    required this.labels,
    required this.name,
    required this.numNodes,
    required this.processingUnits,
    this.project,
    required this.pulumiLabels,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['autoscalingConfigs'] = pulumi.Input.encodeList<
        GetInstanceAutoscalingConfig,
        Map<String, dynamic>>(autoscalingConfigs, (value) => value.toMap());
    final configValue = config;
    if (configValue != null) {
      map['config'] = configValue;
    }
    map['defaultBackupScheduleType'] = defaultBackupScheduleType;
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    map['edition'] = edition;
    map['effectiveLabels'] = effectiveLabels;
    map['forceDestroy'] = forceDestroy;
    map['id'] = id;
    map['instanceType'] = instanceType;
    map['labels'] = labels;
    map['name'] = name;
    map['numNodes'] = numNodes;
    map['processingUnits'] = processingUnits;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['pulumiLabels'] = pulumiLabels;
    map['state'] = state;
    return map;
  }

  factory GetInstanceSpannerResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceSpannerResult(
      autoscalingConfigs: pulumi.Input.decodeList<GetInstanceAutoscalingConfig>(
          map['autoscalingConfigs'],
          (value) => GetInstanceAutoscalingConfig.fromMap(
              (value as Map).cast<String, dynamic>())),
      config: map['config'] == null ? null : map['config'] as String,
      defaultBackupScheduleType: map['defaultBackupScheduleType'] as String,
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      edition: map['edition'] as String,
      effectiveLabels: (map['effectiveLabels'] as Map).cast<String, String>(),
      forceDestroy: map['forceDestroy'] as bool,
      id: map['id'] as String,
      instanceType: map['instanceType'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      numNodes: map['numNodes'] as int,
      processingUnits: map['processingUnits'] as int,
      project: map['project'] == null ? null : map['project'] as String,
      pulumiLabels: (map['pulumiLabels'] as Map).cast<String, String>(),
      state: map['state'] as String,
    );
  }
}
