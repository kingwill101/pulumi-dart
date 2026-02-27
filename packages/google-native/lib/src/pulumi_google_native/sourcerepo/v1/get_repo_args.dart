// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getRepo.
class GetRepoArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> repoId;

  GetRepoArgs({
    this.project,
    required this.repoId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['repoId'] = repoId;
    return map;
  }

  factory GetRepoArgs.fromMap(Map<String, dynamic> map) {
    return GetRepoArgs(
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      repoId: pulumi.Input.asInput<String>(map['repoId']),
    );
  }
}
