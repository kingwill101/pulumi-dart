// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_descriptor.dart';

class BuildDefinition {
  final String? buildType;
  final Map<String, String>? externalParameters;
  final Map<String, String>? internalParameters;
  final List<ResourceDescriptor>? resolvedDependencies;

  /// Creates a new [BuildDefinition].
  /// [buildType] Optional.
  /// [externalParameters] Optional.
  /// [internalParameters] Optional.
  /// [resolvedDependencies] Optional.
  BuildDefinition({
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
          pulumi.Input.encodeList<ResourceDescriptor, Map<String, dynamic>>(
              resolvedDependenciesValue, (value) => value.toMap());
    }
    return map;
  }

  factory BuildDefinition.fromMap(Map<String, dynamic> map) {
    return BuildDefinition(
      buildType: map['buildType'] == null ? null : map['buildType'] as String,
      externalParameters: map['externalParameters'] == null
          ? null
          : (map['externalParameters'] as Map).cast<String, String>(),
      internalParameters: map['internalParameters'] == null
          ? null
          : (map['internalParameters'] as Map).cast<String, String>(),
      resolvedDependencies: map['resolvedDependencies'] == null
          ? null
          : pulumi.Input.decodeList<ResourceDescriptor>(
              map['resolvedDependencies'],
              (value) => ResourceDescriptor.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
