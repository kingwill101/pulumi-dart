// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
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

/// The set of arguments for Trigger.
class TriggerArgs {
  /// Configuration for manual approval to start a build invocation of this BuildTrigger.
  /// Builds created by this trigger will require approval before they execute.
  /// Any user with a Cloud Build Approver role for the project can approve a build.
  /// Structure is documented below.
  final Input<TriggerApprovalConfig>? approvalConfig;

  /// BitbucketServerTriggerConfig describes the configuration of a trigger that creates a build whenever a Bitbucket Server event is received.
  /// Structure is documented below.
  final Input<TriggerBitbucketServerTriggerConfig>?
      bitbucketServerTriggerConfig;

  /// Contents of the build template. Either a filename or build template must be provided.
  /// Structure is documented below.
  final Input<TriggerBuild>? build;

  /// Human-readable description of the trigger.
  final Input<String>? description;

  /// Configuration for triggers that respond to Developer Connect events.
  /// Structure is documented below.
  final Input<TriggerDeveloperConnectEventConfig>? developerConnectEventConfig;

  /// Whether the trigger is disabled or not. If true, the trigger will never result in a build.
  final Input<bool>? disabled;

  /// Path, from the source root, to a file whose contents is used for the template.
  /// Either a filename or build template must be provided. Set this only when using trigger_template or github.
  /// When using Pub/Sub, Webhook or Manual set the file name using git_file_source instead.
  final Input<String>? filename;

  /// A Common Expression Language string. Used only with Pub/Sub and Webhook.
  final Input<String>? filter;

  /// The file source describing the local or remote Build template.
  /// Structure is documented below.
  final Input<TriggerGitFileSource>? gitFileSource;

  /// Describes the configuration of a trigger that creates a build whenever a GitHub event is received.
  /// One of `trigger_template`, `github`, `pubsub_config` or `webhook_config` must be provided.
  /// Structure is documented below.
  final Input<TriggerGithub>? github;

  /// ignoredFiles and includedFiles are file glob matches using https://golang.org/pkg/path/filepath/#Match
  /// extended with support for `**`.
  /// If ignoredFiles and changed files are both empty, then they are not
  /// used to determine whether or not to trigger a build.
  /// If ignoredFiles is not empty, then we ignore any files that match any
  /// of the ignored_file globs. If the change has no files that are outside
  /// of the ignoredFiles globs, then we do not trigger a build.
  final Input<List<String>>? ignoredFiles;

  /// Build logs will be sent back to GitHub as part of the checkrun
  /// result.  Values can be INCLUDE_BUILD_LOGS_UNSPECIFIED or
  /// INCLUDE_BUILD_LOGS_WITH_STATUS
  /// Possible values are: `INCLUDE_BUILD_LOGS_UNSPECIFIED`, `INCLUDE_BUILD_LOGS_WITH_STATUS`.
  final Input<String>? includeBuildLogs;

  /// ignoredFiles and includedFiles are file glob matches using https://golang.org/pkg/path/filepath/#Match
  /// extended with support for `**`.
  /// If any of the files altered in the commit pass the ignoredFiles filter
  /// and includedFiles is empty, then as far as this filter is concerned, we
  /// should trigger the build.
  /// If any of the files altered in the commit pass the ignoredFiles filter
  /// and includedFiles is not empty, then we make sure that at least one of
  /// those files matches a includedFiles glob. If not, then we do not trigger
  /// a build.
  final Input<List<String>>? includedFiles;

  /// The [Cloud Build location](https://cloud.google.com/build/docs/locations) for the trigger.
  /// If not specified, "global" is used.
  final Input<String>? location;

  /// Name of the trigger. Must be unique within the project.
  final Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// PubsubConfig describes the configuration of a trigger that creates
  /// a build whenever a Pub/Sub message is published.
  /// One of `trigger_template`, `github`, `pubsub_config` `webhook_config` or `source_to_build` must be provided.
  /// Structure is documented below.
  final Input<TriggerPubsubConfig>? pubsubConfig;

  /// The configuration of a trigger that creates a build whenever an event from Repo API is received.
  /// Structure is documented below.
  final Input<TriggerRepositoryEventConfig>? repositoryEventConfig;

