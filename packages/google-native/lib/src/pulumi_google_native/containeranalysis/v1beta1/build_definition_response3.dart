// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'resource_descriptor_response3.dart';

class BuildDefinitionResponse3 {
  final String buildType;
  final Map<String, String> externalParameters;
  final Map<String, String> internalParameters;
  final List<ResourceDescriptorResponse3> resolvedDependencies;

  BuildDefinitionResponse3({
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
        Input.encodeList<ResourceDescriptorResponse3, Map<String, dynamic>>(
            resolvedDependencies, (value) => value.toMap());
    return map;
  }

  factory BuildDefinitionResponse3.fromMap(Map<String, dynamic> map) {
    return BuildDefinitionResponse3(
      buildType: map['buildType'] as String,
      externalParameters:
          (map['externalParameters'] as Map).cast<String, String>(),
      internalParameters:
          (map['internalParameters'] as Map).cast<String, String>(),
      resolvedDependencies: Input.decodeList<ResourceDescriptorResponse3>(
          map['resolvedDependencies'],
          (value) => ResourceDescriptorResponse3.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
