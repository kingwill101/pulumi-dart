// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDbNode.
class GetDbNodeResult {
  /// Additional information about the planned maintenance.
  final String? additionalDetails;
  /// ARN of the DB node.
  final String? arn;
  /// Oracle Cloud ID (OCID) of the backup IP address that's associated with the DB node.
  final String? backupIpId;
  /// OCID of the second backup VNIC.
  final String? backupVnic2Id;
  /// OCID of the backup VNIC.
  final String? backupVnicId;
  /// ID of the cloud VM cluster.
  final String? cloudVmClusterId;
  /// Number of CPU cores enabled on the DB node.
  final int? cpuCoreCount;
  /// Date and time when the DB node was created.
  final String? createdAt;
  /// Unique identifier of the DB server that is associated with the DB node.
  final String? dbServerId;
  /// Amount of local node storage, in gigabytes (GB), allocated on the DB node.
  final int? dbStorageSizeInGbs;
  /// OCID of the DB system.
  final String? dbSystemId;
  /// Name of the fault domain the instance is contained in.
  final String? faultDomain;
  /// Floating IP address assigned to the DB node.
  final String? floatingIpAddress;
  /// OCID of the host IP address that's associated with the DB node.
  final String? hostIpId;
  /// Host name for the DB node.
  final String? hostname;
  final String? id;
  /// Type of database node maintenance. Either VMDB_REBOOT_MIGRATION or EXADBXS_REBOOT_MIGRATION.
  final String? maintenanceType;
  /// Allocated memory in GBs on the DB node.
  final int? memorySizeInGbs;
  /// Name of the OCI resource anchor for the DB node.
  final String? ociResourceAnchorName;
  /// OCID of the DB node.
  final String? ocid;
  /// Private IP address assigned to the DB node.
  final String? privateIpAddress;
  final String? region;
  /// Size (in GB) of the block storage volume allocation for the DB system.
  final int? softwareStorageSizeInGbs;
  /// Current status of the DB node.
  final String? status;
  /// Additional information about the status of the DB node.
  final String? statusReason;
  /// End date and time of the maintenance window.
  final String? timeMaintenanceWindowEnd;
  /// Start date and time of the maintenance window.
  final String? timeMaintenanceWindowStart;
  /// Total number of CPU cores reserved on the DB node.
  final int? totalCpuCoreCount;
  /// OCID of the second VNIC.
  final String? vnic2Id;
  /// OCID of the VNIC.
  final String? vnicId;

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
  /// [id] Optional.
  /// [maintenanceType] Type of database node maintenance. Either VMDB_REBOOT_MIGRATION or EXADBXS_REBOOT_MIGRATION.
  /// [memorySizeInGbs] Allocated memory in GBs on the DB node.
  /// [ociResourceAnchorName] Name of the OCI resource anchor for the DB node.
  /// [ocid] OCID of the DB node.
  /// [privateIpAddress] Private IP address assigned to the DB node.
  /// [region] Optional.
  /// [softwareStorageSizeInGbs] Size (in GB) of the block storage volume allocation for the DB system.
  /// [status] Current status of the DB node.
  /// [statusReason] Additional information about the status of the DB node.
  /// [timeMaintenanceWindowEnd] End date and time of the maintenance window.
  /// [timeMaintenanceWindowStart] Start date and time of the maintenance window.
  /// [totalCpuCoreCount] Total number of CPU cores reserved on the DB node.
  /// [vnic2Id] OCID of the second VNIC.
  /// [vnicId] OCID of the VNIC.
  const GetDbNodeResult({
    this.additionalDetails,
    this.arn,
    this.backupIpId,
    this.backupVnic2Id,
    this.backupVnicId,
    this.cloudVmClusterId,
    this.cpuCoreCount,
    this.createdAt,
    this.dbServerId,
    this.dbStorageSizeInGbs,
    this.dbSystemId,
    this.faultDomain,
    this.floatingIpAddress,
    this.hostIpId,
    this.hostname,
    this.id,
    this.maintenanceType,
    this.memorySizeInGbs,
    this.ociResourceAnchorName,
    this.ocid,
    this.privateIpAddress,
    this.region,
    this.softwareStorageSizeInGbs,
    this.status,
    this.statusReason,
    this.timeMaintenanceWindowEnd,
    this.timeMaintenanceWindowStart,
    this.totalCpuCoreCount,
    this.vnic2Id,
    this.vnicId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalDetails': ?additionalDetails,
      'arn': ?arn,
      'backupIpId': ?backupIpId,
      'backupVnic2Id': ?backupVnic2Id,
      'backupVnicId': ?backupVnicId,
      'cloudVmClusterId': ?cloudVmClusterId,
      'cpuCoreCount': ?cpuCoreCount,
      'createdAt': ?createdAt,
      'dbServerId': ?dbServerId,
      'dbStorageSizeInGbs': ?dbStorageSizeInGbs,
      'dbSystemId': ?dbSystemId,
      'faultDomain': ?faultDomain,
      'floatingIpAddress': ?floatingIpAddress,
      'hostIpId': ?hostIpId,
      'hostname': ?hostname,
      'id': ?id,
      'maintenanceType': ?maintenanceType,
      'memorySizeInGbs': ?memorySizeInGbs,
      'ociResourceAnchorName': ?ociResourceAnchorName,
      'ocid': ?ocid,
      'privateIpAddress': ?privateIpAddress,
      'region': ?region,
      'softwareStorageSizeInGbs': ?softwareStorageSizeInGbs,
      'status': ?status,
      'statusReason': ?statusReason,
      'timeMaintenanceWindowEnd': ?timeMaintenanceWindowEnd,
      'timeMaintenanceWindowStart': ?timeMaintenanceWindowStart,
      'totalCpuCoreCount': ?totalCpuCoreCount,
      'vnic2Id': ?vnic2Id,
      'vnicId': ?vnicId,
    };
  }

