// ignore_for_file: unused_element, unnecessary_cast

/// Executes an artifact or local file.
class SoftwareRecipeStepExecFile {
  /// Defaults to [0]. A list of possible return values that the program can return to indicate a success.
  final List<int>? allowedExitCodes;

  /// Arguments to be passed to the provided executable.
  final List<String>? args;

  /// The id of the relevant artifact in the recipe.
  final String? artifactId;

  /// The absolute path of the file on the local filesystem.
  final String? localPath;

  SoftwareRecipeStepExecFile({
    this.allowedExitCodes,
    this.args,
    this.artifactId,
    this.localPath,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowedExitCodesValue = allowedExitCodes;
    if (allowedExitCodesValue != null) {
      map['allowedExitCodes'] = allowedExitCodesValue;
    }
    final argsValue = args;
    if (argsValue != null) {
      map['args'] = argsValue;
    }
    final artifactIdValue = artifactId;
    if (artifactIdValue != null) {
      map['artifactId'] = artifactIdValue;
    }
    final localPathValue = localPath;
    if (localPathValue != null) {
      map['localPath'] = localPathValue;
    }
    return map;
  }

  factory SoftwareRecipeStepExecFile.fromMap(Map<String, dynamic> map) {
    return SoftwareRecipeStepExecFile(
      allowedExitCodes: map['allowedExitCodes'] == null
          ? null
          : (map['allowedExitCodes'] as List).cast<int>(),
      args: map['args'] == null ? null : (map['args'] as List).cast<String>(),
      artifactId:
          map['artifactId'] == null ? null : map['artifactId'] as String,
      localPath: map['localPath'] == null ? null : map['localPath'] as String,
    );
  }
}
