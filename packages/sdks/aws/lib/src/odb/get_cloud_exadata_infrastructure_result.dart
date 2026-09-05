// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cloud_exadata_infrastructure_customer_contacts_to_send_to_oci.dart';
import 'get_cloud_exadata_infrastructure_maintenance_window.dart';

/// Result data returned by getCloudExadataInfrastructure.
class GetCloudExadataInfrastructureResult {
  /// Number of storage servers requested for the Exadata infrastructure.
  final int? activatedStorageCount;
  /// Number of storage servers requested for the Exadata infrastructure.
  final int? additionalStorageCount;
  /// ARN for the Exadata infrastructure.
  final String? arn;
  /// Name of the Availability Zone (AZ) where the Exadata infrastructure is located.
  final String? availabilityZone;
  /// AZ ID of the AZ where the Exadata infrastructure is located.
  final String? availabilityZoneId;
  /// Amount of available storage, in gigabytes (GB), for the Exadata infrastructure.
  final int? availableStorageSizeInGbs;
  /// Number of database servers for the Exadata infrastructure.
  final int? computeCount;
  /// OCI compute model used when you create or clone an instance: ECPU or OCPU. An ECPU is an abstracted measure of compute resources. ECPUs are based on the number of cores elastically allocated from a pool of compute and storage servers. An OCPU is a legacy physical measure of compute resources. OCPUs are based on the physical core of a processor with hyper-threading enabled.
  final String? computeModel;
  /// Total number of CPU cores that are allocated to the Exadata infrastructure.
  final int? cpuCount;
  /// Time when the Exadata infrastructure was created.
  final String? createdAt;
  /// Email addresses of contacts to receive notification from Oracle about maintenance updates for the Exadata infrastructure.
  final List<GetCloudExadataInfrastructureCustomerContactsToSendToOci>? customerContactsToSendToOcis;
  /// Size of the Exadata infrastructure's data disk group, in terabytes (TB).
  final double? dataStorageSizeInTbs;
  /// Database server model type of the Exadata infrastructure. For the list of valid model names, use the ListDbSystemShapes operation.
  final String? databaseServerType;
  /// Size of the storage available on each database node, in gigabytes (GB).
  final int? dbNodeStorageSizeInGbs;
  /// Version of the Exadata infrastructure.
  final String? dbServerVersion;
  /// Display name of the Exadata infrastructure.
  final String? displayName;
  /// Unique identifier of the Exadata infrastructure.
  final String? id;
  /// Oracle Cloud Identifier (OCID) of the last maintenance run for the Exadata infrastructure.
  final String? lastMaintenanceRunId;
  /// Scheduling details of the maintenance window. Patching and system updates take place during the maintenance window.
  final List<GetCloudExadataInfrastructureMaintenanceWindow>? maintenanceWindows;
  /// Total number of CPU cores available on the Exadata infrastructure.
  final int? maxCpuCount;
  /// Total amount of data disk group storage, in terabytes (TB), that's available on the Exadata infrastructure.
  final double? maxDataStorageInTbs;
  /// Total amount of local node storage, in gigabytes (GB), that's available on the Exadata infrastructure.
  final int? maxDbNodeStorageSizeInGbs;
  /// Total amount of memory, in gigabytes (GB), that's available on the Exadata infrastructure.
  final int? maxMemoryInGbs;
  /// Amount of memory, in gigabytes (GB), that's allocated on the Exadata infrastructure.
  final int? memorySizeInGbs;
  /// Monthly software version of the database servers installed on the Exadata infrastructure.
  final String? monthlyDbServerVersion;
  /// Monthly software version of the storage servers installed on the Exadata infrastructure.
  final String? monthlyStorageServerVersion;
  /// OCID of the next maintenance run for the Exadata infrastructure.
  final String? nextMaintenanceRunId;
  /// Name of the OCI resource anchor for the Exadata infrastructure.
  final String? ociResourceAnchorName;
  /// HTTPS link to the Exadata infrastructure in OCI.
  final String? ociUrl;
  /// OCID of the Exadata infrastructure in OCI.
  final String? ocid;
  /// Amount of progress made on the current operation on the Exadata infrastructure expressed as a percentage.
  final double? percentProgress;
  final String? region;
  /// Model name of the Exadata infrastructure.
  final String? shape;
  /// Status of the Exadata infrastructure.
  final String? status;
  /// Additional information about the status of the Exadata infrastructure.
  final String? statusReason;
  /// Number of storage servers that are activated for the Exadata infrastructure.
  final int? storageCount;
  /// Storage server model type of the Exadata infrastructure. For the list of valid model names, use the ListDbSystemShapes operation.
  final String? storageServerType;
  /// Software version of the storage servers on the Exadata infrastructure.
  final String? storageServerVersion;
  /// Map of tags assigned to the Exadata infrastructure.
  final Map<String, String>? tags;
  /// Total amount of storage, in gigabytes (GB), on the Exadata infrastructure.
  final int? totalStorageSizeInGbs;

