// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for StoragePool.
class StoragePoolNetappArgs {
  /// Specifies the Active Directory policy to be used. Format: `projects/{{project}}/locations/{{location}}/activeDirectories/{{name}}`.
  /// The policy needs to be in the same location as the storage pool.
  final pulumi.Input<String>? activeDirectory;

  /// Optional. True if the storage pool supports Auto Tiering enabled volumes. Default is false.
  /// Auto-tiering can be enabled after storage pool creation but it can't be disabled once enabled.
  final pulumi.Input<bool>? allowAutoTiering;

  /// Capacity of the storage pool (in GiB).
  final pulumi.Input<String> capacityGib;

  /// Optional. True if using Independent Scaling of capacity and performance (Hyperdisk). Default is false.
  final pulumi.Input<bool>? customPerformanceEnabled;

  /// An optional description of this resource.
  final pulumi.Input<String>? description;

  /// Flag indicating that the hot-tier threshold will be auto-increased by 10% of the hot-tier when it hits 100%. Default is true.
  /// The increment will kick in only if the new size after increment is still less than or equal to storage pool size.
  final pulumi.Input<bool>? enableHotTierAutoResize;

  /// Total hot tier capacity for the Storage Pool. It is applicable only to Flex service level.
  /// It should be less than the minimum storage pool size and cannot be more than the current storage pool size. It cannot be decreased once set.
  final pulumi.Input<String>? hotTierSizeGib;

  /// Specifies the CMEK policy to be used for volume encryption. Format: `projects/{{project}}/locations/{{location}}/kmsConfigs/{{name}}`.
  /// The policy needs to be in the same location as the storage pool.
  final pulumi.Input<String>? kmsConfig;

  /// Labels as key value pairs. Example: `{ "owner": "Bob", "department": "finance", "purpose": "testing" }`.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// When enabled, the volumes uses Active Directory as LDAP name service for UID/GID lookups. Required to enable extended group support for NFSv3,
  /// using security identifiers for NFSv4.1 or principal names for kerberized NFSv4.1.
  final pulumi.Input<bool>? ldapEnabled;

  /// Name of the location. For zonal Flex pools specify a zone name, in all other cases a region name.
  final pulumi.Input<String> location;

  /// The resource name of the storage pool. Needs to be unique per location/region.
  final pulumi.Input<String>? name;

  /// VPC network name with format: `projects/{{project}}/global/networks/{{network}}`
  final pulumi.Input<String> network;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// QoS (Quality of Service) type of the storage pool.
  /// Possible values are: AUTO, MANUAL.
  /// Possible values are: `QOS_TYPE_UNSPECIFIED`, `AUTO`, `MANUAL`.
  final pulumi.Input<String>? qosType;

  /// Specifies the replica zone for regional Flex pools. `zone` and `replica_zone` values can be swapped to initiate a
  /// [zone switch](https://cloud.google.com/netapp/volumes/docs/configure-and-use/storage-pools/edit-or-delete-storage-pool#switch_active_and_replica_zones).
  final pulumi.Input<String>? replicaZone;

  /// Service level of the storage pool.
  /// Possible values are: `PREMIUM`, `EXTREME`, `STANDARD`, `FLEX`.
  final pulumi.Input<String> serviceLevel;

  /// Optional. Custom Performance Total IOPS of the pool If not provided, it will be calculated based on the totalThroughputMibps
  final pulumi.Input<String>? totalIops;

  /// Optional. Custom Performance Total Throughput of the pool (in MiB/s).
  final pulumi.Input<String>? totalThroughputMibps;

  /// Type of the storage pool.
  /// This field is used to control whether the pool supports FILE based volumes only or UNIFIED (both FILE and BLOCK) volumes.
  /// If not specified during creation, it defaults to FILE.
  /// Possible values are: `STORAGE_POOL_TYPE_UNSPECIFIED`, `FILE`, `UNIFIED`.
  final pulumi.Input<String>? type;

  /// Specifies the active zone for regional Flex pools. `zone` and `replica_zone` values can be swapped to initiate a
  /// [zone switch](https://cloud.google.com/netapp/volumes/docs/configure-and-use/storage-pools/edit-or-delete-storage-pool#switch_active_and_replica_zones).
  /// If you want to create a zonal Flex pool, specify a zone name for `location` and omit `zone`.
  final pulumi.Input<String>? zone;

  StoragePoolNetappArgs({
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

  factory StoragePoolNetappArgs.fromMap(Map<String, dynamic> map) {
    return StoragePoolNetappArgs(
      activeDirectory:
          pulumi.Input.asOptionalInput<String>(map['activeDirectory']),
      allowAutoTiering:
          pulumi.Input.asOptionalInput<bool>(map['allowAutoTiering']),
      capacityGib: pulumi.Input.asInput<String>(map['capacityGib']),
      customPerformanceEnabled:
          pulumi.Input.asOptionalInput<bool>(map['customPerformanceEnabled']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      enableHotTierAutoResize:
          pulumi.Input.asOptionalInput<bool>(map['enableHotTierAutoResize']),
      hotTierSizeGib:
          pulumi.Input.asOptionalInput<String>(map['hotTierSizeGib']),
      kmsConfig: pulumi.Input.asOptionalInput<String>(map['kmsConfig']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      ldapEnabled: pulumi.Input.asOptionalInput<bool>(map['ldapEnabled']),
      location: pulumi.Input.asInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      network: pulumi.Input.asInput<String>(map['network']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      qosType: pulumi.Input.asOptionalInput<String>(map['qosType']),
      replicaZone: pulumi.Input.asOptionalInput<String>(map['replicaZone']),
      serviceLevel: pulumi.Input.asInput<String>(map['serviceLevel']),
      totalIops: pulumi.Input.asOptionalInput<String>(map['totalIops']),
      totalThroughputMibps:
          pulumi.Input.asOptionalInput<String>(map['totalThroughputMibps']),
      type: pulumi.Input.asOptionalInput<String>(map['type']),
      zone: pulumi.Input.asOptionalInput<String>(map['zone']),
    );
  }
}
