// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_cloud_exadata_infrastructure_customer_contacts_to_send_to_oci/get_cloud_exadata_infrastructure_customer_contacts_to_send_to_oci.dart';
import '../get_cloud_exadata_infrastructure_maintenance_window/get_cloud_exadata_infrastructure_maintenance_window.dart';

/// Result data returned by getCloudExadataInfrastructure.
class GetCloudExadataInfrastructureResult {
  /// The number of storage servers requested for the Exadata infrastructure.
  final int activatedStorageCount;

  /// The number of storage servers requested for the Exadata infrastructure.
  final int additionalStorageCount;

  /// The Amazon Resource Name (ARN) for the Exadata infrastructure.
  final String arn;

  /// The name of the Availability Zone (AZ) where the Exadata infrastructure is located.
  final String availabilityZone;

  /// The AZ ID of the AZ where the Exadata infrastructure is located.
  final String availabilityZoneId;
  final int availableStorageSizeInGbs;

  /// The number of database servers for the Exadata infrastructure.
  final int computeCount;

  /// The OCI compute model used when you create or clone an instance: ECPU or OCPU. An ECPU is an abstracted measure of compute resources. ECPUs are based on the number of cores elastically allocated from a pool of compute and storage servers. An OCPU is a legacy physical measure of compute resources. OCPUs are based on the physical core of a processor with hyper-threading enabled.
  final String computeModel;

  /// The total number of CPU cores that are allocated to the Exadata infrastructure.
  final int cpuCount;

  /// The time when the Exadata infrastructure was created.
  final String createdAt;
  final List<GetCloudExadataInfrastructureCustomerContactsToSendToOci>
      customerContactsToSendToOcis;

  /// The size of the Exadata infrastructure's data disk group, in terabytes (TB).
  final double dataStorageSizeInTbs;

  /// The database server model type of the Exadata infrastructure. For the list of valid model names, use the ListDbSystemShapes operation.
  final String databaseServerType;

  /// The size of the storage available on each database node, in gigabytes (GB).
  final int dbNodeStorageSizeInGbs;

  /// The version of the Exadata infrastructure.
  final String dbServerVersion;

  /// The display name of the Exadata infrastructure.
  final String displayName;

  /// The unique identifier of the Exadata infrastructure.
  final String id;

  /// The Oracle Cloud Identifier (OCID) of the last maintenance run for the Exadata infrastructure.
  final String lastMaintenanceRunId;

  /// The scheduling details of the maintenance window. Patching and system updates take place during the maintenance window.
  final List<GetCloudExadataInfrastructureMaintenanceWindow> maintenanceWindows;

  /// The total number of CPU cores available on the Exadata infrastructure.
  final int maxCpuCount;

  /// The total amount of data disk group storage, in terabytes (TB), that's available on the Exadata infrastructure.
  final double maxDataStorageInTbs;

  /// The total amount of local node storage, in gigabytes (GB), that's available on the Exadata infrastructure.
  final int maxDbNodeStorageSizeInGbs;

  /// The total amount of memory, in gigabytes (GB), that's available on the Exadata infrastructure.
  final int maxMemoryInGbs;

  /// The amount of memory, in gigabytes (GB), that's allocated on the Exadata infrastructure.
  final int memorySizeInGbs;

  /// The monthly software version of the database servers installed on the Exadata infrastructure.
  final String monthlyDbServerVersion;

  /// The monthly software version of the storage servers installed on the Exadata infrastructure.
  final String monthlyStorageServerVersion;

  /// The OCID of the next maintenance run for the Exadata infrastructure.
  final String nextMaintenanceRunId;

  /// The name of the OCI resource anchor for the Exadata infrastructure.
  final String ociResourceAnchorName;

  /// The HTTPS link to the Exadata infrastructure in OCI.
  final String ociUrl;

  /// The OCID of the Exadata infrastructure in OCI.
  final String ocid;

  /// The amount of progress made on the current operation on the Exadata infrastructure expressed as a percentage.
  final double percentProgress;
  final String region;

  /// The model name of the Exadata infrastructure.
  final String shape;

  /// The status of the Exadata infrastructure.
  final String status;

  /// Additional information about the status of the Exadata infrastructure.
  final String statusReason;

  /// The number of storage servers that are activated for the Exadata infrastructure.
  final int storageCount;

