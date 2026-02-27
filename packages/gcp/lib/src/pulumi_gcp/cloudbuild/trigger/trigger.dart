import 'package:pulumi/pulumi.dart' as pulumi;
import '../trigger_approval_config/trigger_approval_config.dart';
import '../trigger_bitbucket_server_trigger_config/trigger_bitbucket_server_trigger_config.dart';
import '../trigger_build/trigger_build.dart';
import '../trigger_developer_connect_event_config/trigger_developer_connect_event_config.dart';
import '../trigger_git_file_source/trigger_git_file_source.dart';
import '../trigger_github/trigger_github.dart';
import '../trigger_pubsub_config/trigger_pubsub_config.dart';
import '../trigger_repository_event_config/trigger_repository_event_config.dart';
import '../trigger_source_to_build/trigger_source_to_build.dart';
import '../trigger_trigger_template/trigger_trigger_template.dart';
import '../trigger_webhook_config/trigger_webhook_config.dart';
import 'trigger_args.dart';

/// Configuration for an automated build in response to source repository changes.
///
///
/// To get more information about Trigger, see:
///
/// * [API documentation](https://cloud.google.com/cloud-build/docs/api/reference/rest/v1/projects.triggers)
/// * How-to Guides
/// * [Automating builds using build triggers](https://cloud.google.com/cloud-build/docs/running-builds/automate-builds)
///
/// > **Note:** You can retrieve the email of the Cloud Build Service Account used in jobs by using the `gcp.projects.ServiceIdentity` resource.
///
/// ## Example Usage
///
/// ### Cloudbuild Trigger Filename
///
///
///
/// ### Cloudbuild Trigger Build
///
///
///
/// ### Cloudbuild Trigger Service Account
///
///
///
/// ### Cloudbuild Trigger Include Build Logs
///
///
///
/// ### Cloudbuild Trigger Pubsub Config
///
///
///
/// ### Cloudbuild Trigger Webhook Config
///
///
///
/// ### Cloudbuild Trigger Manual
///
///
///
/// ### Cloudbuild Trigger Manual Github Enterprise
///
///
///
/// ### Cloudbuild Trigger Manual Bitbucket Server
///
///
///
/// ### Cloudbuild Trigger Repo
///
///
///
/// ### Cloudbuild Trigger Bitbucket Server Push
///
///
///
/// ### Cloudbuild Trigger Bitbucket Server Pull Request
///
///
///
/// ### Cloudbuild Trigger Github Enterprise
///
///
///
/// ### Cloudbuild Trigger Allow Failure
///
///
///
/// ### Cloudbuild Trigger Allow Exit Codes
///
///
///
/// ### Cloudbuild Trigger Pubsub With Repo
///
///
///
/// ### Cloudbuild Trigger Developer Connect Pull
///
///
///
/// ### Cloudbuild Trigger Developer Connect Push
///
///
///
/// ### Cloudbuild Trigger Developer Connect Push Branch
///
///
///
///
/// ## Import
///
/// Trigger can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/triggers/{{trigger_id}}`
///
/// * `projects/{{project}}/triggers/{{trigger_id}}`
///
/// * `{{project}}/{{trigger_id}}`
///
/// * `{{trigger_id}}`
///
/// When using the `pulumi import` command, Trigger can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:cloudbuild/trigger:Trigger default projects/{{project}}/locations/{{location}}/triggers/{{trigger_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:cloudbuild/trigger:Trigger default projects/{{project}}/triggers/{{trigger_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:cloudbuild/trigger:Trigger default {{project}}/{{trigger_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:cloudbuild/trigger:Trigger default {{trigger_id}}
/// ```
class Trigger extends pulumi.CustomResource {
  /// Configuration for manual approval to start a build invocation of this BuildTrigger.
  /// Builds created by this trigger will require approval before they execute.
  /// Any user with a Cloud Build Approver role for the project can approve a build.
  /// Structure is documented below.
  late final pulumi.Output<TriggerApprovalConfig> approvalConfig;

