import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_pool_netapp_args.dart';

/// ## Example Usage
///
/// ### Storage Pool Create Doc
///
///
///
///
/// ## Import
///
/// StoragePool can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/storagePools/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, StoragePool can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:netapp/storagePool:StoragePool default projects/{{project}}/locations/{{location}}/storagePools/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:netapp/storagePool:StoragePool default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:netapp/storagePool:StoragePool default {{location}}/{{name}}
/// ```
class StoragePoolNetapp extends pulumi.CustomResource {
  /// Specifies the Active Directory policy to be used. Format: `projects/{{project}}/locations/{{location}}/activeDirectories/{{name}}`.
  /// The policy needs to be in the same location as the storage pool.
  late final pulumi.Output<String?> activeDirectory;

  /// Optional. True if the storage pool supports Auto Tiering enabled volumes. Default is false.
  /// Auto-tiering can be enabled after storage pool creation but it can't be disabled once enabled.
  late final pulumi.Output<bool?> allowAutoTiering;

  /// Available throughput of the storage pool (in MiB/s).
  late final pulumi.Output<double> availableThroughputMibps;

  /// Capacity of the storage pool (in GiB).
  late final pulumi.Output<String> capacityGib;

  /// Total cold tier data rounded down to the nearest GiB used by the storage pool.
  late final pulumi.Output<String> coldTierSizeUsedGib;

  /// Optional. True if using Independent Scaling of capacity and performance (Hyperdisk). Default is false.
  late final pulumi.Output<bool> customPerformanceEnabled;

  /// An optional description of this resource.
  late final pulumi.Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// Flag indicating that the hot-tier threshold will be auto-increased by 10% of the hot-tier when it hits 100%. Default is true.
  /// The increment will kick in only if the new size after increment is still less than or equal to storage pool size.
  late final pulumi.Output<bool?> enableHotTierAutoResize;

  /// Reports if volumes in the pool are encrypted using a Google-managed encryption key or CMEK.
  late final pulumi.Output<String> encryptionType;

  /// Total hot tier capacity for the Storage Pool. It is applicable only to Flex service level.
  /// It should be less than the minimum storage pool size and cannot be more than the current storage pool size. It cannot be decreased once set.
  late final pulumi.Output<String?> hotTierSizeGib;

  /// Total hot tier data rounded down to the nearest GiB used by the storage pool.
  late final pulumi.Output<String> hotTierSizeUsedGib;

  /// Specifies the CMEK policy to be used for volume encryption. Format: `projects/{{project}}/locations/{{location}}/kmsConfigs/{{name}}`.
  /// The policy needs to be in the same location as the storage pool.
  late final pulumi.Output<String?> kmsConfig;

  /// Labels as key value pairs. Example: `{ "owner": "Bob", "department": "finance", "purpose": "testing" }`.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// When enabled, the volumes uses Active Directory as LDAP name service for UID/GID lookups. Required to enable extended group support for NFSv3,
  /// using security identifiers for NFSv4.1 or principal names for kerberized NFSv4.1.
  late final pulumi.Output<bool?> ldapEnabled;

  /// Name of the location. For zonal Flex pools specify a zone name, in all other cases a region name.
  late final pulumi.Output<String> location;

  /// The resource name of the storage pool. Needs to be unique per location/region.
  late final pulumi.Output<String> name;

  /// VPC network name with format: `projects/{{project}}/global/networks/{{network}}`
  late final pulumi.Output<String> network;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// QoS (Quality of Service) type of the storage pool.
  /// Possible values are: AUTO, MANUAL.
  /// Possible values are: `QOS_TYPE_UNSPECIFIED`, `AUTO`, `MANUAL`.
  late final pulumi.Output<String> qosType;

  /// Specifies the replica zone for regional Flex pools. `zone` and `replica_zone` values can be swapped to initiate a
  /// [zone switch](https://cloud.google.com/netapp/volumes/docs/configure-and-use/storage-pools/edit-or-delete-storage-pool#switch_active_and_replica_zones).
  late final pulumi.Output<String?> replicaZone;

  /// Service level of the storage pool.
  /// Possible values are: `PREMIUM`, `EXTREME`, `STANDARD`, `FLEX`.
  late final pulumi.Output<String> serviceLevel;

  /// Optional. Custom Performance Total IOPS of the pool If not provided, it will be calculated based on the totalThroughputMibps
  late final pulumi.Output<String> totalIops;

  /// Optional. Custom Performance Total Throughput of the pool (in MiB/s).
  late final pulumi.Output<String> totalThroughputMibps;

  /// Type of the storage pool.
  /// This field is used to control whether the pool supports FILE based volumes only or UNIFIED (both FILE and BLOCK) volumes.
  /// If not specified during creation, it defaults to FILE.
  /// Possible values are: `STORAGE_POOL_TYPE_UNSPECIFIED`, `FILE`, `UNIFIED`.
  late final pulumi.Output<String> type;

  /// Size allocated to volumes in the storage pool (in GiB).
  late final pulumi.Output<String> volumeCapacityGib;

  /// Number of volume in the storage pool.
  late final pulumi.Output<int> volumeCount;

  /// Specifies the active zone for regional Flex pools. `zone` and `replica_zone` values can be swapped to initiate a
  /// [zone switch](https://cloud.google.com/netapp/volumes/docs/configure-and-use/storage-pools/edit-or-delete-storage-pool#switch_active_and_replica_zones).
  /// If you want to create a zonal Flex pool, specify a zone name for `location` and omit `zone`.
  late final pulumi.Output<String> zone;

  StoragePoolNetapp(
    String name, {
    StoragePoolNetappArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:netapp/storagePool:StoragePool',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.activeDirectory = registerOutput<String?>('activeDirectory');
    this.allowAutoTiering = registerOutput<bool?>('allowAutoTiering');
    this.availableThroughputMibps =
        registerOutput<double>('availableThroughputMibps');
    this.capacityGib = registerOutput<String>('capacityGib');
    this.coldTierSizeUsedGib = registerOutput<String>('coldTierSizeUsedGib');
    this.customPerformanceEnabled =
        registerOutput<bool>('customPerformanceEnabled');
    this.description = registerOutput<String?>('description');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.enableHotTierAutoResize =
        registerOutput<bool?>('enableHotTierAutoResize');
    this.encryptionType = registerOutput<String>('encryptionType');
    this.hotTierSizeGib = registerOutput<String?>('hotTierSizeGib');
    this.hotTierSizeUsedGib = registerOutput<String>('hotTierSizeUsedGib');
    this.kmsConfig = registerOutput<String?>('kmsConfig');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.ldapEnabled = registerOutput<bool?>('ldapEnabled');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.network = registerOutput<String>('network');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.qosType = registerOutput<String>('qosType');
    this.replicaZone = registerOutput<String?>('replicaZone');
    this.serviceLevel = registerOutput<String>('serviceLevel');
    this.totalIops = registerOutput<String>('totalIops');
    this.totalThroughputMibps = registerOutput<String>('totalThroughputMibps');
    this.type = registerOutput<String>('type');
    this.volumeCapacityGib = registerOutput<String>('volumeCapacityGib');
    this.volumeCount = registerOutput<int>('volumeCount');
    this.zone = registerOutput<String>('zone');
  }
}
