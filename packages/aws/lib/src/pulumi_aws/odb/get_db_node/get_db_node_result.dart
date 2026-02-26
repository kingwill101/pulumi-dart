// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getDbNode.
class GetDbNodeResult {
  /// Additional information about the planned maintenance.
  final String additionalDetails;
  final String arn;

  /// The Oracle Cloud ID (OCID) of the backup IP address that's associated with the DB node.
  final String backupIpId;

  /// The OCID of the second backup VNIC.
  final String backupVnic2Id;

  /// The OCID of the backup VNIC.
  final String backupVnicId;

  /// The ID of the cloud VM cluster.
  final String cloudVmClusterId;

  /// The number of CPU cores enabled on the DB node.
  final int cpuCoreCount;

  /// The date and time when the DB node was created.
  final String createdAt;

  /// The unique identifier of the DB server that is associated with the DB node.
  final String dbServerId;

  /// The amount of local node storage, in gigabytes (GB), allocated on the DB node.
  final int dbStorageSizeInGbs;

  /// The OCID of the DB system.
  final String dbSystemId;

  /// The name of the fault domain the instance is contained in.
  final String faultDomain;

  /// The floating IP address assigned to the DB node.
  final String floatingIpAddress;

  /// The OCID of the host IP address that's associated with the DB node.
  final String hostIpId;

  /// The host name for the DB node.
  final String hostname;
  final String id;

  /// The type of database node maintenance. Either VMDB_REBOOT_MIGRATION or EXADBXS_REBOOT_MIGRATION.
  final String maintenanceType;

  /// The allocated memory in GBs on the DB node.
  final int memorySizeInGbs;

  /// The name of the OCI resource anchor for the DB node.
  final String ociResourceAnchorName;

  /// The OCID of the DB node.
  final String ocid;

  /// The private IP address assigned to the DB node.
  final String privateIpAddress;
  final String region;

  /// The size (in GB) of the block storage volume allocation for the DB system.
  final int softwareStorageSizeInGbs;

  /// The current status of the DB node.
  final String status;

  /// Additional information about the status of the DB node.
  final String statusReason;

  /// The end date and time of the maintenance window.
  final String timeMaintenanceWindowEnd;

  /// The start date and time of the maintenance window.
  final String timeMaintenanceWindowStart;

  /// The total number of CPU cores reserved on the DB node.
  final int totalCpuCoreCount;

  /// The OCID of the second VNIC.
  final String vnic2Id;

  /// The OCID of the VNIC.
  final String vnicId;

  GetDbNodeResult({
    required this.additionalDetails,
    required this.arn,
    required this.backupIpId,
    required this.backupVnic2Id,
    required this.backupVnicId,
    required this.cloudVmClusterId,
    required this.cpuCoreCount,
    required this.createdAt,
    required this.dbServerId,
    required this.dbStorageSizeInGbs,
    required this.dbSystemId,
    required this.faultDomain,
    required this.floatingIpAddress,
    required this.hostIpId,
    required this.hostname,
    required this.id,
    required this.maintenanceType,
    required this.memorySizeInGbs,
    required this.ociResourceAnchorName,
    required this.ocid,
    required this.privateIpAddress,
    required this.region,
    required this.softwareStorageSizeInGbs,
    required this.status,
    required this.statusReason,
    required this.timeMaintenanceWindowEnd,
    required this.timeMaintenanceWindowStart,
    required this.totalCpuCoreCount,
    required this.vnic2Id,
    required this.vnicId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['additionalDetails'] = additionalDetails;
    map['arn'] = arn;
    map['backupIpId'] = backupIpId;
    map['backupVnic2Id'] = backupVnic2Id;
    map['backupVnicId'] = backupVnicId;
    map['cloudVmClusterId'] = cloudVmClusterId;
    map['cpuCoreCount'] = cpuCoreCount;
    map['createdAt'] = createdAt;
    map['dbServerId'] = dbServerId;
    map['dbStorageSizeInGbs'] = dbStorageSizeInGbs;
    map['dbSystemId'] = dbSystemId;
    map['faultDomain'] = faultDomain;
    map['floatingIpAddress'] = floatingIpAddress;
    map['hostIpId'] = hostIpId;
    map['hostname'] = hostname;
    map['id'] = id;
    map['maintenanceType'] = maintenanceType;
    map['memorySizeInGbs'] = memorySizeInGbs;
    map['ociResourceAnchorName'] = ociResourceAnchorName;
    map['ocid'] = ocid;
    map['privateIpAddress'] = privateIpAddress;
    map['region'] = region;
    map['softwareStorageSizeInGbs'] = softwareStorageSizeInGbs;
    map['status'] = status;
    map['statusReason'] = statusReason;
    map['timeMaintenanceWindowEnd'] = timeMaintenanceWindowEnd;
    map['timeMaintenanceWindowStart'] = timeMaintenanceWindowStart;
    map['totalCpuCoreCount'] = totalCpuCoreCount;
    map['vnic2Id'] = vnic2Id;
    map['vnicId'] = vnicId;
    return map;
  }

  factory GetDbNodeResult.fromMap(Map<String, dynamic> map) {
    return GetDbNodeResult(
      additionalDetails: map['additionalDetails'] as String,
      arn: map['arn'] as String,
      backupIpId: map['backupIpId'] as String,
      backupVnic2Id: map['backupVnic2Id'] as String,
      backupVnicId: map['backupVnicId'] as String,
      cloudVmClusterId: map['cloudVmClusterId'] as String,
      cpuCoreCount: map['cpuCoreCount'] as int,
      createdAt: map['createdAt'] as String,
      dbServerId: map['dbServerId'] as String,
      dbStorageSizeInGbs: map['dbStorageSizeInGbs'] as int,
      dbSystemId: map['dbSystemId'] as String,
      faultDomain: map['faultDomain'] as String,
      floatingIpAddress: map['floatingIpAddress'] as String,
      hostIpId: map['hostIpId'] as String,
      hostname: map['hostname'] as String,
      id: map['id'] as String,
      maintenanceType: map['maintenanceType'] as String,
      memorySizeInGbs: map['memorySizeInGbs'] as int,
      ociResourceAnchorName: map['ociResourceAnchorName'] as String,
      ocid: map['ocid'] as String,
      privateIpAddress: map['privateIpAddress'] as String,
      region: map['region'] as String,
      softwareStorageSizeInGbs: map['softwareStorageSizeInGbs'] as int,
      status: map['status'] as String,
      statusReason: map['statusReason'] as String,
      timeMaintenanceWindowEnd: map['timeMaintenanceWindowEnd'] as String,
      timeMaintenanceWindowStart: map['timeMaintenanceWindowStart'] as String,
      totalCpuCoreCount: map['totalCpuCoreCount'] as int,
      vnic2Id: map['vnic2Id'] as String,
      vnicId: map['vnicId'] as String,
    );
  }
}
