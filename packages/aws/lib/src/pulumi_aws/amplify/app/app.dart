import 'package:pulumi/pulumi.dart';
import '../app_auto_branch_creation_config/app_auto_branch_creation_config.dart';
import '../app_cache_config/app_cache_config.dart';
import '../app_custom_rule/app_custom_rule.dart';
import '../app_job_config/app_job_config.dart';
import '../app_production_branch/app_production_branch.dart';
import 'app_args.dart';

/// Provides an Amplify App resource, a fullstack serverless app hosted on the [AWS Amplify Console](https://docs.aws.amazon.com/amplify/latest/userguide/welcome.html).
///
/// > **Note:** When you create/update an Amplify App from the provider, you may end up with the error "BadRequestException: You should at least provide one valid token" because of authentication issues. See the section "Repository with Tokens" below.
///
/// ## Example Usage
///
///
///
/// ### Repository with Tokens
///
/// If you create a new Amplify App with the `repository` argument, you also need to set `oauth_token` or `access_token` for authentication. For GitHub, get a [personal access token](https://help.github.com/en/github/authenticating-to-github/creating-a-personal-access-token-for-the-command-line) and set `access_token` as follows:
///
///
///
/// You can omit `access_token` if you import an existing Amplify App created by the Amplify Console (using OAuth for authentication).
///
/// ### Auto Branch Creation
///
///
///
/// ### Basic Authorization
///
///
///
/// ### Rewrites and Redirects
///
///
///
/// ### Custom Image
///
///
///
/// ### Custom Headers
///
///
///
/// ### Job Config
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Amplify App using Amplify App ID (appId). For example:
///
/// ```sh
/// $ pulumi import aws:amplify/app:App example d2ypk4k47z8u6
/// ```
///
/// App ID can be obtained from App ARN (e.g., `arn:aws:amplify:us-east-1:12345678:apps/d2ypk4k47z8u6`).
class App extends CustomResource {
  /// Personal access token for a third-party source control system for an Amplify app. This token must have write access to the relevant repo to create a webhook and a read-only deploy key for the Amplify project. The token is not stored, so after applying this attribute can be removed and the setup token deleted.
  late final Output<String?> accessToken;

  /// ARN of the Amplify app.
  late final Output<String> arn;

  /// Automated branch creation configuration for an Amplify app. See `auto_branch_creation_config` Block for details.
  late final Output<AppAutoBranchCreationConfig> autoBranchCreationConfig;

  /// Automated branch creation glob patterns for an Amplify app.
  late final Output<List<String>?> autoBranchCreationPatterns;

  /// Credentials for basic authorization for an Amplify app.
  late final Output<String?> basicAuthCredentials;

  /// The [build specification](https://docs.aws.amazon.com/amplify/latest/userguide/build-settings.html) (build spec) for an Amplify app.
  late final Output<String> buildSpec;

  /// Cache configuration for the Amplify app. See `cache_config` Block for details.
  late final Output<AppCacheConfig> cacheConfig;

  /// AWS Identity and Access Management (IAM) SSR compute role for an Amplify app.
  late final Output<String?> computeRoleArn;

  /// The [custom HTTP headers](https://docs.aws.amazon.com/amplify/latest/userguide/custom-headers.html) for an Amplify app.
  late final Output<String> customHeaders;

  /// Custom rewrite and redirect rules for an Amplify app. See `custom_rule` Block for details.
  late final Output<List<AppCustomRule>?> customRules;

  /// Default domain for the Amplify app.
  late final Output<String> defaultDomain;

  /// Description for an Amplify app.
  late final Output<String?> description;

  /// Enables automated branch creation for an Amplify app.
  late final Output<bool?> enableAutoBranchCreation;

  /// Enables basic authorization for an Amplify app. This will apply to all branches that are part of this app.
  late final Output<bool?> enableBasicAuth;

  /// Enables auto-building of branches for the Amplify App.
  late final Output<bool?> enableBranchAutoBuild;

  /// Automatically disconnects a branch in the Amplify Console when you delete a branch from your Git repository.
  late final Output<bool?> enableBranchAutoDeletion;

  /// Environment variables map for an Amplify app.
  late final Output<Map<String, String>?> environmentVariables;

  /// AWS Identity and Access Management (IAM) service role for an Amplify app.
  late final Output<String?> iamServiceRoleArn;

  /// Used to configure the [Amplify Application build instance compute type](https://docs.aws.amazon.com/amplify/latest/APIReference/API_JobConfig.html#amplify-Type-JobConfig-buildComputeType). See `job_config` Block for details.
  late final Output<AppJobConfig> jobConfig;

  /// Name for an Amplify app.
  late final Output<String> name;

  /// OAuth token for a third-party source control system for an Amplify app. The OAuth token is used to create a webhook and a read-only deploy key. The OAuth token is not stored.
  late final Output<String?> oauthToken;

  /// Platform or framework for an Amplify app. Valid values: `WEB`, `WEB_COMPUTE`. Default value: `WEB`.
  late final Output<String?> platform;

  /// Describes the information about a production branch for an Amplify app. A `production_branch` block is documented below.
  late final Output<List<AppProductionBranch>> productionBranches;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Repository for an Amplify app.
  late final Output<String?> repository;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  App(
    String name, {
    AppArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:amplify/app:App',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accessToken = registerOutput<String?>('accessToken');
    this.arn = registerOutput<String>('arn');
    this.autoBranchCreationConfig =
        registerOutput<AppAutoBranchCreationConfig>('autoBranchCreationConfig');
    this.autoBranchCreationPatterns =
        registerOutput<List<String>?>('autoBranchCreationPatterns');
    this.basicAuthCredentials = registerOutput<String?>('basicAuthCredentials');
    this.buildSpec = registerOutput<String>('buildSpec');
    this.cacheConfig = registerOutput<AppCacheConfig>('cacheConfig');
    this.computeRoleArn = registerOutput<String?>('computeRoleArn');
    this.customHeaders = registerOutput<String>('customHeaders');
    this.customRules = registerOutput<List<AppCustomRule>?>('customRules');
    this.defaultDomain = registerOutput<String>('defaultDomain');
    this.description = registerOutput<String?>('description');
    this.enableAutoBranchCreation =
        registerOutput<bool?>('enableAutoBranchCreation');
    this.enableBasicAuth = registerOutput<bool?>('enableBasicAuth');
    this.enableBranchAutoBuild = registerOutput<bool?>('enableBranchAutoBuild');
    this.enableBranchAutoDeletion =
        registerOutput<bool?>('enableBranchAutoDeletion');
    this.environmentVariables =
        registerOutput<Map<String, String>?>('environmentVariables');
    this.iamServiceRoleArn = registerOutput<String?>('iamServiceRoleArn');
    this.jobConfig = registerOutput<AppJobConfig>('jobConfig');
    this.name = registerOutput<String>('name');
    this.oauthToken = registerOutput<String?>('oauthToken');
    this.platform = registerOutput<String?>('platform');
    this.productionBranches =
        registerOutput<List<AppProductionBranch>>('productionBranches');
    this.region = registerOutput<String>('region');
    this.repository = registerOutput<String?>('repository');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
