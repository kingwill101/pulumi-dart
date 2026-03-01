// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cr_repo_repo_args_doc}
/// The set of arguments for Repo.
/// {@endtemplate}
/// {@macro pulumi_cr_repo_repo_args_doc}
class RepoArgs {
  /// The repository specific information. MarkDown format is supported, and the length limit is 2000.
  final pulumi.Input<String>? detail;
  /// Name of container registry repository.
  final pulumi.Input<String>? name;
  /// Name of container registry namespace where repository is located.
  final pulumi.Input<String> namespace;
  /// `PUBLIC` or `PRIVATE`, repo's visibility.
  final pulumi.Input<String> repoType;
  /// The repository general information. It can contain 1 to 80 characters.
  final pulumi.Input<String> summary;

  /// Creates a new [RepoArgs].
  /// [detail] The repository specific information. MarkDown format is supported, and the length limit is 2000.
  /// [name] Name of container registry repository.
  /// [namespace] Name of container registry namespace where repository is located.
  /// [repoType] `PUBLIC` or `PRIVATE`, repo's visibility.
  /// [summary] The repository general information. It can contain 1 to 80 characters.
  RepoArgs({
    pulumi.Output<String>? detail,
    pulumi.Output<String>? name,
    required pulumi.Output<String> namespace,
    required pulumi.Output<String> repoType,
    required pulumi.Output<String> summary,
  }) :
      detail = pulumi.Input.asOptionalInput<String>(detail),
      name = pulumi.Input.asOptionalInput<String>(name),
      namespace = pulumi.Input.asInput<String>(namespace),
      repoType = pulumi.Input.asInput<String>(repoType),
      summary = pulumi.Input.asInput<String>(summary);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'detail': ?detail,
      'name': ?name,
      'namespace': namespace,
      'repoType': repoType,
      'summary': summary,
    };
  }

  factory RepoArgs.fromMap(Map<String, dynamic> map) {
    return RepoArgs(
      detail: map['detail'] == null ? null : pulumi.Output.create<String>(map['detail'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      namespace: pulumi.Output.create<String>(map['namespace'] as String),
      repoType: pulumi.Output.create<String>(map['repoType'] as String),
      summary: pulumi.Output.create<String>(map['summary'] as String),
    );
  }
}

