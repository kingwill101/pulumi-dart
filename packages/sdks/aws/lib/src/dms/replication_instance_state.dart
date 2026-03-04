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
  final pulumi.Input<ReplicationInstanceKerberosAuthenticationSettings>?
  kerberosAuthenticationSettings;

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
      'kerberosAuthenticationSettings':
          ?pulumi.Input.mapOptionalInputValue<
            ReplicationInstanceKerberosAuthenticationSettings,
            Map<String, dynamic>
          >(kerberosAuthenticationSettings, (value) => value.toMap()),
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
      allocatedStorage: (() {
        final guardedValue = map['allocatedStorage'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      allowMajorVersionUpgrade: (() {
        final guardedValue = map['allowMajorVersionUpgrade'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      applyImmediately: (() {
        final guardedValue = map['applyImmediately'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      autoMinorVersionUpgrade: (() {
        final guardedValue = map['autoMinorVersionUpgrade'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      availabilityZone: (() {
        final guardedValue = map['availabilityZone'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dnsNameServers: (() {
        final guardedValue = map['dnsNameServers'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      engineVersion: (() {
        final guardedValue = map['engineVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      kerberosAuthenticationSettings: (() {
        final guardedValue = map['kerberosAuthenticationSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ReplicationInstanceKerberosAuthenticationSettings.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      kmsKeyArn: (() {
        final guardedValue = map['kmsKeyArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      multiAz: (() {
        final guardedValue = map['multiAz'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      networkType: (() {
        final guardedValue = map['networkType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      preferredMaintenanceWindow: (() {
        final guardedValue = map['preferredMaintenanceWindow'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      publiclyAccessible: (() {
        final guardedValue = map['publiclyAccessible'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      replicationInstanceArn: (() {
        final guardedValue = map['replicationInstanceArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      replicationInstanceClass: (() {
        final guardedValue = map['replicationInstanceClass'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      replicationInstanceId: (() {
        final guardedValue = map['replicationInstanceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      replicationInstancePrivateIps: (() {
        final guardedValue = map['replicationInstancePrivateIps'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      replicationInstancePublicIps: (() {
        final guardedValue = map['replicationInstancePublicIps'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      replicationSubnetGroupId: (() {
        final guardedValue = map['replicationSubnetGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      tagsAll: (() {
        final guardedValue = map['tagsAll'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      vpcSecurityGroupIds: (() {
        final guardedValue = map['vpcSecurityGroupIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
