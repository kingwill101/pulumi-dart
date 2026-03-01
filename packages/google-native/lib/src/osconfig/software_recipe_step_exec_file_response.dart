// ignore_for_file: unused_element, unnecessary_cast

/// Executes an artifact or local file.
class SoftwareRecipeStepExecFileResponse {
  /// Defaults to [0]. A list of possible return values that the program can return to indicate a success.
  final List<int> allowedExitCodes;

  /// Arguments to be passed to the provided executable.
  final List<String> args;

  /// The id of the relevant artifact in the recipe.
  final String artifactId;

  /// The absolute path of the file on the local filesystem.
  final String localPath;

  /// Creates a new [SoftwareRecipeStepExecFileResponse].
  /// [allowedExitCodes] Defaults to [0]. A list of possible return values that the program can return to indicate a success.
  /// [args] Arguments to be passed to the provided executable.
  /// [artifactId] The id of the relevant artifact in the recipe.
  /// [localPath] The absolute path of the file on the local filesystem.
  SoftwareRecipeStepExecFileResponse({
    required this.allowedExitCodes,
    required this.args,
    required this.artifactId,
    required this.localPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedExitCodes': allowedExitCodes,
      'args': args,
      'artifactId': artifactId,
      'localPath': localPath,
    };
  }

  factory SoftwareRecipeStepExecFileResponse.fromMap(Map<String, dynamic> map) {
    return SoftwareRecipeStepExecFileResponse(
      allowedExitCodes: (map['allowedExitCodes'] as List).cast<int>(),
      args: (map['args'] as List).cast<String>(),
      artifactId: map['artifactId'] as String,
      localPath: map['localPath'] as String,
    );
  }
}