  /// The service account used for all user-controlled operations including
  /// triggers.patch, triggers.run, builds.create, and builds.cancel.
  /// If no service account is set, then the standard Cloud Build service account
  /// ([PROJECT_NUM]@system.gserviceaccount.com) will be used instead.
  /// Format: projects/{PROJECT_ID}/serviceAccounts/{ACCOUNT_ID_OR_EMAIL}
  final Input<String>? serviceAccount;

  /// The repo and ref of the repository from which to build.
  /// This field is used only for those triggers that do not respond to SCM events.
  /// Triggers that respond to such events build source at whatever commit caused the event.
  /// This field is currently only used by Webhook, Pub/Sub, Manual, and Cron triggers.
  /// One of `trigger_template`, `github`, `pubsub_config` `webhook_config` or `source_to_build` must be provided.
  /// Structure is documented below.
  final Input<TriggerSourceToBuild>? sourceToBuild;

  /// Substitutions data for Build resource.
  final Input<Map<String, String>>? substitutions;

  /// Tags for annotation of a BuildTrigger
  final Input<List<String>>? tags;

  /// Template describing the types of source changes to trigger a build.
  /// Branch and tag names in trigger templates are interpreted as regular
  /// expressions. Any branch or tag change that matches that regular
  /// expression will trigger a build.
  /// One of `trigger_template`, `github`, `pubsub_config`, `webhook_config` or `source_to_build` must be provided.
  /// Structure is documented below.
  final Input<TriggerTriggerTemplate>? triggerTemplate;

  /// WebhookConfig describes the configuration of a trigger that creates
  /// a build whenever a webhook is sent to a trigger's webhook URL.
  /// One of `trigger_template`, `github`, `pubsub_config` `webhook_config` or `source_to_build` must be provided.
  /// Structure is documented below.
  final Input<TriggerWebhookConfig>? webhookConfig;

