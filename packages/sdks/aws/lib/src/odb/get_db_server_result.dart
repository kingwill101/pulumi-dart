// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_db_server_db_server_patching_detail.dart';

/// Result data returned by getDbServer.
class GetDbServerResult {
  /// List of unique identifiers for the Autonomous VMs associated with this database server.
  final List<String>? autonomousVirtualMachineIds;
  /// OCID of the autonomous VM clusters that are associated with the database server.
  final List<String>? autonomousVmClusterIds;
  final String? cloudExadataInfrastructureId;
  /// Compute model of the database server.
  final String? computeModel;
  /// Number of CPU cores enabled on the database server.
  final int? cpuCoreCount;
  /// Date and time when the database server was created.
  final String? createdAt;
  /// Allocated local node storage in GBs on the database server.
  final int? dbNodeStorageSizeInGbs;
  /// Scheduling details for the quarterly maintenance window. Patching and system updates take place during the maintenance window.
  final List<GetDbServerDbServerPatchingDetail>? dbServerPatchingDetails;
  /// Display name of the database server.
  final String? displayName;
  /// Exadata infrastructure ID of the database server.
  final String? exadataInfrastructureId;
  final String? id;
  /// Total number of CPU cores available.
  final int? maxCpuCount;
  /// Total local node storage available in GBs.
  final int? maxDbNodeStorageInGbs;
  /// Total memory available in GBs.
  final int? maxMemoryInGbs;
  /// Allocated memory in GBs on the database server.
  final int? memorySizeInGbs;
  /// Name of the OCI resource anchor.
  final String? ociResourceAnchorName;
  /// OCID of the database server to retrieve information about.
  final String? ocid;
  final String? region;
  /// Shape of the database server. The shape determines the amount of CPU, storage, and memory resources available.
  final String? shape;
  /// Status of the database server.
  final String? status;
  /// Additional information about the current status of the database server.
  final String? statusReason;
  /// OCID of the VM clusters that are associated with the database server.
  final List<String>? vmClusterIds;

  /// Creates a new [GetDbServerResult].
  /// [autonomousVirtualMachineIds] List of unique identifiers for the Autonomous VMs associated with this database server.
  /// [autonomousVmClusterIds] OCID of the autonomous VM clusters that are associated with the database server.
  /// [cloudExadataInfrastructureId] Optional.
  /// [computeModel] Compute model of the database server.
  /// [cpuCoreCount] Number of CPU cores enabled on the database server.
  /// [createdAt] Date and time when the database server was created.
  /// [dbNodeStorageSizeInGbs] Allocated local node storage in GBs on the database server.
  /// [dbServerPatchingDetails] Scheduling details for the quarterly maintenance window. Patching and system updates take place during the maintenance window.
  /// [displayName] Display name of the database server.
  /// [exadataInfrastructureId] Exadata infrastructure ID of the database server.
  /// [id] Optional.
  /// [maxCpuCount] Total number of CPU cores available.
  /// [maxDbNodeStorageInGbs] Total local node storage available in GBs.
  /// [maxMemoryInGbs] Total memory available in GBs.
  /// [memorySizeInGbs] Allocated memory in GBs on the database server.
  /// [ociResourceAnchorName] Name of the OCI resource anchor.
  /// [ocid] OCID of the database server to retrieve information about.
  /// [region] Optional.
  /// [shape] Shape of the database server. The shape determines the amount of CPU, storage, and memory resources available.
  /// [status] Status of the database server.
  /// [statusReason] Additional information about the current status of the database server.
  /// [vmClusterIds] OCID of the VM clusters that are associated with the database server.
  const GetDbServerResult({
    this.autonomousVirtualMachineIds,
    this.autonomousVmClusterIds,
    this.cloudExadataInfrastructureId,
    this.computeModel,
    this.cpuCoreCount,
    this.createdAt,
    this.dbNodeStorageSizeInGbs,
    this.dbServerPatchingDetails,
    this.displayName,
    this.exadataInfrastructureId,
    this.id,
    this.maxCpuCount,
    this.maxDbNodeStorageInGbs,
    this.maxMemoryInGbs,
    this.memorySizeInGbs,
    this.ociResourceAnchorName,
    this.ocid,
    this.region,
    this.shape,
    this.status,
    this.statusReason,
    this.vmClusterIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autonomousVirtualMachineIds': ?autonomousVirtualMachineIds,
      'autonomousVmClusterIds': ?autonomousVmClusterIds,
      'cloudExadataInfrastructureId': ?cloudExadataInfrastructureId,
      'computeModel': ?computeModel,
      'cpuCoreCount': ?cpuCoreCount,
      'createdAt': ?createdAt,
      'dbNodeStorageSizeInGbs': ?dbNodeStorageSizeInGbs,
      'dbServerPatchingDetails': ?(() { final guardedValue = dbServerPatchingDetails; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDbServerDbServerPatchingDetail, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'displayName': ?displayName,
      'exadataInfrastructureId': ?exadataInfrastructureId,
      'id': ?id,
      'maxCpuCount': ?maxCpuCount,
      'maxDbNodeStorageInGbs': ?maxDbNodeStorageInGbs,
      'maxMemoryInGbs': ?maxMemoryInGbs,
      'memorySizeInGbs': ?memorySizeInGbs,
      'ociResourceAnchorName': ?ociResourceAnchorName,
      'ocid': ?ocid,
      'region': ?region,
      'shape': ?shape,
      'status': ?status,
      'statusReason': ?statusReason,
      'vmClusterIds': ?vmClusterIds,
    };
  }

  factory GetDbServerResult.fromMap(Map<String, dynamic> map) {
    return GetDbServerResult(
      autonomousVirtualMachineIds: (() { final guardedValue = map['autonomousVirtualMachineIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      autonomousVmClusterIds: (() { final guardedValue = map['autonomousVmClusterIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      cloudExadataInfrastructureId: (() { final guardedValue = map['cloudExadataInfrastructureId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      computeModel: (() { final guardedValue = map['computeModel']; if (guardedValue == null) return null; return guardedValue as String; })(),
      cpuCoreCount: (() { final guardedValue = map['cpuCoreCount']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dbNodeStorageSizeInGbs: (() { final guardedValue = map['dbNodeStorageSizeInGbs']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      dbServerPatchingDetails: (() { final guardedValue = map['dbServerPatchingDetails']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDbServerDbServerPatchingDetail>(guardedValue, (value) => GetDbServerDbServerPatchingDetail.fromMap((value as Map).cast<String, dynamic>())); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      exadataInfrastructureId: (() { final guardedValue = map['exadataInfrastructureId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxCpuCount: (() { final guardedValue = map['maxCpuCount']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      maxDbNodeStorageInGbs: (() { final guardedValue = map['maxDbNodeStorageInGbs']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      maxMemoryInGbs: (() { final guardedValue = map['maxMemoryInGbs']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      memorySizeInGbs: (() { final guardedValue = map['memorySizeInGbs']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      ociResourceAnchorName: (() { final guardedValue = map['ociResourceAnchorName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ocid: (() { final guardedValue = map['ocid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      shape: (() { final guardedValue = map['shape']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      statusReason: (() { final guardedValue = map['statusReason']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vmClusterIds: (() { final guardedValue = map['vmClusterIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
