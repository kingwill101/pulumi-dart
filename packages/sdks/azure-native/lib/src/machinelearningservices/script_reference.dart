// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Script reference
class ScriptReference {
  /// Optional command line arguments passed to the script to run.
  final pulumi.Input<String>? scriptArguments;
  /// The location of scripts in the mounted volume.
  final pulumi.Input<String>? scriptData;
  /// The storage source of the script: workspace.
  final pulumi.Input<String>? scriptSource;
  /// Optional time period passed to timeout command.
  final pulumi.Input<String>? timeout;

  /// Creates a new [ScriptReference].
  /// [scriptArguments] Optional command line arguments passed to the script to run.
  /// [scriptData] The location of scripts in the mounted volume.
  /// [scriptSource] The storage source of the script: workspace.
  /// [timeout] Optional time period passed to timeout command.
  const ScriptReference({
    this.scriptArguments,
    this.scriptData,
    this.scriptSource,
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scriptArguments': ?scriptArguments,
      'scriptData': ?scriptData,
      'scriptSource': ?scriptSource,
      'timeout': ?timeout,
    };
  }

  factory ScriptReference.fromMap(Map<String, dynamic> map) {
    return ScriptReference(
      scriptArguments: (() { final guardedValue = map['scriptArguments']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scriptData: (() { final guardedValue = map['scriptData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scriptSource: (() { final guardedValue = map['scriptSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeout: (() { final guardedValue = map['timeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

