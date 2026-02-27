// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_descriptor_response_containeranalysis_v1alpha1.dart';

class BuildDefinitionResponseContaineranalysisV1alpha1 {
  final String buildType;
  final Map<String, String> externalParameters;
  final Map<String, String> internalParameters;
  final List<ResourceDescriptorResponseContaineranalysisV1alpha1>
      resolvedDependencies;

  BuildDefinitionResponseContaineranalysisV1alpha1({
    required this.buildType,
    required this.externalParameters,
    required this.internalParameters,
    required this.resolvedDependencies,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['buildType'] = buildType;
    map['externalParameters'] = externalParameters;
    map['internalParameters'] = internalParameters;
    map['resolvedDependencies'] = pulumi.Input.encodeList<
        ResourceDescriptorResponseContaineranalysisV1alpha1,
        Map<String, dynamic>>(resolvedDependencies, (value) => value.toMap());
    return map;
  }

  factory BuildDefinitionResponseContaineranalysisV1alpha1.fromMap(
      Map<String, dynamic> map) {
    return BuildDefinitionResponseContaineranalysisV1alpha1(
      buildType: map['buildType'] as String,
      externalParameters:
          (map['externalParameters'] as Map).cast<String, String>(),
      internalParameters:
          (map['internalParameters'] as Map).cast<String, String>(),
      resolvedDependencies: pulumi.Input.decodeList<
              ResourceDescriptorResponseContaineranalysisV1alpha1>(
          map['resolvedDependencies'],
          (value) =>
              ResourceDescriptorResponseContaineranalysisV1alpha1.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
