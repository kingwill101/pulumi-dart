// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'replication_instance_kerberos_authentication_settings.dart';

/// {@template pulumi_dms_replication_instance_replication_instance_args_doc}
/// The set of arguments for ReplicationInstance.
/// {@endtemplate}
/// {@macro pulumi_dms_replication_instance_replication_instance_args_doc}
class ReplicationInstanceArgs {
  /// The amount of storage (in gigabytes) to be initially allocated for the replication instance.
  final pulumi.Input<int>? allocatedStorage;
  /// Indicates that major version upgrades are allowed.
  final pulumi.Input<bool>? allowMajorVersionUpgrade;
  /// Indicates whether the changes should be applied immediately or during the next maintenance window. Only used when updating an existing resource.
  final pulumi.Input<bool>? applyImmediately;
  /// Indicates that minor engine upgrades will be applied automatically to the replication instance during the maintenance window.
  final pulumi.Input<bool>? autoMinorVersionUpgrade;
  /// The EC2 Availability Zone that the replication instance will be created in.
  final pulumi.Input<String>? availabilityZone;
  /// A list of custom DNS name servers supported for the replication instance to access your on-premise source or target database. This list overrides the default name servers supported by the replication instance. You can specify a comma-separated list of internet addresses for up to four on-premise DNS name servers.
  final pulumi.Input<String>? dnsNameServers;
  /// The engine version number of the replication instance.
  final pulumi.Input<String>? engineVersion;
  /// Configuration block for settings required for Kerberos authentication. See below.
  final pulumi.Input<ReplicationInstanceKerberosAuthenticationSettings>? kerberosAuthenticationSettings;
  /// The Amazon Resource Name (ARN) for the KMS key that will be used to encrypt the connection parameters. If you do not specify a value for `kms_key_arn`, then AWS DMS will use your default encryption key. AWS KMS creates the default encryption key for your AWS account. Your AWS account has a different default encryption key for each AWS region.
  final pulumi.Input<String>? kmsKeyArn;
  /// Specifies if the replication instance is a multi-az deployment. You cannot set the `availability_zone` parameter if the `multi_az` parameter is set to `true`.
  final pulumi.Input<bool>? multiAz;
  /// The type of IP address protocol used by a replication instance. Valid values: `IPV4`, `DUAL`.
  final pulumi.Input<String>? networkType;
  /// The weekly time range during which system maintenance can occur, in Universal Coordinated Time (UTC).
  final pulumi.Input<String>? preferredMaintenanceWindow;
  /// Specifies the accessibility options for the replication instance. A value of true represents an instance with a public IP address. A value of false represents an instance with a private IP address.
  final pulumi.Input<bool>? publiclyAccessible;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The compute and memory capacity of the replication instance as specified by the replication instance class. See [AWS DMS User Guide](https://docs.aws.amazon.com/dms/latest/userguide/CHAP_ReplicationInstance.Types.html) for available instance sizes and advice on which one to choose.
  final pulumi.Input<String> replicationInstanceClass;
  /// The replication instance identifier. This parameter is stored as a lowercase string.
  final pulumi.Input<String> replicationInstanceId;
  /// A subnet group to associate with the replication instance.
  final pulumi.Input<String>? replicationSubnetGroupId;
  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A list of VPC security group IDs to be used with the replication instance. The VPC security groups must work with the VPC containing the replication instance.
  final pulumi.Input<List<String>>? vpcSecurityGroupIds;

  /// Creates a new [ReplicationInstanceArgs].
  /// [allocatedStorage] The amount of storage (in gigabytes) to be initially allocated for the replication instance.
  /// [allowMajorVersionUpgrade] Indicates that major version upgrades are allowed.
  /// [applyImmediately] Indicates whether the changes should be applied immediately or during the next maintenance window. Only used when updating an existing resource.
  /// [autoMinorVersionUpgrade] Indicates that minor engine upgrades will be applied automatically to the replication instance during the maintenance window.
  /// [availabilityZone] The EC2 Availability Zone that the replication instance will be created in.
  /// [dnsNameServers] A list of custom DNS name servers supported for the replication instance to access your on-premise source or target database. This list overrides the default name servers supported by the replication instance. You can specify a comma-separated list of internet addresses for up to four on-premise DNS name servers.
  /// [engineVersion] The engine version number of the replication instance.
  /// [kerberosAuthenticationSettings] Configuration block for settings required for Kerberos authentication. See below.
  /// [kmsKeyArn] The Amazon Resource Name (ARN) for the KMS key that will be used to encrypt the connection parameters. If you do not specify a value for `kms_key_arn`, then AWS DMS will use your default encryption key. AWS KMS creates the default encryption key for your AWS account. Your AWS account has a different default encryption key for each AWS region.
  /// [multiAz] Specifies if the replication instance is a multi-az deployment. You cannot set the `availability_zone` parameter if the `multi_az` parameter is set to `true`.
  /// [networkType] The type of IP address protocol used by a replication instance. Valid values: `IPV4`, `DUAL`.
  /// [preferredMaintenanceWindow] The weekly time range during which system maintenance can occur, in Universal Coordinated Time (UTC).
  /// [publiclyAccessible] Specifies the accessibility options for the replication instance. A value of true represents an instance with a public IP address. A value of false represents an instance with a private IP address.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [replicationInstanceClass] The compute and memory capacity of the replication instance as specified by the replication instance class. See [AWS DMS User Guide](https://docs.aws.amazon.com/dms/latest/userguide/CHAP_ReplicationInstance.Types.html) for available instance sizes and advice on which one to choose.
  /// [replicationInstanceId] The replication instance identifier. This parameter is stored as a lowercase string.
  /// [replicationSubnetGroupId] A subnet group to associate with the replication instance.
  /// [tags] A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [vpcSecurityGroupIds] A list of VPC security group IDs to be used with the replication instance. The VPC security groups must work with the VPC containing the replication instance.
  ReplicationInstanceArgs({
    int? allocatedStorage,
    bool? allowMajorVersionUpgrade,
    bool? applyImmediately,
    bool? autoMinorVersionUpgrade,
    String? availabilityZone,
    String? dnsNameServers,
    String? engineVersion,
    ReplicationInstanceKerberosAuthenticationSettings? kerberosAuthenticationSettings,
    String? kmsKeyArn,
    bool? multiAz,
    String? networkType,
    String? preferredMaintenanceWindow,
    bool? publiclyAccessible,
    String? region,
    required String replicationInstanceClass,
    required String replicationInstanceId,
    String? replicationSubnetGroupId,
    Map<String, String>? tags,
    List<String>? vpcSecurityGroupIds,
  }) :
      allocatedStorage = pulumi.Input.asOptionalInput<int>(allocatedStorage),
      allowMajorVersionUpgrade = pulumi.Input.asOptionalInput<bool>(allowMajorVersionUpgrade),
      applyImmediately = pulumi.Input.asOptionalInput<bool>(applyImmediately),
      autoMinorVersionUpgrade = pulumi.Input.asOptionalInput<bool>(autoMinorVersionUpgrade),
      availabilityZone = pulumi.Input.asOptionalInput<String>(availabilityZone),
      dnsNameServers = pulumi.Input.asOptionalInput<String>(dnsNameServers),
      engineVersion = pulumi.Input.asOptionalInput<String>(engineVersion),
      kerberosAuthenticationSettings = pulumi.Input.asOptionalInput<ReplicationInstanceKerberosAuthenticationSettings>(kerberosAuthenticationSettings),
      kmsKeyArn = pulumi.Input.asOptionalInput<String>(kmsKeyArn),
      multiAz = pulumi.Input.asOptionalInput<bool>(multiAz),
      networkType = pulumi.Input.asOptionalInput<String>(networkType),
      preferredMaintenanceWindow = pulumi.Input.asOptionalInput<String>(preferredMaintenanceWindow),
      publiclyAccessible = pulumi.Input.asOptionalInput<bool>(publiclyAccessible),
      region = pulumi.Input.asOptionalInput<String>(region),
      replicationInstanceClass = pulumi.Input.asInput<String>(replicationInstanceClass),
      replicationInstanceId = pulumi.Input.asInput<String>(replicationInstanceId),
      replicationSubnetGroupId = pulumi.Input.asOptionalInput<String>(replicationSubnetGroupId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vpcSecurityGroupIds = pulumi.Input.asOptionalInput<List<String>>(vpcSecurityGroupIds);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocatedStorage': ?allocatedStorage,
      'allowMajorVersionUpgrade': ?allowMajorVersionUpgrade,
      'applyImmediately': ?applyImmediately,
      'autoMinorVersionUpgrade': ?autoMinorVersionUpgrade,
      'availabilityZone': ?availabilityZone,
      'dnsNameServers': ?dnsNameServers,
      'engineVersion': ?engineVersion,
      'kerberosAuthenticationSettings': ?pulumi.Input.mapOptionalInputValue<ReplicationInstanceKerberosAuthenticationSettings, Map<String, dynamic>>(kerberosAuthenticationSettings, (value) => value.toMap()),
      'kmsKeyArn': ?kmsKeyArn,
      'multiAz': ?multiAz,
      'networkType': ?networkType,
      'preferredMaintenanceWindow': ?preferredMaintenanceWindow,
      'publiclyAccessible': ?publiclyAccessible,
      'region': ?region,
      'replicationInstanceClass': replicationInstanceClass,
      'replicationInstanceId': replicationInstanceId,
      'replicationSubnetGroupId': ?replicationSubnetGroupId,
      'tags': ?tags,
      'vpcSecurityGroupIds': ?vpcSecurityGroupIds,
    };
  }

