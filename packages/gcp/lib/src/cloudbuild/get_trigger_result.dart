// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_trigger_approval_config.dart';
import 'get_trigger_bitbucket_server_trigger_config.dart';
import 'get_trigger_build.dart';
import 'get_trigger_developer_connect_event_config.dart';
import 'get_trigger_git_file_source.dart';
import 'get_trigger_github.dart';
import 'get_trigger_pubsub_config.dart';
import 'get_trigger_repository_event_config.dart';
import 'get_trigger_source_to_build.dart';
import 'get_trigger_trigger_template.dart';
import 'get_trigger_webhook_config.dart';

/// Result data returned by getTrigger.
class GetTriggerResult {
  final List<GetTriggerApprovalConfig> approvalConfigs;
  final List<GetTriggerBitbucketServerTriggerConfig>
  bitbucketServerTriggerConfigs;
  final List<GetTriggerBuild> builds;
  final String createTime;
  final String description;
  final List<GetTriggerDeveloperConnectEventConfig>
  developerConnectEventConfigs;
  final bool disabled;
  final String filename;
  final String filter;
  final List<GetTriggerGitFileSource> gitFileSources;
  final List<GetTriggerGithub> githubs;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ignoredFiles;
  final String includeBuildLogs;
  final List<String> includedFiles;
  final String location;
  final String name;
  final String? project;
  final List<GetTriggerPubsubConfig> pubsubConfigs;
  final List<GetTriggerRepositoryEventConfig> repositoryEventConfigs;
  final String serviceAccount;
  final List<GetTriggerSourceToBuild> sourceToBuilds;
  final Map<String, String> substitutions;
  final List<String> tags;
  final String triggerId;
  final List<GetTriggerTriggerTemplate> triggerTemplates;
  final List<GetTriggerWebhookConfig> webhookConfigs;

  /// Creates a new [GetTriggerResult].
  /// [approvalConfigs] Required.
  /// [bitbucketServerTriggerConfigs] Required.
  /// [builds] Required.
  /// [createTime] Required.
  /// [description] Required.
  /// [developerConnectEventConfigs] Required.
  /// [disabled] Required.
  /// [filename] Required.
  /// [filter] Required.
  /// [gitFileSources] Required.
  /// [githubs] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ignoredFiles] Required.
  /// [includeBuildLogs] Required.
  /// [includedFiles] Required.
  /// [location] Required.
  /// [name] Required.
  /// [project] Optional.
  /// [pubsubConfigs] Required.
  /// [repositoryEventConfigs] Required.
  /// [serviceAccount] Required.
  /// [sourceToBuilds] Required.
  /// [substitutions] Required.
  /// [tags] Required.
  /// [triggerId] Required.
  /// [triggerTemplates] Required.
  /// [webhookConfigs] Required.
  GetTriggerResult({
    required this.approvalConfigs,
    required this.bitbucketServerTriggerConfigs,
    required this.builds,
    required this.createTime,
    required this.description,
    required this.developerConnectEventConfigs,
    required this.disabled,
    required this.filename,
    required this.filter,
    required this.gitFileSources,
    required this.githubs,
    required this.id,
    required this.ignoredFiles,
    required this.includeBuildLogs,
    required this.includedFiles,
    required this.location,
    required this.name,
    this.project,
    required this.pubsubConfigs,
    required this.repositoryEventConfigs,
    required this.serviceAccount,
    required this.sourceToBuilds,
    required this.substitutions,
    required this.tags,
    required this.triggerId,
    required this.triggerTemplates,
    required this.webhookConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'approvalConfigs':
          pulumi.Input.encodeList<
            GetTriggerApprovalConfig,
            Map<String, dynamic>
          >(approvalConfigs, (value) => value.toMap()),
      'bitbucketServerTriggerConfigs':
          pulumi.Input.encodeList<
            GetTriggerBitbucketServerTriggerConfig,
            Map<String, dynamic>
          >(bitbucketServerTriggerConfigs, (value) => value.toMap()),
      'builds': pulumi.Input.encodeList<GetTriggerBuild, Map<String, dynamic>>(
        builds,
        (value) => value.toMap(),
      ),
      'createTime': createTime,
      'description': description,
      'developerConnectEventConfigs':
          pulumi.Input.encodeList<
            GetTriggerDeveloperConnectEventConfig,
            Map<String, dynamic>
          >(developerConnectEventConfigs, (value) => value.toMap()),
      'disabled': disabled,
      'filename': filename,
      'filter': filter,
      'gitFileSources':
          pulumi.Input.encodeList<
            GetTriggerGitFileSource,
            Map<String, dynamic>
          >(gitFileSources, (value) => value.toMap()),
      'githubs':
          pulumi.Input.encodeList<GetTriggerGithub, Map<String, dynamic>>(
            githubs,
            (value) => value.toMap(),
          ),
      'id': id,
      'ignoredFiles': ignoredFiles,
      'includeBuildLogs': includeBuildLogs,
      'includedFiles': includedFiles,
      'location': location,
      'name': name,
      'project': ?project,
      'pubsubConfigs':
          pulumi.Input.encodeList<GetTriggerPubsubConfig, Map<String, dynamic>>(
            pubsubConfigs,
            (value) => value.toMap(),
          ),
      'repositoryEventConfigs':
          pulumi.Input.encodeList<
            GetTriggerRepositoryEventConfig,
            Map<String, dynamic>
          >(repositoryEventConfigs, (value) => value.toMap()),
      'serviceAccount': serviceAccount,
      'sourceToBuilds':
          pulumi.Input.encodeList<
            GetTriggerSourceToBuild,
            Map<String, dynamic>
          >(sourceToBuilds, (value) => value.toMap()),
      'substitutions': substitutions,
      'tags': tags,
      'triggerId': triggerId,
      'triggerTemplates':
          pulumi.Input.encodeList<
            GetTriggerTriggerTemplate,
            Map<String, dynamic>
          >(triggerTemplates, (value) => value.toMap()),
      'webhookConfigs':
          pulumi.Input.encodeList<
            GetTriggerWebhookConfig,
            Map<String, dynamic>
          >(webhookConfigs, (value) => value.toMap()),
    };
  }

