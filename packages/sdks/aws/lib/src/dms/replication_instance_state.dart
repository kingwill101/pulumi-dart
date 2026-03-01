// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'replication_instance_kerberos_authentication_settings.dart';

/// Input properties used for looking up and filtering ReplicationInstance resources.
class ReplicationInstanceState {
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
  /// The Amazon Resource Name (ARN) of the replication instance.
  final pulumi.Input<String>? replicationInstanceArn;
  /// The compute and memory capacity of the replication instance as specified by the replication instance class. See [AWS DMS User Guide](https://docs.aws.amazon.com/dms/latest/userguide/CHAP_ReplicationInstance.Types.html) for available instance sizes and advice on which one to choose.
  final pulumi.Input<String>? replicationInstanceClass;
  /// The replication instance identifier. This parameter is stored as a lowercase string.
  final pulumi.Input<String>? replicationInstanceId;
  /// A list of the private IP addresses of the replication instance.
  final pulumi.Input<List<String>>? replicationInstancePrivateIps;
  /// A list of the public IP addresses of the replication instance.
  final pulumi.Input<List<String>>? replicationInstancePublicIps;
  /// A subnet group to associate with the replication instance.
  final pulumi.Input<String>? replicationSubnetGroupId;
  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// A list of VPC security group IDs to be used with the replication instance. The VPC security groups must work with the VPC containing the replication instance.
  final pulumi.Input<List<String>>? vpcSecurityGroupIds;

