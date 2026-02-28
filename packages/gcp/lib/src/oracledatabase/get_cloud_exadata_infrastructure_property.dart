// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cloud_exadata_infrastructure_property_customer_contact.dart';
import 'get_cloud_exadata_infrastructure_property_maintenance_window.dart';

class GetCloudExadataInfrastructureProperty {
  /// The requested number of additional storage servers activated for the
  /// Exadata Infrastructure.
  final int activatedStorageCount;
  /// The requested number of additional storage servers for the Exadata
  /// Infrastructure.
  final int additionalStorageCount;
  /// The available storage can be allocated to the Exadata Infrastructure
  /// resource, in gigabytes (GB).
  final int availableStorageSizeGb;
  /// The number of compute servers for the Exadata Infrastructure.
  final int computeCount;
  /// The number of enabled CPU cores.
  final int cpuCount;
  /// The list of customer contacts.
  final List<GetCloudExadataInfrastructurePropertyCustomerContact> customerContacts;
  /// Size, in terabytes, of the DATA disk group.
  final double dataStorageSizeTb;
  /// The local node storage allocated in GBs.
  final int dbNodeStorageSizeGb;
  /// The software version of the database servers (dom0) in the Exadata
  /// Infrastructure.
  final String dbServerVersion;
  /// Maintenance window as defined by Oracle.
  /// https://docs.oracle.com/en-us/iaas/api/#/en/database/20160918/datatypes/MaintenanceWindow
  final List<GetCloudExadataInfrastructurePropertyMaintenanceWindow> maintenanceWindows;
  /// The total number of CPU cores available.
  final int maxCpuCount;
  /// The total available DATA disk group size.
  final double maxDataStorageTb;
  /// The total local node storage available in GBs.
  final int maxDbNodeStorageSizeGb;
  /// The total memory available in GBs.
  final int maxMemoryGb;
  /// The memory allocated in GBs.
  final int memorySizeGb;
  /// The monthly software version of the database servers (dom0)
  /// in the Exadata Infrastructure. Example: 20.1.15
  final String monthlyDbServerVersion;
  /// The monthly software version of the storage servers (cells)
  /// in the Exadata Infrastructure. Example: 20.1.15
  final String monthlyStorageServerVersion;
  /// The OCID of the next maintenance run.
  final String nextMaintenanceRunId;
  /// The time when the next maintenance run will occur.
  final String nextMaintenanceRunTime;
  /// The time when the next security maintenance run will occur.
  final String nextSecurityMaintenanceRunTime;
  /// Deep link to the OCI console to view this resource.
  final String ociUrl;
  /// OCID of created infra.
  /// https://docs.oracle.com/en-us/iaas/Content/General/Concepts/identifiers.htm#Oracle
  final String ocid;
  /// The shape of the Exadata Infrastructure. The shape determines the
  /// amount of CPU, storage, and memory resources allocated to the instance.
  final String shape;
  /// The current lifecycle state of the Exadata Infrastructure.
  /// Possible values:
  /// STATE_UNSPECIFIED
  /// PROVISIONING
  /// AVAILABLE
  /// UPDATING
  /// TERMINATING
  /// TERMINATED
  /// FAILED
  /// MAINTENANCE_IN_PROGRESS
  final String state;
  /// The number of Cloud Exadata storage servers for the Exadata Infrastructure.
  final int storageCount;
  /// The software version of the storage servers (cells) in the Exadata
  /// Infrastructure.
  final String storageServerVersion;
  /// The total storage allocated to the Exadata Infrastructure
  /// resource, in gigabytes (GB).
  final int totalStorageSizeGb;

