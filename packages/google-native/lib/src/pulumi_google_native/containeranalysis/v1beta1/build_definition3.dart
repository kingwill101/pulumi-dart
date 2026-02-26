// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'resource_descriptor3.dart';

class BuildDefinition3 {
  final String? buildType;
  final Map<String, String>? externalParameters;
  final Map<String, String>? internalParameters;
  final List<ResourceDescriptor3>? resolvedDependencies;

  BuildDefinition3({
    this.buildType,
    this.externalParameters,
    this.internalParameters,
    this.resolvedDependencies,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final buildTypeValue = buildType;
    if (buildTypeValue != null) {
      map['buildType'] = buildTypeValue;
    }
    final externalParametersValue = externalParameters;
    if (externalParametersValue != null) {
      map['externalParameters'] = externalParametersValue;
    }
    final internalParametersValue = internalParameters;
    if (internalParametersValue != null) {
      map['internalParameters'] = internalParametersValue;
    }
    final resolvedDependenciesValue = resolvedDependencies;
    if (resolvedDependenciesValue != null) {
      map['resolvedDependencies'] =
          Input.encodeList<ResourceDescriptor3, Map<String, dynamic>>(
              resolvedDependenciesValue, (value) => value.toMap());
    }
    return map;
  }

  factory BuildDefinition3.fromMap(Map<String, dynamic> map) {
    return BuildDefinition3(
      buildType: map['buildType'] == null ? null : map['buildType'] as String,
      externalParameters: map['externalParameters'] == null
          ? null
          : (map['externalParameters'] as Map).cast<String, String>(),
      internalParameters: map['internalParameters'] == null
          ? null
          : (map['internalParameters'] as Map).cast<String, String>(),
      resolvedDependencies: map['resolvedDependencies'] == null
          ? null
          : Input.decodeList<ResourceDescriptor3>(
              map['resolvedDependencies'],
              (value) => ResourceDescriptor3.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
