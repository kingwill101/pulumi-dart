// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_db_servers_db_server_db_server_patching_detail.dart';

class GetDbServersDbServer {
  /// A list of unique identifiers for the Autonomous VMs.
  final pulumi.Input<List<String>> autonomousVirtualMachineIds;
  /// A list of identifiers for the Autonomous VM clusters.
  final pulumi.Input<List<String>> autonomousVmClusterIds;
  /// The OCI compute model used when you create or clone an instance: **ECPU** or **OCPU**. ECPUs are based on the number of cores elastically allocated from a pool of compute and storage servers, while OCPUs are based on the physical core of a processor with hyper-threading enabled.
  final pulumi.Input<String> computeModel;
  /// The number of CPU cores enabled on the database server.
  final pulumi.Input<int> cpuCoreCount;
  /// The date and time when the database server was created.
  final pulumi.Input<String> createdAt;
  /// The amount of local node storage, in gigabytes (GB), that's allocated on the database server.
  final pulumi.Input<int> dbNodeStorageSizeInGbs;
  /// The scheduling details for the quarterly maintenance window. Patching and system updates take place during the maintenance window.
  final pulumi.Input<List<GetDbServersDbServerDbServerPatchingDetail>> dbServerPatchingDetails;
  /// The user-friendly name of the database server. The name doesn't need to be unique.
  final pulumi.Input<String> displayName;
  /// The ID of the Exadata infrastructure that hosts the database server.
  final pulumi.Input<String> exadataInfrastructureId;
  /// The unique identifier of the database server.
  final pulumi.Input<String> id;
  /// The total number of CPU cores available on the database server.
  final pulumi.Input<int> maxCpuCount;
  /// The total amount of local node storage, in gigabytes (GB), that's available on the database server.
  final pulumi.Input<int> maxDbNodeStorageInGbs;
  /// The total amount of memory, in gigabytes (GB), that's available on the database server.
  final pulumi.Input<int> maxMemoryInGbs;
  /// The amount of memory, in gigabytes (GB), that's allocated on the database server.
  final pulumi.Input<int> memorySizeInGbs;
  /// The name of the OCI resource anchor for the database server.
  final pulumi.Input<String> ociResourceAnchorName;
  /// The OCID of the database server.
  final pulumi.Input<String> ocid;
  /// The hardware system model of the Exadata infrastructure that the database server is hosted on. The shape determines the amount of CPU, storage, and memory resources available.
  final pulumi.Input<String> shape;
  /// The current status of the database server.
  final pulumi.Input<String> status;
  /// Additional information about the status of the database server.
  final pulumi.Input<String> statusReason;
  /// The IDs of the VM clusters that are associated with the database server.
  final pulumi.Input<List<String>> vmClusterIds;

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
    return <String, dynamic>{
      'autonomousVirtualMachineIds': autonomousVirtualMachineIds,
      'autonomousVmClusterIds': autonomousVmClusterIds,
      'computeModel': computeModel,
      'cpuCoreCount': cpuCoreCount,
      'createdAt': createdAt,
      'dbNodeStorageSizeInGbs': dbNodeStorageSizeInGbs,
      'dbServerPatchingDetails': pulumi.Input.mapInputValue<List<GetDbServersDbServerDbServerPatchingDetail>, List<Map<String, dynamic>>>(dbServerPatchingDetails, (value) => pulumi.Input.encodeList<GetDbServersDbServerDbServerPatchingDetail, Map<String, dynamic>>(value, (value) => value.toMap())),
      'displayName': displayName,
      'exadataInfrastructureId': exadataInfrastructureId,
      'id': id,
      'maxCpuCount': maxCpuCount,
      'maxDbNodeStorageInGbs': maxDbNodeStorageInGbs,
      'maxMemoryInGbs': maxMemoryInGbs,
      'memorySizeInGbs': memorySizeInGbs,
      'ociResourceAnchorName': ociResourceAnchorName,
      'ocid': ocid,
      'shape': shape,
      'status': status,
      'statusReason': statusReason,
      'vmClusterIds': vmClusterIds,
    };
  }

  factory GetDbServersDbServer.fromMap(Map<String, dynamic> map) {
    return GetDbServersDbServer(
      autonomousVirtualMachineIds: pulumi.Input.fromValue((map['autonomousVirtualMachineIds'] as List).cast<String>()),
      autonomousVmClusterIds: pulumi.Input.fromValue((map['autonomousVmClusterIds'] as List).cast<String>()),
      computeModel: pulumi.Input.fromValue(map['computeModel'] as String),
      cpuCoreCount: pulumi.Input.fromValue(map['cpuCoreCount'] as int),
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      dbNodeStorageSizeInGbs: pulumi.Input.fromValue(map['dbNodeStorageSizeInGbs'] as int),
      dbServerPatchingDetails: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDbServersDbServerDbServerPatchingDetail>(map['dbServerPatchingDetails']!, (value) => GetDbServersDbServerDbServerPatchingDetail.fromMap((value as Map).cast<String, dynamic>()))),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      exadataInfrastructureId: pulumi.Input.fromValue(map['exadataInfrastructureId'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      maxCpuCount: pulumi.Input.fromValue(map['maxCpuCount'] as int),
      maxDbNodeStorageInGbs: pulumi.Input.fromValue(map['maxDbNodeStorageInGbs'] as int),
      maxMemoryInGbs: pulumi.Input.fromValue(map['maxMemoryInGbs'] as int),
      memorySizeInGbs: pulumi.Input.fromValue(map['memorySizeInGbs'] as int),
      ociResourceAnchorName: pulumi.Input.fromValue(map['ociResourceAnchorName'] as String),
      ocid: pulumi.Input.fromValue(map['ocid'] as String),
      shape: pulumi.Input.fromValue(map['shape'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      statusReason: pulumi.Input.fromValue(map['statusReason'] as String),
      vmClusterIds: pulumi.Input.fromValue((map['vmClusterIds'] as List).cast<String>()),
    );
  }
}

