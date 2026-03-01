// ignore_for_file: unused_element, unnecessary_cast


/// Script reference
class ScriptReferenceResponse {
  /// Optional command line arguments passed to the script to run.
  final String? scriptArguments;
  /// The location of scripts in the mounted volume.
  final String? scriptData;
  /// The storage source of the script: workspace.
  final String? scriptSource;
  /// Optional time period passed to timeout command.
  final String? timeout;

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
      scriptArguments: map['scriptArguments'] == null ? null : map['scriptArguments'] as String,
      scriptData: map['scriptData'] == null ? null : map['scriptData'] as String,
      scriptSource: map['scriptSource'] == null ? null : map['scriptSource'] as String,
      timeout: map['timeout'] == null ? null : map['timeout'] as String,
    );
  }
}