  /// Creates a new [GetCloudExadataInfrastructureResult].
  /// [activatedStorageCount] Number of storage servers requested for the Exadata infrastructure.
  /// [additionalStorageCount] Number of storage servers requested for the Exadata infrastructure.
  /// [arn] ARN for the Exadata infrastructure.
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
  /// [region] Optional.
  /// [shape] Model name of the Exadata infrastructure.
  /// [status] Status of the Exadata infrastructure.
  /// [statusReason] Additional information about the status of the Exadata infrastructure.
  /// [storageCount] Number of storage servers that are activated for the Exadata infrastructure.
  /// [storageServerType] Storage server model type of the Exadata infrastructure. For the list of valid model names, use the ListDbSystemShapes operation.
  /// [storageServerVersion] Software version of the storage servers on the Exadata infrastructure.
  /// [tags] Map of tags assigned to the Exadata infrastructure.
  /// [totalStorageSizeInGbs] Total amount of storage, in gigabytes (GB), on the Exadata infrastructure.
  const GetCloudExadataInfrastructureResult({
    this.activatedStorageCount,
    this.additionalStorageCount,
    this.arn,
    this.availabilityZone,
    this.availabilityZoneId,
    this.availableStorageSizeInGbs,
    this.computeCount,
    this.computeModel,
    this.cpuCount,
    this.createdAt,
    this.customerContactsToSendToOcis,
    this.dataStorageSizeInTbs,
    this.databaseServerType,
    this.dbNodeStorageSizeInGbs,
    this.dbServerVersion,
    this.displayName,
    this.id,
    this.lastMaintenanceRunId,
    this.maintenanceWindows,
    this.maxCpuCount,
    this.maxDataStorageInTbs,
    this.maxDbNodeStorageSizeInGbs,
    this.maxMemoryInGbs,
    this.memorySizeInGbs,
    this.monthlyDbServerVersion,
    this.monthlyStorageServerVersion,
    this.nextMaintenanceRunId,
    this.ociResourceAnchorName,
    this.ociUrl,
    this.ocid,
    this.percentProgress,
    this.region,
    this.shape,
    this.status,
    this.statusReason,
    this.storageCount,
    this.storageServerType,
    this.storageServerVersion,
    this.tags,
    this.totalStorageSizeInGbs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activatedStorageCount': ?activatedStorageCount,
      'additionalStorageCount': ?additionalStorageCount,
      'arn': ?arn,
      'availabilityZone': ?availabilityZone,
      'availabilityZoneId': ?availabilityZoneId,
      'availableStorageSizeInGbs': ?availableStorageSizeInGbs,
      'computeCount': ?computeCount,
      'computeModel': ?computeModel,
      'cpuCount': ?cpuCount,
      'createdAt': ?createdAt,
      'customerContactsToSendToOcis': ?(() { final guardedValue = customerContactsToSendToOcis; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetCloudExadataInfrastructureCustomerContactsToSendToOci, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'dataStorageSizeInTbs': ?dataStorageSizeInTbs,
      'databaseServerType': ?databaseServerType,
      'dbNodeStorageSizeInGbs': ?dbNodeStorageSizeInGbs,
      'dbServerVersion': ?dbServerVersion,
      'displayName': ?displayName,
      'id': ?id,
      'lastMaintenanceRunId': ?lastMaintenanceRunId,
      'maintenanceWindows': ?(() { final guardedValue = maintenanceWindows; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetCloudExadataInfrastructureMaintenanceWindow, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'maxCpuCount': ?maxCpuCount,
      'maxDataStorageInTbs': ?maxDataStorageInTbs,
      'maxDbNodeStorageSizeInGbs': ?maxDbNodeStorageSizeInGbs,
      'maxMemoryInGbs': ?maxMemoryInGbs,
      'memorySizeInGbs': ?memorySizeInGbs,
      'monthlyDbServerVersion': ?monthlyDbServerVersion,
      'monthlyStorageServerVersion': ?monthlyStorageServerVersion,
      'nextMaintenanceRunId': ?nextMaintenanceRunId,
      'ociResourceAnchorName': ?ociResourceAnchorName,
      'ociUrl': ?ociUrl,
      'ocid': ?ocid,
      'percentProgress': ?percentProgress,
      'region': ?region,
      'shape': ?shape,
      'status': ?status,
      'statusReason': ?statusReason,
      'storageCount': ?storageCount,
      'storageServerType': ?storageServerType,
      'storageServerVersion': ?storageServerVersion,
      'tags': ?tags,
      'totalStorageSizeInGbs': ?totalStorageSizeInGbs,
    };
  }

  factory GetCloudExadataInfrastructureResult.fromMap(Map<String, dynamic> map) {
    return GetCloudExadataInfrastructureResult(
      activatedStorageCount: (() { final guardedValue = map['activatedStorageCount']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      additionalStorageCount: (() { final guardedValue = map['additionalStorageCount']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      availabilityZone: (() { final guardedValue = map['availabilityZone']; if (guardedValue == null) return null; return guardedValue as String; })(),
      availabilityZoneId: (() { final guardedValue = map['availabilityZoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      availableStorageSizeInGbs: (() { final guardedValue = map['availableStorageSizeInGbs']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      computeCount: (() { final guardedValue = map['computeCount']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      computeModel: (() { final guardedValue = map['computeModel']; if (guardedValue == null) return null; return guardedValue as String; })(),
      cpuCount: (() { final guardedValue = map['cpuCount']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      customerContactsToSendToOcis: (() { final guardedValue = map['customerContactsToSendToOcis']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetCloudExadataInfrastructureCustomerContactsToSendToOci>(guardedValue, (value) => GetCloudExadataInfrastructureCustomerContactsToSendToOci.fromMap((value as Map).cast<String, dynamic>())); })(),
      dataStorageSizeInTbs: (() { final guardedValue = map['dataStorageSizeInTbs']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      databaseServerType: (() { final guardedValue = map['databaseServerType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dbNodeStorageSizeInGbs: (() { final guardedValue = map['dbNodeStorageSizeInGbs']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      dbServerVersion: (() { final guardedValue = map['dbServerVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastMaintenanceRunId: (() { final guardedValue = map['lastMaintenanceRunId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maintenanceWindows: (() { final guardedValue = map['maintenanceWindows']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetCloudExadataInfrastructureMaintenanceWindow>(guardedValue, (value) => GetCloudExadataInfrastructureMaintenanceWindow.fromMap((value as Map).cast<String, dynamic>())); })(),
      maxCpuCount: (() { final guardedValue = map['maxCpuCount']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      maxDataStorageInTbs: (() { final guardedValue = map['maxDataStorageInTbs']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      maxDbNodeStorageSizeInGbs: (() { final guardedValue = map['maxDbNodeStorageSizeInGbs']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      maxMemoryInGbs: (() { final guardedValue = map['maxMemoryInGbs']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      memorySizeInGbs: (() { final guardedValue = map['memorySizeInGbs']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      monthlyDbServerVersion: (() { final guardedValue = map['monthlyDbServerVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      monthlyStorageServerVersion: (() { final guardedValue = map['monthlyStorageServerVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nextMaintenanceRunId: (() { final guardedValue = map['nextMaintenanceRunId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ociResourceAnchorName: (() { final guardedValue = map['ociResourceAnchorName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ociUrl: (() { final guardedValue = map['ociUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ocid: (() { final guardedValue = map['ocid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      percentProgress: (() { final guardedValue = map['percentProgress']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      shape: (() { final guardedValue = map['shape']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      statusReason: (() { final guardedValue = map['statusReason']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageCount: (() { final guardedValue = map['storageCount']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      storageServerType: (() { final guardedValue = map['storageServerType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageServerVersion: (() { final guardedValue = map['storageServerVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      totalStorageSizeInGbs: (() { final guardedValue = map['totalStorageSizeInGbs']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
    );
  }
}