  factory GetDbNodeResult.fromMap(Map<String, dynamic> map) {
    return GetDbNodeResult(
      additionalDetails: (() { final guardedValue = map['additionalDetails']; if (guardedValue == null) return null; return guardedValue as String; })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      backupIpId: (() { final guardedValue = map['backupIpId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      backupVnic2Id: (() { final guardedValue = map['backupVnic2Id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      backupVnicId: (() { final guardedValue = map['backupVnicId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      cloudVmClusterId: (() { final guardedValue = map['cloudVmClusterId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      cpuCoreCount: (() { final guardedValue = map['cpuCoreCount']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dbServerId: (() { final guardedValue = map['dbServerId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dbStorageSizeInGbs: (() { final guardedValue = map['dbStorageSizeInGbs']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      dbSystemId: (() { final guardedValue = map['dbSystemId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      faultDomain: (() { final guardedValue = map['faultDomain']; if (guardedValue == null) return null; return guardedValue as String; })(),
      floatingIpAddress: (() { final guardedValue = map['floatingIpAddress']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hostIpId: (() { final guardedValue = map['hostIpId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maintenanceType: (() { final guardedValue = map['maintenanceType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      memorySizeInGbs: (() { final guardedValue = map['memorySizeInGbs']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      ociResourceAnchorName: (() { final guardedValue = map['ociResourceAnchorName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ocid: (() { final guardedValue = map['ocid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      privateIpAddress: (() { final guardedValue = map['privateIpAddress']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      softwareStorageSizeInGbs: (() { final guardedValue = map['softwareStorageSizeInGbs']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      statusReason: (() { final guardedValue = map['statusReason']; if (guardedValue == null) return null; return guardedValue as String; })(),
      timeMaintenanceWindowEnd: (() { final guardedValue = map['timeMaintenanceWindowEnd']; if (guardedValue == null) return null; return guardedValue as String; })(),
      timeMaintenanceWindowStart: (() { final guardedValue = map['timeMaintenanceWindowStart']; if (guardedValue == null) return null; return guardedValue as String; })(),
      totalCpuCoreCount: (() { final guardedValue = map['totalCpuCoreCount']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      vnic2Id: (() { final guardedValue = map['vnic2Id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vnicId: (() { final guardedValue = map['vnicId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
