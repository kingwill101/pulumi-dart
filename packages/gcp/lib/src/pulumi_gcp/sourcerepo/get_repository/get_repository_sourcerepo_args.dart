// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getRepository.
class GetRepositorySourcerepoArgs {
  /// Resource name of the repository. The repo name may contain slashes. eg, `name/with/slash`
  final pulumi.Input<String> name;

  /// The ID of the project in which the resource belongs. If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  GetRepositorySourcerepoArgs({
    required this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetRepositorySourcerepoArgs.fromMap(Map<String, dynamic> map) {
    return GetRepositorySourcerepoArgs(
      name: pulumi.Input.asInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
