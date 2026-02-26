// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../instance_directory_services/instance_directory_services.dart';
import '../instance_file_shares/instance_file_shares.dart';
import '../instance_initial_replication/instance_initial_replication.dart';
import '../instance_network/instance_network.dart';
import '../instance_performance_config/instance_performance_config.dart';

/// The set of arguments for Instance.
class InstanceArgs6 {
  /// Indicates whether the instance is protected against deletion.
  final Input<bool>? deletionProtectionEnabled;

  /// The reason for enabling deletion protection.
  final Input<String>? deletionProtectionReason;

  /// A description of the instance.
  final Input<String>? description;

  /// Directory Services configuration.
  /// Should only be set if protocol is "NFS_V4_1".
  /// Structure is documented below.
  final Input<InstanceDirectoryServices>? directoryServices;

  /// File system shares on the instance. For this version, only a
  /// single file share is supported.
  /// Structure is documented below.
  final Input<InstanceFileShares> fileShares;

  /// Replication configuration, once set, this cannot be updated.
  /// Additionally this should be specified on the replica instance only, indicating the active as the<span pulumi-lang-nodejs=" peerInstance
  /// " pulumi-lang-dotnet=" PeerInstance
  /// " pulumi-lang-go=" peerInstance
  /// " pulumi-lang-python=" peer_instance
  /// " pulumi-lang-yaml=" peerInstance
  /// " pulumi-lang-java=" peerInstance
  /// "> peer_instance
  /// </span>Structure is documented below.
  final Input<InstanceInitialReplication>? initialReplication;

  /// KMS key name used for data encryption.
  final Input<String>? kmsKeyName;

  /// Resource labels to represent user-provided metadata.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// The name of the location of the instance. This can be a region for ENTERPRISE tier instances.
  final Input<String>? location;

  /// The resource name of the instance.
  final Input<String>? name;

  /// VPC networks to which the instance is connected. For this version,
  /// only a single network is supported.
  /// Structure is documented below.
  final Input<List<InstanceNetwork>> networks;

  /// Performance configuration for the instance. If not provided,
  /// the default performance settings will be used.
  /// Structure is documented below.
  final Input<InstancePerformanceConfig>? performanceConfig;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// Either NFSv3, for using NFS version 3 as file sharing protocol,
  /// or NFSv4.1, for using NFS version 4.1 as file sharing protocol.
  /// NFSv4.1 can be used with HIGH_SCALE_SSD, ZONAL, REGIONAL and ENTERPRISE.
  /// The default is NFSv3.
  /// Default value is `NFS_V3`.
  /// Possible values are: `NFS_V3`, `NFS_V4_1`.
  final Input<String>? protocol;

  /// A map of resource manager tags. Resource manager tag keys
  /// and values have the same definition as resource manager
  /// tags. Keys must be in the format tagKeys/{tag_key_id},
  /// and values are in the format tagValues/456. The field is
  /// ignored when empty. The field is immutable and causes
  /// resource replacement when mutated. This field is only set
  /// at create time and modifying this field after creation
  /// will trigger recreation. To apply tags to an existing
  /// resource, see the <span pulumi-lang-nodejs="`gcp.tags.TagValue`" pulumi-lang-dotnet="`gcp.tags.TagValue`" pulumi-lang-go="`tags.TagValue`" pulumi-lang-python="`tags.TagValue`" pulumi-lang-yaml="`gcp.tags.TagValue`" pulumi-lang-java="`gcp.tags.TagValue`">`gcp.tags.TagValue`</span> resource.
  final Input<Map<String, String>>? tags;

  /// The service tier of the instance.
  /// Possible values include: STANDARD, PREMIUM, BASIC_HDD, BASIC_SSD, HIGH_SCALE_SSD, ZONAL, REGIONAL and ENTERPRISE
  final Input<String> tier;

  /// (Optional, Deprecated)
  /// The name of the Filestore zone of the instance.
  ///
  /// > **Warning:** <span pulumi-lang-nodejs="`zone`" pulumi-lang-dotnet="`Zone`" pulumi-lang-go="`zone`" pulumi-lang-python="`zone`" pulumi-lang-yaml="`zone`" pulumi-lang-java="`zone`">`zone`</span> is deprecated and will be removed in a future major release. Use <span pulumi-lang-nodejs="`location`" pulumi-lang-dotnet="`Location`" pulumi-lang-go="`location`" pulumi-lang-python="`location`" pulumi-lang-yaml="`location`" pulumi-lang-java="`location`">`location`</span> instead.
  final Input<String>? zone;

  InstanceArgs6({
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
      map['directoryServices'] = Input.mapOptionalInputValue<
              InstanceDirectoryServices, Map<String, dynamic>>(
          directoryServicesValue, (value) => value.toMap());
    }
    map['fileShares'] =
        Input.mapInputValue<InstanceFileShares, Map<String, dynamic>>(
            fileShares, (value) => value.toMap());
    final initialReplicationValue = initialReplication;
    if (initialReplicationValue != null) {
      map['initialReplication'] = Input.mapOptionalInputValue<
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
    map['networks'] =
        Input.mapInputValue<List<InstanceNetwork>, List<Map<String, dynamic>>>(
            networks,
            (value) => Input.encodeList<InstanceNetwork, Map<String, dynamic>>(
                value, (value) => value.toMap()));
    final performanceConfigValue = performanceConfig;
    if (performanceConfigValue != null) {
      map['performanceConfig'] = Input.mapOptionalInputValue<
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

  factory InstanceArgs6.fromMap(Map<String, dynamic> map) {
    return InstanceArgs6(
      deletionProtectionEnabled:
          Input.asOptionalInput<bool>(map['deletionProtectionEnabled']),
      deletionProtectionReason:
          Input.asOptionalInput<String>(map['deletionProtectionReason']),
      description: Input.asOptionalInput<String>(map['description']),
      directoryServices: Input.asOptionalInput<InstanceDirectoryServices>(
          map['directoryServices']),
      fileShares: Input.asInput<InstanceFileShares>(map['fileShares']),
      initialReplication: Input.asOptionalInput<InstanceInitialReplication>(
          map['initialReplication']),
      kmsKeyName: Input.asOptionalInput<String>(map['kmsKeyName']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      networks: Input.asInput<List<InstanceNetwork>>(map['networks']),
      performanceConfig: Input.asOptionalInput<InstancePerformanceConfig>(
          map['performanceConfig']),
      project: Input.asOptionalInput<String>(map['project']),
      protocol: Input.asOptionalInput<String>(map['protocol']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      tier: Input.asInput<String>(map['tier']),
      zone: Input.asOptionalInput<String>(map['zone']),
    );
  }
}
