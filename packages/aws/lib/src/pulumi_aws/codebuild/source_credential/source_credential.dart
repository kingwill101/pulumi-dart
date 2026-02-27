import 'package:pulumi/pulumi.dart';
import 'source_credential_args.dart';

/// Provides a CodeBuild Source Credentials Resource.
///
/// > **NOTE:
/// ** [Codebuild only allows a single credential per given server type in a given region](https://docs.aws.amazon.com/cdk/api/v2/docs/aws-cdk-lib.aws_codebuild.GitHubSourceCredentials.html).
/// Therefore, when you define `aws.codebuild.SourceCredential`,
/// `aws.codebuild.Project` resource defined in the same module will use it.
///
/// ## Example Usage
///
///
///
/// ### Bitbucket Server Usage
///
///
///
/// ### AWS CodeStar Connection Usage
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the CodeBuild source credential.
///
///
/// Using `pulumi import`, import CodeBuild Source Credential using the CodeBuild Source Credential arn. For example:
///
/// ```sh
/// $ pulumi import aws:codebuild/sourceCredential:SourceCredential example arn:aws:codebuild:us-west-2:123456789:token:github
/// ```
class SourceCredential extends CustomResource {
  /// The ARN of Source Credential.
  late final Output<String> arn;

  /// The type of authentication used to connect to a GitHub, GitHub Enterprise, or Bitbucket
  /// repository. Valid values are `BASIC_AUTH`,
  /// `PERSONAL_ACCESS_TOKEN`, `CODECONNECTIONS`, and `SECRETS_MANAGER`. An OAUTH connection is not supported by the API.
  late final Output<String> authType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The source provider used for this project.
  late final Output<String> serverType;

  /// For a GitHub and GitHub Enterprise, this is the personal access token. For Bitbucket, this is the
  /// app password. When using an AWS CodeStar connection (`auth_type = "CODECONNECTIONS")`, this is an AWS CodeStar
  /// Connection ARN.
  late final Output<String> token;

  /// The Bitbucket username when the authType is `BASIC_AUTH`. This parameter is not valid for
  /// other types of source providers or connections.
  late final Output<String?> userName;

  SourceCredential(
    String name, {
    SourceCredentialArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:codebuild/sourceCredential:SourceCredential',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.authType = registerOutput<String>('authType');
    this.region = registerOutput<String>('region');
    this.serverType = registerOutput<String>('serverType');
    this.token = registerOutput<String>('token');
    this.userName = registerOutput<String?>('userName');
  }
}
