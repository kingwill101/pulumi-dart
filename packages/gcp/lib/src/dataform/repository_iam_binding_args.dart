// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'repository_iam_binding_condition.dart';

/// {@template pulumi_dataform_repository_iam_binding_repository_iam_binding_args_doc}
/// The set of arguments for RepositoryIamBinding.
/// {@endtemplate}
/// {@macro pulumi_dataform_repository_iam_binding_repository_iam_binding_args_doc}
class RepositoryIamBindingArgs {
  final pulumi.Input<RepositoryIamBindingCondition>? condition;
  final pulumi.Input<List<String>> members;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? region;
  final pulumi.Input<String> repository;
  final pulumi.Input<String> role;

  /// Creates a new [RepositoryIamBindingArgs].
  /// [condition] Optional.
  /// [members] Required.
  /// [project] Optional.
  /// [region] Optional.
  /// [repository] Required.
  /// [role] Required.
  RepositoryIamBindingArgs({
    RepositoryIamBindingCondition? condition,
    required List<String> members,
    String? project,
    String? region,
    required String repository,
    required String role,
  }) :
      condition = pulumi.Input.asOptionalInput<RepositoryIamBindingCondition>(condition),
      members = pulumi.Input.asInput<List<String>>(members),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asOptionalInput<String>(region),
      repository = pulumi.Input.asInput<String>(repository),
      role = pulumi.Input.asInput<String>(role);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?pulumi.Input.mapOptionalInputValue<RepositoryIamBindingCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'members': members,
      'project': ?project,
      'region': ?region,
      'repository': repository,
      'role': role,
    };
  }

  factory RepositoryIamBindingArgs.fromMap(Map<String, dynamic> map) {
    return RepositoryIamBindingArgs(
      condition: map['condition'] == null ? null : RepositoryIamBindingCondition.fromMap((map['condition'] as Map).cast<String, dynamic>()),
      members: (map['members'] as List).cast<String>(),
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      repository: map['repository'] as String,
      role: map['role'] as String,
    );
  }
}

