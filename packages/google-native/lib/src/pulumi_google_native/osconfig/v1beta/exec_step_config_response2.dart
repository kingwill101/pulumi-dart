// ignore_for_file: unused_element, unnecessary_cast

import 'gcs_object_response2.dart';

/// Common configurations for an ExecStep.
class ExecStepConfigResponse2 {
  /// Defaults to [0]. A list of possible return values that the execution can return to indicate a success.
  final List<int> allowedSuccessCodes;

  /// A Google Cloud Storage object containing the executable.
  final GcsObjectResponse2 gcsObject;

  /// The script interpreter to use to run the script. If no interpreter is specified the script will be executed directly, which will likely only succeed for scripts with [shebang lines] (https://en.wikipedia.org/wiki/Shebang_\(Unix\)).
  final String interpreter;

  /// An absolute path to the executable on the VM.
  final String localPath;

  ExecStepConfigResponse2({
    required this.allowedSuccessCodes,
    required this.gcsObject,
    required this.interpreter,
    required this.localPath,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allowedSuccessCodes'] = allowedSuccessCodes;
    map['gcsObject'] = gcsObject.toMap();
    map['interpreter'] = interpreter;
    map['localPath'] = localPath;
    return map;
  }

  factory ExecStepConfigResponse2.fromMap(Map<String, dynamic> map) {
    return ExecStepConfigResponse2(
      allowedSuccessCodes: (map['allowedSuccessCodes'] as List).cast<int>(),
      gcsObject: GcsObjectResponse2.fromMap(
          (map['gcsObject'] as Map).cast<String, dynamic>()),
      interpreter: map['interpreter'] as String,
      localPath: map['localPath'] as String,
    );
  }
}
