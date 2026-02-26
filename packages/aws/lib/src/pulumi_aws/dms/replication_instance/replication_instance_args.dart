// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../replication_instance_kerberos_authentication_settings/replication_instance_kerberos_authentication_settings.dart';

/// The set of arguments for ReplicationInstance.
class ReplicationInstanceArgs {
  /// The amount of storage (in gigabytes) to be initially allocated for the replication instance.
  final Input<int>? allocatedStorage;

  /// Indicates that major version upgrades are allowed.
  final Input<bool>? allowMajorVersionUpgrade;

  /// Indicates whether the changes should be applied immediately or during the next maintenance window. Only used when updating an existing resource.
  final Input<bool>? applyImmediately;

  /// Indicates that minor engine upgrades will be applied automatically to the replication instance during the maintenance window.
  final Input<bool>? autoMinorVersionUpgrade;

  /// The EC2 Availability Zone that the replication instance will be created in.
  final Input<String>? availabilityZone;

  /// A list of custom DNS name servers supported for the replication instance to access your on-premise source or target database. This list overrides the default name servers supported by the replication instance. You can specify a comma-separated list of internet addresses for up to four on-premise DNS name servers.
  final Input<String>? dnsNameServers;

  /// The engine version number of the replication instance.
  final Input<String>? engineVersion;

  /// Configuration block for settings required for Kerberos authentication. See below.
  final Input<ReplicationInstanceKerberosAuthenticationSettings>?
      kerberosAuthenticationSettings;

  /// The Amazon Resource Name (ARN) for the KMS key that will be used to encrypt the connection parameters. If you do not specify a value for <span pulumi-lang-nodejs="`kmsKeyArn`" pulumi-lang-dotnet="`KmsKeyArn`" pulumi-lang-go="`kmsKeyArn`" pulumi-lang-python="`kms_key_arn`" pulumi-lang-yaml="`kmsKeyArn`" pulumi-lang-java="`kmsKeyArn`">`kms_key_arn`</span>, then AWS DMS will use your default encryption key. AWS KMS creates the default encryption key for your AWS account. Your AWS account has a different default encryption key for each AWS region.
  final Input<String>? kmsKeyArn;

  /// Specifies if the replication instance is a multi-az deployment. You cannot set the <span pulumi-lang-nodejs="`availabilityZone`" pulumi-lang-dotnet="`AvailabilityZone`" pulumi-lang-go="`availabilityZone`" pulumi-lang-python="`availability_zone`" pulumi-lang-yaml="`availabilityZone`" pulumi-lang-java="`availabilityZone`">`availability_zone`</span> parameter if the <span pulumi-lang-nodejs="`multiAz`" pulumi-lang-dotnet="`MultiAz`" pulumi-lang-go="`multiAz`" pulumi-lang-python="`multi_az`" pulumi-lang-yaml="`multiAz`" pulumi-lang-java="`multiAz`">`multi_az`</span> parameter is set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  final Input<bool>? multiAz;

  /// The type of IP address protocol used by a replication instance. Valid values: `IPV4`, `DUAL`.
  final Input<String>? networkType;

  /// The weekly time range during which system maintenance can occur, in Universal Coordinated Time (UTC).
  final Input<String>? preferredMaintenanceWindow;

