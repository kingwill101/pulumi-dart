// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_descriptor_containeranalysis_v1alpha1.dart';

class BuildDefinitionContaineranalysisV1alpha1 {
  final String? buildType;
  final Map<String, String>? externalParameters;
  final Map<String, String>? internalParameters;
  final List<ResourceDescriptorContaineranalysisV1alpha1>? resolvedDependencies;

  BuildDefinitionContaineranalysisV1alpha1({
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
      map['resolvedDependencies'] = pulumi.Input.encodeList<
              ResourceDescriptorContaineranalysisV1alpha1,
              Map<String, dynamic>>(
          resolvedDependenciesValue, (value) => value.toMap());
    }
    return map;
  }

  factory BuildDefinitionContaineranalysisV1alpha1.fromMap(
      Map<String, dynamic> map) {
    return BuildDefinitionContaineranalysisV1alpha1(
      buildType: map['buildType'] == null ? null : map['buildType'] as String,
      externalParameters: map['externalParameters'] == null
          ? null
          : (map['externalParameters'] as Map).cast<String, String>(),
      internalParameters: map['internalParameters'] == null
          ? null
          : (map['internalParameters'] as Map).cast<String, String>(),
      resolvedDependencies: map['resolvedDependencies'] == null
          ? null
          : pulumi.Input.decodeList<
                  ResourceDescriptorContaineranalysisV1alpha1>(
              map['resolvedDependencies'],
              (value) => ResourceDescriptorContaineranalysisV1alpha1.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
