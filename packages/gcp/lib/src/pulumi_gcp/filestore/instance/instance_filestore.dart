import 'package:pulumi/pulumi.dart' as pulumi;
import '../instance_directory_services/instance_directory_services.dart';
import '../instance_effective_replication/instance_effective_replication.dart';
import '../instance_file_shares/instance_file_shares.dart';
import '../instance_initial_replication/instance_initial_replication.dart';
import '../instance_network/instance_network.dart';
import '../instance_performance_config/instance_performance_config.dart';
import 'instance_filestore_args.dart';

/// A Google Cloud Filestore instance.
///
///
/// To get more information about Instance, see:
///
/// * [API documentation](https://cloud.google.com/filestore/docs/reference/rest/v1beta1/projects.locations.instances/create)
/// * How-to Guides
/// * [Copying Data In/Out](https://cloud.google.com/filestore/docs/copying-data)
/// * [Official Documentation](https://cloud.google.com/filestore/docs/creating-instances)
/// * [Use with Kubernetes](https://cloud.google.com/filestore/docs/accessing-fileshares)
///
/// ## Example Usage
///
/// ### Filestore Instance Basic
///
///
///
/// ### Filestore Instance Full
///
///
///
/// ### Filestore Instance Protocol
///
///
///
/// ### Filestore Instance Enterprise
///
///
///
///
/// ## Import
///
/// Instance can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/instances/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, Instance can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:filestore/instance:Instance default projects/{{project}}/locations/{{location}}/instances/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:filestore/instance:Instance default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:filestore/instance:Instance default {{location}}/{{name}}
/// ```
class InstanceFilestore extends pulumi.CustomResource {
  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> createTime;

  /// Indicates whether the instance is protected against deletion.
  late final pulumi.Output<bool?> deletionProtectionEnabled;

  /// The reason for enabling deletion protection.
  late final pulumi.Output<String?> deletionProtectionReason;

  /// A description of the instance.
  late final pulumi.Output<String?> description;

  /// Directory Services configuration.
  /// Should only be set if protocol is "NFS_V4_1".
  /// Structure is documented below.
  late final pulumi.Output<InstanceDirectoryServices?> directoryServices;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// Output only fields for replication configuration.
  /// Structure is documented below.
  late final pulumi.Output<List<InstanceEffectiveReplication>>
      effectiveReplications;

  /// Server-specified ETag for the instance resource to prevent
  /// simultaneous updates from overwriting each other.
  late final pulumi.Output<String> etag;

  /// File system shares on the instance. For this version, only a
  /// single file share is supported.
  /// Structure is documented below.
  late final pulumi.Output<InstanceFileShares> fileShares;

  /// Replication configuration, once set, this cannot be updated.
  /// Additionally this should be specified on the replica instance only, indicating the active as the peer_instance
  /// Structure is documented below.
  late final pulumi.Output<InstanceInitialReplication?> initialReplication;

  /// KMS key name used for data encryption.
  late final pulumi.Output<String?> kmsKeyName;

  /// Resource labels to represent user-provided metadata.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// The name of the location of the instance. This can be a region for ENTERPRISE tier instances.
  late final pulumi.Output<String> location;

  /// The resource name of the instance.
  late final pulumi.Output<String> name;

  /// VPC networks to which the instance is connected. For this version,
  /// only a single network is supported.
  /// Structure is documented below.
  late final pulumi.Output<List<InstanceNetwork>> networks;

  /// Performance configuration for the instance. If not provided,
  /// the default performance settings will be used.
  /// Structure is documented below.
  late final pulumi.Output<InstancePerformanceConfig?> performanceConfig;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Either NFSv3, for using NFS version 3 as file sharing protocol,
  /// or NFSv4.1, for using NFS version 4.1 as file sharing protocol.
  /// NFSv4.1 can be used with HIGH_SCALE_SSD, ZONAL, REGIONAL and ENTERPRISE.
  /// The default is NFSv3.
  /// Default value is `NFS_V3`.
  /// Possible values are: `NFS_V3`, `NFS_V4_1`.
  late final pulumi.Output<String?> protocol;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// A map of resource manager tags. Resource manager tag keys
  /// and values have the same definition as resource manager
  /// tags. Keys must be in the format tagKeys/{tag_key_id},
  /// and values are in the format tagValues/456. The field is
  /// ignored when empty. The field is immutable and causes
  /// resource replacement when mutated. This field is only set
  /// at create time and modifying this field after creation
  /// will trigger recreation. To apply tags to an existing
  /// resource, see the `gcp.tags.TagValue` resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The service tier of the instance.
  /// Possible values include: STANDARD, PREMIUM, BASIC_HDD, BASIC_SSD, HIGH_SCALE_SSD, ZONAL, REGIONAL and ENTERPRISE
  late final pulumi.Output<String> tier;

  /// (Optional, Deprecated)
  /// The name of the Filestore zone of the instance.
  ///
  /// > **Warning:** `zone` is deprecated and will be removed in a future major release. Use `location` instead.
  late final pulumi.Output<String> zone;

  InstanceFilestore(
    String name, {
    InstanceFilestoreArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:filestore/instance:Instance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.deletionProtectionEnabled =
        registerOutput<bool?>('deletionProtectionEnabled');
    this.deletionProtectionReason =
        registerOutput<String?>('deletionProtectionReason');
    this.description = registerOutput<String?>('description');
    this.directoryServices =
        registerOutput<InstanceDirectoryServices?>('directoryServices');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.effectiveReplications =
        registerOutput<List<InstanceEffectiveReplication>>(
            'effectiveReplications');
    this.etag = registerOutput<String>('etag');
    this.fileShares = registerOutput<InstanceFileShares>('fileShares');
    this.initialReplication =
        registerOutput<InstanceInitialReplication?>('initialReplication');
    this.kmsKeyName = registerOutput<String?>('kmsKeyName');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.networks = registerOutput<List<InstanceNetwork>>('networks');
    this.performanceConfig =
        registerOutput<InstancePerformanceConfig?>('performanceConfig');
    this.project = registerOutput<String>('project');
    this.protocol = registerOutput<String?>('protocol');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tier = registerOutput<String>('tier');
    this.zone = registerOutput<String>('zone');
  }
}
