// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_descriptor_response_containeranalysis_v1beta1.dart';

class BuildDefinitionResponseContaineranalysisV1beta1 {
  final String buildType;
  final Map<String, String> externalParameters;
  final Map<String, String> internalParameters;
  final List<ResourceDescriptorResponseContaineranalysisV1beta1>
      resolvedDependencies;

  /// Creates a new [BuildDefinitionResponseContaineranalysisV1beta1].
  /// [buildType] Required.
  /// [externalParameters] Required.
  /// [internalParameters] Required.
  /// [resolvedDependencies] Required.
  BuildDefinitionResponseContaineranalysisV1beta1({
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
        ResourceDescriptorResponseContaineranalysisV1beta1,
        Map<String, dynamic>>(resolvedDependencies, (value) => value.toMap());
    return map;
  }

  factory BuildDefinitionResponseContaineranalysisV1beta1.fromMap(
      Map<String, dynamic> map) {
    return BuildDefinitionResponseContaineranalysisV1beta1(
      buildType: map['buildType'] as String,
      externalParameters:
          (map['externalParameters'] as Map).cast<String, String>(),
      internalParameters:
          (map['internalParameters'] as Map).cast<String, String>(),
      resolvedDependencies: pulumi.Input.decodeList<
              ResourceDescriptorResponseContaineranalysisV1beta1>(
          map['resolvedDependencies'],
          (value) => ResourceDescriptorResponseContaineranalysisV1beta1.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
