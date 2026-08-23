// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cloud_exadata_infrastructure_customer_contacts_to_send_to_oci.dart';
import 'get_cloud_exadata_infrastructure_maintenance_window.dart';

/// Result data returned by getCloudExadataInfrastructure.
class GetCloudExadataInfrastructureResult {
  /// Number of storage servers requested for the Exadata infrastructure.
  final int activatedStorageCount;
  /// Number of storage servers requested for the Exadata infrastructure.
  final int additionalStorageCount;
  /// Amazon Resource Name (ARN) for the Exadata infrastructure.
  final String arn;
  /// Name of the Availability Zone (AZ) where the Exadata infrastructure is located.
  final String availabilityZone;
  /// AZ ID of the AZ where the Exadata infrastructure is located.
  final String availabilityZoneId;
  /// Amount of available storage, in gigabytes (GB), for the Exadata infrastructure.
  final int availableStorageSizeInGbs;
  /// Number of database servers for the Exadata infrastructure.
  final int computeCount;
  /// OCI compute model used when you create or clone an instance: ECPU or OCPU. An ECPU is an abstracted measure of compute resources. ECPUs are based on the number of cores elastically allocated from a pool of compute and storage servers. An OCPU is a legacy physical measure of compute resources. OCPUs are based on the physical core of a processor with hyper-threading enabled.
  final String computeModel;
  /// Total number of CPU cores that are allocated to the Exadata infrastructure.
  final int cpuCount;
  /// Time when the Exadata infrastructure was created.
  final String createdAt;
  /// Email addresses of contacts to receive notification from Oracle about maintenance updates for the Exadata infrastructure.
  final List<GetCloudExadataInfrastructureCustomerContactsToSendToOci> customerContactsToSendToOcis;
  /// Size of the Exadata infrastructure's data disk group, in terabytes (TB).
  final double dataStorageSizeInTbs;
  /// Database server model type of the Exadata infrastructure. For the list of valid model names, use the ListDbSystemShapes operation.
  final String databaseServerType;
  /// Size of the storage available on each database node, in gigabytes (GB).
  final int dbNodeStorageSizeInGbs;
  /// Version of the Exadata infrastructure.
  final String dbServerVersion;
  /// Display name of the Exadata infrastructure.
  final String displayName;
  /// Unique identifier of the Exadata infrastructure.
  final String id;
  /// Oracle Cloud Identifier (OCID) of the last maintenance run for the Exadata infrastructure.
  final String lastMaintenanceRunId;
  /// Scheduling details of the maintenance window. Patching and system updates take place during the maintenance window.
  final List<GetCloudExadataInfrastructureMaintenanceWindow> maintenanceWindows;
  /// Total number of CPU cores available on the Exadata infrastructure.
  final int maxCpuCount;
  /// Total amount of data disk group storage, in terabytes (TB), that's available on the Exadata infrastructure.
  final double maxDataStorageInTbs;
  /// Total amount of local node storage, in gigabytes (GB), that's available on the Exadata infrastructure.
  final int maxDbNodeStorageSizeInGbs;
  /// Total amount of memory, in gigabytes (GB), that's available on the Exadata infrastructure.
  final int maxMemoryInGbs;
  /// Amount of memory, in gigabytes (GB), that's allocated on the Exadata infrastructure.
  final int memorySizeInGbs;
  /// Monthly software version of the database servers installed on the Exadata infrastructure.
  final String monthlyDbServerVersion;
  /// Monthly software version of the storage servers installed on the Exadata infrastructure.
  final String monthlyStorageServerVersion;
  /// OCID of the next maintenance run for the Exadata infrastructure.
  final String nextMaintenanceRunId;
  /// Name of the OCI resource anchor for the Exadata infrastructure.
  final String ociResourceAnchorName;
  /// HTTPS link to the Exadata infrastructure in OCI.
  final String ociUrl;
  /// OCID of the Exadata infrastructure in OCI.
  final String ocid;
  /// Amount of progress made on the current operation on the Exadata infrastructure expressed as a percentage.
  final double percentProgress;
  final String region;
  /// Model name of the Exadata infrastructure.
  final String shape;
  /// Status of the Exadata infrastructure.
  final String status;
  /// Additional information about the status of the Exadata infrastructure.
  final String statusReason;
  /// Number of storage servers that are activated for the Exadata infrastructure.
  final int storageCount;
  /// Storage server model type of the Exadata infrastructure. For the list of valid model names, use the ListDbSystemShapes operation.
  final String storageServerType;
  /// Software version of the storage servers on the Exadata infrastructure.
  final String storageServerVersion;
  /// Map of tags assigned to the Exadata infrastructure.
  final Map<String, String> tags;
  /// Total amount of storage, in gigabytes (GB), on the Exadata infrastructure.
  final int totalStorageSizeInGbs;