  factory GetTriggerResult.fromMap(Map<String, dynamic> map) {
    return GetTriggerResult(
      approvalConfigs: pulumi.Input.decodeList<GetTriggerApprovalConfig>(
        map['approvalConfigs'],
        (value) => GetTriggerApprovalConfig.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      bitbucketServerTriggerConfigs:
          pulumi.Input.decodeList<GetTriggerBitbucketServerTriggerConfig>(
            map['bitbucketServerTriggerConfigs'],
            (value) => GetTriggerBitbucketServerTriggerConfig.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      builds: pulumi.Input.decodeList<GetTriggerBuild>(
        map['builds'],
        (value) =>
            GetTriggerBuild.fromMap((value as Map).cast<String, dynamic>()),
      ),
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      developerConnectEventConfigs:
          pulumi.Input.decodeList<GetTriggerDeveloperConnectEventConfig>(
            map['developerConnectEventConfigs'],
            (value) => GetTriggerDeveloperConnectEventConfig.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      disabled: map['disabled'] as bool,
      filename: map['filename'] as String,
      filter: map['filter'] as String,
      gitFileSources: pulumi.Input.decodeList<GetTriggerGitFileSource>(
        map['gitFileSources'],
        (value) => GetTriggerGitFileSource.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      githubs: pulumi.Input.decodeList<GetTriggerGithub>(
        map['githubs'],
        (value) =>
            GetTriggerGithub.fromMap((value as Map).cast<String, dynamic>()),
      ),
      id: map['id'] as String,
      ignoredFiles: (map['ignoredFiles'] as List).cast<String>(),
      includeBuildLogs: map['includeBuildLogs'] as String,
      includedFiles: (map['includedFiles'] as List).cast<String>(),
      location: map['location'] as String,
      name: map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      pubsubConfigs: pulumi.Input.decodeList<GetTriggerPubsubConfig>(
        map['pubsubConfigs'],
        (value) => GetTriggerPubsubConfig.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      repositoryEventConfigs:
          pulumi.Input.decodeList<GetTriggerRepositoryEventConfig>(
            map['repositoryEventConfigs'],
            (value) => GetTriggerRepositoryEventConfig.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      serviceAccount: map['serviceAccount'] as String,
      sourceToBuilds: pulumi.Input.decodeList<GetTriggerSourceToBuild>(
        map['sourceToBuilds'],
        (value) => GetTriggerSourceToBuild.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      substitutions: (map['substitutions'] as Map).cast<String, String>(),
      tags: (map['tags'] as List).cast<String>(),
      triggerId: map['triggerId'] as String,
      triggerTemplates: pulumi.Input.decodeList<GetTriggerTriggerTemplate>(
        map['triggerTemplates'],
        (value) => GetTriggerTriggerTemplate.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      webhookConfigs: pulumi.Input.decodeList<GetTriggerWebhookConfig>(
        map['webhookConfigs'],
        (value) => GetTriggerWebhookConfig.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
