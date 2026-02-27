import 'package:pulumi/pulumi.dart';
import '../code_repository_git_config/code_repository_git_config.dart';
import 'code_repository_args.dart';

/// Provides a SageMaker AI Code Repository resource.
///
/// ## Example Usage
///
/// ### Basic usage
///
///
///
/// ### Example with Secret
///
///
///
/// ## Import
///
/// Using `pulumi import`, import SageMaker AI Code Repositories using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:sagemaker/codeRepository:CodeRepository test_code_repository my-code-repo
/// ```
class CodeRepository extends CustomResource {
  /// The Amazon Resource Name (ARN) assigned by AWS to this Code Repository.
  late final Output<String> arn;

  /// The name of the Code Repository (must be unique).
  late final Output<String> codeRepositoryName;

  /// Specifies details about the repository. see Git Config details below.
  late final Output<CodeRepositoryGitConfig> gitConfig;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  CodeRepository(
    String name, {
    CodeRepositoryArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:sagemaker/codeRepository:CodeRepository',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.codeRepositoryName = registerOutput<String>('codeRepositoryName');
    this.gitConfig = registerOutput<CodeRepositoryGitConfig>('gitConfig');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
