// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sourcerepo_v1_get_repo_args_doc}
/// Arguments for getRepo.
/// {@endtemplate}
/// {@macro pulumi_sourcerepo_v1_get_repo_args_doc}
class GetRepoArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> repoId;

  /// Creates a new [GetRepoArgs].
  /// [project] Optional.
  /// [repoId] Required.
  GetRepoArgs({String? project, required String repoId})
    : project = pulumi.Input.asOptionalInput<String>(project),
      repoId = pulumi.Input.asInput<String>(repoId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'project': ?project, 'repoId': repoId};
  }

  factory GetRepoArgs.fromMap(Map<String, dynamic> map) {
    return GetRepoArgs(
      project: map['project'] == null ? null : map['project'] as String,
      repoId: map['repoId'] as String,
    );
  }
}
