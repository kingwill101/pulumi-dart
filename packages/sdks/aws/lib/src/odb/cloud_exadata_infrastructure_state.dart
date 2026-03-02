// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_exadata_infrastructure_customer_contacts_to_send_to_oci.dart';
import 'cloud_exadata_infrastructure_maintenance_window.dart';
import 'cloud_exadata_infrastructure_timeouts.dart';

/// Input properties used for looking up and filtering CloudExadataInfrastructure resources.
class CloudExadataInfrastructureState {
  /// The number of storage servers requested for the Exadata infrastructure.
  final pulumi.Input<int>? activatedStorageCount;
  /// The number of storage servers requested for the Exadata infrastructure.
  final pulumi.Input<int>? additionalStorageCount;
  /// Amazon Resource Name (ARN) of the Exadata infrastructure.
  final pulumi.Input<String>? arn;
  /// The name of the Availability Zone (AZ) where the Exadata infrastructure is located. Changing this will force terraform to create new resource.
  final pulumi.Input<String>? availabilityZone;
  /// The AZ ID of the AZ where the Exadata infrastructure is located. Changing this will force terraform to create new resource.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? availabilityZoneId;
  /// The amount of available storage, in gigabytes (GB), for the Exadata infrastructure.
  final pulumi.Input<int>? availableStorageSizeInGbs;
  /// The number of compute instances that the Exadata infrastructure is located. Changing this will force terraform to create new resource.
  final pulumi.Input<int>? computeCount;
  /// The OCI model compute model used when you create or clone an instance: ECPU or OCPU.
  final pulumi.Input<String>? computeModel;
  /// The total number of CPU cores that are allocated to the Exadata infrastructure.
  final pulumi.Input<int>? cpuCount;
  /// The time when the Exadata infrastructure was created.
  final pulumi.Input<String>? createdAt;
  /// The email addresses of contacts to receive notification from Oracle about maintenance updates for the Exadata infrastructure. Changing this will force terraform to create new resource.
  final pulumi.Input<List<CloudExadataInfrastructureCustomerContactsToSendToOci>>? customerContactsToSendToOcis;
  /// The size of the Exadata infrastructure's data disk group, in terabytes (TB).
  final pulumi.Input<double>? dataStorageSizeInTbs;
  /// The database server model type of the Exadata infrastructure. For the list of valid model names, use the ListDbSystemShapes operation. This is a mandatory parameter for Exadata.X11M system shape. Changing this will force terraform to create new resource.
  final pulumi.Input<String>? databaseServerType;
  /// The size of the Exadata infrastructure's local node storage, in gigabytes (GB).
  final pulumi.Input<int>? dbNodeStorageSizeInGbs;
  /// The software version of the database servers (dom0) in the Exadata infrastructure.
  final pulumi.Input<String>? dbServerVersion;
  /// The user-friendly name for the Exadata infrastructure. Changing this will force terraform to create a new resource.
  final pulumi.Input<String>? displayName;
  /// The Oracle Cloud Identifier (OCID) of the last maintenance run for the Exadata infrastructure.
  final pulumi.Input<String>? lastMaintenanceRunId;
  /// The scheduling details for the maintenance window. Patching and system updates take place during the maintenance window
  final pulumi.Input<CloudExadataInfrastructureMaintenanceWindow>? maintenanceWindow;
  /// The total number of CPU cores available on the Exadata infrastructure.
  final pulumi.Input<int>? maxCpuCount;
  /// The total amount of data disk group storage, in terabytes (TB), that's available on the Exadata infrastructure.
  final pulumi.Input<double>? maxDataStorageInTbs;
  /// The total amount of local node storage, in gigabytes (GB), that's available on the Exadata infrastructure.
  final pulumi.Input<int>? maxDbNodeStorageSizeInGbs;
  /// The total amount of memory in gigabytes (GB) available on the Exadata infrastructure.
  final pulumi.Input<int>? maxMemoryInGbs;
  /// The amount of memory, in gigabytes (GB), that's allocated on the Exadata infrastructure
  final pulumi.Input<int>? memorySizeInGbs;
  /// The monthly software version of the database servers in the Exadata infrastructure.
  final pulumi.Input<String>? monthlyDbServerVersion;
  /// The monthly software version of the storage servers installed on the Exadata infrastructure.
  final pulumi.Input<String>? monthlyStorageServerVersion;
  /// The OCID of the next maintenance run for the Exadata infrastructure.
  final pulumi.Input<String>? nextMaintenanceRunId;
  /// The name of the OCI resource anchor for the Exadata infrastructure.
  final pulumi.Input<String>? ociResourceAnchorName;
  /// The HTTPS link to the Exadata infrastructure in OCI
  final pulumi.Input<String>? ociUrl;
  /// The OCID of the Exadata infrastructure.
  final pulumi.Input<String>? ocid;
  /// The amount of progress made on the current operation on the Exadata infrastructure, expressed as a percentage.
  final pulumi.Input<double>? percentProgress;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The model name of the Exadata infrastructure. Changing this will force terraform to create new resource.
  final pulumi.Input<String>? shape;
  /// The current status of the Exadata infrastructure.
  final pulumi.Input<String>? status;
  /// Additional information about the status of the Exadata infrastructure.
  final pulumi.Input<String>? statusReason;
  /// The number of storage servers that are activated for the Exadata infrastructure. Changing this will force terraform to create new resource.
  final pulumi.Input<int>? storageCount;
  /// The storage server model type of the Exadata infrastructure. For the list of valid model names, use the ListDbSystemShapes operation. This is a mandatory parameter for Exadata.X11M system shape. Changing this will force terraform to create new resource.
  final pulumi.Input<String>? storageServerType;
  /// The software version of the storage servers on the Exadata infrastructure.
  final pulumi.Input<String>? storageServerVersion;
  /// A map of tags to assign to the exadata infrastructure. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<CloudExadataInfrastructureTimeouts>? timeouts;
  /// The total amount of storage, in gigabytes (GB), on the Exadata infrastructure.
  final pulumi.Input<int>? totalStorageSizeInGbs;

