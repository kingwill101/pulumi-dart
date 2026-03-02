// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Script reference
class ScriptReferenceResponse {
  /// Optional command line arguments passed to the script to run.
  final pulumi.Input<String>? scriptArguments;
  /// The location of scripts in the mounted volume.
  final pulumi.Input<String>? scriptData;
  /// The storage source of the script: workspace.
  final pulumi.Input<String>? scriptSource;
  /// Optional time period passed to timeout command.
  final pulumi.Input<String>? timeout;

  /// Creates a new [ScriptReferenceResponse].
  /// [scriptArguments] Optional command line arguments passed to the script to run.
  /// [scriptData] The location of scripts in the mounted volume.
  /// [scriptSource] The storage source of the script: workspace.
  /// [timeout] Optional time period passed to timeout command.
  ScriptReferenceResponse({
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

  factory ScriptReferenceResponse.fromMap(Map<String, dynamic> map) {
    return ScriptReferenceResponse(
      scriptArguments: map['scriptArguments'] == null ? null : (map['scriptArguments'] as String).input(),
      scriptData: map['scriptData'] == null ? null : (map['scriptData'] as String).input(),
      scriptSource: map['scriptSource'] == null ? null : (map['scriptSource'] as String).input(),
      timeout: map['timeout'] == null ? null : (map['timeout'] as String).input(),
    );
  }
}

