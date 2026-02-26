// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for StoragePool.
class StoragePoolArgs2 {
  /// Specifies the Active Directory policy to be used. Format: `projects/{{project}}/locations/{{location}}/activeDirectories/{{name}}`.
  /// The policy needs to be in the same location as the storage pool.
  final Input<String>? activeDirectory;

  /// Optional. True if the storage pool supports Auto Tiering enabled volumes. Default is false.
  /// Auto-tiering can be enabled after storage pool creation but it can't be disabled once enabled.
  final Input<bool>? allowAutoTiering;

  /// Capacity of the storage pool (in GiB).
  final Input<String> capacityGib;

  /// Optional. True if using Independent Scaling of capacity and performance (Hyperdisk). Default is false.
  final Input<bool>? customPerformanceEnabled;

  /// An optional description of this resource.
  final Input<String>? description;

  /// Flag indicating that the hot-tier threshold will be auto-increased by 10% of the hot-tier when it hits 100%. Default is true.
  /// The increment will kick in only if the new size after increment is still less than or equal to storage pool size.
  final Input<bool>? enableHotTierAutoResize;

  /// Total hot tier capacity for the Storage Pool. It is applicable only to Flex service level.
  /// It should be less than the minimum storage pool size and cannot be more than the current storage pool size. It cannot be decreased once set.
  final Input<String>? hotTierSizeGib;

  /// Specifies the CMEK policy to be used for volume encryption. Format: `projects/{{project}}/locations/{{location}}/kmsConfigs/{{name}}`.
  /// The policy needs to be in the same location as the storage pool.
  final Input<String>? kmsConfig;

  /// Labels as key value pairs. Example: `{ "owner": "Bob", "department": "finance", "purpose": "testing" }`.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// When enabled, the volumes uses Active Directory as LDAP name service for UID/GID lookups. Required to enable extended group support for NFSv3,
  /// using security identifiers for NFSv4.1 or principal names for kerberized NFSv4.1.
  final Input<bool>? ldapEnabled;

  /// Name of the location. For zonal Flex pools specify a zone name, in all other cases a region name.
  final Input<String> location;

  /// The resource name of the storage pool. Needs to be unique per location/region.
  final Input<String>? name;

  /// VPC network name with format: `projects/{{project}}/global/networks/{{network}}`
  final Input<String> network;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// QoS (Quality of Service) type of the storage pool.
  /// Possible values are: AUTO, MANUAL.
  /// Possible values are: `QOS_TYPE_UNSPECIFIED`, `AUTO`, `MANUAL`.
  final Input<String>? qosType;

  /// Specifies the replica zone for regional Flex pools. <span pulumi-lang-nodejs="`zone`" pulumi-lang-dotnet="`Zone`" pulumi-lang-go="`zone`" pulumi-lang-python="`zone`" pulumi-lang-yaml="`zone`" pulumi-lang-java="`zone`">`zone`</span> and <span pulumi-lang-nodejs="`replicaZone`" pulumi-lang-dotnet="`ReplicaZone`" pulumi-lang-go="`replicaZone`" pulumi-lang-python="`replica_zone`" pulumi-lang-yaml="`replicaZone`" pulumi-lang-java="`replicaZone`">`replica_zone`</span> values can be swapped to initiate a
  /// [zone switch](https://cloud.google.com/netapp/volumes/docs/configure-and-use/storage-pools/edit-or-delete-storage-pool#switch_active_and_replica_zones).
  final Input<String>? replicaZone;

  /// Service level of the storage pool.
  /// Possible values are: `PREMIUM`, `EXTREME`, `STANDARD`, `FLEX`.
  final Input<String> serviceLevel;

  /// Optional. Custom Performance Total IOPS of the pool If not provided, it will be calculated based on the totalThroughputMibps
  final Input<String>? totalIops;

  /// Optional. Custom Performance Total Throughput of the pool (in MiB/s).
  final Input<String>? totalThroughputMibps;

  /// Type of the storage pool.
  /// This field is used to control whether the pool supports FILE based volumes only or UNIFIED (both FILE and BLOCK) volumes.
  /// If not specified during creation, it defaults to FILE.
  /// Possible values are: `STORAGE_POOL_TYPE_UNSPECIFIED`, `FILE`, `UNIFIED`.
  final Input<String>? type;