  /// BitbucketServerTriggerConfig describes the configuration of a trigger that creates a build whenever a Bitbucket Server event is received.
  /// Structure is documented below.
  late final pulumi.Output<TriggerBitbucketServerTriggerConfig?>
      bitbucketServerTriggerConfig;

  /// Contents of the build template. Either a filename or build template must be provided.
  /// Structure is documented below.
  late final pulumi.Output<TriggerBuild?> build;

  /// Time when the trigger was created.
  late final pulumi.Output<String> createTime;

  /// Human-readable description of the trigger.
  late final pulumi.Output<String?> description;

  /// Configuration for triggers that respond to Developer Connect events.
  /// Structure is documented below.
  late final pulumi.Output<TriggerDeveloperConnectEventConfig?>
      developerConnectEventConfig;

  /// Whether the trigger is disabled or not. If true, the trigger will never result in a build.
  late final pulumi.Output<bool?> disabled;

  /// Path, from the source root, to a file whose contents is used for the template.
  /// Either a filename or build template must be provided. Set this only when using trigger_template or github.
  /// When using Pub/Sub, Webhook or Manual set the file name using git_file_source instead.
  late final pulumi.Output<String?> filename;

  /// A Common Expression Language string. Used only with Pub/Sub and Webhook.
  late final pulumi.Output<String?> filter;

  /// The file source describing the local or remote Build template.
  /// Structure is documented below.
  late final pulumi.Output<TriggerGitFileSource?> gitFileSource;

  /// Describes the configuration of a trigger that creates a build whenever a GitHub event is received.
  /// One of `trigger_template`, `github`, `pubsub_config` or `webhook_config` must be provided.
  /// Structure is documented below.
  late final pulumi.Output<TriggerGithub?> github;

  /// ignoredFiles and includedFiles are file glob matches using https://golang.org/pkg/path/filepath/#Match
  /// extended with support for `**`.
  /// If ignoredFiles and changed files are both empty, then they are not
  /// used to determine whether or not to trigger a build.
  /// If ignoredFiles is not empty, then we ignore any files that match any
  /// of the ignored_file globs. If the change has no files that are outside
  /// of the ignoredFiles globs, then we do not trigger a build.
  late final pulumi.Output<List<String>?> ignoredFiles;

  /// Build logs will be sent back to GitHub as part of the checkrun
  /// result.  Values can be INCLUDE_BUILD_LOGS_UNSPECIFIED or
  /// INCLUDE_BUILD_LOGS_WITH_STATUS
  /// Possible values are: `INCLUDE_BUILD_LOGS_UNSPECIFIED`, `INCLUDE_BUILD_LOGS_WITH_STATUS`.
  late final pulumi.Output<String?> includeBuildLogs;

  /// ignoredFiles and includedFiles are file glob matches using https://golang.org/pkg/path/filepath/#Match
  /// extended with support for `**`.
  /// If any of the files altered in the commit pass the ignoredFiles filter
  /// and includedFiles is empty, then as far as this filter is concerned, we
  /// should trigger the build.
  /// If any of the files altered in the commit pass the ignoredFiles filter
  /// and includedFiles is not empty, then we make sure that at least one of
  /// those files matches a includedFiles glob. If not, then we do not trigger
  /// a build.
  late final pulumi.Output<List<String>?> includedFiles;

  /// The [Cloud Build location](https://cloud.google.com/build/docs/locations) for the trigger.
  /// If not specified, "global" is used.
  late final pulumi.Output<String?> location;

  /// Name of the trigger. Must be unique within the project.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// PubsubConfig describes the configuration of a trigger that creates
  /// a build whenever a Pub/Sub message is published.
  /// One of `trigger_template`, `github`, `pubsub_config` `webhook_config` or `source_to_build` must be provided.
  /// Structure is documented below.
  late final pulumi.Output<TriggerPubsubConfig?> pubsubConfig;

  /// The configuration of a trigger that creates a build whenever an event from Repo API is received.
  /// Structure is documented below.
  late final pulumi.Output<TriggerRepositoryEventConfig?> repositoryEventConfig;

