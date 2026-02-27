import 'package:pulumi/pulumi.dart';
import '../storage_pool_resource_status/storage_pool_resource_status.dart';
import '../storage_pool_status/storage_pool_status.dart';
import 'storage_pool_args.dart';

/// A Hyperdisk Storage Pool is a pre-purchased collection of capacity, throughput, and IOPS
/// which you can then provision to your applications as needed.
/// You can use Hyperdisk Storage Pools to create and manage disks in pools and use the disks across multiple workloads.
///
///
/// To get more information about StoragePool, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/storagePools)
/// * How-to Guides
/// * [Create Hyperdisk Storage Pools](https://cloud.google.com/compute/docs/disks/create-storage-pools)
///
/// ## Example Usage
///
/// ### Compute Storage Pool Basic
///
///
///
/// ### Compute Storage Pool Full
///
///
///
///
/// ## Import
///
/// StoragePool can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/zones/{{zone}}/storagePools/{{name}}`
///
/// * `{{project}}/{{zone}}/{{name}}`
///
/// * `{{zone}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, StoragePool can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/storagePool:StoragePool default projects/{{project}}/zones/{{zone}}/storagePools/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/storagePool:StoragePool default {{project}}/{{zone}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/storagePool:StoragePool default {{zone}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/storagePool:StoragePool default {{name}}
/// ```
class StoragePool extends CustomResource {
  /// Provisioning type of the byte capacity of the pool.
  /// Possible values are: `STANDARD`, `ADVANCED`.
  late final Output<String> capacityProvisioningType;

  /// Creation timestamp in RFC3339 text format.
  late final Output<String> creationTimestamp;
  late final Output<bool?> deletionProtection;

  /// A description of this resource. Provide this property when you create the resource.
  late final Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Type of the resource.
  late final Output<String> kind;

  /// The fingerprint used for optimistic locking of this resource.
  /// Used internally during updates.
  late final Output<String> labelFingerprint;

  /// Labels to apply to this storage pool. These can be later modified by the setLabels method.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// Name of the resource. Provided by the client when the resource is created.
  /// The name must be 1-63 characters long, and comply with RFC1035.
  /// Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?`
  /// which means the first character must be a lowercase letter,
  /// and all following characters must be a dash, lowercase letter, or digit,
  /// except the last character, which cannot be a dash.
  late final Output<String> name;

  /// Provisioning type of the performance-related parameters of the pool, such as throughput and IOPS.
  /// Possible values are: `STANDARD`, `ADVANCED`.
  late final Output<String> performanceProvisioningType;

  /// Size, in GiB, of the storage pool. For more information about the size limits,
  /// see https://cloud.google.com/compute/docs/disks/storage-pools.
  late final Output<String> poolProvisionedCapacityGb;

  /// Provisioned IOPS of the storage pool.
  /// Only relevant if the storage pool type is `hyperdisk-balanced`.
  late final Output<String?> poolProvisionedIops;

  /// Provisioned throughput, in MB/s, of the storage pool.
  /// Only relevant if the storage pool type is `hyperdisk-balanced` or `hyperdisk-throughput`.
  late final Output<String> poolProvisionedThroughput;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// Status information for the storage pool resource.
  /// Structure is documented below.
  late final Output<List<StoragePoolResourceStatus>> resourceStatuses;

  /// Status information for the storage pool resource.
  /// Structure is documented below.
  late final Output<List<StoragePoolStatus>> statuses;

  /// Type of the storage pool. For example, the
  /// following are valid values:
  /// * `https://www.googleapis.com/compute/v1/projects/{project_id}/zones/{zone}/storagePoolTypes/hyperdisk-balanced`
  /// * `hyperdisk-throughput`
  late final Output<String> storagePoolType;

  /// A reference to the zone where the storage pool resides.
  late final Output<String> zone;

  StoragePool(
    String name, {
    StoragePoolArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:compute/storagePool:StoragePool',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.capacityProvisioningType =
        registerOutput<String>('capacityProvisioningType');
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.deletionProtection = registerOutput<bool?>('deletionProtection');
    this.description = registerOutput<String?>('description');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.kind = registerOutput<String>('kind');
    this.labelFingerprint = registerOutput<String>('labelFingerprint');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    this.performanceProvisioningType =
        registerOutput<String>('performanceProvisioningType');
    this.poolProvisionedCapacityGb =
        registerOutput<String>('poolProvisionedCapacityGb');
    this.poolProvisionedIops = registerOutput<String?>('poolProvisionedIops');
    this.poolProvisionedThroughput =
        registerOutput<String>('poolProvisionedThroughput');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.resourceStatuses =
        registerOutput<List<StoragePoolResourceStatus>>('resourceStatuses');
    this.statuses = registerOutput<List<StoragePoolStatus>>('statuses');
    this.storagePoolType = registerOutput<String>('storagePoolType');
    this.zone = registerOutput<String>('zone');
  }
}
