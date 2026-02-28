// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'code_compilation_config_response.dart';
import 'compilation_error_response.dart';

/// Result data returned by getCompilationResult.
class GetCompilationResultResult {
  /// Immutable. If set, fields of `code_compilation_config` override the default compilation settings that are specified in dataform.json.
  final CodeCompilationConfigResponse codeCompilationConfig;

  /// Errors encountered during project compilation.
  final List<CompilationErrorResponse> compilationErrors;

  /// The version of `@dataform/core` that was used for compilation.
  final String dataformCoreVersion;

  /// Immutable. Git commit/tag/branch name at which the repository should be compiled. Must exist in the remote repository. Examples: - a commit SHA: `12ade345` - a tag: `tag1` - a branch name: `branch1`
  final String gitCommitish;

  /// The compilation result's name.
  final String name;

  /// Immutable. The name of the release config to compile. The release config's 'current_compilation_result' field will be updated to this compilation result. Must be in the format `projects/*/locations/*/repositories/*/releaseConfigs/*`.
  final String releaseConfig;

  /// The fully resolved Git commit SHA of the code that was compiled. Not set for compilation results whose source is a workspace.
  final String resolvedGitCommitSha;

  /// Immutable. The name of the workspace to compile. Must be in the format `projects/*/locations/*/repositories/*/workspaces/*`.
  final String workspace;

  /// Creates a new [GetCompilationResultResult].
  /// [codeCompilationConfig] Immutable. If set, fields of `code_compilation_config` override the default compilation settings that are specified in dataform.json.
  /// [compilationErrors] Errors encountered during project compilation.
  /// [dataformCoreVersion] The version of `@dataform/core` that was used for compilation.
  /// [gitCommitish] Immutable. Git commit/tag/branch name at which the repository should be compiled. Must exist in the remote repository. Examples: - a commit SHA: `12ade345` - a tag: `tag1` - a branch name: `branch1`
  /// [name] The compilation result's name.
  /// [releaseConfig] Immutable. The name of the release config to compile. The release config's 'current_compilation_result' field will be updated to this compilation result. Must be in the format `projects/*/locations/*/repositories/*/releaseConfigs/*`.
  /// [resolvedGitCommitSha] The fully resolved Git commit SHA of the code that was compiled. Not set for compilation results whose source is a workspace.
  /// [workspace] Immutable. The name of the workspace to compile. Must be in the format `projects/*/locations/*/repositories/*/workspaces/*`.
  GetCompilationResultResult({
    required this.codeCompilationConfig,
    required this.compilationErrors,
    required this.dataformCoreVersion,
    required this.gitCommitish,
    required this.name,
    required this.releaseConfig,
    required this.resolvedGitCommitSha,
    required this.workspace,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['codeCompilationConfig'] = codeCompilationConfig.toMap();
    map['compilationErrors'] =
        pulumi.Input.encodeList<CompilationErrorResponse, Map<String, dynamic>>(
            compilationErrors, (value) => value.toMap());
    map['dataformCoreVersion'] = dataformCoreVersion;
    map['gitCommitish'] = gitCommitish;
    map['name'] = name;
    map['releaseConfig'] = releaseConfig;
    map['resolvedGitCommitSha'] = resolvedGitCommitSha;
    map['workspace'] = workspace;
    return map;
  }

  factory GetCompilationResultResult.fromMap(Map<String, dynamic> map) {
    return GetCompilationResultResult(
      codeCompilationConfig: CodeCompilationConfigResponse.fromMap(
          (map['codeCompilationConfig'] as Map).cast<String, dynamic>()),
      compilationErrors: pulumi.Input.decodeList<CompilationErrorResponse>(
          map['compilationErrors'],
          (value) => CompilationErrorResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      dataformCoreVersion: map['dataformCoreVersion'] as String,
      gitCommitish: map['gitCommitish'] as String,
      name: map['name'] as String,
      releaseConfig: map['releaseConfig'] as String,
      resolvedGitCommitSha: map['resolvedGitCommitSha'] as String,
      workspace: map['workspace'] as String,
    );
  }
}
