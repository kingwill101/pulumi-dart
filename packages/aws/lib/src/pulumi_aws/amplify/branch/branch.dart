import 'package:pulumi/pulumi.dart';
import 'branch_args.dart';

/// Provides an Amplify Branch resource.
///
/// ## Example Usage
///
///
///
/// ### Basic Authentication
///
///
///
/// ### Notifications
///
/// Amplify Console uses EventBridge (formerly known as CloudWatch Events) and SNS for email notifications.  To implement the same functionality, you need to set `enable_notification` in a `aws.amplify.Branch` resource, as well as creating an EventBridge Rule, an SNS topic, and SNS subscriptions.
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Amplify branch using `app_id` and `branch_name`. For example:
///
/// ```sh
/// $ pulumi import aws:amplify/branch:Branch master d2ypk4k47z8u6/master
/// ```
class Branch extends CustomResource {
  /// Unique ID for an Amplify app.
  late final Output<String> appId;

  /// ARN for the branch.
  late final Output<String> arn;

  /// A list of custom resources that are linked to this branch.
  late final Output<List<String>> associatedResources;

  /// ARN for a backend environment that is part of an Amplify app.
  late final Output<String?> backendEnvironmentArn;

  /// Basic authorization credentials for the branch.
  late final Output<String?> basicAuthCredentials;

  /// Name for the branch.
  late final Output<String> branchName;

  /// Custom domains for the branch.
  late final Output<List<String>> customDomains;

  /// Description for the branch.
  late final Output<String?> description;

  /// Destination branch if the branch is a pull request branch.
  late final Output<String> destinationBranch;

  /// Display name for a branch. This is used as the default domain prefix.
  late final Output<String> displayName;

  /// Enables auto building for the branch.
  late final Output<bool?> enableAutoBuild;

  /// Enables basic authorization for the branch.
  late final Output<bool?> enableBasicAuth;

  /// Enables notifications for the branch.
  late final Output<bool?> enableNotification;

  /// Enables performance mode for the branch.
  late final Output<bool?> enablePerformanceMode;

  /// Enables pull request previews for this branch.
  late final Output<bool?> enablePullRequestPreview;

  /// Enables skew protection for the branch.
  late final Output<bool?> enableSkewProtection;

  /// Environment variables for the branch.
  late final Output<Map<String, String>?> environmentVariables;

  /// Framework for the branch.
  late final Output<String?> framework;

  /// Amplify environment name for the pull request.
  late final Output<String?> pullRequestEnvironmentName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Source branch if the branch is a pull request branch.
  late final Output<String> sourceBranch;

  /// Describes the current stage for the branch. Valid values: `PRODUCTION`, `BETA`, `DEVELOPMENT`, `EXPERIMENTAL`, `PULL_REQUEST`.
  late final Output<String?> stage;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Content Time To Live (TTL) for the website in seconds.
  late final Output<String?> ttl;

  Branch(
    String name, {
    BranchArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:amplify/branch:Branch',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.appId = registerOutput<String>('appId');
    this.arn = registerOutput<String>('arn');
    this.associatedResources =
        registerOutput<List<String>>('associatedResources');
    this.backendEnvironmentArn =
        registerOutput<String?>('backendEnvironmentArn');
    this.basicAuthCredentials = registerOutput<String?>('basicAuthCredentials');
    this.branchName = registerOutput<String>('branchName');
    this.customDomains = registerOutput<List<String>>('customDomains');
    this.description = registerOutput<String?>('description');
    this.destinationBranch = registerOutput<String>('destinationBranch');
    this.displayName = registerOutput<String>('displayName');
    this.enableAutoBuild = registerOutput<bool?>('enableAutoBuild');
    this.enableBasicAuth = registerOutput<bool?>('enableBasicAuth');
    this.enableNotification = registerOutput<bool?>('enableNotification');
    this.enablePerformanceMode = registerOutput<bool?>('enablePerformanceMode');
    this.enablePullRequestPreview =
        registerOutput<bool?>('enablePullRequestPreview');
    this.enableSkewProtection = registerOutput<bool?>('enableSkewProtection');
    this.environmentVariables =
        registerOutput<Map<String, String>?>('environmentVariables');
    this.framework = registerOutput<String?>('framework');
    this.pullRequestEnvironmentName =
        registerOutput<String?>('pullRequestEnvironmentName');
    this.region = registerOutput<String>('region');
    this.sourceBranch = registerOutput<String>('sourceBranch');
    this.stage = registerOutput<String?>('stage');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.ttl = registerOutput<String?>('ttl');
  }
}
