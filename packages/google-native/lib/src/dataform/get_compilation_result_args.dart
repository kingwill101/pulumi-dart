// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataform_v1beta1_get_compilation_result_args_doc}
/// Arguments for getCompilationResult.
/// {@endtemplate}
/// {@macro pulumi_dataform_v1beta1_get_compilation_result_args_doc}
class GetCompilationResultArgs {
  final pulumi.Input<String> compilationResultId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> repositoryId;

  /// Creates a new [GetCompilationResultArgs].
  /// [compilationResultId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [repositoryId] Required.
  GetCompilationResultArgs({
    required String compilationResultId,
    required String location,
    String? project,
    required String repositoryId,
  })  : compilationResultId = pulumi.Input.asInput<String>(compilationResultId),
        location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project),
        repositoryId = pulumi.Input.asInput<String>(repositoryId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['compilationResultId'] = compilationResultId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['repositoryId'] = repositoryId;
    return map;
  }

  factory GetCompilationResultArgs.fromMap(Map<String, dynamic> map) {
    return GetCompilationResultArgs(
      compilationResultId: map['compilationResultId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      repositoryId: map['repositoryId'] as String,
    );
  }
}
