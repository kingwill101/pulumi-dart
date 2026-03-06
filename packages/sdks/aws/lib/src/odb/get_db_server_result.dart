// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_db_server_db_server_patching_detail.dart';

/// Result data returned by getDbServer.
class GetDbServerResult {
  /// The list of unique identifiers for the Autonomous VMs associated with this database server.
  final List<String> autonomousVirtualMachineIds;
  /// The OCID of the autonomous VM clusters that are associated with the database server.
  final List<String> autonomousVmClusterIds;
  final String cloudExadataInfrastructureId;
  /// The compute model of the database server.
  final String computeModel;
  /// The number of CPU cores enabled on the database server.
  final int cpuCoreCount;
  /// The date and time when the database server was created.
  final String createdAt;
  /// The allocated local node storage in GBs on the database server.
  final int dbNodeStorageSizeInGbs;
  /// The scheduling details for the quarterly maintenance window. Patching and system updates take place during the maintenance window.
  final List<GetDbServerDbServerPatchingDetail> dbServerPatchingDetails;
  /// The display name of the database server.
  final String displayName;
  /// The exadata infrastructure ID of the database server.
  final String exadataInfrastructureId;
  final String id;
  /// The total number of CPU cores available.
  final int maxCpuCount;
  /// The total local node storage available in GBs.
  final int maxDbNodeStorageInGbs;
  /// The total memory available in GBs.
  final int maxMemoryInGbs;
  /// The allocated memory in GBs on the database server.
  final int memorySizeInGbs;
  /// The name of the OCI resource anchor.
  final String ociResourceAnchorName;
  /// The OCID of the database server to retrieve information about.
  final String ocid;
  final String region;
  /// The shape of the database server. The shape determines the amount of CPU, storage, and memory resources available.
  final String shape;
  /// The status of the database server.
  final String status;
  /// Additional information about the current status of the database server.
  final String statusReason;
  /// The OCID of the VM clusters that are associated with the database server.
  final List<String> vmClusterIds;

  /// Creates a new [GetDbServerResult].
  /// [autonomousVirtualMachineIds] The list of unique identifiers for the Autonomous VMs associated with this database server.
  /// [autonomousVmClusterIds] The OCID of the autonomous VM clusters that are associated with the database server.
  /// [cloudExadataInfrastructureId] Required.
  /// [computeModel] The compute model of the database server.
  /// [cpuCoreCount] The number of CPU cores enabled on the database server.
  /// [createdAt] The date and time when the database server was created.
  /// [dbNodeStorageSizeInGbs] The allocated local node storage in GBs on the database server.
  /// [dbServerPatchingDetails] The scheduling details for the quarterly maintenance window. Patching and system updates take place during the maintenance window.
  /// [displayName] The display name of the database server.
  /// [exadataInfrastructureId] The exadata infrastructure ID of the database server.
  /// [id] Required.
  /// [maxCpuCount] The total number of CPU cores available.
  /// [maxDbNodeStorageInGbs] The total local node storage available in GBs.
  /// [maxMemoryInGbs] The total memory available in GBs.
  /// [memorySizeInGbs] The allocated memory in GBs on the database server.
  /// [ociResourceAnchorName] The name of the OCI resource anchor.
  /// [ocid] The OCID of the database server to retrieve information about.
  /// [region] Required.
  /// [shape] The shape of the database server. The shape determines the amount of CPU, storage, and memory resources available.
  /// [status] The status of the database server.
  /// [statusReason] Additional information about the current status of the database server.
  /// [vmClusterIds] The OCID of the VM clusters that are associated with the database server.
  const GetDbServerResult({
    required this.autonomousVirtualMachineIds,
    required this.autonomousVmClusterIds,
    required this.cloudExadataInfrastructureId,
    required this.computeModel,
    required this.cpuCoreCount,
    required this.createdAt,
    required this.dbNodeStorageSizeInGbs,
    required this.dbServerPatchingDetails,
    required this.displayName,
    required this.exadataInfrastructureId,
    required this.id,
    required this.maxCpuCount,
    required this.maxDbNodeStorageInGbs,
    required this.maxMemoryInGbs,
    required this.memorySizeInGbs,
    required this.ociResourceAnchorName,
    required this.ocid,
    required this.region,
    required this.shape,
    required this.status,
    required this.statusReason,
    required this.vmClusterIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autonomousVirtualMachineIds': autonomousVirtualMachineIds,
      'autonomousVmClusterIds': autonomousVmClusterIds,
      'cloudExadataInfrastructureId': cloudExadataInfrastructureId,
      'computeModel': computeModel,
      'cpuCoreCount': cpuCoreCount,
      'createdAt': createdAt,
      'dbNodeStorageSizeInGbs': dbNodeStorageSizeInGbs,
      'dbServerPatchingDetails': pulumi.Input.encodeList<GetDbServerDbServerPatchingDetail, Map<String, dynamic>>(dbServerPatchingDetails, (value) => value.toMap()),
      'displayName': displayName,
      'exadataInfrastructureId': exadataInfrastructureId,
      'id': id,
      'maxCpuCount': maxCpuCount,
      'maxDbNodeStorageInGbs': maxDbNodeStorageInGbs,
      'maxMemoryInGbs': maxMemoryInGbs,
      'memorySizeInGbs': memorySizeInGbs,
      'ociResourceAnchorName': ociResourceAnchorName,
      'ocid': ocid,
      'region': region,
      'shape': shape,
      'status': status,
      'statusReason': statusReason,
      'vmClusterIds': vmClusterIds,
    };
  }

  factory GetDbServerResult.fromMap(Map<String, dynamic> map) {
    return GetDbServerResult(
      autonomousVirtualMachineIds: (map['autonomousVirtualMachineIds'] as List).cast<String>(),
      autonomousVmClusterIds: (map['autonomousVmClusterIds'] as List).cast<String>(),
      cloudExadataInfrastructureId: map['cloudExadataInfrastructureId'] as String,
      computeModel: map['computeModel'] as String,
      cpuCoreCount: map['cpuCoreCount'] as int,
      createdAt: map['createdAt'] as String,
      dbNodeStorageSizeInGbs: map['dbNodeStorageSizeInGbs'] as int,
      dbServerPatchingDetails: pulumi.Input.decodeList<GetDbServerDbServerPatchingDetail>(map['dbServerPatchingDetails']!, (value) => GetDbServerDbServerPatchingDetail.fromMap((value as Map).cast<String, dynamic>())),
      displayName: map['displayName'] as String,
      exadataInfrastructureId: map['exadataInfrastructureId'] as String,
      id: map['id'] as String,
      maxCpuCount: map['maxCpuCount'] as int,
      maxDbNodeStorageInGbs: map['maxDbNodeStorageInGbs'] as int,
      maxMemoryInGbs: map['maxMemoryInGbs'] as int,
      memorySizeInGbs: map['memorySizeInGbs'] as int,
      ociResourceAnchorName: map['ociResourceAnchorName'] as String,
      ocid: map['ocid'] as String,
      region: map['region'] as String,
      shape: map['shape'] as String,
      status: map['status'] as String,
      statusReason: map['statusReason'] as String,
      vmClusterIds: (map['vmClusterIds'] as List).cast<String>(),
    );
  }
}

