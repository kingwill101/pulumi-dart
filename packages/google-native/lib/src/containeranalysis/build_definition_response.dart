// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_descriptor_response.dart';

class BuildDefinitionResponse {
  final String buildType;
  final Map<String, String> externalParameters;
  final Map<String, String> internalParameters;
  final List<ResourceDescriptorResponse> resolvedDependencies;

  /// Creates a new [BuildDefinitionResponse].
  /// [buildType] Required.
  /// [externalParameters] Required.
  /// [internalParameters] Required.
  /// [resolvedDependencies] Required.
  BuildDefinitionResponse({
    required this.buildType,
    required this.externalParameters,
    required this.internalParameters,
    required this.resolvedDependencies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buildType': buildType,
      'externalParameters': externalParameters,
      'internalParameters': internalParameters,
      'resolvedDependencies': pulumi.Input.encodeList<ResourceDescriptorResponse, Map<String, dynamic>>(resolvedDependencies, (value) => value.toMap()),
    };
  }

  factory BuildDefinitionResponse.fromMap(Map<String, dynamic> map) {
    return BuildDefinitionResponse(
      buildType: map['buildType'] as String,
      externalParameters: (map['externalParameters'] as Map).cast<String, String>(),
      internalParameters: (map['internalParameters'] as Map).cast<String, String>(),
      resolvedDependencies: pulumi.Input.decodeList<ResourceDescriptorResponse>(map['resolvedDependencies'], (value) => ResourceDescriptorResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

