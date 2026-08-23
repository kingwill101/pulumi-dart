// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDbNode.
class GetDbNodeResult {
  /// Additional information about the planned maintenance.
  final String additionalDetails;
  /// ARN of the DB node.
  final String arn;
  /// Oracle Cloud ID (OCID) of the backup IP address that's associated with the DB node.
  final String backupIpId;
  /// OCID of the second backup VNIC.
  final String backupVnic2Id;
  /// OCID of the backup VNIC.
  final String backupVnicId;
  /// ID of the cloud VM cluster.
  final String cloudVmClusterId;
  /// Number of CPU cores enabled on the DB node.
  final int cpuCoreCount;
  /// Date and time when the DB node was created.
  final String createdAt;
  /// Unique identifier of the DB server that is associated with the DB node.
  final String dbServerId;
  /// Amount of local node storage, in gigabytes (GB), allocated on the DB node.
  final int dbStorageSizeInGbs;
  /// OCID of the DB system.
  final String dbSystemId;
  /// Name of the fault domain the instance is contained in.
  final String faultDomain;
  /// Floating IP address assigned to the DB node.
  final String floatingIpAddress;
  /// OCID of the host IP address that's associated with the DB node.
  final String hostIpId;
  /// Host name for the DB node.
  final String hostname;
  final String id;
  /// Type of database node maintenance. Either VMDB_REBOOT_MIGRATION or EXADBXS_REBOOT_MIGRATION.
  final String maintenanceType;
  /// Allocated memory in GBs on the DB node.
  final int memorySizeInGbs;
  /// Name of the OCI resource anchor for the DB node.
  final String ociResourceAnchorName;
  /// OCID of the DB node.
  final String ocid;
  /// Private IP address assigned to the DB node.
  final String privateIpAddress;
  final String region;
  /// Size (in GB) of the block storage volume allocation for the DB system.
  final int softwareStorageSizeInGbs;
  /// Current status of the DB node.
  final String status;
  /// Additional information about the status of the DB node.
  final String statusReason;
  /// End date and time of the maintenance window.
  final String timeMaintenanceWindowEnd;
  /// Start date and time of the maintenance window.
  final String timeMaintenanceWindowStart;
  /// Total number of CPU cores reserved on the DB node.
  final int totalCpuCoreCount;
  /// OCID of the second VNIC.
  final String vnic2Id;
  /// OCID of the VNIC.
  final String vnicId;

  /// Creates a new [GetDbNodeResult].
  /// [additionalDetails] Additional information about the planned maintenance.
  /// [arn] ARN of the DB node.
  /// [backupIpId] Oracle Cloud ID (OCID) of the backup IP address that's associated with the DB node.
  /// [backupVnic2Id] OCID of the second backup VNIC.
  /// [backupVnicId] OCID of the backup VNIC.
  /// [cloudVmClusterId] ID of the cloud VM cluster.
  /// [cpuCoreCount] Number of CPU cores enabled on the DB node.
  /// [createdAt] Date and time when the DB node was created.
  /// [dbServerId] Unique identifier of the DB server that is associated with the DB node.
  /// [dbStorageSizeInGbs] Amount of local node storage, in gigabytes (GB), allocated on the DB node.
  /// [dbSystemId] OCID of the DB system.
  /// [faultDomain] Name of the fault domain the instance is contained in.
  /// [floatingIpAddress] Floating IP address assigned to the DB node.
  /// [hostIpId] OCID of the host IP address that's associated with the DB node.
  /// [hostname] Host name for the DB node.
  /// [id] Required.
  /// [maintenanceType] Type of database node maintenance. Either VMDB_REBOOT_MIGRATION or EXADBXS_REBOOT_MIGRATION.
  /// [memorySizeInGbs] Allocated memory in GBs on the DB node.
  /// [ociResourceAnchorName] Name of the OCI resource anchor for the DB node.
  /// [ocid] OCID of the DB node.
  /// [privateIpAddress] Private IP address assigned to the DB node.
  /// [region] Required.
  /// [softwareStorageSizeInGbs] Size (in GB) of the block storage volume allocation for the DB system.
  /// [status] Current status of the DB node.
  /// [statusReason] Additional information about the status of the DB node.
  /// [timeMaintenanceWindowEnd] End date and time of the maintenance window.
  /// [timeMaintenanceWindowStart] Start date and time of the maintenance window.
  /// [totalCpuCoreCount] Total number of CPU cores reserved on the DB node.
  /// [vnic2Id] OCID of the second VNIC.
  /// [vnicId] OCID of the VNIC.
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
