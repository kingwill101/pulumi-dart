// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../cloud_exadata_infrastructure_properties_customer_contact/cloud_exadata_infrastructure_properties_customer_contact.dart';
import '../cloud_exadata_infrastructure_properties_maintenance_window/cloud_exadata_infrastructure_properties_maintenance_window.dart';

class CloudExadataInfrastructureProperties {
  /// (Output)
  /// The requested number of additional storage servers activated for the
  /// Exadata Infrastructure.
  final int? activatedStorageCount;

  /// (Output)
  /// The requested number of additional storage servers for the Exadata
  /// Infrastructure.
  final int? additionalStorageCount;

  /// (Output)
  /// The available storage can be allocated to the Exadata Infrastructure
  /// resource, in gigabytes (GB).
  final int? availableStorageSizeGb;

  /// The number of compute servers for the Exadata Infrastructure.
  final int? computeCount;

  /// (Output)
  /// The number of enabled CPU cores.
  final int? cpuCount;

  /// The list of customer contacts.
  /// Structure is documented below.
  final List<CloudExadataInfrastructurePropertiesCustomerContact>?
      customerContacts;

  /// (Output)
  /// Size, in terabytes, of the DATA disk group.
  final double? dataStorageSizeTb;

  /// (Output)
  /// The local node storage allocated in GBs.
  final int? dbNodeStorageSizeGb;

  /// (Output)
  /// The software version of the database servers (dom0) in the Exadata
  /// Infrastructure.
  final String? dbServerVersion;

  /// Maintenance window as defined by Oracle.
  /// https://docs.oracle.com/en-us/iaas/api/#/en/database/20160918/datatypes/MaintenanceWindow
  /// Structure is documented below.
  final CloudExadataInfrastructurePropertiesMaintenanceWindow?
      maintenanceWindow;

  /// (Output)
  /// The total number of CPU cores available.
  final int? maxCpuCount;

  /// (Output)
  /// The total available DATA disk group size.
  final double? maxDataStorageTb;

  /// (Output)
  /// The total local node storage available in GBs.
  final int? maxDbNodeStorageSizeGb;

  /// (Output)
  /// The total memory available in GBs.
  final int? maxMemoryGb;

  /// (Output)
  /// The memory allocated in GBs.
  final int? memorySizeGb;

  /// (Output)
  /// The monthly software version of the database servers (dom0)
  /// in the Exadata Infrastructure. Example: 20.1.15
  final String? monthlyDbServerVersion;

  /// (Output)
  /// The monthly software version of the storage servers (cells)
  /// in the Exadata Infrastructure. Example: 20.1.15
  final String? monthlyStorageServerVersion;

  /// (Output)
  /// The OCID of the next maintenance run.
  final String? nextMaintenanceRunId;

  /// (Output)
  /// The time when the next maintenance run will occur.
  final String? nextMaintenanceRunTime;

  /// (Output)
  /// The time when the next security maintenance run will occur.
  final String? nextSecurityMaintenanceRunTime;

  /// (Output)
  /// Deep link to the OCI console to view this resource.
  final String? ociUrl;

  /// (Output)
  /// OCID of created infra.
  /// https://docs.oracle.com/en-us/iaas/Content/General/Concepts/identifiers.htm#Oracle
  final String? ocid;

  /// The shape of the Exadata Infrastructure. The shape determines the
  /// amount of CPU, storage, and memory resources allocated to the instance.
  final String shape;

  /// (Output)
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
  final String? state;

  /// The number of Cloud Exadata storage servers for the Exadata Infrastructure.
  final int? storageCount;

  /// (Output)
  /// The software version of the storage servers (cells) in the Exadata
  /// Infrastructure.
  final String? storageServerVersion;

  /// The total storage allocated to the Exadata Infrastructure
  /// resource, in gigabytes (GB).
  final int? totalStorageSizeGb;

