import 'package:pulumi/pulumi.dart' as pulumi;
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
class Branch extends pulumi.CustomResource {
  /// Unique ID for an Amplify app.
  late final pulumi.Output<String> appId;

  /// ARN for the branch.
  late final pulumi.Output<String> arn;

  /// A list of custom resources that are linked to this branch.
  late final pulumi.Output<List<String>> associatedResources;

  /// ARN for a backend environment that is part of an Amplify app.
  late final pulumi.Output<String?> backendEnvironmentArn;

  /// Basic authorization credentials for the branch.
  late final pulumi.Output<String?> basicAuthCredentials;

  /// Name for the branch.
  late final pulumi.Output<String> branchName;

  /// Custom domains for the branch.
  late final pulumi.Output<List<String>> customDomains;

  /// Description for the branch.
  late final pulumi.Output<String?> description;

  /// Destination branch if the branch is a pull request branch.
  late final pulumi.Output<String> destinationBranch;

  /// Display name for a branch. This is used as the default domain prefix.
  late final pulumi.Output<String> displayName;

  /// Enables auto building for the branch.
  late final pulumi.Output<bool?> enableAutoBuild;

  /// Enables basic authorization for the branch.
  late final pulumi.Output<bool?> enableBasicAuth;

  /// Enables notifications for the branch.
  late final pulumi.Output<bool?> enableNotification;

  /// Enables performance mode for the branch.
  late final pulumi.Output<bool?> enablePerformanceMode;

  /// Enables pull request previews for this branch.
  late final pulumi.Output<bool?> enablePullRequestPreview;

  /// Enables skew protection for the branch.
  late final pulumi.Output<bool?> enableSkewProtection;

  /// Environment variables for the branch.
  late final pulumi.Output<Map<String, String>?> environmentVariables;

  /// Framework for the branch.
  late final pulumi.Output<String?> framework;

  /// Amplify environment name for the pull request.
  late final pulumi.Output<String?> pullRequestEnvironmentName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Source branch if the branch is a pull request branch.
  late final pulumi.Output<String> sourceBranch;

  /// Describes the current stage for the branch. Valid values: `PRODUCTION`, `BETA`, `DEVELOPMENT`, `EXPERIMENTAL`, `PULL_REQUEST`.
  late final pulumi.Output<String?> stage;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Content Time To Live (TTL) for the website in seconds.
  late final pulumi.Output<String?> ttl;

  Branch(
    String name, {
    BranchArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:amplify/branch:Branch',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
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
