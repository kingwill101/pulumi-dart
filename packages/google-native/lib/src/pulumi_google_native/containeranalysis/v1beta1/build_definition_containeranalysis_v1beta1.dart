// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_descriptor_containeranalysis_v1beta1.dart';

class BuildDefinitionContaineranalysisV1beta1 {
  final String? buildType;
  final Map<String, String>? externalParameters;
  final Map<String, String>? internalParameters;
  final List<ResourceDescriptorContaineranalysisV1beta1>? resolvedDependencies;

  BuildDefinitionContaineranalysisV1beta1({
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
              ResourceDescriptorContaineranalysisV1beta1, Map<String, dynamic>>(
          resolvedDependenciesValue, (value) => value.toMap());
    }
    return map;
  }

  factory BuildDefinitionContaineranalysisV1beta1.fromMap(
      Map<String, dynamic> map) {
    return BuildDefinitionContaineranalysisV1beta1(
      buildType: map['buildType'] == null ? null : map['buildType'] as String,
      externalParameters: map['externalParameters'] == null
          ? null
          : (map['externalParameters'] as Map).cast<String, String>(),
      internalParameters: map['internalParameters'] == null
          ? null
          : (map['internalParameters'] as Map).cast<String, String>(),
      resolvedDependencies: map['resolvedDependencies'] == null
          ? null
          : pulumi.Input.decodeList<ResourceDescriptorContaineranalysisV1beta1>(
              map['resolvedDependencies'],
              (value) => ResourceDescriptorContaineranalysisV1beta1.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
