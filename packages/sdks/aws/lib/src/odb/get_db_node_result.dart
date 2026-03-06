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

  /// Creates a new [GetDbNodeResult].
  /// [additionalDetails] Additional information about the planned maintenance.
  /// [arn] Required.
  /// [backupIpId] The Oracle Cloud ID (OCID) of the backup IP address that's associated with the DB node.
  /// [backupVnic2Id] The OCID of the second backup VNIC.
  /// [backupVnicId] The OCID of the backup VNIC.
  /// [cloudVmClusterId] The ID of the cloud VM cluster.
  /// [cpuCoreCount] The number of CPU cores enabled on the DB node.
  /// [createdAt] The date and time when the DB node was created.
  /// [dbServerId] The unique identifier of the DB server that is associated with the DB node.
  /// [dbStorageSizeInGbs] The amount of local node storage, in gigabytes (GB), allocated on the DB node.
  /// [dbSystemId] The OCID of the DB system.
  /// [faultDomain] The name of the fault domain the instance is contained in.
  /// [floatingIpAddress] The floating IP address assigned to the DB node.
  /// [hostIpId] The OCID of the host IP address that's associated with the DB node.
  /// [hostname] The host name for the DB node.
  /// [id] Required.
  /// [maintenanceType] The type of database node maintenance. Either VMDB_REBOOT_MIGRATION or EXADBXS_REBOOT_MIGRATION.
  /// [memorySizeInGbs] The allocated memory in GBs on the DB node.
  /// [ociResourceAnchorName] The name of the OCI resource anchor for the DB node.
  /// [ocid] The OCID of the DB node.
  /// [privateIpAddress] The private IP address assigned to the DB node.
  /// [region] Required.
  /// [softwareStorageSizeInGbs] The size (in GB) of the block storage volume allocation for the DB system.
  /// [status] The current status of the DB node.
  /// [statusReason] Additional information about the status of the DB node.
  /// [timeMaintenanceWindowEnd] The end date and time of the maintenance window.
  /// [timeMaintenanceWindowStart] The start date and time of the maintenance window.
  /// [totalCpuCoreCount] The total number of CPU cores reserved on the DB node.
  /// [vnic2Id] The OCID of the second VNIC.
  /// [vnicId] The OCID of the VNIC.
  const GetDbNodeResult({
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
    return <String, dynamic>{
      'additionalDetails': additionalDetails,
      'arn': arn,
      'backupIpId': backupIpId,
      'backupVnic2Id': backupVnic2Id,
      'backupVnicId': backupVnicId,
      'cloudVmClusterId': cloudVmClusterId,
      'cpuCoreCount': cpuCoreCount,
      'createdAt': createdAt,
      'dbServerId': dbServerId,
      'dbStorageSizeInGbs': dbStorageSizeInGbs,
      'dbSystemId': dbSystemId,
      'faultDomain': faultDomain,
      'floatingIpAddress': floatingIpAddress,
      'hostIpId': hostIpId,
      'hostname': hostname,
      'id': id,
      'maintenanceType': maintenanceType,
      'memorySizeInGbs': memorySizeInGbs,
      'ociResourceAnchorName': ociResourceAnchorName,
      'ocid': ocid,
      'privateIpAddress': privateIpAddress,
      'region': region,
      'softwareStorageSizeInGbs': softwareStorageSizeInGbs,
      'status': status,
      'statusReason': statusReason,
      'timeMaintenanceWindowEnd': timeMaintenanceWindowEnd,
      'timeMaintenanceWindowStart': timeMaintenanceWindowStart,
      'totalCpuCoreCount': totalCpuCoreCount,
      'vnic2Id': vnic2Id,
      'vnicId': vnicId,
    };
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

