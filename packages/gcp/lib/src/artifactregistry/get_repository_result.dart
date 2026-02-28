// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_repository_cleanup_policy.dart';
import 'get_repository_docker_config.dart';
import 'get_repository_maven_config.dart';
import 'get_repository_remote_repository_config.dart';
import 'get_repository_virtual_repository_config.dart';
import 'get_repository_vulnerability_scanning_config.dart';

/// Result data returned by getRepository.
class GetRepositoryResult {
  final List<GetRepositoryCleanupPolicy> cleanupPolicies;
  final bool cleanupPolicyDryRun;
  final String createTime;
  final String description;
  final List<GetRepositoryDockerConfig> dockerConfigs;
  final Map<String, String> effectiveLabels;
  final String format;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String kmsKeyName;
  final Map<String, String> labels;
  final String location;
  final List<GetRepositoryMavenConfig> mavenConfigs;
  final String mode;
  final String name;
  final String? project;
  final Map<String, String> pulumiLabels;
  final String registryUri;
  final List<GetRepositoryRemoteRepositoryConfig> remoteRepositoryConfigs;
  final String repositoryId;
  final String updateTime;
  final List<GetRepositoryVirtualRepositoryConfig> virtualRepositoryConfigs;
  final List<GetRepositoryVulnerabilityScanningConfig>
      vulnerabilityScanningConfigs;

  /// Creates a new [GetRepositoryResult].
  /// [cleanupPolicies] Required.
  /// [cleanupPolicyDryRun] Required.
  /// [createTime] Required.
  /// [description] Required.
  /// [dockerConfigs] Required.
  /// [effectiveLabels] Required.
  /// [format] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [kmsKeyName] Required.
  /// [labels] Required.
  /// [location] Required.
  /// [mavenConfigs] Required.
  /// [mode] Required.
  /// [name] Required.
  /// [project] Optional.
  /// [pulumiLabels] Required.
  /// [registryUri] Required.
  /// [remoteRepositoryConfigs] Required.
  /// [repositoryId] Required.
  /// [updateTime] Required.
  /// [virtualRepositoryConfigs] Required.
  /// [vulnerabilityScanningConfigs] Required.
  GetRepositoryResult({
    required this.cleanupPolicies,
    required this.cleanupPolicyDryRun,
    required this.createTime,
    required this.description,
    required this.dockerConfigs,
    required this.effectiveLabels,
    required this.format,
    required this.id,
    required this.kmsKeyName,
    required this.labels,
    required this.location,
    required this.mavenConfigs,
    required this.mode,
    required this.name,
    this.project,
    required this.pulumiLabels,
    required this.registryUri,
    required this.remoteRepositoryConfigs,
    required this.repositoryId,
    required this.updateTime,
    required this.virtualRepositoryConfigs,
    required this.vulnerabilityScanningConfigs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cleanupPolicies'] = pulumi.Input.encodeList<GetRepositoryCleanupPolicy,
        Map<String, dynamic>>(cleanupPolicies, (value) => value.toMap());
    map['cleanupPolicyDryRun'] = cleanupPolicyDryRun;
    map['createTime'] = createTime;
    map['description'] = description;
    map['dockerConfigs'] = pulumi.Input.encodeList<GetRepositoryDockerConfig,
        Map<String, dynamic>>(dockerConfigs, (value) => value.toMap());
    map['effectiveLabels'] = effectiveLabels;
    map['format'] = format;
    map['id'] = id;
    map['kmsKeyName'] = kmsKeyName;
    map['labels'] = labels;
    map['location'] = location;
    map['mavenConfigs'] =
        pulumi.Input.encodeList<GetRepositoryMavenConfig, Map<String, dynamic>>(
            mavenConfigs, (value) => value.toMap());
    map['mode'] = mode;
    map['name'] = name;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['pulumiLabels'] = pulumiLabels;
    map['registryUri'] = registryUri;
    map['remoteRepositoryConfigs'] = pulumi.Input.encodeList<
            GetRepositoryRemoteRepositoryConfig, Map<String, dynamic>>(
        remoteRepositoryConfigs, (value) => value.toMap());
    map['repositoryId'] = repositoryId;
    map['updateTime'] = updateTime;
    map['virtualRepositoryConfigs'] = pulumi.Input.encodeList<
            GetRepositoryVirtualRepositoryConfig, Map<String, dynamic>>(
        virtualRepositoryConfigs, (value) => value.toMap());
    map['vulnerabilityScanningConfigs'] = pulumi.Input.encodeList<
            GetRepositoryVulnerabilityScanningConfig, Map<String, dynamic>>(
        vulnerabilityScanningConfigs, (value) => value.toMap());
    return map;
  }

  factory GetRepositoryResult.fromMap(Map<String, dynamic> map) {
    return GetRepositoryResult(
      cleanupPolicies: pulumi.Input.decodeList<GetRepositoryCleanupPolicy>(
          map['cleanupPolicies'],
          (value) => GetRepositoryCleanupPolicy.fromMap(
              (value as Map).cast<String, dynamic>())),
      cleanupPolicyDryRun: map['cleanupPolicyDryRun'] as bool,
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      dockerConfigs: pulumi.Input.decodeList<GetRepositoryDockerConfig>(
          map['dockerConfigs'],
          (value) => GetRepositoryDockerConfig.fromMap(
              (value as Map).cast<String, dynamic>())),
      effectiveLabels: (map['effectiveLabels'] as Map).cast<String, String>(),
      format: map['format'] as String,
      id: map['id'] as String,
      kmsKeyName: map['kmsKeyName'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      location: map['location'] as String,
      mavenConfigs: pulumi.Input.decodeList<GetRepositoryMavenConfig>(
          map['mavenConfigs'],
          (value) => GetRepositoryMavenConfig.fromMap(
              (value as Map).cast<String, dynamic>())),
      mode: map['mode'] as String,
      name: map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      pulumiLabels: (map['pulumiLabels'] as Map).cast<String, String>(),
      registryUri: map['registryUri'] as String,
      remoteRepositoryConfigs:
          pulumi.Input.decodeList<GetRepositoryRemoteRepositoryConfig>(
              map['remoteRepositoryConfigs'],
              (value) => GetRepositoryRemoteRepositoryConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      repositoryId: map['repositoryId'] as String,
      updateTime: map['updateTime'] as String,
      virtualRepositoryConfigs:
          pulumi.Input.decodeList<GetRepositoryVirtualRepositoryConfig>(
              map['virtualRepositoryConfigs'],
              (value) => GetRepositoryVirtualRepositoryConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      vulnerabilityScanningConfigs:
          pulumi.Input.decodeList<GetRepositoryVulnerabilityScanningConfig>(
              map['vulnerabilityScanningConfigs'],
              (value) => GetRepositoryVulnerabilityScanningConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