  /// Creates a new [ReplicationInstanceState].
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
  /// [replicationInstanceArn] The Amazon Resource Name (ARN) of the replication instance.
  /// [replicationInstanceClass] The compute and memory capacity of the replication instance as specified by the replication instance class. See [AWS DMS User Guide](https://docs.aws.amazon.com/dms/latest/userguide/CHAP_ReplicationInstance.Types.html) for available instance sizes and advice on which one to choose.
  /// [replicationInstanceId] The replication instance identifier. This parameter is stored as a lowercase string.
  /// [replicationInstancePrivateIps] A list of the private IP addresses of the replication instance.
  /// [replicationInstancePublicIps] A list of the public IP addresses of the replication instance.
  /// [replicationSubnetGroupId] A subnet group to associate with the replication instance.
  /// [tags] A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [vpcSecurityGroupIds] A list of VPC security group IDs to be used with the replication instance. The VPC security groups must work with the VPC containing the replication instance.
  ReplicationInstanceState({
    pulumi.Output<int>? allocatedStorage,
    pulumi.Output<bool>? allowMajorVersionUpgrade,
    pulumi.Output<bool>? applyImmediately,
    pulumi.Output<bool>? autoMinorVersionUpgrade,
    pulumi.Output<String>? availabilityZone,
    pulumi.Output<String>? dnsNameServers,
    pulumi.Output<String>? engineVersion,
    pulumi.Output<ReplicationInstanceKerberosAuthenticationSettings>? kerberosAuthenticationSettings,
    pulumi.Output<String>? kmsKeyArn,
    pulumi.Output<bool>? multiAz,
    pulumi.Output<String>? networkType,
    pulumi.Output<String>? preferredMaintenanceWindow,
    pulumi.Output<bool>? publiclyAccessible,
    pulumi.Output<String>? region,
    pulumi.Output<String>? replicationInstanceArn,
    pulumi.Output<String>? replicationInstanceClass,
    pulumi.Output<String>? replicationInstanceId,
    pulumi.Output<List<String>>? replicationInstancePrivateIps,
    pulumi.Output<List<String>>? replicationInstancePublicIps,
    pulumi.Output<String>? replicationSubnetGroupId,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<List<String>>? vpcSecurityGroupIds,
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
      replicationInstanceArn = pulumi.Input.asOptionalInput<String>(replicationInstanceArn),
      replicationInstanceClass = pulumi.Input.asOptionalInput<String>(replicationInstanceClass),
      replicationInstanceId = pulumi.Input.asOptionalInput<String>(replicationInstanceId),
      replicationInstancePrivateIps = pulumi.Input.asOptionalInput<List<String>>(replicationInstancePrivateIps),
      replicationInstancePublicIps = pulumi.Input.asOptionalInput<List<String>>(replicationInstancePublicIps),
      replicationSubnetGroupId = pulumi.Input.asOptionalInput<String>(replicationSubnetGroupId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
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
      'replicationInstanceArn': ?replicationInstanceArn,
      'replicationInstanceClass': ?replicationInstanceClass,
      'replicationInstanceId': ?replicationInstanceId,
      'replicationInstancePrivateIps': ?replicationInstancePrivateIps,
      'replicationInstancePublicIps': ?replicationInstancePublicIps,
      'replicationSubnetGroupId': ?replicationSubnetGroupId,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'vpcSecurityGroupIds': ?vpcSecurityGroupIds,
    };
  }

  factory ReplicationInstanceState.fromMap(Map<String, dynamic> map) {
    return ReplicationInstanceState(
      allocatedStorage: map['allocatedStorage'] == null ? null : pulumi.Output.create<int>(map['allocatedStorage'] as int),
      allowMajorVersionUpgrade: map['allowMajorVersionUpgrade'] == null ? null : pulumi.Output.create<bool>(map['allowMajorVersionUpgrade'] as bool),
      applyImmediately: map['applyImmediately'] == null ? null : pulumi.Output.create<bool>(map['applyImmediately'] as bool),
      autoMinorVersionUpgrade: map['autoMinorVersionUpgrade'] == null ? null : pulumi.Output.create<bool>(map['autoMinorVersionUpgrade'] as bool),
      availabilityZone: map['availabilityZone'] == null ? null : pulumi.Output.create<String>(map['availabilityZone'] as String),
      dnsNameServers: map['dnsNameServers'] == null ? null : pulumi.Output.create<String>(map['dnsNameServers'] as String),
      engineVersion: map['engineVersion'] == null ? null : pulumi.Output.create<String>(map['engineVersion'] as String),
      kerberosAuthenticationSettings: map['kerberosAuthenticationSettings'] == null ? null : pulumi.Output.create<ReplicationInstanceKerberosAuthenticationSettings>(ReplicationInstanceKerberosAuthenticationSettings.fromMap((map['kerberosAuthenticationSettings'] as Map).cast<String, dynamic>())),
      kmsKeyArn: map['kmsKeyArn'] == null ? null : pulumi.Output.create<String>(map['kmsKeyArn'] as String),
      multiAz: map['multiAz'] == null ? null : pulumi.Output.create<bool>(map['multiAz'] as bool),
      networkType: map['networkType'] == null ? null : pulumi.Output.create<String>(map['networkType'] as String),
      preferredMaintenanceWindow: map['preferredMaintenanceWindow'] == null ? null : pulumi.Output.create<String>(map['preferredMaintenanceWindow'] as String),
      publiclyAccessible: map['publiclyAccessible'] == null ? null : pulumi.Output.create<bool>(map['publiclyAccessible'] as bool),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      replicationInstanceArn: map['replicationInstanceArn'] == null ? null : pulumi.Output.create<String>(map['replicationInstanceArn'] as String),
      replicationInstanceClass: map['replicationInstanceClass'] == null ? null : pulumi.Output.create<String>(map['replicationInstanceClass'] as String),
      replicationInstanceId: map['replicationInstanceId'] == null ? null : pulumi.Output.create<String>(map['replicationInstanceId'] as String),
      replicationInstancePrivateIps: map['replicationInstancePrivateIps'] == null ? null : pulumi.Output.create<List<String>>((map['replicationInstancePrivateIps'] as List).cast<String>()),
      replicationInstancePublicIps: map['replicationInstancePublicIps'] == null ? null : pulumi.Output.create<List<String>>((map['replicationInstancePublicIps'] as List).cast<String>()),
      replicationSubnetGroupId: map['replicationSubnetGroupId'] == null ? null : pulumi.Output.create<String>(map['replicationSubnetGroupId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      vpcSecurityGroupIds: map['vpcSecurityGroupIds'] == null ? null : pulumi.Output.create<List<String>>((map['vpcSecurityGroupIds'] as List).cast<String>()),
    );
  }
}

