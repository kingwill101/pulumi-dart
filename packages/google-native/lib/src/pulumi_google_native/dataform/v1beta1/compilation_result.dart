import 'package:pulumi/pulumi.dart';
import 'code_compilation_config_response.dart';
import 'compilation_error_response.dart';
import 'compilation_result_args.dart';

/// Creates a new CompilationResult in a given project and location.
/// Auto-naming is currently not supported for this resource.
/// Note - this resource's API doesn't support deletion. When deleted, the resource will persist
/// on Google Cloud even though it will be deleted from Pulumi state.
class CompilationResult extends CustomResource {
  /// Immutable. If set, fields of `code_compilation_config` override the default compilation settings that are specified in dataform.json.
  late final Output<CodeCompilationConfigResponse> codeCompilationConfig;

  /// Errors encountered during project compilation.
  late final Output<List<CompilationErrorResponse>> compilationErrors;

  /// The version of `@dataform/core` that was used for compilation.
  late final Output<String> dataformCoreVersion;

  /// Immutable. Git commit/tag/branch name at which the repository should be compiled. Must exist in the remote repository. Examples: - a commit SHA: `12ade345` - a tag: `tag1` - a branch name: `branch1`
  late final Output<String> gitCommitish;
  late final Output<String> location;

  /// The compilation result's name.
  late final Output<String> name;
  late final Output<String> project;

  /// Immutable. The name of the release config to compile. The release config's 'current_compilation_result' field will be updated to this compilation result. Must be in the format `projects/*/locations/*/repositories/*/releaseConfigs/*`.
  late final Output<String> releaseConfig;
  late final Output<String> repositoryId;

  /// The fully resolved Git commit SHA of the code that was compiled. Not set for compilation results whose source is a workspace.
  late final Output<String> resolvedGitCommitSha;

  /// Immutable. The name of the workspace to compile. Must be in the format `projects/*/locations/*/repositories/*/workspaces/*`.
  late final Output<String> workspace;

  CompilationResult(
    String name, {
    CompilationResultArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:dataform/v1beta1:CompilationResult',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.codeCompilationConfig =
        Output.createUnknown<CodeCompilationConfigResponse>();
    this.compilationErrors =
        Output.createUnknown<List<CompilationErrorResponse>>();
    this.dataformCoreVersion = Output.createUnknown<String>();
    this.gitCommitish = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.releaseConfig = Output.createUnknown<String>();
    this.repositoryId = Output.createUnknown<String>();
    this.resolvedGitCommitSha = Output.createUnknown<String>();
    this.workspace = Output.createUnknown<String>();
  }
}
