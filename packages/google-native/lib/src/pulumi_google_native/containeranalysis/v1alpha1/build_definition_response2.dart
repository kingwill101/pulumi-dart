// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'resource_descriptor_response2.dart';

class BuildDefinitionResponse2 {
  final String buildType;
  final Map<String, String> externalParameters;
  final Map<String, String> internalParameters;
  final List<ResourceDescriptorResponse2> resolvedDependencies;

  BuildDefinitionResponse2({
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
    map['resolvedDependencies'] =
        Input.encodeList<ResourceDescriptorResponse2, Map<String, dynamic>>(
            resolvedDependencies, (value) => value.toMap());
    return map;
  }

  factory BuildDefinitionResponse2.fromMap(Map<String, dynamic> map) {
    return BuildDefinitionResponse2(
      buildType: map['buildType'] as String,
      externalParameters:
          (map['externalParameters'] as Map).cast<String, String>(),
      internalParameters:
          (map['internalParameters'] as Map).cast<String, String>(),
      resolvedDependencies: Input.decodeList<ResourceDescriptorResponse2>(
          map['resolvedDependencies'],
          (value) => ResourceDescriptorResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
