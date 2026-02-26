// ignore_for_file: unused_element, unnecessary_cast

class ReplicationConfigComputeConfig {
  /// The Availability Zone where the DMS Serverless replication using this configuration will run. The default value is a random.
  final String? availabilityZone;

  /// A list of custom DNS name servers supported for the DMS Serverless replication to access your source or target database.
  final String? dnsNameServers;

  /// An Key Management Service (KMS) key Amazon Resource Name (ARN) that is used to encrypt the data during DMS Serverless replication. If you don't specify a value for the KmsKeyId parameter, DMS uses your default encryption key.
  final String? kmsKeyId;

  /// Specifies the maximum value of the DMS capacity units (DCUs) for which a given DMS Serverless replication can be provisioned. A single DCU is 2GB of RAM, with 1 DCUs as the minimum value allowed. The list of valid DCU values includes 1, 2, 4, 8, 16, 32, 64, 128, 192, 256, and 384.
  final int? maxCapacityUnits;

  /// Specifies the minimum value of the DMS capacity units (DCUs) for which a given DMS Serverless replication can be provisioned. The list of valid DCU values includes 1, 2, 4, 8, 16, 32, 64, 128, 192, 256, and 384. If this value isn't set DMS sets the lowest allowed value, 1.
  final int? minCapacityUnits;

  /// Specifies if the replication instance is a multi-az deployment. You cannot set the <span pulumi-lang-nodejs="`availabilityZone`" pulumi-lang-dotnet="`AvailabilityZone`" pulumi-lang-go="`availabilityZone`" pulumi-lang-python="`availability_zone`" pulumi-lang-yaml="`availabilityZone`" pulumi-lang-java="`availabilityZone`">`availability_zone`</span> parameter if the <span pulumi-lang-nodejs="`multiAz`" pulumi-lang-dotnet="`MultiAz`" pulumi-lang-go="`multiAz`" pulumi-lang-python="`multi_az`" pulumi-lang-yaml="`multiAz`" pulumi-lang-java="`multiAz`">`multi_az`</span> parameter is set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  final bool? multiAz;

  /// The weekly time range during which system maintenance can occur, in Universal Coordinated Time (UTC).
  ///
  /// - Default: A 30-minute window selected at random from an 8-hour block of time per region, occurring on a random day of the week.
  /// - Format: `ddd:hh24:mi-ddd:hh24:mi`
  /// - Valid Days: `mon, tue, wed, thu, fri, sat, sun`
  /// - Constraints: Minimum 30-minute window.
  final String? preferredMaintenanceWindow;

  /// Specifies a subnet group identifier to associate with the DMS Serverless replication.
  final String replicationSubnetGroupId;

  /// Specifies the virtual private cloud (VPC) security group to use with the DMS Serverless replication. The VPC security group must work with the VPC containing the replication.
  final List<String>? vpcSecurityGroupIds;

  ReplicationConfigComputeConfig({
    this.availabilityZone,
    this.dnsNameServers,
    this.kmsKeyId,
    this.maxCapacityUnits,
    this.minCapacityUnits,
    this.multiAz,
    this.preferredMaintenanceWindow,
    required this.replicationSubnetGroupId,
    this.vpcSecurityGroupIds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final availabilityZoneValue = availabilityZone;
    if (availabilityZoneValue != null) {
      map['availabilityZone'] = availabilityZoneValue;
    }
    final dnsNameServersValue = dnsNameServers;
    if (dnsNameServersValue != null) {
      map['dnsNameServers'] = dnsNameServersValue;
    }
    final kmsKeyIdValue = kmsKeyId;
    if (kmsKeyIdValue != null) {
      map['kmsKeyId'] = kmsKeyIdValue;
    }
    final maxCapacityUnitsValue = maxCapacityUnits;
    if (maxCapacityUnitsValue != null) {
      map['maxCapacityUnits'] = maxCapacityUnitsValue;
    }
    final minCapacityUnitsValue = minCapacityUnits;
    if (minCapacityUnitsValue != null) {
      map['minCapacityUnits'] = minCapacityUnitsValue;
    }
    final multiAzValue = multiAz;
    if (multiAzValue != null) {
      map['multiAz'] = multiAzValue;
    }
    final preferredMaintenanceWindowValue = preferredMaintenanceWindow;
    if (preferredMaintenanceWindowValue != null) {
      map['preferredMaintenanceWindow'] = preferredMaintenanceWindowValue;
    }
    map['replicationSubnetGroupId'] = replicationSubnetGroupId;
    final vpcSecurityGroupIdsValue = vpcSecurityGroupIds;
    if (vpcSecurityGroupIdsValue != null) {
      map['vpcSecurityGroupIds'] = vpcSecurityGroupIdsValue;
    }
    return map;
  }

  factory ReplicationConfigComputeConfig.fromMap(Map<String, dynamic> map) {
    return ReplicationConfigComputeConfig(
      availabilityZone: map['availabilityZone'] == null
          ? null
          : map['availabilityZone'] as String,
      dnsNameServers: map['dnsNameServers'] == null
          ? null
          : map['dnsNameServers'] as String,
      kmsKeyId: map['kmsKeyId'] == null ? null : map['kmsKeyId'] as String,
      maxCapacityUnits: map['maxCapacityUnits'] == null
          ? null
          : map['maxCapacityUnits'] as int,
      minCapacityUnits: map['minCapacityUnits'] == null
          ? null
          : map['minCapacityUnits'] as int,
      multiAz: map['multiAz'] == null ? null : map['multiAz'] as bool,
      preferredMaintenanceWindow: map['preferredMaintenanceWindow'] == null
          ? null
          : map['preferredMaintenanceWindow'] as String,
      replicationSubnetGroupId: map['replicationSubnetGroupId'] as String,
      vpcSecurityGroupIds: map['vpcSecurityGroupIds'] == null
          ? null
          : (map['vpcSecurityGroupIds'] as List).cast<String>(),
    );
  }
}
