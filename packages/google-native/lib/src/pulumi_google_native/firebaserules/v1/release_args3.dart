// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// The set of arguments for Release.
class ReleaseArgs3 {
  /// Format: `projects/{project_id}/releases/{release_id}`
  final Input<String>? name;
  final Input<String>? project;

  /// Name of the `Ruleset` referred to by this `Release`. The `Ruleset` must exist for the `Release` to be created.
  final Input<String> rulesetName;

  ReleaseArgs3({
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

  factory ReleaseArgs3.fromMap(Map<String, dynamic> map) {
    return ReleaseArgs3(
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      rulesetName: Input.asInput<String>(map['rulesetName']),
    );
  }
}
