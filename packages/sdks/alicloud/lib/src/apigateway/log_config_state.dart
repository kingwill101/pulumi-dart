// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering LogConfig resources.
class LogConfigState {
  /// The type the of log. Valid values: `PROVIDER`.
  final pulumi.Input<String>? logType;
  /// The name of the Log Store.
  final pulumi.Input<String>? slsLogStore;
  /// The name of the Project.
  final pulumi.Input<String>? slsProject;

  /// Creates a new [LogConfigState].
  /// [logType] The type the of log. Valid values: `PROVIDER`.
  /// [slsLogStore] The name of the Log Store.
  /// [slsProject] The name of the Project.
  LogConfigState({
    pulumi.Output<String>? logType,
    pulumi.Output<String>? slsLogStore,
    pulumi.Output<String>? slsProject,
  }) :
      logType = pulumi.Input.asOptionalInput<String>(logType),
      slsLogStore = pulumi.Input.asOptionalInput<String>(slsLogStore),
      slsProject = pulumi.Input.asOptionalInput<String>(slsProject);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logType': ?logType,
      'slsLogStore': ?slsLogStore,
      'slsProject': ?slsProject,
    };
  }

  factory LogConfigState.fromMap(Map<String, dynamic> map) {
    return LogConfigState(
      logType: map['logType'] == null ? null : pulumi.Output.create<String>(map['logType'] as String),
      slsLogStore: map['slsLogStore'] == null ? null : pulumi.Output.create<String>(map['slsLogStore'] as String),
      slsProject: map['slsProject'] == null ? null : pulumi.Output.create<String>(map['slsProject'] as String),
    );
  }
}

