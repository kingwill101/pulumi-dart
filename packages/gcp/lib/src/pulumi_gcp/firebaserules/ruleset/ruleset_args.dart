// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../ruleset_source/ruleset_source.dart';

/// The set of arguments for Ruleset.
class RulesetArgs {
  /// The project for the resource
  final pulumi.Input<String>? project;

  /// `Source` for the `Ruleset`.
  final pulumi.Input<RulesetSource> source;

  RulesetArgs({
    this.project,
    required this.source,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['source'] =
        pulumi.Input.mapInputValue<RulesetSource, Map<String, dynamic>>(
            source, (value) => value.toMap());
    return map;
  }

  factory RulesetArgs.fromMap(Map<String, dynamic> map) {
    return RulesetArgs(
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      source: pulumi.Input.asInput<RulesetSource>(map['source']),
    );
  }
}