  /// Specifies the accessibility options for the replication instance. A value of true represents an instance with a public IP address. A value of false represents an instance with a private IP address.
  final Input<bool>? publiclyAccessible;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The compute and memory capacity of the replication instance as specified by the replication instance class. See [AWS DMS User Guide](https://docs.aws.amazon.com/dms/latest/userguide/CHAP_ReplicationInstance.Types.html) for available instance sizes and advice on which one to choose.
  final Input<String> replicationInstanceClass;

  /// The replication instance identifier. This parameter is stored as a lowercase string.
  final Input<String> replicationInstanceId;

  /// A subnet group to associate with the replication instance.
  final Input<String>? replicationSubnetGroupId;

  /// A map of tags to assign to the resource. .If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// A list of VPC security group IDs to be used with the replication instance. The VPC security groups must work with the VPC containing the replication instance.
  final Input<List<String>>? vpcSecurityGroupIds;

  ReplicationInstanceArgs({
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
    required this.replicationInstanceClass,
    required this.replicationInstanceId,
    this.replicationSubnetGroupId,
    this.tags,
    this.vpcSecurityGroupIds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allocatedStorageValue = allocatedStorage;
    if (allocatedStorageValue != null) {
      map['allocatedStorage'] = allocatedStorageValue;
    }
    final allowMajorVersionUpgradeValue = allowMajorVersionUpgrade;
    if (allowMajorVersionUpgradeValue != null) {
      map['allowMajorVersionUpgrade'] = allowMajorVersionUpgradeValue;
    }
    final applyImmediatelyValue = applyImmediately;
    if (applyImmediatelyValue != null) {
      map['applyImmediately'] = applyImmediatelyValue;
    }
    final autoMinorVersionUpgradeValue = autoMinorVersionUpgrade;
    if (autoMinorVersionUpgradeValue != null) {
      map['autoMinorVersionUpgrade'] = autoMinorVersionUpgradeValue;
    }
    final availabilityZoneValue = availabilityZone;
    if (availabilityZoneValue != null) {
      map['availabilityZone'] = availabilityZoneValue;
    }
    final dnsNameServersValue = dnsNameServers;
    if (dnsNameServersValue != null) {
      map['dnsNameServers'] = dnsNameServersValue;
    }
    final engineVersionValue = engineVersion;
    if (engineVersionValue != null) {
      map['engineVersion'] = engineVersionValue;
    }
    final kerberosAuthenticationSettingsValue = kerberosAuthenticationSettings;
    if (kerberosAuthenticationSettingsValue != null) {
      map['kerberosAuthenticationSettings'] = Input.mapOptionalInputValue<
              ReplicationInstanceKerberosAuthenticationSettings,
              Map<String, dynamic>>(
          kerberosAuthenticationSettingsValue, (value) => value.toMap());
    }
    final kmsKeyArnValue = kmsKeyArn;
    if (kmsKeyArnValue != null) {
      map['kmsKeyArn'] = kmsKeyArnValue;
    }
    final multiAzValue = multiAz;
    if (multiAzValue != null) {
      map['multiAz'] = multiAzValue;
    }
    final networkTypeValue = networkType;
    if (networkTypeValue != null) {
      map['networkType'] = networkTypeValue;
    }
    final preferredMaintenanceWindowValue = preferredMaintenanceWindow;
    if (preferredMaintenanceWindowValue != null) {
      map['preferredMaintenanceWindow'] = preferredMaintenanceWindowValue;
    }
    final publiclyAccessibleValue = publiclyAccessible;
    if (publiclyAccessibleValue != null) {
      map['publiclyAccessible'] = publiclyAccessibleValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['replicationInstanceClass'] = replicationInstanceClass;
    map['replicationInstanceId'] = replicationInstanceId;
    final replicationSubnetGroupIdValue = replicationSubnetGroupId;
    if (replicationSubnetGroupIdValue != null) {
      map['replicationSubnetGroupId'] = replicationSubnetGroupIdValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final vpcSecurityGroupIdsValue = vpcSecurityGroupIds;
    if (vpcSecurityGroupIdsValue != null) {
      map['vpcSecurityGroupIds'] = vpcSecurityGroupIdsValue;
    }
    return map;
  }

  factory ReplicationInstanceArgs.fromMap(Map<String, dynamic> map) {
    return ReplicationInstanceArgs(
      allocatedStorage: Input.asOptionalInput<int>(map['allocatedStorage']),
      allowMajorVersionUpgrade:
          Input.asOptionalInput<bool>(map['allowMajorVersionUpgrade']),
      applyImmediately: Input.asOptionalInput<bool>(map['applyImmediately']),
      autoMinorVersionUpgrade:
          Input.asOptionalInput<bool>(map['autoMinorVersionUpgrade']),
      availabilityZone: Input.asOptionalInput<String>(map['availabilityZone']),
      dnsNameServers: Input.asOptionalInput<String>(map['dnsNameServers']),
      engineVersion: Input.asOptionalInput<String>(map['engineVersion']),
      kerberosAuthenticationSettings: Input.asOptionalInput<
              ReplicationInstanceKerberosAuthenticationSettings>(
          map['kerberosAuthenticationSettings']),
      kmsKeyArn: Input.asOptionalInput<String>(map['kmsKeyArn']),
      multiAz: Input.asOptionalInput<bool>(map['multiAz']),
      networkType: Input.asOptionalInput<String>(map['networkType']),
      preferredMaintenanceWindow:
          Input.asOptionalInput<String>(map['preferredMaintenanceWindow']),
      publiclyAccessible:
          Input.asOptionalInput<bool>(map['publiclyAccessible']),
      region: Input.asOptionalInput<String>(map['region']),
      replicationInstanceClass:
          Input.asInput<String>(map['replicationInstanceClass']),
      replicationInstanceId:
          Input.asInput<String>(map['replicationInstanceId']),
      replicationSubnetGroupId:
          Input.asOptionalInput<String>(map['replicationSubnetGroupId']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      vpcSecurityGroupIds:
          Input.asOptionalInput<List<String>>(map['vpcSecurityGroupIds']),
    );
  }
}
