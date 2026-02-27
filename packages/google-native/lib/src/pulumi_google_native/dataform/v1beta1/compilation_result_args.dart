// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'code_compilation_config.dart';

/// The set of arguments for CompilationResult.
class CompilationResultArgs {
  /// Immutable. If set, fields of `code_compilation_config` override the default compilation settings that are specified in dataform.json.
  final Input<CodeCompilationConfig>? codeCompilationConfig;

  /// Immutable. Git commit/tag/branch name at which the repository should be compiled. Must exist in the remote repository. Examples: - a commit SHA: `12ade345` - a tag: `tag1` - a branch name: `branch1`
  final Input<String>? gitCommitish;
  final Input<String>? location;
  final Input<String>? project;

  /// Immutable. The name of the release config to compile. The release config's 'current_compilation_result' field will be updated to this compilation result. Must be in the format `projects/*/locations/*/repositories/*/releaseConfigs/*`.
  final Input<String>? releaseConfig;
  final Input<String> repositoryId;

  /// Immutable. The name of the workspace to compile. Must be in the format `projects/*/locations/*/repositories/*/workspaces/*`.
  final Input<String>? workspace;

  CompilationResultArgs({
    this.codeCompilationConfig,
    this.gitCommitish,
    this.location,
    this.project,
    this.releaseConfig,
    required this.repositoryId,
    this.workspace,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final codeCompilationConfigValue = codeCompilationConfig;
    if (codeCompilationConfigValue != null) {
      map['codeCompilationConfig'] = Input.mapOptionalInputValue<
              CodeCompilationConfig, Map<String, dynamic>>(
          codeCompilationConfigValue, (value) => value.toMap());
    }
    final gitCommitishValue = gitCommitish;
    if (gitCommitishValue != null) {
      map['gitCommitish'] = gitCommitishValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final releaseConfigValue = releaseConfig;
    if (releaseConfigValue != null) {
      map['releaseConfig'] = releaseConfigValue;
    }
    map['repositoryId'] = repositoryId;
    final workspaceValue = workspace;
    if (workspaceValue != null) {
      map['workspace'] = workspaceValue;
    }
    return map;
  }

  factory CompilationResultArgs.fromMap(Map<String, dynamic> map) {
    return CompilationResultArgs(
      codeCompilationConfig: Input.asOptionalInput<CodeCompilationConfig>(
          map['codeCompilationConfig']),
      gitCommitish: Input.asOptionalInput<String>(map['gitCommitish']),
      location: Input.asOptionalInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      releaseConfig: Input.asOptionalInput<String>(map['releaseConfig']),
      repositoryId: Input.asInput<String>(map['repositoryId']),
      workspace: Input.asOptionalInput<String>(map['workspace']),
    );
  }
}
