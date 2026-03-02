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
    this.allocatedStorage,
    this.allowMajorVersionUpgrade,
    this.applyImmediately,
    this.autoMinorVersionUpgrade,
    this.availabilityZone,
    this.dnsNameServers,
    this.engineVersion,
    this.kerberosAuthenticationSettings,
    this.kmsKeyArn,
    this.multiAz,
    this.networkType,
    this.preferredMaintenanceWindow,
    this.publiclyAccessible,
    this.region,
    this.replicationInstanceArn,
    this.replicationInstanceClass,
    this.replicationInstanceId,
    this.replicationInstancePrivateIps,
    this.replicationInstancePublicIps,
    this.replicationSubnetGroupId,
    this.tags,
    this.tagsAll,
    this.vpcSecurityGroupIds,
  });

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
      allocatedStorage: map['allocatedStorage'] == null ? null : (map['allocatedStorage'] as int).input(),
      allowMajorVersionUpgrade: map['allowMajorVersionUpgrade'] == null ? null : (map['allowMajorVersionUpgrade'] as bool).input(),
      applyImmediately: map['applyImmediately'] == null ? null : (map['applyImmediately'] as bool).input(),
      autoMinorVersionUpgrade: map['autoMinorVersionUpgrade'] == null ? null : (map['autoMinorVersionUpgrade'] as bool).input(),
      availabilityZone: map['availabilityZone'] == null ? null : (map['availabilityZone'] as String).input(),
      dnsNameServers: map['dnsNameServers'] == null ? null : (map['dnsNameServers'] as String).input(),
      engineVersion: map['engineVersion'] == null ? null : (map['engineVersion'] as String).input(),
      kerberosAuthenticationSettings: map['kerberosAuthenticationSettings'] == null ? null : (ReplicationInstanceKerberosAuthenticationSettings.fromMap((map['kerberosAuthenticationSettings'] as Map).cast<String, dynamic>())).input(),
      kmsKeyArn: map['kmsKeyArn'] == null ? null : (map['kmsKeyArn'] as String).input(),
      multiAz: map['multiAz'] == null ? null : (map['multiAz'] as bool).input(),
      networkType: map['networkType'] == null ? null : (map['networkType'] as String).input(),
      preferredMaintenanceWindow: map['preferredMaintenanceWindow'] == null ? null : (map['preferredMaintenanceWindow'] as String).input(),
      publiclyAccessible: map['publiclyAccessible'] == null ? null : (map['publiclyAccessible'] as bool).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      replicationInstanceArn: map['replicationInstanceArn'] == null ? null : (map['replicationInstanceArn'] as String).input(),
      replicationInstanceClass: map['replicationInstanceClass'] == null ? null : (map['replicationInstanceClass'] as String).input(),
      replicationInstanceId: map['replicationInstanceId'] == null ? null : (map['replicationInstanceId'] as String).input(),
      replicationInstancePrivateIps: map['replicationInstancePrivateIps'] == null ? null : ((map['replicationInstancePrivateIps'] as List).cast<String>()).input(),
      replicationInstancePublicIps: map['replicationInstancePublicIps'] == null ? null : ((map['replicationInstancePublicIps'] as List).cast<String>()).input(),
      replicationSubnetGroupId: map['replicationSubnetGroupId'] == null ? null : (map['replicationSubnetGroupId'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
      vpcSecurityGroupIds: map['vpcSecurityGroupIds'] == null ? null : ((map['vpcSecurityGroupIds'] as List).cast<String>()).input(),
    );
  }
}

