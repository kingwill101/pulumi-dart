// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Solution Dependency Context
class SolutionDependencyResponse {
  /// Solution dependencies
  final pulumi.Input<List<SolutionDependencyResponse>>? dependencies;
  /// Solution Instance Name
  final pulumi.Input<String>? solutionInstanceName;
  /// Solution Template Version Id
  final pulumi.Input<String> solutionTemplateVersionId;
  /// Solution Version Id
  final pulumi.Input<String> solutionVersionId;
  /// Target Id
  final pulumi.Input<String> targetId;

  /// Creates a new [SolutionDependencyResponse].
  /// [dependencies] Solution dependencies
  /// [solutionInstanceName] Solution Instance Name
  /// [solutionTemplateVersionId] Solution Template Version Id
  /// [solutionVersionId] Solution Version Id
  /// [targetId] Target Id
  const SolutionDependencyResponse({
    this.dependencies,
    this.solutionInstanceName,
    required this.solutionTemplateVersionId,
    required this.solutionVersionId,
    required this.targetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dependencies': ?pulumi.Input.mapOptionalInputValue<List<SolutionDependencyResponse>, List<Map<String, dynamic>>>(dependencies, (value) => pulumi.Input.encodeList<SolutionDependencyResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'solutionInstanceName': ?solutionInstanceName,
      'solutionTemplateVersionId': solutionTemplateVersionId,
      'solutionVersionId': solutionVersionId,
      'targetId': targetId,
    };
  }

  factory SolutionDependencyResponse.fromMap(Map<String, dynamic> map) {
    return SolutionDependencyResponse(
      dependencies: (() { final guardedValue = map['dependencies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SolutionDependencyResponse>(guardedValue, (value) => SolutionDependencyResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      solutionInstanceName: (() { final guardedValue = map['solutionInstanceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      solutionTemplateVersionId: pulumi.Input.fromValue(map['solutionTemplateVersionId'] as String),
      solutionVersionId: pulumi.Input.fromValue(map['solutionVersionId'] as String),
      targetId: pulumi.Input.fromValue(map['targetId'] as String),
    );
  }
}

