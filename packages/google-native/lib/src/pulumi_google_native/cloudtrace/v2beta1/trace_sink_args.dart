// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'output_config.dart';

/// The set of arguments for TraceSink.
class TraceSinkArgs {
  /// The canonical sink resource name, unique within the project. Must be of the form: projects/[PROJECT_NUMBER]/traceSinks/[SINK_ID]. E.g.: `"projects/12345/traceSinks/my-project-trace-sink"`. Sink identifiers are limited to 256 characters and can include only the following characters: upper and lower-case alphanumeric characters, underscores, hyphens, and periods.
  final pulumi.Input<String>? name;

  /// The export destination.
  final pulumi.Input<OutputConfig> outputConfig;
  final pulumi.Input<String>? project;

  TraceSinkArgs({
    this.name,
    required this.outputConfig,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['outputConfig'] =
        pulumi.Input.mapInputValue<OutputConfig, Map<String, dynamic>>(
            outputConfig, (value) => value.toMap());
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory TraceSinkArgs.fromMap(Map<String, dynamic> map) {
    return TraceSinkArgs(
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      outputConfig: pulumi.Input.asInput<OutputConfig>(map['outputConfig']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