  /// Creates a new [GetCloudExadataInfrastructureProperty].
  /// [activatedStorageCount] The requested number of additional storage servers activated for the
  /// [additionalStorageCount] The requested number of additional storage servers for the Exadata
  /// [availableStorageSizeGb] The available storage can be allocated to the Exadata Infrastructure
  /// [computeCount] The number of compute servers for the Exadata Infrastructure.
  /// [cpuCount] The number of enabled CPU cores.
  /// [customerContacts] The list of customer contacts.
  /// [dataStorageSizeTb] Size, in terabytes, of the DATA disk group.
  /// [dbNodeStorageSizeGb] The local node storage allocated in GBs.
  /// [dbServerVersion] The software version of the database servers (dom0) in the Exadata
  /// [maintenanceWindows] Maintenance window as defined by Oracle.
  /// [maxCpuCount] The total number of CPU cores available.
  /// [maxDataStorageTb] The total available DATA disk group size.
  /// [maxDbNodeStorageSizeGb] The total local node storage available in GBs.
  /// [maxMemoryGb] The total memory available in GBs.
  /// [memorySizeGb] The memory allocated in GBs.
  /// [monthlyDbServerVersion] The monthly software version of the database servers (dom0)
  /// [monthlyStorageServerVersion] The monthly software version of the storage servers (cells)
  /// [nextMaintenanceRunId] The OCID of the next maintenance run.
  /// [nextMaintenanceRunTime] The time when the next maintenance run will occur.
  /// [nextSecurityMaintenanceRunTime] The time when the next security maintenance run will occur.
  /// [ociUrl] Deep link to the OCI console to view this resource.
  /// [ocid] OCID of created infra.
  /// [shape] The shape of the Exadata Infrastructure. The shape determines the
  /// [state] The current lifecycle state of the Exadata Infrastructure.
  /// [storageCount] The number of Cloud Exadata storage servers for the Exadata Infrastructure.
  /// [storageServerVersion] The software version of the storage servers (cells) in the Exadata
  /// [totalStorageSizeGb] The total storage allocated to the Exadata Infrastructure
  GetCloudExadataInfrastructureProperty({
    required this.activatedStorageCount,
    required this.additionalStorageCount,
    required this.availableStorageSizeGb,
    required this.computeCount,
    required this.cpuCount,
    required this.customerContacts,
    required this.dataStorageSizeTb,
    required this.dbNodeStorageSizeGb,
    required this.dbServerVersion,
    required this.maintenanceWindows,
    required this.maxCpuCount,
    required this.maxDataStorageTb,
    required this.maxDbNodeStorageSizeGb,
    required this.maxMemoryGb,
    required this.memorySizeGb,
    required this.monthlyDbServerVersion,
    required this.monthlyStorageServerVersion,
    required this.nextMaintenanceRunId,
    required this.nextMaintenanceRunTime,
    required this.nextSecurityMaintenanceRunTime,
    required this.ociUrl,
    required this.ocid,
    required this.shape,
    required this.state,
    required this.storageCount,
    required this.storageServerVersion,
    required this.totalStorageSizeGb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activatedStorageCount': activatedStorageCount,
      'additionalStorageCount': additionalStorageCount,
      'availableStorageSizeGb': availableStorageSizeGb,
      'computeCount': computeCount,
      'cpuCount': cpuCount,
      'customerContacts': pulumi.Input.encodeList<GetCloudExadataInfrastructurePropertyCustomerContact, Map<String, dynamic>>(customerContacts, (value) => value.toMap()),
      'dataStorageSizeTb': dataStorageSizeTb,
      'dbNodeStorageSizeGb': dbNodeStorageSizeGb,
      'dbServerVersion': dbServerVersion,
      'maintenanceWindows': pulumi.Input.encodeList<GetCloudExadataInfrastructurePropertyMaintenanceWindow, Map<String, dynamic>>(maintenanceWindows, (value) => value.toMap()),
      'maxCpuCount': maxCpuCount,
      'maxDataStorageTb': maxDataStorageTb,
      'maxDbNodeStorageSizeGb': maxDbNodeStorageSizeGb,
      'maxMemoryGb': maxMemoryGb,
      'memorySizeGb': memorySizeGb,
      'monthlyDbServerVersion': monthlyDbServerVersion,
      'monthlyStorageServerVersion': monthlyStorageServerVersion,
      'nextMaintenanceRunId': nextMaintenanceRunId,
      'nextMaintenanceRunTime': nextMaintenanceRunTime,
      'nextSecurityMaintenanceRunTime': nextSecurityMaintenanceRunTime,
      'ociUrl': ociUrl,
      'ocid': ocid,
      'shape': shape,
      'state': state,
      'storageCount': storageCount,
      'storageServerVersion': storageServerVersion,
      'totalStorageSizeGb': totalStorageSizeGb,
    };
  }

  factory GetCloudExadataInfrastructureProperty.fromMap(Map<String, dynamic> map) {
    return GetCloudExadataInfrastructureProperty(
      activatedStorageCount: map['activatedStorageCount'] as int,
      additionalStorageCount: map['additionalStorageCount'] as int,
      availableStorageSizeGb: map['availableStorageSizeGb'] as int,
      computeCount: map['computeCount'] as int,
      cpuCount: map['cpuCount'] as int,
      customerContacts: pulumi.Input.decodeList<GetCloudExadataInfrastructurePropertyCustomerContact>(map['customerContacts'], (value) => GetCloudExadataInfrastructurePropertyCustomerContact.fromMap((value as Map).cast<String, dynamic>())),
      dataStorageSizeTb: map['dataStorageSizeTb'] as double,
      dbNodeStorageSizeGb: map['dbNodeStorageSizeGb'] as int,
      dbServerVersion: map['dbServerVersion'] as String,
      maintenanceWindows: pulumi.Input.decodeList<GetCloudExadataInfrastructurePropertyMaintenanceWindow>(map['maintenanceWindows'], (value) => GetCloudExadataInfrastructurePropertyMaintenanceWindow.fromMap((value as Map).cast<String, dynamic>())),
      maxCpuCount: map['maxCpuCount'] as int,
      maxDataStorageTb: map['maxDataStorageTb'] as double,
      maxDbNodeStorageSizeGb: map['maxDbNodeStorageSizeGb'] as int,
      maxMemoryGb: map['maxMemoryGb'] as int,
      memorySizeGb: map['memorySizeGb'] as int,
      monthlyDbServerVersion: map['monthlyDbServerVersion'] as String,
      monthlyStorageServerVersion: map['monthlyStorageServerVersion'] as String,
      nextMaintenanceRunId: map['nextMaintenanceRunId'] as String,
      nextMaintenanceRunTime: map['nextMaintenanceRunTime'] as String,
      nextSecurityMaintenanceRunTime: map['nextSecurityMaintenanceRunTime'] as String,
      ociUrl: map['ociUrl'] as String,
      ocid: map['ocid'] as String,
      shape: map['shape'] as String,
      state: map['state'] as String,
      storageCount: map['storageCount'] as int,
      storageServerVersion: map['storageServerVersion'] as String,
      totalStorageSizeGb: map['totalStorageSizeGb'] as int,
    );
  }
}

