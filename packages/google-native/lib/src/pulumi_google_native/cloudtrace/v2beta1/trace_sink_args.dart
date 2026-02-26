// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'output_config.dart';

/// The set of arguments for TraceSink.
class TraceSinkArgs {
  /// The canonical sink resource name, unique within the project. Must be of the form: projects/[PROJECT_NUMBER]/traceSinks/[SINK_ID]. E.g.: `"projects/12345/traceSinks/my-project-trace-sink"`. Sink identifiers are limited to 256 characters and can include only the following characters: upper and lower-case alphanumeric characters, underscores, hyphens, and periods.
  final Input<String>? name;

  /// The export destination.
  final Input<OutputConfig> outputConfig;
  final Input<String>? project;

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
        Input.mapInputValue<OutputConfig, Map<String, dynamic>>(
            outputConfig, (value) => value.toMap());
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory TraceSinkArgs.fromMap(Map<String, dynamic> map) {
    return TraceSinkArgs(
      name: Input.asOptionalInput<String>(map['name']),
      outputConfig: Input.asInput<OutputConfig>(map['outputConfig']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
