// ignore_for_file: unused_element, unnecessary_cast

import 'gcs_object_response.dart';

/// Common configurations for an ExecStep.
class ExecStepConfigResponse {
  /// Defaults to [0]. A list of possible return values that the execution can return to indicate a success.
  final List<int> allowedSuccessCodes;
  /// A Cloud Storage object containing the executable.
  final GcsObjectResponse gcsObject;
  /// The script interpreter to use to run the script. If no interpreter is specified the script will be executed directly, which will likely only succeed for scripts with [shebang lines] (https://en.wikipedia.org/wiki/Shebang_\(Unix\)).
  final String interpreter;
  /// An absolute path to the executable on the VM.
  final String localPath;

  /// Creates a new [ExecStepConfigResponse].
  /// [allowedSuccessCodes] Defaults to [0]. A list of possible return values that the execution can return to indicate a success.
  /// [gcsObject] A Cloud Storage object containing the executable.
  /// [interpreter] The script interpreter to use to run the script. If no interpreter is specified the script will be executed directly, which will likely only succeed for scripts with [shebang lines] (https://en.wikipedia.org/wiki/Shebang_\(Unix\)).
  /// [localPath] An absolute path to the executable on the VM.
  ExecStepConfigResponse({
    required this.allowedSuccessCodes,
    required this.gcsObject,
    required this.interpreter,
    required this.localPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedSuccessCodes': allowedSuccessCodes,
      'gcsObject': gcsObject.toMap(),
      'interpreter': interpreter,
      'localPath': localPath,
    };
  }

  factory ExecStepConfigResponse.fromMap(Map<String, dynamic> map) {
    return ExecStepConfigResponse(
      allowedSuccessCodes: (map['allowedSuccessCodes'] as List).cast<int>(),
      gcsObject: GcsObjectResponse.fromMap((map['gcsObject'] as Map).cast<String, dynamic>()),
      interpreter: map['interpreter'] as String,
      localPath: map['localPath'] as String,
    );
  }
}

