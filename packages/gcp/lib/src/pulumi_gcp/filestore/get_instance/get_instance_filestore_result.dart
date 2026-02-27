// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_instance_directory_service/get_instance_directory_service.dart';
import '../get_instance_effective_replication/get_instance_effective_replication.dart';
import '../get_instance_file_share/get_instance_file_share.dart';
import '../get_instance_initial_replication/get_instance_initial_replication.dart';
import '../get_instance_network/get_instance_network.dart';
import '../get_instance_performance_config/get_instance_performance_config.dart';

/// Result data returned by getInstance.
class GetInstanceFilestoreResult {
  final String createTime;
  final bool deletionProtectionEnabled;
  final String deletionProtectionReason;
  final String description;
  final List<GetInstanceDirectoryService> directoryServices;
  final Map<String, String> effectiveLabels;
  final List<GetInstanceEffectiveReplication> effectiveReplications;
  final String etag;
  final List<GetInstanceFileShare> fileShares;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<GetInstanceInitialReplication> initialReplications;
  final String kmsKeyName;
  final Map<String, String> labels;
  final String? location;
  final String name;
  final List<GetInstanceNetwork> networks;
  final List<GetInstancePerformanceConfig> performanceConfigs;
  final String? project;
  final String protocol;
  final Map<String, String> pulumiLabels;
  final Map<String, String> tags;
  final String tier;
  final String zone;

  GetInstanceFilestoreResult({
    required this.createTime,
    required this.deletionProtectionEnabled,
    required this.deletionProtectionReason,
    required this.description,
    required this.directoryServices,
    required this.effectiveLabels,
    required this.effectiveReplications,
    required this.etag,
    required this.fileShares,
    required this.id,
    required this.initialReplications,
    required this.kmsKeyName,
    required this.labels,
    this.location,
    required this.name,
    required this.networks,
    required this.performanceConfigs,
    this.project,
    required this.protocol,
    required this.pulumiLabels,
    required this.tags,
    required this.tier,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['deletionProtectionEnabled'] = deletionProtectionEnabled;
    map['deletionProtectionReason'] = deletionProtectionReason;
    map['description'] = description;
    map['directoryServices'] = pulumi.Input.encodeList<
        GetInstanceDirectoryService,
        Map<String, dynamic>>(directoryServices, (value) => value.toMap());
    map['effectiveLabels'] = effectiveLabels;
    map['effectiveReplications'] = pulumi.Input.encodeList<
        GetInstanceEffectiveReplication,
        Map<String, dynamic>>(effectiveReplications, (value) => value.toMap());
    map['etag'] = etag;
    map['fileShares'] =
        pulumi.Input.encodeList<GetInstanceFileShare, Map<String, dynamic>>(
            fileShares, (value) => value.toMap());
    map['id'] = id;
    map['initialReplications'] = pulumi.Input.encodeList<
        GetInstanceInitialReplication,
        Map<String, dynamic>>(initialReplications, (value) => value.toMap());
    map['kmsKeyName'] = kmsKeyName;
    map['labels'] = labels;
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    map['name'] = name;
    map['networks'] =
        pulumi.Input.encodeList<GetInstanceNetwork, Map<String, dynamic>>(
            networks, (value) => value.toMap());
    map['performanceConfigs'] = pulumi.Input.encodeList<
        GetInstancePerformanceConfig,
        Map<String, dynamic>>(performanceConfigs, (value) => value.toMap());
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['protocol'] = protocol;
    map['pulumiLabels'] = pulumiLabels;
    map['tags'] = tags;
    map['tier'] = tier;
    map['zone'] = zone;
    return map;
  }

  factory GetInstanceFilestoreResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceFilestoreResult(
      createTime: map['createTime'] as String,
      deletionProtectionEnabled: map['deletionProtectionEnabled'] as bool,
      deletionProtectionReason: map['deletionProtectionReason'] as String,
      description: map['description'] as String,
      directoryServices: pulumi.Input.decodeList<GetInstanceDirectoryService>(
          map['directoryServices'],
          (value) => GetInstanceDirectoryService.fromMap(
              (value as Map).cast<String, dynamic>())),
      effectiveLabels: (map['effectiveLabels'] as Map).cast<String, String>(),
      effectiveReplications:
          pulumi.Input.decodeList<GetInstanceEffectiveReplication>(
              map['effectiveReplications'],
              (value) => GetInstanceEffectiveReplication.fromMap(
                  (value as Map).cast<String, dynamic>())),
      etag: map['etag'] as String,
      fileShares: pulumi.Input.decodeList<GetInstanceFileShare>(
          map['fileShares'],
          (value) => GetInstanceFileShare.fromMap(
              (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      initialReplications:
          pulumi.Input.decodeList<GetInstanceInitialReplication>(
              map['initialReplications'],
              (value) => GetInstanceInitialReplication.fromMap(
                  (value as Map).cast<String, dynamic>())),
      kmsKeyName: map['kmsKeyName'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] as String,
      networks: pulumi.Input.decodeList<GetInstanceNetwork>(
          map['networks'],
          (value) => GetInstanceNetwork.fromMap(
              (value as Map).cast<String, dynamic>())),
      performanceConfigs: pulumi.Input.decodeList<GetInstancePerformanceConfig>(
          map['performanceConfigs'],
          (value) => GetInstancePerformanceConfig.fromMap(
              (value as Map).cast<String, dynamic>())),
      project: map['project'] == null ? null : map['project'] as String,
      protocol: map['protocol'] as String,
      pulumiLabels: (map['pulumiLabels'] as Map).cast<String, String>(),
      tags: (map['tags'] as Map).cast<String, String>(),
      tier: map['tier'] as String,
      zone: map['zone'] as String,
    );
  }
}