  /// The service account used for all user-controlled operations including
  /// triggers.patch, triggers.run, builds.create, and builds.cancel.
  /// If no service account is set, then the standard Cloud Build service account
  /// ([PROJECT_NUM]@system.gserviceaccount.com) will be used instead.
  /// Format: projects/{PROJECT_ID}/serviceAccounts/{ACCOUNT_ID_OR_EMAIL}
  late final pulumi.Output<String?> serviceAccount;

  /// The repo and ref of the repository from which to build.
  /// This field is used only for those triggers that do not respond to SCM events.
  /// Triggers that respond to such events build source at whatever commit caused the event.
  /// This field is currently only used by Webhook, Pub/Sub, Manual, and Cron triggers.
  /// One of `trigger_template`, `github`, `pubsub_config` `webhook_config` or `source_to_build` must be provided.
  /// Structure is documented below.
  late final pulumi.Output<TriggerSourceToBuild?> sourceToBuild;

  /// Substitutions data for Build resource.
  late final pulumi.Output<Map<String, String>?> substitutions;

  /// Tags for annotation of a BuildTrigger
  late final pulumi.Output<List<String>?> tags;

  /// The unique identifier for the trigger.
  late final pulumi.Output<String> triggerId;

  /// Template describing the types of source changes to trigger a build.
  /// Branch and tag names in trigger templates are interpreted as regular
  /// expressions. Any branch or tag change that matches that regular
  /// expression will trigger a build.
  /// One of `trigger_template`, `github`, `pubsub_config`, `webhook_config` or `source_to_build` must be provided.
  /// Structure is documented below.
  late final pulumi.Output<TriggerTriggerTemplate?> triggerTemplate;

  /// WebhookConfig describes the configuration of a trigger that creates
  /// a build whenever a webhook is sent to a trigger's webhook URL.
  /// One of `trigger_template`, `github`, `pubsub_config` `webhook_config` or `source_to_build` must be provided.
  /// Structure is documented below.
  late final pulumi.Output<TriggerWebhookConfig?> webhookConfig;

  Trigger(
    String name, {
    TriggerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:cloudbuild/trigger:Trigger',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.approvalConfig =
        registerOutput<TriggerApprovalConfig>('approvalConfig');
    this.bitbucketServerTriggerConfig =
        registerOutput<TriggerBitbucketServerTriggerConfig?>(
            'bitbucketServerTriggerConfig');
    this.build = registerOutput<TriggerBuild?>('build');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.developerConnectEventConfig =
        registerOutput<TriggerDeveloperConnectEventConfig?>(
            'developerConnectEventConfig');
    this.disabled = registerOutput<bool?>('disabled');
    this.filename = registerOutput<String?>('filename');
    this.filter = registerOutput<String?>('filter');
    this.gitFileSource = registerOutput<TriggerGitFileSource?>('gitFileSource');
    this.github = registerOutput<TriggerGithub?>('github');
    this.ignoredFiles = registerOutput<List<String>?>('ignoredFiles');
    this.includeBuildLogs = registerOutput<String?>('includeBuildLogs');
    this.includedFiles = registerOutput<List<String>?>('includedFiles');
    this.location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pubsubConfig = registerOutput<TriggerPubsubConfig?>('pubsubConfig');
    this.repositoryEventConfig =
        registerOutput<TriggerRepositoryEventConfig?>('repositoryEventConfig');
    this.serviceAccount = registerOutput<String?>('serviceAccount');
    this.sourceToBuild = registerOutput<TriggerSourceToBuild?>('sourceToBuild');
    this.substitutions = registerOutput<Map<String, String>?>('substitutions');
    this.tags = registerOutput<List<String>?>('tags');
    this.triggerId = registerOutput<String>('triggerId');
    this.triggerTemplate =
        registerOutput<TriggerTriggerTemplate?>('triggerTemplate');
    this.webhookConfig = registerOutput<TriggerWebhookConfig?>('webhookConfig');
  }
}