  /// Creates a new [GetCloudExadataInfrastructureResult].
  /// [activatedStorageCount] Number of storage servers requested for the Exadata infrastructure.
  /// [additionalStorageCount] Number of storage servers requested for the Exadata infrastructure.
  /// [arn] Amazon Resource Name (ARN) for the Exadata infrastructure.
  /// [availabilityZone] Name of the Availability Zone (AZ) where the Exadata infrastructure is located.
  /// [availabilityZoneId] AZ ID of the AZ where the Exadata infrastructure is located.
  /// [availableStorageSizeInGbs] Amount of available storage, in gigabytes (GB), for the Exadata infrastructure.
  /// [computeCount] Number of database servers for the Exadata infrastructure.
  /// [computeModel] OCI compute model used when you create or clone an instance: ECPU or OCPU. An ECPU is an abstracted measure of compute resources. ECPUs are based on the number of cores elastically allocated from a pool of compute and storage servers. An OCPU is a legacy physical measure of compute resources. OCPUs are based on the physical core of a processor with hyper-threading enabled.
  /// [cpuCount] Total number of CPU cores that are allocated to the Exadata infrastructure.
  /// [createdAt] Time when the Exadata infrastructure was created.
  /// [customerContactsToSendToOcis] Email addresses of contacts to receive notification from Oracle about maintenance updates for the Exadata infrastructure.
  /// [dataStorageSizeInTbs] Size of the Exadata infrastructure's data disk group, in terabytes (TB).
  /// [databaseServerType] Database server model type of the Exadata infrastructure. For the list of valid model names, use the ListDbSystemShapes operation.
  /// [dbNodeStorageSizeInGbs] Size of the storage available on each database node, in gigabytes (GB).
  /// [dbServerVersion] Version of the Exadata infrastructure.
  /// [displayName] Display name of the Exadata infrastructure.
  /// [id] Unique identifier of the Exadata infrastructure.
  /// [lastMaintenanceRunId] Oracle Cloud Identifier (OCID) of the last maintenance run for the Exadata infrastructure.
  /// [maintenanceWindows] Scheduling details of the maintenance window. Patching and system updates take place during the maintenance window.
  /// [maxCpuCount] Total number of CPU cores available on the Exadata infrastructure.
  /// [maxDataStorageInTbs] Total amount of data disk group storage, in terabytes (TB), that's available on the Exadata infrastructure.
  /// [maxDbNodeStorageSizeInGbs] Total amount of local node storage, in gigabytes (GB), that's available on the Exadata infrastructure.
  /// [maxMemoryInGbs] Total amount of memory, in gigabytes (GB), that's available on the Exadata infrastructure.
  /// [memorySizeInGbs] Amount of memory, in gigabytes (GB), that's allocated on the Exadata infrastructure.
  /// [monthlyDbServerVersion] Monthly software version of the database servers installed on the Exadata infrastructure.
  /// [monthlyStorageServerVersion] Monthly software version of the storage servers installed on the Exadata infrastructure.
  /// [nextMaintenanceRunId] OCID of the next maintenance run for the Exadata infrastructure.
  /// [ociResourceAnchorName] Name of the OCI resource anchor for the Exadata infrastructure.
  /// [ociUrl] HTTPS link to the Exadata infrastructure in OCI.
  /// [ocid] OCID of the Exadata infrastructure in OCI.
  /// [percentProgress] Amount of progress made on the current operation on the Exadata infrastructure expressed as a percentage.
  /// [region] Required.
  /// [shape] Model name of the Exadata infrastructure.
  /// [status] Status of the Exadata infrastructure.
  /// [statusReason] Additional information about the status of the Exadata infrastructure.
  /// [storageCount] Number of storage servers that are activated for the Exadata infrastructure.
  /// [storageServerType] Storage server model type of the Exadata infrastructure. For the list of valid model names, use the ListDbSystemShapes operation.
  /// [storageServerVersion] Software version of the storage servers on the Exadata infrastructure.
  /// [tags] Map of tags assigned to the Exadata infrastructure.
  /// [totalStorageSizeInGbs] Total amount of storage, in gigabytes (GB), on the Exadata infrastructure.
  const GetCloudExadataInfrastructureResult({
    required this.activatedStorageCount,
    required this.additionalStorageCount,
    required this.arn,
    required this.availabilityZone,
    required this.availabilityZoneId,
    required this.availableStorageSizeInGbs,
    required this.computeCount,
    required this.computeModel,
    required this.cpuCount,
    required this.createdAt,
    required this.customerContactsToSendToOcis,
    required this.dataStorageSizeInTbs,
    required this.databaseServerType,
    required this.dbNodeStorageSizeInGbs,
    required this.dbServerVersion,
    required this.displayName,
    required this.id,
    required this.lastMaintenanceRunId,
    required this.maintenanceWindows,
    required this.maxCpuCount,
    required this.maxDataStorageInTbs,
    required this.maxDbNodeStorageSizeInGbs,
    required this.maxMemoryInGbs,
    required this.memorySizeInGbs,
    required this.monthlyDbServerVersion,
    required this.monthlyStorageServerVersion,
    required this.nextMaintenanceRunId,
    required this.ociResourceAnchorName,
    required this.ociUrl,
    required this.ocid,
    required this.percentProgress,
    required this.region,
    required this.shape,
    required this.status,
    required this.statusReason,
    required this.storageCount,
    required this.storageServerType,
    required this.storageServerVersion,
    required this.tags,
    required this.totalStorageSizeInGbs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activatedStorageCount': activatedStorageCount,
      'additionalStorageCount': additionalStorageCount,
      'arn': arn,
      'availabilityZone': availabilityZone,
      'availabilityZoneId': availabilityZoneId,
      'availableStorageSizeInGbs': availableStorageSizeInGbs,
      'computeCount': computeCount,
      'computeModel': computeModel,
      'cpuCount': cpuCount,
      'createdAt': createdAt,
      'customerContactsToSendToOcis': pulumi.Input.encodeList<GetCloudExadataInfrastructureCustomerContactsToSendToOci, Map<String, dynamic>>(customerContactsToSendToOcis, (value) => value.toMap()),
      'dataStorageSizeInTbs': dataStorageSizeInTbs,
      'databaseServerType': databaseServerType,
      'dbNodeStorageSizeInGbs': dbNodeStorageSizeInGbs,
      'dbServerVersion': dbServerVersion,
      'displayName': displayName,
      'id': id,
      'lastMaintenanceRunId': lastMaintenanceRunId,
      'maintenanceWindows': pulumi.Input.encodeList<GetCloudExadataInfrastructureMaintenanceWindow, Map<String, dynamic>>(maintenanceWindows, (value) => value.toMap()),
      'maxCpuCount': maxCpuCount,
      'maxDataStorageInTbs': maxDataStorageInTbs,
      'maxDbNodeStorageSizeInGbs': maxDbNodeStorageSizeInGbs,
      'maxMemoryInGbs': maxMemoryInGbs,
      'memorySizeInGbs': memorySizeInGbs,
      'monthlyDbServerVersion': monthlyDbServerVersion,
      'monthlyStorageServerVersion': monthlyStorageServerVersion,
      'nextMaintenanceRunId': nextMaintenanceRunId,
      'ociResourceAnchorName': ociResourceAnchorName,
      'ociUrl': ociUrl,
      'ocid': ocid,
      'percentProgress': percentProgress,
      'region': region,
      'shape': shape,
      'status': status,
      'statusReason': statusReason,
      'storageCount': storageCount,
      'storageServerType': storageServerType,
      'storageServerVersion': storageServerVersion,
      'tags': tags,
      'totalStorageSizeInGbs': totalStorageSizeInGbs,
    };
  }

