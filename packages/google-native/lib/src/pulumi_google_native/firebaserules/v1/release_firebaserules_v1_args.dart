// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Release.
class ReleaseFirebaserulesV1Args {
  /// Format: `projects/{project_id}/releases/{release_id}`
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Name of the `Ruleset` referred to by this `Release`. The `Ruleset` must exist for the `Release` to be created.
  final pulumi.Input<String> rulesetName;

  ReleaseFirebaserulesV1Args({
    this.name,
    this.project,
    required this.rulesetName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['rulesetName'] = rulesetName;
    return map;
  }

  factory ReleaseFirebaserulesV1Args.fromMap(Map<String, dynamic> map) {
    return ReleaseFirebaserulesV1Args(
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      rulesetName: pulumi.Input.asInput<String>(map['rulesetName']),
    );
  }
}
