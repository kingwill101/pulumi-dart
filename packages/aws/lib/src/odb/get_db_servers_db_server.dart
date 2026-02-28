// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_db_servers_db_server_db_server_patching_detail.dart';

class GetDbServersDbServer {
  /// A list of unique identifiers for the Autonomous VMs.
  final List<String> autonomousVirtualMachineIds;

  /// A list of identifiers for the Autonomous VM clusters.
  final List<String> autonomousVmClusterIds;

  /// The OCI compute model used when you create or clone an instance: **ECPU** or **OCPU**. ECPUs are based on the number of cores elastically allocated from a pool of compute and storage servers, while OCPUs are based on the physical core of a processor with hyper-threading enabled.
  final String computeModel;

  /// The number of CPU cores enabled on the database server.
  final int cpuCoreCount;

  /// The date and time when the database server was created.
  final String createdAt;

  /// The amount of local node storage, in gigabytes (GB), that's allocated on the database server.
  final int dbNodeStorageSizeInGbs;

  /// The scheduling details for the quarterly maintenance window. Patching and system updates take place during the maintenance window.
  final List<GetDbServersDbServerDbServerPatchingDetail>
      dbServerPatchingDetails;

  /// The user-friendly name of the database server. The name doesn't need to be unique.
  final String displayName;

  /// The ID of the Exadata infrastructure that hosts the database server.
  final String exadataInfrastructureId;

  /// The unique identifier of the database server.
  final String id;

  /// The total number of CPU cores available on the database server.
  final int maxCpuCount;

  /// The total amount of local node storage, in gigabytes (GB), that's available on the database server.
  final int maxDbNodeStorageInGbs;

  /// The total amount of memory, in gigabytes (GB), that's available on the database server.
  final int maxMemoryInGbs;

  /// The amount of memory, in gigabytes (GB), that's allocated on the database server.
  final int memorySizeInGbs;

  /// The name of the OCI resource anchor for the database server.
  final String ociResourceAnchorName;

  /// The OCID of the database server.
  final String ocid;

  /// The hardware system model of the Exadata infrastructure that the database server is hosted on. The shape determines the amount of CPU, storage, and memory resources available.
  final String shape;

  /// The current status of the database server.
  final String status;

  /// Additional information about the status of the database server.
  final String statusReason;

  /// The IDs of the VM clusters that are associated with the database server.
  final List<String> vmClusterIds;

  /// Creates a new [GetDbServersDbServer].
  /// [autonomousVirtualMachineIds] A list of unique identifiers for the Autonomous VMs.
  /// [autonomousVmClusterIds] A list of identifiers for the Autonomous VM clusters.
  /// [computeModel] The OCI compute model used when you create or clone an instance: **ECPU** or **OCPU**. ECPUs are based on the number of cores elastically allocated from a pool of compute and storage servers, while OCPUs are based on the physical core of a processor with hyper-threading enabled.
  /// [cpuCoreCount] The number of CPU cores enabled on the database server.
  /// [createdAt] The date and time when the database server was created.
  /// [dbNodeStorageSizeInGbs] The amount of local node storage, in gigabytes (GB), that's allocated on the database server.
  /// [dbServerPatchingDetails] The scheduling details for the quarterly maintenance window. Patching and system updates take place during the maintenance window.
  /// [displayName] The user-friendly name of the database server. The name doesn't need to be unique.
  /// [exadataInfrastructureId] The ID of the Exadata infrastructure that hosts the database server.
  /// [id] The unique identifier of the database server.
  /// [maxCpuCount] The total number of CPU cores available on the database server.
  /// [maxDbNodeStorageInGbs] The total amount of local node storage, in gigabytes (GB), that's available on the database server.
  /// [maxMemoryInGbs] The total amount of memory, in gigabytes (GB), that's available on the database server.
  /// [memorySizeInGbs] The amount of memory, in gigabytes (GB), that's allocated on the database server.
  /// [ociResourceAnchorName] The name of the OCI resource anchor for the database server.
  /// [ocid] The OCID of the database server.
  /// [shape] The hardware system model of the Exadata infrastructure that the database server is hosted on. The shape determines the amount of CPU, storage, and memory resources available.
  /// [status] The current status of the database server.
  /// [statusReason] Additional information about the status of the database server.
  /// [vmClusterIds] The IDs of the VM clusters that are associated with the database server.
  GetDbServersDbServer({
    required this.autonomousVirtualMachineIds,
    required this.autonomousVmClusterIds,
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
    required this.shape,
    required this.status,
    required this.statusReason,
    required this.vmClusterIds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['autonomousVirtualMachineIds'] = autonomousVirtualMachineIds;
    map['autonomousVmClusterIds'] = autonomousVmClusterIds;
    map['computeModel'] = computeModel;
    map['cpuCoreCount'] = cpuCoreCount;
    map['createdAt'] = createdAt;
    map['dbNodeStorageSizeInGbs'] = dbNodeStorageSizeInGbs;
    map['dbServerPatchingDetails'] = pulumi.Input.encodeList<
            GetDbServersDbServerDbServerPatchingDetail, Map<String, dynamic>>(
        dbServerPatchingDetails, (value) => value.toMap());
    map['displayName'] = displayName;
    map['exadataInfrastructureId'] = exadataInfrastructureId;
    map['id'] = id;
    map['maxCpuCount'] = maxCpuCount;
    map['maxDbNodeStorageInGbs'] = maxDbNodeStorageInGbs;
    map['maxMemoryInGbs'] = maxMemoryInGbs;
    map['memorySizeInGbs'] = memorySizeInGbs;
    map['ociResourceAnchorName'] = ociResourceAnchorName;
    map['ocid'] = ocid;
    map['shape'] = shape;
    map['status'] = status;
    map['statusReason'] = statusReason;
    map['vmClusterIds'] = vmClusterIds;
    return map;
  }

  factory GetDbServersDbServer.fromMap(Map<String, dynamic> map) {
    return GetDbServersDbServer(
      autonomousVirtualMachineIds:
          (map['autonomousVirtualMachineIds'] as List).cast<String>(),
      autonomousVmClusterIds:
          (map['autonomousVmClusterIds'] as List).cast<String>(),
      computeModel: map['computeModel'] as String,
      cpuCoreCount: map['cpuCoreCount'] as int,
      createdAt: map['createdAt'] as String,
      dbNodeStorageSizeInGbs: map['dbNodeStorageSizeInGbs'] as int,
      dbServerPatchingDetails:
          pulumi.Input.decodeList<GetDbServersDbServerDbServerPatchingDetail>(
              map['dbServerPatchingDetails'],
              (value) => GetDbServersDbServerDbServerPatchingDetail.fromMap(
                  (value as Map).cast<String, dynamic>())),
      displayName: map['displayName'] as String,
      exadataInfrastructureId: map['exadataInfrastructureId'] as String,
      id: map['id'] as String,
      maxCpuCount: map['maxCpuCount'] as int,
      maxDbNodeStorageInGbs: map['maxDbNodeStorageInGbs'] as int,
      maxMemoryInGbs: map['maxMemoryInGbs'] as int,
      memorySizeInGbs: map['memorySizeInGbs'] as int,
      ociResourceAnchorName: map['ociResourceAnchorName'] as String,
      ocid: map['ocid'] as String,
      shape: map['shape'] as String,
      status: map['status'] as String,
      statusReason: map['statusReason'] as String,
      vmClusterIds: (map['vmClusterIds'] as List).cast<String>(),
    );
  }
}