  factory GetCloudExadataInfrastructureResult.fromMap(Map<String, dynamic> map) {
    return GetCloudExadataInfrastructureResult(
      activatedStorageCount: map['activatedStorageCount'] as int,
      additionalStorageCount: map['additionalStorageCount'] as int,
      arn: map['arn'] as String,
      availabilityZone: map['availabilityZone'] as String,
      availabilityZoneId: map['availabilityZoneId'] as String,
      availableStorageSizeInGbs: map['availableStorageSizeInGbs'] as int,
      computeCount: map['computeCount'] as int,
      computeModel: map['computeModel'] as String,
      cpuCount: map['cpuCount'] as int,
      createdAt: map['createdAt'] as String,
      customerContactsToSendToOcis: pulumi.Input.decodeList<GetCloudExadataInfrastructureCustomerContactsToSendToOci>(map['customerContactsToSendToOcis']!, (value) => GetCloudExadataInfrastructureCustomerContactsToSendToOci.fromMap((value as Map).cast<String, dynamic>())),
      dataStorageSizeInTbs: map['dataStorageSizeInTbs'] as double,
      databaseServerType: map['databaseServerType'] as String,
      dbNodeStorageSizeInGbs: map['dbNodeStorageSizeInGbs'] as int,
      dbServerVersion: map['dbServerVersion'] as String,
      displayName: map['displayName'] as String,
      id: map['id'] as String,
      lastMaintenanceRunId: map['lastMaintenanceRunId'] as String,
      maintenanceWindows: pulumi.Input.decodeList<GetCloudExadataInfrastructureMaintenanceWindow>(map['maintenanceWindows']!, (value) => GetCloudExadataInfrastructureMaintenanceWindow.fromMap((value as Map).cast<String, dynamic>())),
      maxCpuCount: map['maxCpuCount'] as int,
      maxDataStorageInTbs: map['maxDataStorageInTbs'] as double,
      maxDbNodeStorageSizeInGbs: map['maxDbNodeStorageSizeInGbs'] as int,
      maxMemoryInGbs: map['maxMemoryInGbs'] as int,
      memorySizeInGbs: map['memorySizeInGbs'] as int,
      monthlyDbServerVersion: map['monthlyDbServerVersion'] as String,
      monthlyStorageServerVersion: map['monthlyStorageServerVersion'] as String,
      nextMaintenanceRunId: map['nextMaintenanceRunId'] as String,
      ociResourceAnchorName: map['ociResourceAnchorName'] as String,
      ociUrl: map['ociUrl'] as String,
      ocid: map['ocid'] as String,
      percentProgress: map['percentProgress'] as double,
      region: map['region'] as String,
      shape: map['shape'] as String,
      status: map['status'] as String,
      statusReason: map['statusReason'] as String,
      storageCount: map['storageCount'] as int,
      storageServerType: map['storageServerType'] as String,
      storageServerVersion: map['storageServerVersion'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      totalStorageSizeInGbs: map['totalStorageSizeInGbs'] as int,
    );
  }
}
