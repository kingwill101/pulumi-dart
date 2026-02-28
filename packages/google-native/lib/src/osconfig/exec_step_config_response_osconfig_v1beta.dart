// ignore_for_file: unused_element, unnecessary_cast

import 'gcs_object_response_osconfig_v1beta.dart';

/// Common configurations for an ExecStep.
class ExecStepConfigResponseOsconfigV1beta {
  /// Defaults to [0]. A list of possible return values that the execution can return to indicate a success.
  final List<int> allowedSuccessCodes;

  /// A Google Cloud Storage object containing the executable.
  final GcsObjectResponseOsconfigV1beta gcsObject;

  /// The script interpreter to use to run the script. If no interpreter is specified the script will be executed directly, which will likely only succeed for scripts with [shebang lines] (https://en.wikipedia.org/wiki/Shebang_\(Unix\)).
  final String interpreter;

  /// An absolute path to the executable on the VM.
  final String localPath;

  /// Creates a new [ExecStepConfigResponseOsconfigV1beta].
  /// [allowedSuccessCodes] Defaults to [0]. A list of possible return values that the execution can return to indicate a success.
  /// [gcsObject] A Google Cloud Storage object containing the executable.
  /// [interpreter] The script interpreter to use to run the script. If no interpreter is specified the script will be executed directly, which will likely only succeed for scripts with [shebang lines] (https://en.wikipedia.org/wiki/Shebang_\(Unix\)).
  /// [localPath] An absolute path to the executable on the VM.
  ExecStepConfigResponseOsconfigV1beta({
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

  factory ExecStepConfigResponseOsconfigV1beta.fromMap(
      Map<String, dynamic> map) {
    return ExecStepConfigResponseOsconfigV1beta(
      allowedSuccessCodes: (map['allowedSuccessCodes'] as List).cast<int>(),
      gcsObject: GcsObjectResponseOsconfigV1beta.fromMap(
          (map['gcsObject'] as Map).cast<String, dynamic>()),
      interpreter: map['interpreter'] as String,
      localPath: map['localPath'] as String,
    );
  }
}
