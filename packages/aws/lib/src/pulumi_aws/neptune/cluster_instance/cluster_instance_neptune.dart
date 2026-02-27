import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_instance_neptune_args.dart';

/// A Cluster Instance Resource defines attributes that are specific to a single instance in a Neptune Cluster.
///
/// You can simply add neptune instances and Neptune manages the replication. You can use the count
/// meta-parameter to make multiple instances and join them all to the same Neptune Cluster, or you may specify different Cluster Instance resources with various `instance_class` sizes.
///
/// ## Example Usage
///
/// The following example will create a neptune cluster with two neptune instances(one writer and one reader).
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.neptune.ClusterInstance` using the instance identifier. For example:
///
/// ```sh
/// $ pulumi import aws:neptune/clusterInstance:ClusterInstance example my-instance
/// ```
class ClusterInstanceNeptune extends pulumi.CustomResource {
  /// The hostname of the instance. See also `endpoint` and `port`.
  late final pulumi.Output<String> address;

  /// Specifies whether any instance modifications
  /// are applied immediately, or during the next maintenance window. Default is`false`.
  late final pulumi.Output<bool> applyImmediately;

  /// Amazon Resource Name (ARN) of neptune instance
  late final pulumi.Output<String> arn;

  /// Indicates that minor engine upgrades will be applied automatically to the instance during the maintenance window. Default is `true`.
  late final pulumi.Output<bool?> autoMinorVersionUpgrade;

  /// The EC2 Availability Zone that the neptune instance is created in.
  late final pulumi.Output<String> availabilityZone;

  /// The identifier of the `aws.neptune.Cluster` in which to launch this instance.
  late final pulumi.Output<String> clusterIdentifier;

  /// The region-unique, immutable identifier for the neptune instance.
  late final pulumi.Output<String> dbiResourceId;

  /// The connection endpoint in `address:port` format.
  late final pulumi.Output<String> endpoint;

  /// The name of the database engine to be used for the neptune instance. Defaults to `neptune`. Valid Values: `neptune`.
  late final pulumi.Output<String?> engine;

  /// The neptune engine version. Currently configuring this argumnet has no effect.
  late final pulumi.Output<String> engineVersion;

  /// The identifier for the neptune instance, if omitted, this provider will assign a random, unique identifier.
  late final pulumi.Output<String> identifier;

  /// Creates a unique identifier beginning with the specified prefix. Conflicts with `identifier`.
  late final pulumi.Output<String> identifierPrefix;

  /// The instance class to use.
  late final pulumi.Output<String> instanceClass;

  /// The ARN for the KMS encryption key if one is set to the neptune cluster.
  late final pulumi.Output<String> kmsKeyArn;

  /// The name of the neptune parameter group to associate with this instance.
  late final pulumi.Output<String> neptuneParameterGroupName;

  /// A subnet group to associate with this neptune instance. **NOTE:** This must match the `neptune_subnet_group_name` of the attached `aws.neptune.Cluster`.
  late final pulumi.Output<String> neptuneSubnetGroupName;

  /// The port on which the DB accepts connections. Defaults to `8182`.
  late final pulumi.Output<int?> port;

  /// The daily time range during which automated backups are created if automated backups are enabled. Eg: "04:00-09:00"
  late final pulumi.Output<String> preferredBackupWindow;

  /// The window to perform maintenance in.
  /// Syntax: "ddd:hh24:mi-ddd:hh24:mi". Eg: "Mon:00:00-Mon:03:00".
  late final pulumi.Output<String> preferredMaintenanceWindow;

  /// Default 0. Failover Priority setting on instance level. The reader who has lower tier has higher priority to get promoter to writer.
  late final pulumi.Output<int?> promotionTier;

  /// Bool to control if instance is publicly accessible. Default is `false`.
  late final pulumi.Output<bool?> publiclyAccessible;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Determines whether a final DB snapshot is created before the DB instance is deleted.
  late final pulumi.Output<bool?> skipFinalSnapshot;

  /// Specifies whether the neptune cluster is encrypted.
  late final pulumi.Output<bool> storageEncrypted;

  /// Storage type associated with the cluster `standard/iopt1`.
  late final pulumi.Output<String> storageType;

  /// A map of tags to assign to the instance. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Boolean indicating if this instance is writable. `False` indicates this instance is a read replica.
  late final pulumi.Output<bool> writer;

  ClusterInstanceNeptune(
    String name, {
    ClusterInstanceNeptuneArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:neptune/clusterInstance:ClusterInstance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.address = registerOutput<String>('address');
    this.applyImmediately = registerOutput<bool>('applyImmediately');
    this.arn = registerOutput<String>('arn');
    this.autoMinorVersionUpgrade =
        registerOutput<bool?>('autoMinorVersionUpgrade');
    this.availabilityZone = registerOutput<String>('availabilityZone');
    this.clusterIdentifier = registerOutput<String>('clusterIdentifier');
    this.dbiResourceId = registerOutput<String>('dbiResourceId');
    this.endpoint = registerOutput<String>('endpoint');
    this.engine = registerOutput<String?>('engine');
    this.engineVersion = registerOutput<String>('engineVersion');
    this.identifier = registerOutput<String>('identifier');
    this.identifierPrefix = registerOutput<String>('identifierPrefix');
    this.instanceClass = registerOutput<String>('instanceClass');
    this.kmsKeyArn = registerOutput<String>('kmsKeyArn');
    this.neptuneParameterGroupName =
        registerOutput<String>('neptuneParameterGroupName');
    this.neptuneSubnetGroupName =
        registerOutput<String>('neptuneSubnetGroupName');
    this.port = registerOutput<int?>('port');
    this.preferredBackupWindow =
        registerOutput<String>('preferredBackupWindow');
    this.preferredMaintenanceWindow =
        registerOutput<String>('preferredMaintenanceWindow');
    this.promotionTier = registerOutput<int?>('promotionTier');
    this.publiclyAccessible = registerOutput<bool?>('publiclyAccessible');
    this.region = registerOutput<String>('region');
    this.skipFinalSnapshot = registerOutput<bool?>('skipFinalSnapshot');
    this.storageEncrypted = registerOutput<bool>('storageEncrypted');
    this.storageType = registerOutput<String>('storageType');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.writer = registerOutput<bool>('writer');
  }
}
