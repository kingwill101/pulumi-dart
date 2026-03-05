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
    this.logType,
    this.slsLogStore,
    this.slsProject,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logType': ?logType,
      'slsLogStore': ?slsLogStore,
      'slsProject': ?slsProject,
    };
  }

  factory LogConfigState.fromMap(Map<String, dynamic> map) {
    return LogConfigState(
      logType: (() { final guardedValue = map['logType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      slsLogStore: (() { final guardedValue = map['slsLogStore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      slsProject: (() { final guardedValue = map['slsProject']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

