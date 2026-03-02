// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDbNodesDbNode {
  /// Additional information about the planned maintenance.
  final pulumi.Input<String> additionalDetails;
  final pulumi.Input<String> arn;
  /// The Oracle Cloud ID (OCID) of the backup IP address that's associated with the DB node.
  final pulumi.Input<String> backupIpId;
  final pulumi.Input<String> backupVnic2Id;
  /// The OCID of the backup VNIC for the DB node.
  final pulumi.Input<String> backupVnicId;
  /// The number of CPU cores enabled on the DB node.
  final pulumi.Input<int> cpuCoreCount;
  /// The date and time when the DB node was created.
  final pulumi.Input<String> createdAt;
  final pulumi.Input<int> dbNodeStorageSize;
  /// The unique identifier of the database server that's associated with the DB node.
  final pulumi.Input<String> dbServerId;
  /// The OCID of the DB system.
  final pulumi.Input<String> dbSystemId;
  /// The name of the fault domain where the DB node is located.
  final pulumi.Input<String> faultDomain;
  /// The OCID of the host IP address that's associated with the DB node.
  final pulumi.Input<String> hostIpId;
  /// The host name for the DB node.
  final pulumi.Input<String> hostname;
  final pulumi.Input<String> id;
  /// The type of maintenance the DB node is undergoing.
  final pulumi.Input<String> maintenanceType;
  final pulumi.Input<int> memorySize;
  /// The name of the OCI resource anchor for the DB node.
  final pulumi.Input<String> ociResourceAnchorName;
  /// The OCID of the DB node.
  final pulumi.Input<String> ocid;
  final pulumi.Input<int> softwareStorageSize;
  /// The current status of the DB node.
  final pulumi.Input<String> status;
  /// Additional information about the status of the DB node.
  final pulumi.Input<String> statusReason;
  /// The end date and time of the maintenance window.
  final pulumi.Input<String> timeMaintenanceWindowEnd;
  /// The start date and time of the maintenance window.
  final pulumi.Input<String> timeMaintenanceWindowStart;
  /// The total number of CPU cores reserved on the DB node.
  final pulumi.Input<int> totalCpuCoreCount;
  final pulumi.Input<String> vnic2Id;
  /// The OCID of the VNIC.
  final pulumi.Input<String> vnicId;

  /// Creates a new [GetDbNodesDbNode].
  /// [additionalDetails] Additional information about the planned maintenance.
  /// [arn] Required.
  /// [backupIpId] The Oracle Cloud ID (OCID) of the backup IP address that's associated with the DB node.
  /// [backupVnic2Id] Required.
  /// [backupVnicId] The OCID of the backup VNIC for the DB node.
  /// [cpuCoreCount] The number of CPU cores enabled on the DB node.
  /// [createdAt] The date and time when the DB node was created.
  /// [dbNodeStorageSize] Required.
  /// [dbServerId] The unique identifier of the database server that's associated with the DB node.
  /// [dbSystemId] The OCID of the DB system.
  /// [faultDomain] The name of the fault domain where the DB node is located.
  /// [hostIpId] The OCID of the host IP address that's associated with the DB node.
  /// [hostname] The host name for the DB node.
  /// [id] Required.
  /// [maintenanceType] The type of maintenance the DB node is undergoing.
  /// [memorySize] Required.
  /// [ociResourceAnchorName] The name of the OCI resource anchor for the DB node.
  /// [ocid] The OCID of the DB node.
  /// [softwareStorageSize] Required.
  /// [status] The current status of the DB node.
  /// [statusReason] Additional information about the status of the DB node.
  /// [timeMaintenanceWindowEnd] The end date and time of the maintenance window.
  /// [timeMaintenanceWindowStart] The start date and time of the maintenance window.
  /// [totalCpuCoreCount] The total number of CPU cores reserved on the DB node.
  /// [vnic2Id] Required.
  /// [vnicId] The OCID of the VNIC.
  GetDbNodesDbNode({
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
      additionalDetails: (map['additionalDetails'] as String).input(),
      arn: (map['arn'] as String).input(),
      backupIpId: (map['backupIpId'] as String).input(),
      backupVnic2Id: (map['backupVnic2Id'] as String).input(),
      backupVnicId: (map['backupVnicId'] as String).input(),
      cpuCoreCount: (map['cpuCoreCount'] as int).input(),
      createdAt: (map['createdAt'] as String).input(),
      dbNodeStorageSize: (map['dbNodeStorageSize'] as int).input(),
      dbServerId: (map['dbServerId'] as String).input(),
      dbSystemId: (map['dbSystemId'] as String).input(),
      faultDomain: (map['faultDomain'] as String).input(),
      hostIpId: (map['hostIpId'] as String).input(),
      hostname: (map['hostname'] as String).input(),
      id: (map['id'] as String).input(),
      maintenanceType: (map['maintenanceType'] as String).input(),
      memorySize: (map['memorySize'] as int).input(),
      ociResourceAnchorName: (map['ociResourceAnchorName'] as String).input(),
      ocid: (map['ocid'] as String).input(),
      softwareStorageSize: (map['softwareStorageSize'] as int).input(),
      status: (map['status'] as String).input(),
      statusReason: (map['statusReason'] as String).input(),
      timeMaintenanceWindowEnd: (map['timeMaintenanceWindowEnd'] as String).input(),
      timeMaintenanceWindowStart: (map['timeMaintenanceWindowStart'] as String).input(),
      totalCpuCoreCount: (map['totalCpuCoreCount'] as int).input(),
      vnic2Id: (map['vnic2Id'] as String).input(),
      vnicId: (map['vnicId'] as String).input(),
    );
  }
}

