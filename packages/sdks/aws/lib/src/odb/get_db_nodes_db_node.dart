// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDbNodesDbNode {
  /// Additional information about the planned maintenance.
  final pulumi.Input<String> additionalDetails;
  /// Amazon Resource Name (ARN) of the DB node.
  final pulumi.Input<String> arn;
  /// Oracle Cloud ID (OCID) of the backup IP address that's associated with the DB node.
  final pulumi.Input<String> backupIpId;
  /// OCID of the second backup virtual network interface card (VNIC) for the DB node.
  final pulumi.Input<String> backupVnic2Id;
  /// OCID of the backup VNIC for the DB node.
  final pulumi.Input<String> backupVnicId;
  /// Number of CPU cores enabled on the DB node.
  final pulumi.Input<int> cpuCoreCount;
  /// Date and time when the DB node was created.
  final pulumi.Input<String> createdAt;
  /// Amount of local node storage, in gigabytes (GB), that's allocated on the DB node.
  final pulumi.Input<int> dbNodeStorageSize;
  /// Unique identifier of the database server that's associated with the DB node.
  final pulumi.Input<String> dbServerId;
  /// OCID of the DB system.
  final pulumi.Input<String> dbSystemId;
  /// Name of the fault domain where the DB node is located.
  final pulumi.Input<String> faultDomain;
  /// OCID of the host IP address that's associated with the DB node.
  final pulumi.Input<String> hostIpId;
  /// Host name for the DB node.
  final pulumi.Input<String> hostname;
  /// Unique identifier of the DB node.
  final pulumi.Input<String> id;
  /// Type of maintenance the DB node is undergoing.
  final pulumi.Input<String> maintenanceType;
  /// Amount of memory, in gigabytes (GB), that's allocated on the DB node.
  final pulumi.Input<int> memorySize;
  /// Name of the OCI resource anchor for the DB node.
  final pulumi.Input<String> ociResourceAnchorName;
  /// OCID of the DB node.
  final pulumi.Input<String> ocid;
  /// Size of the block storage volume, in gigabytes (GB), that's allocated for the DB system. This attribute applies only for virtual machine DB systems.
  final pulumi.Input<int> softwareStorageSize;
  /// Current status of the DB node.
  final pulumi.Input<String> status;
  /// Additional information about the status of the DB node.
  final pulumi.Input<String> statusReason;
  /// End date and time of the maintenance window.
  final pulumi.Input<String> timeMaintenanceWindowEnd;
  /// Start date and time of the maintenance window.
  final pulumi.Input<String> timeMaintenanceWindowStart;
  /// Total number of CPU cores reserved on the DB node.
  final pulumi.Input<int> totalCpuCoreCount;
  /// OCID of the second VNIC.
  final pulumi.Input<String> vnic2Id;
  /// OCID of the VNIC.
  final pulumi.Input<String> vnicId;

  /// Creates a new [GetDbNodesDbNode].
  /// [additionalDetails] Additional information about the planned maintenance.
  /// [arn] Amazon Resource Name (ARN) of the DB node.
  /// [backupIpId] Oracle Cloud ID (OCID) of the backup IP address that's associated with the DB node.
  /// [backupVnic2Id] OCID of the second backup virtual network interface card (VNIC) for the DB node.
  /// [backupVnicId] OCID of the backup VNIC for the DB node.
  /// [cpuCoreCount] Number of CPU cores enabled on the DB node.
  /// [createdAt] Date and time when the DB node was created.
  /// [dbNodeStorageSize] Amount of local node storage, in gigabytes (GB), that's allocated on the DB node.
  /// [dbServerId] Unique identifier of the database server that's associated with the DB node.
  /// [dbSystemId] OCID of the DB system.
  /// [faultDomain] Name of the fault domain where the DB node is located.
  /// [hostIpId] OCID of the host IP address that's associated with the DB node.
  /// [hostname] Host name for the DB node.
  /// [id] Unique identifier of the DB node.
  /// [maintenanceType] Type of maintenance the DB node is undergoing.
  /// [memorySize] Amount of memory, in gigabytes (GB), that's allocated on the DB node.
  /// [ociResourceAnchorName] Name of the OCI resource anchor for the DB node.
  /// [ocid] OCID of the DB node.
  /// [softwareStorageSize] Size of the block storage volume, in gigabytes (GB), that's allocated for the DB system. This attribute applies only for virtual machine DB systems.
  /// [status] Current status of the DB node.
  /// [statusReason] Additional information about the status of the DB node.
  /// [timeMaintenanceWindowEnd] End date and time of the maintenance window.
  /// [timeMaintenanceWindowStart] Start date and time of the maintenance window.
  /// [totalCpuCoreCount] Total number of CPU cores reserved on the DB node.
  /// [vnic2Id] OCID of the second VNIC.
  /// [vnicId] OCID of the VNIC.
  const GetDbNodesDbNode({
    required this.additionalDetails,
    required this.arn,
    required this.backupIpId,
    required this.backupVnic2Id,
    required this.backupVnicId,
    required this.cpuCoreCount,
    required this.createdAt,
    required this.dbNodeStorageSize,
    required this.dbServerId,
    required this.dbSystemId,
    required this.faultDomain,
    required this.hostIpId,
    required this.hostname,
    required this.id,
    required this.maintenanceType,
    required this.memorySize,
    required this.ociResourceAnchorName,
    required this.ocid,
    required this.softwareStorageSize,
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
      'cpuCoreCount': cpuCoreCount,
      'createdAt': createdAt,
      'dbNodeStorageSize': dbNodeStorageSize,
      'dbServerId': dbServerId,
      'dbSystemId': dbSystemId,
      'faultDomain': faultDomain,
      'hostIpId': hostIpId,
      'hostname': hostname,
      'id': id,
      'maintenanceType': maintenanceType,
      'memorySize': memorySize,
      'ociResourceAnchorName': ociResourceAnchorName,
      'ocid': ocid,
      'softwareStorageSize': softwareStorageSize,
      'status': status,
      'statusReason': statusReason,
      'timeMaintenanceWindowEnd': timeMaintenanceWindowEnd,
      'timeMaintenanceWindowStart': timeMaintenanceWindowStart,
      'totalCpuCoreCount': totalCpuCoreCount,
      'vnic2Id': vnic2Id,
      'vnicId': vnicId,
    };
  }

  factory GetDbNodesDbNode.fromMap(Map<String, dynamic> map) {
    return GetDbNodesDbNode(
      additionalDetails: pulumi.Input.fromValue(map['additionalDetails'] as String),
      arn: pulumi.Input.fromValue(map['arn'] as String),
      backupIpId: pulumi.Input.fromValue(map['backupIpId'] as String),
      backupVnic2Id: pulumi.Input.fromValue(map['backupVnic2Id'] as String),
      backupVnicId: pulumi.Input.fromValue(map['backupVnicId'] as String),
      cpuCoreCount: pulumi.Input.fromValue(map['cpuCoreCount'] as int),
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      dbNodeStorageSize: pulumi.Input.fromValue(map['dbNodeStorageSize'] as int),
      dbServerId: pulumi.Input.fromValue(map['dbServerId'] as String),
      dbSystemId: pulumi.Input.fromValue(map['dbSystemId'] as String),
      faultDomain: pulumi.Input.fromValue(map['faultDomain'] as String),
      hostIpId: pulumi.Input.fromValue(map['hostIpId'] as String),
      hostname: pulumi.Input.fromValue(map['hostname'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      maintenanceType: pulumi.Input.fromValue(map['maintenanceType'] as String),
      memorySize: pulumi.Input.fromValue(map['memorySize'] as int),
      ociResourceAnchorName: pulumi.Input.fromValue(map['ociResourceAnchorName'] as String),
      ocid: pulumi.Input.fromValue(map['ocid'] as String),
      softwareStorageSize: pulumi.Input.fromValue(map['softwareStorageSize'] as int),
      status: pulumi.Input.fromValue(map['status'] as String),
      statusReason: pulumi.Input.fromValue(map['statusReason'] as String),
      timeMaintenanceWindowEnd: pulumi.Input.fromValue(map['timeMaintenanceWindowEnd'] as String),
      timeMaintenanceWindowStart: pulumi.Input.fromValue(map['timeMaintenanceWindowStart'] as String),
      totalCpuCoreCount: pulumi.Input.fromValue(map['totalCpuCoreCount'] as int),
      vnic2Id: pulumi.Input.fromValue(map['vnic2Id'] as String),
      vnicId: pulumi.Input.fromValue(map['vnicId'] as String),
    );
  }
}
