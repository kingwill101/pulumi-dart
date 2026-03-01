// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Solution Dependency Context
class SolutionDependencyResponse {
  /// Solution dependencies
  final List<SolutionDependencyResponse>? dependencies;
  /// Solution Instance Name
  final String? solutionInstanceName;
  /// Solution Template Version Id
  final String solutionTemplateVersionId;
  /// Solution Version Id
  final String solutionVersionId;
  /// Target Id
  final String targetId;

  /// Creates a new [SolutionDependencyResponse].
  /// [dependencies] Solution dependencies
  /// [solutionInstanceName] Solution Instance Name
  /// [solutionTemplateVersionId] Solution Template Version Id
  /// [solutionVersionId] Solution Version Id
  /// [targetId] Target Id
  SolutionDependencyResponse({
    this.dependencies,
    this.solutionInstanceName,
    required this.solutionTemplateVersionId,
    required this.solutionVersionId,
    required this.targetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dependencies': ?dependencies == null ? null : pulumi.Input.encodeList<SolutionDependencyResponse, Map<String, dynamic>>(dependencies!, (value) => value.toMap()),
      'solutionInstanceName': ?solutionInstanceName,
      'solutionTemplateVersionId': solutionTemplateVersionId,
      'solutionVersionId': solutionVersionId,
      'targetId': targetId,
    };
  }

  factory SolutionDependencyResponse.fromMap(Map<String, dynamic> map) {
    return SolutionDependencyResponse(
      dependencies: map['dependencies'] == null ? null : pulumi.Input.decodeList<SolutionDependencyResponse>(map['dependencies'], (value) => SolutionDependencyResponse.fromMap((value as Map).cast<String, dynamic>())),
      solutionInstanceName: map['solutionInstanceName'] == null ? null : map['solutionInstanceName'] as String,
      solutionTemplateVersionId: map['solutionTemplateVersionId'] as String,
      solutionVersionId: map['solutionVersionId'] as String,
      targetId: map['targetId'] as String,
    );
  }
}