  /// The storage server model type of the Exadata infrastructure. For the list of valid model names, use the ListDbSystemShapes operation.
  final String storageServerType;

  /// The software version of the storage servers on the Exadata infrastructure.
  final String storageServerVersion;

  /// (Optional) A map of tags to assign to the exadata infrastructure. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Map<String, String> tags;

  /// The total amount of storage, in gigabytes (GB), on the Exadata infrastructure.
  final int totalStorageSizeInGbs;

  GetCloudExadataInfrastructureResult({
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
    final map = <String, dynamic>{};
    map['activatedStorageCount'] = activatedStorageCount;
    map['additionalStorageCount'] = additionalStorageCount;
    map['arn'] = arn;
    map['availabilityZone'] = availabilityZone;
    map['availabilityZoneId'] = availabilityZoneId;
    map['availableStorageSizeInGbs'] = availableStorageSizeInGbs;
    map['computeCount'] = computeCount;
    map['computeModel'] = computeModel;
    map['cpuCount'] = cpuCount;
    map['createdAt'] = createdAt;
    map['customerContactsToSendToOcis'] = Input.encodeList<
            GetCloudExadataInfrastructureCustomerContactsToSendToOci,
            Map<String, dynamic>>(
        customerContactsToSendToOcis, (value) => value.toMap());
    map['dataStorageSizeInTbs'] = dataStorageSizeInTbs;
    map['databaseServerType'] = databaseServerType;
    map['dbNodeStorageSizeInGbs'] = dbNodeStorageSizeInGbs;
    map['dbServerVersion'] = dbServerVersion;
    map['displayName'] = displayName;
    map['id'] = id;
    map['lastMaintenanceRunId'] = lastMaintenanceRunId;
    map['maintenanceWindows'] = Input.encodeList<
        GetCloudExadataInfrastructureMaintenanceWindow,
        Map<String, dynamic>>(maintenanceWindows, (value) => value.toMap());
    map['maxCpuCount'] = maxCpuCount;
    map['maxDataStorageInTbs'] = maxDataStorageInTbs;
    map['maxDbNodeStorageSizeInGbs'] = maxDbNodeStorageSizeInGbs;
    map['maxMemoryInGbs'] = maxMemoryInGbs;
    map['memorySizeInGbs'] = memorySizeInGbs;
    map['monthlyDbServerVersion'] = monthlyDbServerVersion;
    map['monthlyStorageServerVersion'] = monthlyStorageServerVersion;
    map['nextMaintenanceRunId'] = nextMaintenanceRunId;
    map['ociResourceAnchorName'] = ociResourceAnchorName;
    map['ociUrl'] = ociUrl;
    map['ocid'] = ocid;
    map['percentProgress'] = percentProgress;
    map['region'] = region;
    map['shape'] = shape;
    map['status'] = status;
    map['statusReason'] = statusReason;
    map['storageCount'] = storageCount;
    map['storageServerType'] = storageServerType;
    map['storageServerVersion'] = storageServerVersion;
    map['tags'] = tags;
    map['totalStorageSizeInGbs'] = totalStorageSizeInGbs;
    return map;
  }

  factory GetCloudExadataInfrastructureResult.fromMap(
      Map<String, dynamic> map) {
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
      customerContactsToSendToOcis: Input.decodeList<
              GetCloudExadataInfrastructureCustomerContactsToSendToOci>(
          map['customerContactsToSendToOcis'],
          (value) =>
              GetCloudExadataInfrastructureCustomerContactsToSendToOci.fromMap(
                  (value as Map).cast<String, dynamic>())),
      dataStorageSizeInTbs: map['dataStorageSizeInTbs'] as double,
      databaseServerType: map['databaseServerType'] as String,
      dbNodeStorageSizeInGbs: map['dbNodeStorageSizeInGbs'] as int,
      dbServerVersion: map['dbServerVersion'] as String,
      displayName: map['displayName'] as String,
      id: map['id'] as String,
      lastMaintenanceRunId: map['lastMaintenanceRunId'] as String,
      maintenanceWindows:
          Input.decodeList<GetCloudExadataInfrastructureMaintenanceWindow>(
              map['maintenanceWindows'],
              (value) => GetCloudExadataInfrastructureMaintenanceWindow.fromMap(
                  (value as Map).cast<String, dynamic>())),
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
