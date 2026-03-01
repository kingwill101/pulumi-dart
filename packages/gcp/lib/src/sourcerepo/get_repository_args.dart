// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sourcerepo_get_repository_get_repository_args_doc}
/// Arguments for getRepository.
/// {@endtemplate}
/// {@macro pulumi_sourcerepo_get_repository_get_repository_args_doc}
class GetRepositoryArgs {
  /// Resource name of the repository. The repo name may contain slashes. eg, `name/with/slash`
  final pulumi.Input<String> name;
  /// The ID of the project in which the resource belongs. If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetRepositoryArgs].
  /// [name] Resource name of the repository. The repo name may contain slashes. eg, `name/with/slash`
  /// [project] The ID of the project in which the resource belongs. If it is not provided, the provider project is used.
  GetRepositoryArgs({
    required String name,
    String? project,
  }) :
      name = pulumi.Input.asInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'project': ?project,
    };
  }

  factory GetRepositoryArgs.fromMap(Map<String, dynamic> map) {
    return GetRepositoryArgs(
      name: map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

