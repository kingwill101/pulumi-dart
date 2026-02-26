// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_function_build_config/get_function_build_config.dart';
import '../get_function_event_trigger/get_function_event_trigger2.dart';
import '../get_function_service_config/get_function_service_config.dart';

/// Result data returned by getFunction.
class GetFunctionResult2 {
  final List<GetFunctionBuildConfig> buildConfigs;
  final String description;
  final Map<String, String> effectiveLabels;
  final String environment;
  final List<GetFunctionEventTrigger2> eventTriggers;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String kmsKeyName;
  final Map<String, String> labels;
  final String location;
  final String name;
  final String? project;
  final Map<String, String> pulumiLabels;
  final List<GetFunctionServiceConfig> serviceConfigs;
  final String state;
  final String updateTime;
  final String url;

  GetFunctionResult2({
    required this.buildConfigs,
    required this.description,
    required this.effectiveLabels,
    required this.environment,
    required this.eventTriggers,
    required this.id,
    required this.kmsKeyName,
    required this.labels,
    required this.location,
    required this.name,
    this.project,
    required this.pulumiLabels,
    required this.serviceConfigs,
    required this.state,
    required this.updateTime,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['buildConfigs'] =
        Input.encodeList<GetFunctionBuildConfig, Map<String, dynamic>>(
            buildConfigs, (value) => value.toMap());
    map['description'] = description;
    map['effectiveLabels'] = effectiveLabels;
    map['environment'] = environment;
    map['eventTriggers'] =
        Input.encodeList<GetFunctionEventTrigger2, Map<String, dynamic>>(
            eventTriggers, (value) => value.toMap());
    map['id'] = id;
    map['kmsKeyName'] = kmsKeyName;
    map['labels'] = labels;
    map['location'] = location;
    map['name'] = name;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['pulumiLabels'] = pulumiLabels;
    map['serviceConfigs'] =
        Input.encodeList<GetFunctionServiceConfig, Map<String, dynamic>>(
            serviceConfigs, (value) => value.toMap());
    map['state'] = state;
    map['updateTime'] = updateTime;
    map['url'] = url;
    return map;
  }

  factory GetFunctionResult2.fromMap(Map<String, dynamic> map) {
    return GetFunctionResult2(
      buildConfigs: Input.decodeList<GetFunctionBuildConfig>(
          map['buildConfigs'],
          (value) => GetFunctionBuildConfig.fromMap(
              (value as Map).cast<String, dynamic>())),
      description: map['description'] as String,
      effectiveLabels: (map['effectiveLabels'] as Map).cast<String, String>(),
      environment: map['environment'] as String,
      eventTriggers: Input.decodeList<GetFunctionEventTrigger2>(
          map['eventTriggers'],
          (value) => GetFunctionEventTrigger2.fromMap(
              (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      kmsKeyName: map['kmsKeyName'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      location: map['location'] as String,
      name: map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      pulumiLabels: (map['pulumiLabels'] as Map).cast<String, String>(),
      serviceConfigs: Input.decodeList<GetFunctionServiceConfig>(
          map['serviceConfigs'],
          (value) => GetFunctionServiceConfig.fromMap(
              (value as Map).cast<String, dynamic>())),
      state: map['state'] as String,
      updateTime: map['updateTime'] as String,
      url: map['url'] as String,
    );
  }
}