  /// Specifies the active zone for regional Flex pools. <span pulumi-lang-nodejs="`zone`" pulumi-lang-dotnet="`Zone`" pulumi-lang-go="`zone`" pulumi-lang-python="`zone`" pulumi-lang-yaml="`zone`" pulumi-lang-java="`zone`">`zone`</span> and <span pulumi-lang-nodejs="`replicaZone`" pulumi-lang-dotnet="`ReplicaZone`" pulumi-lang-go="`replicaZone`" pulumi-lang-python="`replica_zone`" pulumi-lang-yaml="`replicaZone`" pulumi-lang-java="`replicaZone`">`replica_zone`</span> values can be swapped to initiate a
  /// [zone switch](https://cloud.google.com/netapp/volumes/docs/configure-and-use/storage-pools/edit-or-delete-storage-pool#switch_active_and_replica_zones).
  /// If you want to create a zonal Flex pool, specify a zone name for <span pulumi-lang-nodejs="`location`" pulumi-lang-dotnet="`Location`" pulumi-lang-go="`location`" pulumi-lang-python="`location`" pulumi-lang-yaml="`location`" pulumi-lang-java="`location`">`location`</span> and omit <span pulumi-lang-nodejs="`zone`" pulumi-lang-dotnet="`Zone`" pulumi-lang-go="`zone`" pulumi-lang-python="`zone`" pulumi-lang-yaml="`zone`" pulumi-lang-java="`zone`">`zone`</span>.
  final Input<String>? zone;

  StoragePoolArgs2({
    this.activeDirectory,
    this.allowAutoTiering,
    required this.capacityGib,
    this.customPerformanceEnabled,
    this.description,
    this.enableHotTierAutoResize,
    this.hotTierSizeGib,
    this.kmsConfig,
    this.labels,
    this.ldapEnabled,
    required this.location,
    this.name,
    required this.network,
    this.project,
    this.qosType,
    this.replicaZone,
    required this.serviceLevel,
    this.totalIops,
    this.totalThroughputMibps,
    this.type,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final activeDirectoryValue = activeDirectory;
    if (activeDirectoryValue != null) {
      map['activeDirectory'] = activeDirectoryValue;
    }
    final allowAutoTieringValue = allowAutoTiering;
    if (allowAutoTieringValue != null) {
      map['allowAutoTiering'] = allowAutoTieringValue;
    }
    map['capacityGib'] = capacityGib;
    final customPerformanceEnabledValue = customPerformanceEnabled;
    if (customPerformanceEnabledValue != null) {
      map['customPerformanceEnabled'] = customPerformanceEnabledValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final enableHotTierAutoResizeValue = enableHotTierAutoResize;
    if (enableHotTierAutoResizeValue != null) {
      map['enableHotTierAutoResize'] = enableHotTierAutoResizeValue;
    }
    final hotTierSizeGibValue = hotTierSizeGib;
    if (hotTierSizeGibValue != null) {
      map['hotTierSizeGib'] = hotTierSizeGibValue;
    }
    final kmsConfigValue = kmsConfig;
    if (kmsConfigValue != null) {
      map['kmsConfig'] = kmsConfigValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final ldapEnabledValue = ldapEnabled;
    if (ldapEnabledValue != null) {
      map['ldapEnabled'] = ldapEnabledValue;
    }
    map['location'] = location;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['network'] = network;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final qosTypeValue = qosType;
    if (qosTypeValue != null) {
      map['qosType'] = qosTypeValue;
    }
    final replicaZoneValue = replicaZone;
    if (replicaZoneValue != null) {
      map['replicaZone'] = replicaZoneValue;
    }
    map['serviceLevel'] = serviceLevel;
    final totalIopsValue = totalIops;
    if (totalIopsValue != null) {
      map['totalIops'] = totalIopsValue;
    }
    final totalThroughputMibpsValue = totalThroughputMibps;
    if (totalThroughputMibpsValue != null) {
      map['totalThroughputMibps'] = totalThroughputMibpsValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    final zoneValue = zone;
    if (zoneValue != null) {
      map['zone'] = zoneValue;
    }
    return map;
  }

  factory StoragePoolArgs2.fromMap(Map<String, dynamic> map) {
    return StoragePoolArgs2(
      activeDirectory: Input.asOptionalInput<String>(map['activeDirectory']),
      allowAutoTiering: Input.asOptionalInput<bool>(map['allowAutoTiering']),
      capacityGib: Input.asInput<String>(map['capacityGib']),
      customPerformanceEnabled:
          Input.asOptionalInput<bool>(map['customPerformanceEnabled']),
      description: Input.asOptionalInput<String>(map['description']),
      enableHotTierAutoResize:
          Input.asOptionalInput<bool>(map['enableHotTierAutoResize']),
      hotTierSizeGib: Input.asOptionalInput<String>(map['hotTierSizeGib']),
      kmsConfig: Input.asOptionalInput<String>(map['kmsConfig']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      ldapEnabled: Input.asOptionalInput<bool>(map['ldapEnabled']),
      location: Input.asInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      network: Input.asInput<String>(map['network']),
      project: Input.asOptionalInput<String>(map['project']),
      qosType: Input.asOptionalInput<String>(map['qosType']),
      replicaZone: Input.asOptionalInput<String>(map['replicaZone']),
      serviceLevel: Input.asInput<String>(map['serviceLevel']),
      totalIops: Input.asOptionalInput<String>(map['totalIops']),
      totalThroughputMibps:
          Input.asOptionalInput<String>(map['totalThroughputMibps']),
      type: Input.asOptionalInput<String>(map['type']),
      zone: Input.asOptionalInput<String>(map['zone']),
    );
  }
}
