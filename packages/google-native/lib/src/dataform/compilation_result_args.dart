// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'code_compilation_config.dart';

/// {@template pulumi_dataform_v1beta1_compilation_result_args_doc}
/// The set of arguments for CompilationResult.
/// {@endtemplate}
/// {@macro pulumi_dataform_v1beta1_compilation_result_args_doc}
class CompilationResultArgs {
  /// Immutable. If set, fields of `code_compilation_config` override the default compilation settings that are specified in dataform.json.
  final pulumi.Input<CodeCompilationConfig>? codeCompilationConfig;
  /// Immutable. Git commit/tag/branch name at which the repository should be compiled. Must exist in the remote repository. Examples: - a commit SHA: `12ade345` - a tag: `tag1` - a branch name: `branch1`
  final pulumi.Input<String>? gitCommitish;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;
  /// Immutable. The name of the release config to compile. The release config's 'current_compilation_result' field will be updated to this compilation result. Must be in the format `projects/*/locations/*/repositories/*/releaseConfigs/*`.
  final pulumi.Input<String>? releaseConfig;
  final pulumi.Input<String> repositoryId;
  /// Immutable. The name of the workspace to compile. Must be in the format `projects/*/locations/*/repositories/*/workspaces/*`.
  final pulumi.Input<String>? workspace;

  /// Creates a new [CompilationResultArgs].
  /// [codeCompilationConfig] Immutable. If set, fields of `code_compilation_config` override the default compilation settings that are specified in dataform.json.
  /// [gitCommitish] Immutable. Git commit/tag/branch name at which the repository should be compiled. Must exist in the remote repository. Examples: - a commit SHA: `12ade345` - a tag: `tag1` - a branch name: `branch1`
  /// [location] Optional.
  /// [project] Optional.
  /// [releaseConfig] Immutable. The name of the release config to compile. The release config's 'current_compilation_result' field will be updated to this compilation result. Must be in the format `projects/*/locations/*/repositories/*/releaseConfigs/*`.
  /// [repositoryId] Required.
  /// [workspace] Immutable. The name of the workspace to compile. Must be in the format `projects/*/locations/*/repositories/*/workspaces/*`.
  CompilationResultArgs({
    CodeCompilationConfig? codeCompilationConfig,
    String? gitCommitish,
    String? location,
    String? project,
    String? releaseConfig,
    required String repositoryId,
    String? workspace,
  }) :
      codeCompilationConfig = pulumi.Input.asOptionalInput<CodeCompilationConfig>(codeCompilationConfig),
      gitCommitish = pulumi.Input.asOptionalInput<String>(gitCommitish),
      location = pulumi.Input.asOptionalInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      releaseConfig = pulumi.Input.asOptionalInput<String>(releaseConfig),
      repositoryId = pulumi.Input.asInput<String>(repositoryId),
      workspace = pulumi.Input.asOptionalInput<String>(workspace);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'codeCompilationConfig': ?pulumi.Input.mapOptionalInputValue<CodeCompilationConfig, Map<String, dynamic>>(codeCompilationConfig, (value) => value.toMap()),
      'gitCommitish': ?gitCommitish,
      'location': ?location,
      'project': ?project,
      'releaseConfig': ?releaseConfig,
      'repositoryId': repositoryId,
      'workspace': ?workspace,
    };
  }

  factory CompilationResultArgs.fromMap(Map<String, dynamic> map) {
    return CompilationResultArgs(
      codeCompilationConfig: map['codeCompilationConfig'] == null ? null : CodeCompilationConfig.fromMap((map['codeCompilationConfig'] as Map).cast<String, dynamic>()),
      gitCommitish: map['gitCommitish'] == null ? null : map['gitCommitish'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      releaseConfig: map['releaseConfig'] == null ? null : map['releaseConfig'] as String,
      repositoryId: map['repositoryId'] as String,
      workspace: map['workspace'] == null ? null : map['workspace'] as String,
    );
  }
}