  TriggerArgs({
    this.approvalConfig,
    this.bitbucketServerTriggerConfig,
    this.build,
    this.description,
    this.developerConnectEventConfig,
    this.disabled,
    this.filename,
    this.filter,
    this.gitFileSource,
    this.github,
    this.ignoredFiles,
    this.includeBuildLogs,
    this.includedFiles,
    this.location,
    this.name,
    this.project,
    this.pubsubConfig,
    this.repositoryEventConfig,
    this.serviceAccount,
    this.sourceToBuild,
    this.substitutions,
    this.tags,
    this.triggerTemplate,
    this.webhookConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final approvalConfigValue = approvalConfig;
    if (approvalConfigValue != null) {
      map['approvalConfig'] = Input.mapOptionalInputValue<TriggerApprovalConfig,
          Map<String, dynamic>>(approvalConfigValue, (value) => value.toMap());
    }
    final bitbucketServerTriggerConfigValue = bitbucketServerTriggerConfig;
    if (bitbucketServerTriggerConfigValue != null) {
      map['bitbucketServerTriggerConfig'] = Input.mapOptionalInputValue<
              TriggerBitbucketServerTriggerConfig, Map<String, dynamic>>(
          bitbucketServerTriggerConfigValue, (value) => value.toMap());
    }
    final buildValue = build;
    if (buildValue != null) {
      map['build'] =
          Input.mapOptionalInputValue<TriggerBuild, Map<String, dynamic>>(
              buildValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final developerConnectEventConfigValue = developerConnectEventConfig;
    if (developerConnectEventConfigValue != null) {
      map['developerConnectEventConfig'] = Input.mapOptionalInputValue<
              TriggerDeveloperConnectEventConfig, Map<String, dynamic>>(
          developerConnectEventConfigValue, (value) => value.toMap());
    }
    final disabledValue = disabled;
    if (disabledValue != null) {
      map['disabled'] = disabledValue;
    }
    final filenameValue = filename;
    if (filenameValue != null) {
      map['filename'] = filenameValue;
    }
    final filterValue = filter;
    if (filterValue != null) {
      map['filter'] = filterValue;
    }
    final gitFileSourceValue = gitFileSource;
    if (gitFileSourceValue != null) {
      map['gitFileSource'] = Input.mapOptionalInputValue<TriggerGitFileSource,
          Map<String, dynamic>>(gitFileSourceValue, (value) => value.toMap());
    }
    final githubValue = github;
    if (githubValue != null) {
      map['github'] =
          Input.mapOptionalInputValue<TriggerGithub, Map<String, dynamic>>(
              githubValue, (value) => value.toMap());
    }
    final ignoredFilesValue = ignoredFiles;
    if (ignoredFilesValue != null) {
      map['ignoredFiles'] = ignoredFilesValue;
    }
    final includeBuildLogsValue = includeBuildLogs;
    if (includeBuildLogsValue != null) {
      map['includeBuildLogs'] = includeBuildLogsValue;
    }
    final includedFilesValue = includedFiles;
    if (includedFilesValue != null) {
      map['includedFiles'] = includedFilesValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final pubsubConfigValue = pubsubConfig;
    if (pubsubConfigValue != null) {
      map['pubsubConfig'] = Input.mapOptionalInputValue<TriggerPubsubConfig,
          Map<String, dynamic>>(pubsubConfigValue, (value) => value.toMap());
    }
    final repositoryEventConfigValue = repositoryEventConfig;
    if (repositoryEventConfigValue != null) {
      map['repositoryEventConfig'] = Input.mapOptionalInputValue<
              TriggerRepositoryEventConfig, Map<String, dynamic>>(
          repositoryEventConfigValue, (value) => value.toMap());
    }
    final serviceAccountValue = serviceAccount;
    if (serviceAccountValue != null) {
      map['serviceAccount'] = serviceAccountValue;
    }
    final sourceToBuildValue = sourceToBuild;
    if (sourceToBuildValue != null) {
      map['sourceToBuild'] = Input.mapOptionalInputValue<TriggerSourceToBuild,
          Map<String, dynamic>>(sourceToBuildValue, (value) => value.toMap());
    }
    final substitutionsValue = substitutions;
    if (substitutionsValue != null) {
      map['substitutions'] = substitutionsValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final triggerTemplateValue = triggerTemplate;
    if (triggerTemplateValue != null) {
      map['triggerTemplate'] = Input.mapOptionalInputValue<
          TriggerTriggerTemplate,
          Map<String, dynamic>>(triggerTemplateValue, (value) => value.toMap());
    }
    final webhookConfigValue = webhookConfig;
    if (webhookConfigValue != null) {
      map['webhookConfig'] = Input.mapOptionalInputValue<TriggerWebhookConfig,
          Map<String, dynamic>>(webhookConfigValue, (value) => value.toMap());
    }
    return map;
  }

  factory TriggerArgs.fromMap(Map<String, dynamic> map) {
    return TriggerArgs(
      approvalConfig:
          Input.asOptionalInput<TriggerApprovalConfig>(map['approvalConfig']),
      bitbucketServerTriggerConfig:
          Input.asOptionalInput<TriggerBitbucketServerTriggerConfig>(
              map['bitbucketServerTriggerConfig']),
      build: Input.asOptionalInput<TriggerBuild>(map['build']),
      description: Input.asOptionalInput<String>(map['description']),
      developerConnectEventConfig:
          Input.asOptionalInput<TriggerDeveloperConnectEventConfig>(
              map['developerConnectEventConfig']),
      disabled: Input.asOptionalInput<bool>(map['disabled']),
      filename: Input.asOptionalInput<String>(map['filename']),
      filter: Input.asOptionalInput<String>(map['filter']),
      gitFileSource:
          Input.asOptionalInput<TriggerGitFileSource>(map['gitFileSource']),
      github: Input.asOptionalInput<TriggerGithub>(map['github']),
      ignoredFiles: Input.asOptionalInput<List<String>>(map['ignoredFiles']),
      includeBuildLogs: Input.asOptionalInput<String>(map['includeBuildLogs']),
      includedFiles: Input.asOptionalInput<List<String>>(map['includedFiles']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      pubsubConfig:
          Input.asOptionalInput<TriggerPubsubConfig>(map['pubsubConfig']),
      repositoryEventConfig:
          Input.asOptionalInput<TriggerRepositoryEventConfig>(
              map['repositoryEventConfig']),
      serviceAccount: Input.asOptionalInput<String>(map['serviceAccount']),
      sourceToBuild:
          Input.asOptionalInput<TriggerSourceToBuild>(map['sourceToBuild']),
      substitutions:
          Input.asOptionalInput<Map<String, String>>(map['substitutions']),
      tags: Input.asOptionalInput<List<String>>(map['tags']),
      triggerTemplate:
          Input.asOptionalInput<TriggerTriggerTemplate>(map['triggerTemplate']),
      webhookConfig:
          Input.asOptionalInput<TriggerWebhookConfig>(map['webhookConfig']),
    );
  }
}