  factory ReplicationInstanceArgs.fromMap(Map<String, dynamic> map) {
    return ReplicationInstanceArgs(
      allocatedStorage: map['allocatedStorage'] == null ? null : map['allocatedStorage'] as int,
      allowMajorVersionUpgrade: map['allowMajorVersionUpgrade'] == null ? null : map['allowMajorVersionUpgrade'] as bool,
      applyImmediately: map['applyImmediately'] == null ? null : map['applyImmediately'] as bool,
      autoMinorVersionUpgrade: map['autoMinorVersionUpgrade'] == null ? null : map['autoMinorVersionUpgrade'] as bool,
      availabilityZone: map['availabilityZone'] == null ? null : map['availabilityZone'] as String,
      dnsNameServers: map['dnsNameServers'] == null ? null : map['dnsNameServers'] as String,
      engineVersion: map['engineVersion'] == null ? null : map['engineVersion'] as String,
      kerberosAuthenticationSettings: map['kerberosAuthenticationSettings'] == null ? null : ReplicationInstanceKerberosAuthenticationSettings.fromMap((map['kerberosAuthenticationSettings'] as Map).cast<String, dynamic>()),
      kmsKeyArn: map['kmsKeyArn'] == null ? null : map['kmsKeyArn'] as String,
      multiAz: map['multiAz'] == null ? null : map['multiAz'] as bool,
      networkType: map['networkType'] == null ? null : map['networkType'] as String,
      preferredMaintenanceWindow: map['preferredMaintenanceWindow'] == null ? null : map['preferredMaintenanceWindow'] as String,
      publiclyAccessible: map['publiclyAccessible'] == null ? null : map['publiclyAccessible'] as bool,
      region: map['region'] == null ? null : map['region'] as String,
      replicationInstanceClass: map['replicationInstanceClass'] as String,
      replicationInstanceId: map['replicationInstanceId'] as String,
      replicationSubnetGroupId: map['replicationSubnetGroupId'] == null ? null : map['replicationSubnetGroupId'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      vpcSecurityGroupIds: map['vpcSecurityGroupIds'] == null ? null : (map['vpcSecurityGroupIds'] as List).cast<String>(),
    );
  }
}

