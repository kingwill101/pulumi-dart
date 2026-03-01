// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_netapp_storage_pool_storage_pool_args_doc}
/// The set of arguments for StoragePool.
/// {@endtemplate}
/// {@macro pulumi_netapp_storage_pool_storage_pool_args_doc}
class StoragePoolArgs {
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

  /// Creates a new [StoragePoolArgs].
  /// [activeDirectory] Specifies the Active Directory policy to be used. Format: `projects/{{project}}/locations/{{location}}/activeDirectories/{{name}}`.
  /// [allowAutoTiering] Optional. True if the storage pool supports Auto Tiering enabled volumes. Default is false.
  /// [capacityGib] Capacity of the storage pool (in GiB).
  /// [customPerformanceEnabled] Optional. True if using Independent Scaling of capacity and performance (Hyperdisk). Default is false.
  /// [description] An optional description of this resource.
  /// [enableHotTierAutoResize] Flag indicating that the hot-tier threshold will be auto-increased by 10% of the hot-tier when it hits 100%. Default is true.
  /// [hotTierSizeGib] Total hot tier capacity for the Storage Pool. It is applicable only to Flex service level.
  /// [kmsConfig] Specifies the CMEK policy to be used for volume encryption. Format: `projects/{{project}}/locations/{{location}}/kmsConfigs/{{name}}`.
  /// [labels] Labels as key value pairs. Example: `{ "owner": "Bob", "department": "finance", "purpose": "testing" }`.
  /// [ldapEnabled] When enabled, the volumes uses Active Directory as LDAP name service for UID/GID lookups. Required to enable extended group support for NFSv3,
  /// [location] Name of the location. For zonal Flex pools specify a zone name, in all other cases a region name.
  /// [name] The resource name of the storage pool. Needs to be unique per location/region.
  /// [network] VPC network name with format: `projects/{{project}}/global/networks/{{network}}`
  /// [project] The ID of the project in which the resource belongs.
  /// [qosType] QoS (Quality of Service) type of the storage pool.
  /// [replicaZone] Specifies the replica zone for regional Flex pools. `zone` and `replica_zone` values can be swapped to initiate a
  /// [serviceLevel] Service level of the storage pool.
  /// [totalIops] Optional. Custom Performance Total IOPS of the pool If not provided, it will be calculated based on the totalThroughputMibps
  /// [totalThroughputMibps] Optional. Custom Performance Total Throughput of the pool (in MiB/s).
  /// [type] Type of the storage pool.
  /// [zone] Specifies the active zone for regional Flex pools. `zone` and `replica_zone` values can be swapped to initiate a
  StoragePoolArgs({
    String? activeDirectory,
    bool? allowAutoTiering,
    required String capacityGib,
    bool? customPerformanceEnabled,
    String? description,
    bool? enableHotTierAutoResize,
    String? hotTierSizeGib,
    String? kmsConfig,
    Map<String, String>? labels,
    bool? ldapEnabled,
    required String location,
    String? name,
    required String network,
    String? project,
    String? qosType,
    String? replicaZone,
    required String serviceLevel,
    String? totalIops,
    String? totalThroughputMibps,
    String? type,
    String? zone,
  }) :
      activeDirectory = pulumi.Input.asOptionalInput<String>(activeDirectory),
      allowAutoTiering = pulumi.Input.asOptionalInput<bool>(allowAutoTiering),
      capacityGib = pulumi.Input.asInput<String>(capacityGib),
      customPerformanceEnabled = pulumi.Input.asOptionalInput<bool>(customPerformanceEnabled),
      description = pulumi.Input.asOptionalInput<String>(description),
      enableHotTierAutoResize = pulumi.Input.asOptionalInput<bool>(enableHotTierAutoResize),
      hotTierSizeGib = pulumi.Input.asOptionalInput<String>(hotTierSizeGib),
      kmsConfig = pulumi.Input.asOptionalInput<String>(kmsConfig),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      ldapEnabled = pulumi.Input.asOptionalInput<bool>(ldapEnabled),
      location = pulumi.Input.asInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      network = pulumi.Input.asInput<String>(network),
      project = pulumi.Input.asOptionalInput<String>(project),
      qosType = pulumi.Input.asOptionalInput<String>(qosType),
      replicaZone = pulumi.Input.asOptionalInput<String>(replicaZone),
      serviceLevel = pulumi.Input.asInput<String>(serviceLevel),
      totalIops = pulumi.Input.asOptionalInput<String>(totalIops),
      totalThroughputMibps = pulumi.Input.asOptionalInput<String>(totalThroughputMibps),
      type = pulumi.Input.asOptionalInput<String>(type),
      zone = pulumi.Input.asOptionalInput<String>(zone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeDirectory': ?activeDirectory,
      'allowAutoTiering': ?allowAutoTiering,
      'capacityGib': capacityGib,
      'customPerformanceEnabled': ?customPerformanceEnabled,
      'description': ?description,
      'enableHotTierAutoResize': ?enableHotTierAutoResize,
      'hotTierSizeGib': ?hotTierSizeGib,
      'kmsConfig': ?kmsConfig,
      'labels': ?labels,
      'ldapEnabled': ?ldapEnabled,
      'location': location,
      'name': ?name,
      'network': network,
      'project': ?project,
      'qosType': ?qosType,
      'replicaZone': ?replicaZone,
      'serviceLevel': serviceLevel,
      'totalIops': ?totalIops,
      'totalThroughputMibps': ?totalThroughputMibps,
      'type': ?type,
      'zone': ?zone,
    };
  }

  factory StoragePoolArgs.fromMap(Map<String, dynamic> map) {
    return StoragePoolArgs(
      activeDirectory: map['activeDirectory'] == null ? null : map['activeDirectory'] as String,
      allowAutoTiering: map['allowAutoTiering'] == null ? null : map['allowAutoTiering'] as bool,
      capacityGib: map['capacityGib'] as String,
      customPerformanceEnabled: map['customPerformanceEnabled'] == null ? null : map['customPerformanceEnabled'] as bool,
      description: map['description'] == null ? null : map['description'] as String,
      enableHotTierAutoResize: map['enableHotTierAutoResize'] == null ? null : map['enableHotTierAutoResize'] as bool,
      hotTierSizeGib: map['hotTierSizeGib'] == null ? null : map['hotTierSizeGib'] as String,
      kmsConfig: map['kmsConfig'] == null ? null : map['kmsConfig'] as String,
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
      ldapEnabled: map['ldapEnabled'] == null ? null : map['ldapEnabled'] as bool,
      location: map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      network: map['network'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      qosType: map['qosType'] == null ? null : map['qosType'] as String,
      replicaZone: map['replicaZone'] == null ? null : map['replicaZone'] as String,
      serviceLevel: map['serviceLevel'] as String,
      totalIops: map['totalIops'] == null ? null : map['totalIops'] as String,
      totalThroughputMibps: map['totalThroughputMibps'] == null ? null : map['totalThroughputMibps'] as String,
      type: map['type'] == null ? null : map['type'] as String,
      zone: map['zone'] == null ? null : map['zone'] as String,
    );
  }
}

