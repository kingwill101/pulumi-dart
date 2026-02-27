// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../instance_directory_services/instance_directory_services.dart';
import '../instance_file_shares/instance_file_shares.dart';
import '../instance_initial_replication/instance_initial_replication.dart';
import '../instance_network/instance_network.dart';
import '../instance_performance_config/instance_performance_config.dart';

/// The set of arguments for Instance.
class InstanceFilestoreArgs {
  /// Indicates whether the instance is protected against deletion.
  final pulumi.Input<bool>? deletionProtectionEnabled;

  /// The reason for enabling deletion protection.
  final pulumi.Input<String>? deletionProtectionReason;

  /// A description of the instance.
  final pulumi.Input<String>? description;

  /// Directory Services configuration.
  /// Should only be set if protocol is "NFS_V4_1".
  /// Structure is documented below.
  final pulumi.Input<InstanceDirectoryServices>? directoryServices;

  /// File system shares on the instance. For this version, only a
  /// single file share is supported.
  /// Structure is documented below.
  final pulumi.Input<InstanceFileShares> fileShares;

  /// Replication configuration, once set, this cannot be updated.
  /// Additionally this should be specified on the replica instance only, indicating the active as the peer_instance
  /// Structure is documented below.
  final pulumi.Input<InstanceInitialReplication>? initialReplication;

  /// KMS key name used for data encryption.
  final pulumi.Input<String>? kmsKeyName;

  /// Resource labels to represent user-provided metadata.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The name of the location of the instance. This can be a region for ENTERPRISE tier instances.
  final pulumi.Input<String>? location;

  /// The resource name of the instance.
  final pulumi.Input<String>? name;

  /// VPC networks to which the instance is connected. For this version,
  /// only a single network is supported.
  /// Structure is documented below.
  final pulumi.Input<List<InstanceNetwork>> networks;

  /// Performance configuration for the instance. If not provided,
  /// the default performance settings will be used.
  /// Structure is documented below.
  final pulumi.Input<InstancePerformanceConfig>? performanceConfig;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Either NFSv3, for using NFS version 3 as file sharing protocol,
  /// or NFSv4.1, for using NFS version 4.1 as file sharing protocol.
  /// NFSv4.1 can be used with HIGH_SCALE_SSD, ZONAL, REGIONAL and ENTERPRISE.
  /// The default is NFSv3.
  /// Default value is `NFS_V3`.
  /// Possible values are: `NFS_V3`, `NFS_V4_1`.
  final pulumi.Input<String>? protocol;

  /// A map of resource manager tags. Resource manager tag keys
  /// and values have the same definition as resource manager
  /// tags. Keys must be in the format tagKeys/{tag_key_id},
  /// and values are in the format tagValues/456. The field is
  /// ignored when empty. The field is immutable and causes
  /// resource replacement when mutated. This field is only set
  /// at create time and modifying this field after creation
  /// will trigger recreation. To apply tags to an existing
  /// resource, see the `gcp.tags.TagValue` resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// The service tier of the instance.
  /// Possible values include: STANDARD, PREMIUM, BASIC_HDD, BASIC_SSD, HIGH_SCALE_SSD, ZONAL, REGIONAL and ENTERPRISE
  final pulumi.Input<String> tier;

  /// (Optional, Deprecated)
  /// The name of the Filestore zone of the instance.
  ///
  /// > **Warning:** `zone` is deprecated and will be removed in a future major release. Use `location` instead.
  final pulumi.Input<String>? zone;

  InstanceFilestoreArgs({
    this.deletionProtectionEnabled,
    this.deletionProtectionReason,
    this.description,
    this.directoryServices,
    required this.fileShares,
    this.initialReplication,
    this.kmsKeyName,
    this.labels,
    this.location,
    this.name,
    required this.networks,
    this.performanceConfig,
    this.project,
    this.protocol,
    this.tags,
    required this.tier,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final deletionProtectionEnabledValue = deletionProtectionEnabled;
    if (deletionProtectionEnabledValue != null) {
      map['deletionProtectionEnabled'] = deletionProtectionEnabledValue;
    }
    final deletionProtectionReasonValue = deletionProtectionReason;
    if (deletionProtectionReasonValue != null) {
      map['deletionProtectionReason'] = deletionProtectionReasonValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final directoryServicesValue = directoryServices;
    if (directoryServicesValue != null) {
      map['directoryServices'] = pulumi.Input.mapOptionalInputValue<
              InstanceDirectoryServices, Map<String, dynamic>>(
          directoryServicesValue, (value) => value.toMap());
    }
    map['fileShares'] =
        pulumi.Input.mapInputValue<InstanceFileShares, Map<String, dynamic>>(
            fileShares, (value) => value.toMap());
    final initialReplicationValue = initialReplication;
    if (initialReplicationValue != null) {
      map['initialReplication'] = pulumi.Input.mapOptionalInputValue<
              InstanceInitialReplication, Map<String, dynamic>>(
          initialReplicationValue, (value) => value.toMap());
    }
    final kmsKeyNameValue = kmsKeyName;
    if (kmsKeyNameValue != null) {
      map['kmsKeyName'] = kmsKeyNameValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['networks'] = pulumi.Input.mapInputValue<List<InstanceNetwork>,
            List<Map<String, dynamic>>>(
        networks,
        (value) =>
            pulumi.Input.encodeList<InstanceNetwork, Map<String, dynamic>>(
                value, (value) => value.toMap()));
    final performanceConfigValue = performanceConfig;
    if (performanceConfigValue != null) {
      map['performanceConfig'] = pulumi.Input.mapOptionalInputValue<
              InstancePerformanceConfig, Map<String, dynamic>>(
          performanceConfigValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final protocolValue = protocol;
    if (protocolValue != null) {
      map['protocol'] = protocolValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['tier'] = tier;
    final zoneValue = zone;
    if (zoneValue != null) {
      map['zone'] = zoneValue;
    }
    return map;
  }

  factory InstanceFilestoreArgs.fromMap(Map<String, dynamic> map) {
    return InstanceFilestoreArgs(
      deletionProtectionEnabled:
          pulumi.Input.asOptionalInput<bool>(map['deletionProtectionEnabled']),
      deletionProtectionReason:
          pulumi.Input.asOptionalInput<String>(map['deletionProtectionReason']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      directoryServices:
          pulumi.Input.asOptionalInput<InstanceDirectoryServices>(
              map['directoryServices']),
      fileShares: pulumi.Input.asInput<InstanceFileShares>(map['fileShares']),
      initialReplication:
          pulumi.Input.asOptionalInput<InstanceInitialReplication>(
              map['initialReplication']),
      kmsKeyName: pulumi.Input.asOptionalInput<String>(map['kmsKeyName']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      networks: pulumi.Input.asInput<List<InstanceNetwork>>(map['networks']),
      performanceConfig:
          pulumi.Input.asOptionalInput<InstancePerformanceConfig>(
              map['performanceConfig']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      protocol: pulumi.Input.asOptionalInput<String>(map['protocol']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      tier: pulumi.Input.asInput<String>(map['tier']),
      zone: pulumi.Input.asOptionalInput<String>(map['zone']),
    );
  }
}