  /// Creates a new [CloudExadataInfrastructureState].
  /// [activatedStorageCount] The number of storage servers requested for the Exadata infrastructure.
  /// [additionalStorageCount] The number of storage servers requested for the Exadata infrastructure.
  /// [arn] Amazon Resource Name (ARN) of the Exadata infrastructure.
  /// [availabilityZone] The name of the Availability Zone (AZ) where the Exadata infrastructure is located. Changing this will force terraform to create new resource.
  /// [availabilityZoneId] The AZ ID of the AZ where the Exadata infrastructure is located. Changing this will force terraform to create new resource.
  /// [availableStorageSizeInGbs] The amount of available storage, in gigabytes (GB), for the Exadata infrastructure.
  /// [computeCount] The number of compute instances that the Exadata infrastructure is located. Changing this will force terraform to create new resource.
  /// [computeModel] The OCI model compute model used when you create or clone an instance: ECPU or OCPU.
  /// [cpuCount] The total number of CPU cores that are allocated to the Exadata infrastructure.
  /// [createdAt] The time when the Exadata infrastructure was created.
  /// [customerContactsToSendToOcis] The email addresses of contacts to receive notification from Oracle about maintenance updates for the Exadata infrastructure. Changing this will force terraform to create new resource.
  /// [dataStorageSizeInTbs] The size of the Exadata infrastructure's data disk group, in terabytes (TB).
  /// [databaseServerType] The database server model type of the Exadata infrastructure. For the list of valid model names, use the ListDbSystemShapes operation. This is a mandatory parameter for Exadata.X11M system shape. Changing this will force terraform to create new resource.
  /// [dbNodeStorageSizeInGbs] The size of the Exadata infrastructure's local node storage, in gigabytes (GB).
  /// [dbServerVersion] The software version of the database servers (dom0) in the Exadata infrastructure.
  /// [displayName] The user-friendly name for the Exadata infrastructure. Changing this will force terraform to create a new resource.
  /// [lastMaintenanceRunId] The Oracle Cloud Identifier (OCID) of the last maintenance run for the Exadata infrastructure.
  /// [maintenanceWindow] The scheduling details for the maintenance window. Patching and system updates take place during the maintenance window
  /// [maxCpuCount] The total number of CPU cores available on the Exadata infrastructure.
  /// [maxDataStorageInTbs] The total amount of data disk group storage, in terabytes (TB), that's available on the Exadata infrastructure.
  /// [maxDbNodeStorageSizeInGbs] The total amount of local node storage, in gigabytes (GB), that's available on the Exadata infrastructure.
  /// [maxMemoryInGbs] The total amount of memory in gigabytes (GB) available on the Exadata infrastructure.
  /// [memorySizeInGbs] The amount of memory, in gigabytes (GB), that's allocated on the Exadata infrastructure
  /// [monthlyDbServerVersion] The monthly software version of the database servers in the Exadata infrastructure.
  /// [monthlyStorageServerVersion] The monthly software version of the storage servers installed on the Exadata infrastructure.
  /// [nextMaintenanceRunId] The OCID of the next maintenance run for the Exadata infrastructure.
  /// [ociResourceAnchorName] The name of the OCI resource anchor for the Exadata infrastructure.
  /// [ociUrl] The HTTPS link to the Exadata infrastructure in OCI
  /// [ocid] The OCID of the Exadata infrastructure.
  /// [percentProgress] The amount of progress made on the current operation on the Exadata infrastructure, expressed as a percentage.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [shape] The model name of the Exadata infrastructure. Changing this will force terraform to create new resource.
  /// [status] The current status of the Exadata infrastructure.
  /// [statusReason] Additional information about the status of the Exadata infrastructure.
  /// [storageCount] The number of storage servers that are activated for the Exadata infrastructure. Changing this will force terraform to create new resource.
  /// [storageServerType] The storage server model type of the Exadata infrastructure. For the list of valid model names, use the ListDbSystemShapes operation. This is a mandatory parameter for Exadata.X11M system shape. Changing this will force terraform to create new resource.
  /// [storageServerVersion] The software version of the storage servers on the Exadata infrastructure.
  /// [tags] A map of tags to assign to the exadata infrastructure. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Optional.
  /// [timeouts] Optional.
  /// [totalStorageSizeInGbs] The total amount of storage, in gigabytes (GB), on the Exadata infrastructure.
  CloudExadataInfrastructureState({
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
    this.lastMaintenanceRunId,
    this.maintenanceWindow,
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
    this.tagsAll,
    this.timeouts,
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
      'customerContactsToSendToOcis': ?pulumi.Input.mapOptionalInputValue<List<CloudExadataInfrastructureCustomerContactsToSendToOci>, List<Map<String, dynamic>>>(customerContactsToSendToOcis, (value) => pulumi.Input.encodeList<CloudExadataInfrastructureCustomerContactsToSendToOci, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dataStorageSizeInTbs': ?dataStorageSizeInTbs,
      'databaseServerType': ?databaseServerType,
      'dbNodeStorageSizeInGbs': ?dbNodeStorageSizeInGbs,
      'dbServerVersion': ?dbServerVersion,
      'displayName': ?displayName,
      'lastMaintenanceRunId': ?lastMaintenanceRunId,
      'maintenanceWindow': ?pulumi.Input.mapOptionalInputValue<CloudExadataInfrastructureMaintenanceWindow, Map<String, dynamic>>(maintenanceWindow, (value) => value.toMap()),
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
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<CloudExadataInfrastructureTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'totalStorageSizeInGbs': ?totalStorageSizeInGbs,
    };
  }

  factory CloudExadataInfrastructureState.fromMap(Map<String, dynamic> map) {
    return CloudExadataInfrastructureState(
      activatedStorageCount: map['activatedStorageCount'] == null ? null : (map['activatedStorageCount'] as int).input(),
      additionalStorageCount: map['additionalStorageCount'] == null ? null : (map['additionalStorageCount'] as int).input(),
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      availabilityZone: map['availabilityZone'] == null ? null : (map['availabilityZone'] as String).input(),
      availabilityZoneId: map['availabilityZoneId'] == null ? null : (map['availabilityZoneId'] as String).input(),
      availableStorageSizeInGbs: map['availableStorageSizeInGbs'] == null ? null : (map['availableStorageSizeInGbs'] as int).input(),
      computeCount: map['computeCount'] == null ? null : (map['computeCount'] as int).input(),
      computeModel: map['computeModel'] == null ? null : (map['computeModel'] as String).input(),
      cpuCount: map['cpuCount'] == null ? null : (map['cpuCount'] as int).input(),
      createdAt: map['createdAt'] == null ? null : (map['createdAt'] as String).input(),
      customerContactsToSendToOcis: map['customerContactsToSendToOcis'] == null ? null : (pulumi.Input.decodeList<CloudExadataInfrastructureCustomerContactsToSendToOci>(map['customerContactsToSendToOcis'], (value) => CloudExadataInfrastructureCustomerContactsToSendToOci.fromMap((value as Map).cast<String, dynamic>()))).input(),
      dataStorageSizeInTbs: map['dataStorageSizeInTbs'] == null ? null : (map['dataStorageSizeInTbs'] as double).input(),
      databaseServerType: map['databaseServerType'] == null ? null : (map['databaseServerType'] as String).input(),
      dbNodeStorageSizeInGbs: map['dbNodeStorageSizeInGbs'] == null ? null : (map['dbNodeStorageSizeInGbs'] as int).input(),
      dbServerVersion: map['dbServerVersion'] == null ? null : (map['dbServerVersion'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      lastMaintenanceRunId: map['lastMaintenanceRunId'] == null ? null : (map['lastMaintenanceRunId'] as String).input(),
      maintenanceWindow: map['maintenanceWindow'] == null ? null : (CloudExadataInfrastructureMaintenanceWindow.fromMap((map['maintenanceWindow'] as Map).cast<String, dynamic>())).input(),
      maxCpuCount: map['maxCpuCount'] == null ? null : (map['maxCpuCount'] as int).input(),
      maxDataStorageInTbs: map['maxDataStorageInTbs'] == null ? null : (map['maxDataStorageInTbs'] as double).input(),
      maxDbNodeStorageSizeInGbs: map['maxDbNodeStorageSizeInGbs'] == null ? null : (map['maxDbNodeStorageSizeInGbs'] as int).input(),
      maxMemoryInGbs: map['maxMemoryInGbs'] == null ? null : (map['maxMemoryInGbs'] as int).input(),
      memorySizeInGbs: map['memorySizeInGbs'] == null ? null : (map['memorySizeInGbs'] as int).input(),
      monthlyDbServerVersion: map['monthlyDbServerVersion'] == null ? null : (map['monthlyDbServerVersion'] as String).input(),
      monthlyStorageServerVersion: map['monthlyStorageServerVersion'] == null ? null : (map['monthlyStorageServerVersion'] as String).input(),
      nextMaintenanceRunId: map['nextMaintenanceRunId'] == null ? null : (map['nextMaintenanceRunId'] as String).input(),
      ociResourceAnchorName: map['ociResourceAnchorName'] == null ? null : (map['ociResourceAnchorName'] as String).input(),
      ociUrl: map['ociUrl'] == null ? null : (map['ociUrl'] as String).input(),
      ocid: map['ocid'] == null ? null : (map['ocid'] as String).input(),
      percentProgress: map['percentProgress'] == null ? null : (map['percentProgress'] as double).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      shape: map['shape'] == null ? null : (map['shape'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      statusReason: map['statusReason'] == null ? null : (map['statusReason'] as String).input(),
      storageCount: map['storageCount'] == null ? null : (map['storageCount'] as int).input(),
      storageServerType: map['storageServerType'] == null ? null : (map['storageServerType'] as String).input(),
      storageServerVersion: map['storageServerVersion'] == null ? null : (map['storageServerVersion'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
      timeouts: map['timeouts'] == null ? null : (CloudExadataInfrastructureTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())).input(),
      totalStorageSizeInGbs: map['totalStorageSizeInGbs'] == null ? null : (map['totalStorageSizeInGbs'] as int).input(),
    );
  }
}