  CloudExadataInfrastructureProperties({
    this.activatedStorageCount,
    this.additionalStorageCount,
    this.availableStorageSizeGb,
    this.computeCount,
    this.cpuCount,
    this.customerContacts,
    this.dataStorageSizeTb,
    this.dbNodeStorageSizeGb,
    this.dbServerVersion,
    this.maintenanceWindow,
    this.maxCpuCount,
    this.maxDataStorageTb,
    this.maxDbNodeStorageSizeGb,
    this.maxMemoryGb,
    this.memorySizeGb,
    this.monthlyDbServerVersion,
    this.monthlyStorageServerVersion,
    this.nextMaintenanceRunId,
    this.nextMaintenanceRunTime,
    this.nextSecurityMaintenanceRunTime,
    this.ociUrl,
    this.ocid,
    required this.shape,
    this.state,
    this.storageCount,
    this.storageServerVersion,
    this.totalStorageSizeGb,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final activatedStorageCountValue = activatedStorageCount;
    if (activatedStorageCountValue != null) {
      map['activatedStorageCount'] = activatedStorageCountValue;
    }
    final additionalStorageCountValue = additionalStorageCount;
    if (additionalStorageCountValue != null) {
      map['additionalStorageCount'] = additionalStorageCountValue;
    }
    final availableStorageSizeGbValue = availableStorageSizeGb;
    if (availableStorageSizeGbValue != null) {
      map['availableStorageSizeGb'] = availableStorageSizeGbValue;
    }
    final computeCountValue = computeCount;
    if (computeCountValue != null) {
      map['computeCount'] = computeCountValue;
    }
    final cpuCountValue = cpuCount;
    if (cpuCountValue != null) {
      map['cpuCount'] = cpuCountValue;
    }
    final customerContactsValue = customerContacts;
    if (customerContactsValue != null) {
      map['customerContacts'] = Input.encodeList<
              CloudExadataInfrastructurePropertiesCustomerContact,
              Map<String, dynamic>>(
          customerContactsValue, (value) => value.toMap());
    }
    final dataStorageSizeTbValue = dataStorageSizeTb;
    if (dataStorageSizeTbValue != null) {
      map['dataStorageSizeTb'] = dataStorageSizeTbValue;
    }
    final dbNodeStorageSizeGbValue = dbNodeStorageSizeGb;
    if (dbNodeStorageSizeGbValue != null) {
      map['dbNodeStorageSizeGb'] = dbNodeStorageSizeGbValue;
    }
    final dbServerVersionValue = dbServerVersion;
    if (dbServerVersionValue != null) {
      map['dbServerVersion'] = dbServerVersionValue;
    }
    final maintenanceWindowValue = maintenanceWindow;
    if (maintenanceWindowValue != null) {
      map['maintenanceWindow'] = maintenanceWindowValue.toMap();
    }
    final maxCpuCountValue = maxCpuCount;
    if (maxCpuCountValue != null) {
      map['maxCpuCount'] = maxCpuCountValue;
    }
    final maxDataStorageTbValue = maxDataStorageTb;
    if (maxDataStorageTbValue != null) {
      map['maxDataStorageTb'] = maxDataStorageTbValue;
    }
    final maxDbNodeStorageSizeGbValue = maxDbNodeStorageSizeGb;
    if (maxDbNodeStorageSizeGbValue != null) {
      map['maxDbNodeStorageSizeGb'] = maxDbNodeStorageSizeGbValue;
    }
    final maxMemoryGbValue = maxMemoryGb;
    if (maxMemoryGbValue != null) {
      map['maxMemoryGb'] = maxMemoryGbValue;
    }
    final memorySizeGbValue = memorySizeGb;
    if (memorySizeGbValue != null) {
      map['memorySizeGb'] = memorySizeGbValue;
    }
    final monthlyDbServerVersionValue = monthlyDbServerVersion;
    if (monthlyDbServerVersionValue != null) {
      map['monthlyDbServerVersion'] = monthlyDbServerVersionValue;
    }
    final monthlyStorageServerVersionValue = monthlyStorageServerVersion;
    if (monthlyStorageServerVersionValue != null) {
      map['monthlyStorageServerVersion'] = monthlyStorageServerVersionValue;
    }
    final nextMaintenanceRunIdValue = nextMaintenanceRunId;
    if (nextMaintenanceRunIdValue != null) {
      map['nextMaintenanceRunId'] = nextMaintenanceRunIdValue;
    }
    final nextMaintenanceRunTimeValue = nextMaintenanceRunTime;
    if (nextMaintenanceRunTimeValue != null) {
      map['nextMaintenanceRunTime'] = nextMaintenanceRunTimeValue;
    }
    final nextSecurityMaintenanceRunTimeValue = nextSecurityMaintenanceRunTime;
    if (nextSecurityMaintenanceRunTimeValue != null) {
      map['nextSecurityMaintenanceRunTime'] =
          nextSecurityMaintenanceRunTimeValue;
    }
    final ociUrlValue = ociUrl;
    if (ociUrlValue != null) {
      map['ociUrl'] = ociUrlValue;
    }
    final ocidValue = ocid;
    if (ocidValue != null) {
      map['ocid'] = ocidValue;
    }
    map['shape'] = shape;
    final stateValue = state;
    if (stateValue != null) {
      map['state'] = stateValue;
    }
    final storageCountValue = storageCount;
    if (storageCountValue != null) {
      map['storageCount'] = storageCountValue;
    }
    final storageServerVersionValue = storageServerVersion;
    if (storageServerVersionValue != null) {
      map['storageServerVersion'] = storageServerVersionValue;
    }
    final totalStorageSizeGbValue = totalStorageSizeGb;
    if (totalStorageSizeGbValue != null) {
      map['totalStorageSizeGb'] = totalStorageSizeGbValue;
    }
    return map;
  }

  factory CloudExadataInfrastructureProperties.fromMap(
      Map<String, dynamic> map) {
    return CloudExadataInfrastructureProperties(
      activatedStorageCount: map['activatedStorageCount'] == null
          ? null
          : map['activatedStorageCount'] as int,
      additionalStorageCount: map['additionalStorageCount'] == null
          ? null
          : map['additionalStorageCount'] as int,
      availableStorageSizeGb: map['availableStorageSizeGb'] == null
          ? null
          : map['availableStorageSizeGb'] as int,
      computeCount:
          map['computeCount'] == null ? null : map['computeCount'] as int,
      cpuCount: map['cpuCount'] == null ? null : map['cpuCount'] as int,
      customerContacts: map['customerContacts'] == null
          ? null
          : Input.decodeList<
                  CloudExadataInfrastructurePropertiesCustomerContact>(
              map['customerContacts'],
              (value) =>
                  CloudExadataInfrastructurePropertiesCustomerContact.fromMap(
                      (value as Map).cast<String, dynamic>())),
      dataStorageSizeTb: map['dataStorageSizeTb'] == null
          ? null
          : map['dataStorageSizeTb'] as double,
      dbNodeStorageSizeGb: map['dbNodeStorageSizeGb'] == null
          ? null
          : map['dbNodeStorageSizeGb'] as int,
      dbServerVersion: map['dbServerVersion'] == null
          ? null
          : map['dbServerVersion'] as String,
      maintenanceWindow: map['maintenanceWindow'] == null
          ? null
          : CloudExadataInfrastructurePropertiesMaintenanceWindow.fromMap(
              (map['maintenanceWindow'] as Map).cast<String, dynamic>()),
      maxCpuCount:
          map['maxCpuCount'] == null ? null : map['maxCpuCount'] as int,
      maxDataStorageTb: map['maxDataStorageTb'] == null
          ? null
          : map['maxDataStorageTb'] as double,
      maxDbNodeStorageSizeGb: map['maxDbNodeStorageSizeGb'] == null
          ? null
          : map['maxDbNodeStorageSizeGb'] as int,
      maxMemoryGb:
          map['maxMemoryGb'] == null ? null : map['maxMemoryGb'] as int,
      memorySizeGb:
          map['memorySizeGb'] == null ? null : map['memorySizeGb'] as int,
      monthlyDbServerVersion: map['monthlyDbServerVersion'] == null
          ? null
          : map['monthlyDbServerVersion'] as String,
      monthlyStorageServerVersion: map['monthlyStorageServerVersion'] == null
          ? null
          : map['monthlyStorageServerVersion'] as String,
      nextMaintenanceRunId: map['nextMaintenanceRunId'] == null
          ? null
          : map['nextMaintenanceRunId'] as String,
      nextMaintenanceRunTime: map['nextMaintenanceRunTime'] == null
          ? null
          : map['nextMaintenanceRunTime'] as String,
      nextSecurityMaintenanceRunTime:
          map['nextSecurityMaintenanceRunTime'] == null
              ? null
              : map['nextSecurityMaintenanceRunTime'] as String,
      ociUrl: map['ociUrl'] == null ? null : map['ociUrl'] as String,
      ocid: map['ocid'] == null ? null : map['ocid'] as String,
      shape: map['shape'] as String,
      state: map['state'] == null ? null : map['state'] as String,
      storageCount:
          map['storageCount'] == null ? null : map['storageCount'] as int,
      storageServerVersion: map['storageServerVersion'] == null
          ? null
          : map['storageServerVersion'] as String,
      totalStorageSizeGb: map['totalStorageSizeGb'] == null
          ? null
          : map['totalStorageSizeGb'] as int,
    );
  }
}
