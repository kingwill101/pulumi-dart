// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_directory_service.dart';
import 'get_instance_effective_replication.dart';
import 'get_instance_file_share.dart';
import 'get_instance_initial_replication.dart';
import 'get_instance_network.dart';
import 'get_instance_performance_config.dart';

/// Result data returned by getInstance.
class GetInstanceResult {
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

  /// Creates a new [GetInstanceResult].
  /// [createTime] Required.
  /// [deletionProtectionEnabled] Required.
  /// [deletionProtectionReason] Required.
  /// [description] Required.
  /// [directoryServices] Required.
  /// [effectiveLabels] Required.
  /// [effectiveReplications] Required.
  /// [etag] Required.
  /// [fileShares] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [initialReplications] Required.
  /// [kmsKeyName] Required.
  /// [labels] Required.
  /// [location] Optional.
  /// [name] Required.
  /// [networks] Required.
  /// [performanceConfigs] Required.
  /// [project] Optional.
  /// [protocol] Required.
  /// [pulumiLabels] Required.
  /// [tags] Required.
  /// [tier] Required.
  /// [zone] Required.
  GetInstanceResult({
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
    return <String, dynamic>{
      'createTime': createTime,
      'deletionProtectionEnabled': deletionProtectionEnabled,
      'deletionProtectionReason': deletionProtectionReason,
      'description': description,
      'directoryServices': pulumi.Input.encodeList<GetInstanceDirectoryService, Map<String, dynamic>>(directoryServices, (value) => value.toMap()),
      'effectiveLabels': effectiveLabels,
      'effectiveReplications': pulumi.Input.encodeList<GetInstanceEffectiveReplication, Map<String, dynamic>>(effectiveReplications, (value) => value.toMap()),
      'etag': etag,
      'fileShares': pulumi.Input.encodeList<GetInstanceFileShare, Map<String, dynamic>>(fileShares, (value) => value.toMap()),
      'id': id,
      'initialReplications': pulumi.Input.encodeList<GetInstanceInitialReplication, Map<String, dynamic>>(initialReplications, (value) => value.toMap()),
      'kmsKeyName': kmsKeyName,
      'labels': labels,
      'location': ?location,
      'name': name,
      'networks': pulumi.Input.encodeList<GetInstanceNetwork, Map<String, dynamic>>(networks, (value) => value.toMap()),
      'performanceConfigs': pulumi.Input.encodeList<GetInstancePerformanceConfig, Map<String, dynamic>>(performanceConfigs, (value) => value.toMap()),
      'project': ?project,
      'protocol': protocol,
      'pulumiLabels': pulumiLabels,
      'tags': tags,
      'tier': tier,
      'zone': zone,
    };
  }

  factory GetInstanceResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceResult(
      createTime: map['createTime'] as String,
      deletionProtectionEnabled: map['deletionProtectionEnabled'] as bool,
      deletionProtectionReason: map['deletionProtectionReason'] as String,
      description: map['description'] as String,
      directoryServices: pulumi.Input.decodeList<GetInstanceDirectoryService>(map['directoryServices'], (value) => GetInstanceDirectoryService.fromMap((value as Map).cast<String, dynamic>())),
      effectiveLabels: (map['effectiveLabels'] as Map).cast<String, String>(),
      effectiveReplications: pulumi.Input.decodeList<GetInstanceEffectiveReplication>(map['effectiveReplications'], (value) => GetInstanceEffectiveReplication.fromMap((value as Map).cast<String, dynamic>())),
      etag: map['etag'] as String,
      fileShares: pulumi.Input.decodeList<GetInstanceFileShare>(map['fileShares'], (value) => GetInstanceFileShare.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      initialReplications: pulumi.Input.decodeList<GetInstanceInitialReplication>(map['initialReplications'], (value) => GetInstanceInitialReplication.fromMap((value as Map).cast<String, dynamic>())),
      kmsKeyName: map['kmsKeyName'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] as String,
      networks: pulumi.Input.decodeList<GetInstanceNetwork>(map['networks'], (value) => GetInstanceNetwork.fromMap((value as Map).cast<String, dynamic>())),
      performanceConfigs: pulumi.Input.decodeList<GetInstancePerformanceConfig>(map['performanceConfigs'], (value) => GetInstancePerformanceConfig.fromMap((value as Map).cast<String, dynamic>())),
      project: map['project'] == null ? null : map['project'] as String,
      protocol: map['protocol'] as String,
      pulumiLabels: (map['pulumiLabels'] as Map).cast<String, String>(),
      tags: (map['tags'] as Map).cast<String, String>(),
      tier: map['tier'] as String,
      zone: map['zone'] as String,
    );
  }
}

