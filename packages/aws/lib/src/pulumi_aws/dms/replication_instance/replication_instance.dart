import 'package:pulumi/pulumi.dart';
import '../replication_instance_kerberos_authentication_settings/replication_instance_kerberos_authentication_settings.dart';
import 'replication_instance_args.dart';

/// Provides a DMS (Data Migration Service) replication instance resource. DMS replication instances can be created, updated, deleted, and imported.
///
/// ## Example Usage
///
/// Create required roles and then create a DMS instance, setting the depends_on to the required role policy attachments.
///
///
///
/// ## Import
///
/// Using `pulumi import`, import replication instances using the `replication_instance_id`. For example:
///
/// ```sh
/// $ pulumi import aws:dms/replicationInstance:ReplicationInstance test test-dms-replication-instance-tf
/// ```
class ReplicationInstance extends CustomResource {
  /// The amount of storage (in gigabytes) to be initially allocated for the replication instance.
  late final Output<int> allocatedStorage;

  /// Indicates that major version upgrades are allowed.
  late final Output<bool?> allowMajorVersionUpgrade;

  /// Indicates whether the changes should be applied immediately or during the next maintenance window. Only used when updating an existing resource.
  late final Output<bool?> applyImmediately;

  /// Indicates that minor engine upgrades will be applied automatically to the replication instance during the maintenance window.
  late final Output<bool> autoMinorVersionUpgrade;

  /// The EC2 Availability Zone that the replication instance will be created in.
  late final Output<String> availabilityZone;

  /// A list of custom DNS name servers supported for the replication instance to access your on-premise source or target database. This list overrides the default name servers supported by the replication instance. You can specify a comma-separated list of internet addresses for up to four on-premise DNS name servers.
  late final Output<String?> dnsNameServers;

  /// The engine version number of the replication instance.
  late final Output<String> engineVersion;

  /// Configuration block for settings required for Kerberos authentication. See below.
  late final Output<ReplicationInstanceKerberosAuthenticationSettings?>
      kerberosAuthenticationSettings;

  /// The Amazon Resource Name (ARN) for the KMS key that will be used to encrypt the connection parameters. If you do not specify a value for `kms_key_arn`, then AWS DMS will use your default encryption key. AWS KMS creates the default encryption key for your AWS account. Your AWS account has a different default encryption key for each AWS region.
  late final Output<String> kmsKeyArn;

  /// Specifies if the replication instance is a multi-az deployment. You cannot set the `availability_zone` parameter if the `multi_az` parameter is set to `true`.
  late final Output<bool> multiAz;

  /// The type of IP address protocol used by a replication instance. Valid values: `IPV4`, `DUAL`.
  late final Output<String> networkType;

  /// The weekly time range during which system maintenance can occur, in Universal Coordinated Time (UTC).
  late final Output<String> preferredMaintenanceWindow;

  /// Specifies the accessibility options for the replication instance. A value of true represents an instance with a public IP address. A value of false represents an instance with a private IP address.
  late final Output<bool> publiclyAccessible;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The Amazon Resource Name (ARN) of the replication instance.
  late final Output<String> replicationInstanceArn;

  /// The compute and memory capacity of the replication instance as specified by the replication instance class. See [AWS DMS User Guide](https://docs.aws.amazon.com/dms/latest/userguide/CHAP_ReplicationInstance.Types.html) for available instance sizes and advice on which one to choose.
  late final Output<String> replicationInstanceClass;

  /// The replication instance identifier. This parameter is stored as a lowercase string.
  late final Output<String> replicationInstanceId;

  /// A list of the private IP addresses of the replication instance.
  late final Output<List<String>> replicationInstancePrivateIps;

  /// A list of the public IP addresses of the replication instance.
  late final Output<List<String>> replicationInstancePublicIps;

  /// A subnet group to associate with the replication instance.
  late final Output<String> replicationSubnetGroupId;

  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// A list of VPC security group IDs to be used with the replication instance. The VPC security groups must work with the VPC containing the replication instance.
  late final Output<List<String>> vpcSecurityGroupIds;

  ReplicationInstance(
    String name, {
    ReplicationInstanceArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:dms/replicationInstance:ReplicationInstance',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.allocatedStorage = registerOutput<int>('allocatedStorage');
    this.allowMajorVersionUpgrade =
        registerOutput<bool?>('allowMajorVersionUpgrade');
    this.applyImmediately = registerOutput<bool?>('applyImmediately');
    this.autoMinorVersionUpgrade =
        registerOutput<bool>('autoMinorVersionUpgrade');
    this.availabilityZone = registerOutput<String>('availabilityZone');
    this.dnsNameServers = registerOutput<String?>('dnsNameServers');
    this.engineVersion = registerOutput<String>('engineVersion');
    this.kerberosAuthenticationSettings =
        registerOutput<ReplicationInstanceKerberosAuthenticationSettings?>(
            'kerberosAuthenticationSettings');
    this.kmsKeyArn = registerOutput<String>('kmsKeyArn');
    this.multiAz = registerOutput<bool>('multiAz');
    this.networkType = registerOutput<String>('networkType');
    this.preferredMaintenanceWindow =
        registerOutput<String>('preferredMaintenanceWindow');
    this.publiclyAccessible = registerOutput<bool>('publiclyAccessible');
    this.region = registerOutput<String>('region');
    this.replicationInstanceArn =
        registerOutput<String>('replicationInstanceArn');
    this.replicationInstanceClass =
        registerOutput<String>('replicationInstanceClass');
    this.replicationInstanceId =
        registerOutput<String>('replicationInstanceId');
    this.replicationInstancePrivateIps =
        registerOutput<List<String>>('replicationInstancePrivateIps');
    this.replicationInstancePublicIps =
        registerOutput<List<String>>('replicationInstancePublicIps');
    this.replicationSubnetGroupId =
        registerOutput<String>('replicationSubnetGroupId');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.vpcSecurityGroupIds =
        registerOutput<List<String>>('vpcSecurityGroupIds');
  }
}
