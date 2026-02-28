// ignore_for_file: unused_element, unnecessary_cast

class GuestPoliciesRecipeUpdateStepFileExec {
  /// A list of possible return values that the program can return to indicate a success. Defaults to [0].
  final List<int>? allowedExitCodes;

  /// Arguments to be passed to the provided executable.
  final List<String>? args;

  /// The id of the relevant artifact in the recipe.
  final String? artifactId;

  /// The absolute path of the file on the local filesystem.
  final String? localPath;

  /// Creates a new [GuestPoliciesRecipeUpdateStepFileExec].
  /// [allowedExitCodes] A list of possible return values that the program can return to indicate a success. Defaults to [0].
  /// [args] Arguments to be passed to the provided executable.
  /// [artifactId] The id of the relevant artifact in the recipe.
  /// [localPath] The absolute path of the file on the local filesystem.
  GuestPoliciesRecipeUpdateStepFileExec({
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

  factory GuestPoliciesRecipeUpdateStepFileExec.fromMap(
      Map<String, dynamic> map) {
    return GuestPoliciesRecipeUpdateStepFileExec(
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
