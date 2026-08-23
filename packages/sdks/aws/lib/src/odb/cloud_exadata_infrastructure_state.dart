// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_exadata_infrastructure_customer_contacts_to_send_to_oci.dart';
import 'cloud_exadata_infrastructure_maintenance_window.dart';
import 'cloud_exadata_infrastructure_timeouts.dart';

/// Input properties used for looking up and filtering CloudExadataInfrastructure resources.
class CloudExadataInfrastructureState {
  /// Number of storage servers requested for the Exadata infrastructure.
  final pulumi.Input<int>? activatedStorageCount;
  /// Number of storage servers requested for the Exadata infrastructure.
  final pulumi.Input<int>? additionalStorageCount;
  /// Amazon Resource Name (ARN) of the Exadata infrastructure.
  final pulumi.Input<String>? arn;
  /// Name of the Availability Zone (AZ) where the Exadata infrastructure is located. Changing this will force terraform to create new resource.
  final pulumi.Input<String>? availabilityZone;
  /// AZ ID of the AZ where the Exadata infrastructure is located. Changing this will force terraform to create new resource.
  final pulumi.Input<String>? availabilityZoneId;
  /// Amount of available storage, in gigabytes (GB), for the Exadata infrastructure.
  final pulumi.Input<int>? availableStorageSizeInGbs;
  /// Number of compute instances that the Exadata infrastructure is located. Changing this will force terraform to create new resource.
  final pulumi.Input<int>? computeCount;
  /// OCI model compute model used when you create or clone an instance: ECPU or OCPU.
  final pulumi.Input<String>? computeModel;
  /// Total number of CPU cores that are allocated to the Exadata infrastructure.
  final pulumi.Input<int>? cpuCount;
  /// Time when the Exadata infrastructure was created.
  final pulumi.Input<String>? createdAt;
  /// Email addresses of contacts to receive notification from Oracle about maintenance updates for the Exadata infrastructure. Changing this will force terraform to create new resource. See `customerContactsToSendToOci` Block below.
  final pulumi.Input<List<CloudExadataInfrastructureCustomerContactsToSendToOci>>? customerContactsToSendToOcis;
  /// Size of the Exadata infrastructure's data disk group, in terabytes (TB).
  final pulumi.Input<double>? dataStorageSizeInTbs;
  /// Database server model type of the Exadata infrastructure. For the list of valid model names, use the ListDbSystemShapes operation. This is a mandatory parameter for Exadata.X11M system shape. Changing this will force terraform to create new resource.
  final pulumi.Input<String>? databaseServerType;
  /// Size of the Exadata infrastructure's local node storage, in gigabytes (GB).
  final pulumi.Input<int>? dbNodeStorageSizeInGbs;
  /// Software version of the database servers (dom0) in the Exadata infrastructure.
  final pulumi.Input<String>? dbServerVersion;
  /// User-friendly name for the Exadata infrastructure. Changing this will force terraform to create a new resource.
  final pulumi.Input<String>? displayName;
  /// Oracle Cloud Identifier (OCID) of the last maintenance run for the Exadata infrastructure.
  final pulumi.Input<String>? lastMaintenanceRunId;
  /// The scheduling details for the maintenance window. Patching and system updates take place during the maintenance window
  final pulumi.Input<CloudExadataInfrastructureMaintenanceWindow>? maintenanceWindow;
  /// Total number of CPU cores available on the Exadata infrastructure.
  final pulumi.Input<int>? maxCpuCount;
  /// Total amount of data disk group storage, in terabytes (TB), that's available on the Exadata infrastructure.
  final pulumi.Input<double>? maxDataStorageInTbs;
  /// Total amount of local node storage, in gigabytes (GB), that's available on the Exadata infrastructure.
  final pulumi.Input<int>? maxDbNodeStorageSizeInGbs;
  /// Total amount of memory in gigabytes (GB) available on the Exadata infrastructure.
  final pulumi.Input<int>? maxMemoryInGbs;
  /// Amount of memory, in gigabytes (GB), that's allocated on the Exadata infrastructure.
  final pulumi.Input<int>? memorySizeInGbs;
  /// Monthly software version of the database servers in the Exadata infrastructure.
  final pulumi.Input<String>? monthlyDbServerVersion;
  /// Monthly software version of the storage servers installed on the Exadata infrastructure.
  final pulumi.Input<String>? monthlyStorageServerVersion;
  /// OCID of the next maintenance run for the Exadata infrastructure.
  final pulumi.Input<String>? nextMaintenanceRunId;
  /// Name of the OCI resource anchor for the Exadata infrastructure.
  final pulumi.Input<String>? ociResourceAnchorName;
  /// HTTPS link to the Exadata infrastructure in OCI.
  final pulumi.Input<String>? ociUrl;
  /// OCID of the Exadata infrastructure.
  final pulumi.Input<String>? ocid;
  /// Amount of progress made on the current operation on the Exadata infrastructure, expressed as a percentage.
  final pulumi.Input<double>? percentProgress;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Model name of the Exadata infrastructure. Changing this will force terraform to create new resource.
  final pulumi.Input<String>? shape;
  /// Current status of the Exadata infrastructure.
  final pulumi.Input<String>? status;
  /// Additional information about the status of the Exadata infrastructure.
  final pulumi.Input<String>? statusReason;
  /// Number of storage servers that are activated for the Exadata infrastructure. Changing this will force terraform to create new resource.
  ///
  /// The following arguments are optional:
  final pulumi.Input<int>? storageCount;
  /// Storage server model type of the Exadata infrastructure. For the list of valid model names, use the ListDbSystemShapes operation. This is a mandatory parameter for Exadata.X11M system shape. Changing this will force terraform to create new resource.
  final pulumi.Input<String>? storageServerType;
  /// Software version of the storage servers on the Exadata infrastructure.
  final pulumi.Input<String>? storageServerVersion;
  /// Map of tags to assign to the exadata infrastructure. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<CloudExadataInfrastructureTimeouts>? timeouts;
  /// Total amount of storage, in gigabytes (GB), on the Exadata infrastructure.
  final pulumi.Input<int>? totalStorageSizeInGbs;

  /// Creates a new [CloudExadataInfrastructureState].
  /// [activatedStorageCount] Number of storage servers requested for the Exadata infrastructure.
  /// [additionalStorageCount] Number of storage servers requested for the Exadata infrastructure.
  /// [arn] Amazon Resource Name (ARN) of the Exadata infrastructure.
  /// [availabilityZone] Name of the Availability Zone (AZ) where the Exadata infrastructure is located. Changing this will force terraform to create new resource.
  /// [availabilityZoneId] AZ ID of the AZ where the Exadata infrastructure is located. Changing this will force terraform to create new resource.
  /// [availableStorageSizeInGbs] Amount of available storage, in gigabytes (GB), for the Exadata infrastructure.
  /// [computeCount] Number of compute instances that the Exadata infrastructure is located. Changing this will force terraform to create new resource.
  /// [computeModel] OCI model compute model used when you create or clone an instance: ECPU or OCPU.
  /// [cpuCount] Total number of CPU cores that are allocated to the Exadata infrastructure.
  /// [createdAt] Time when the Exadata infrastructure was created.
  /// [customerContactsToSendToOcis] Email addresses of contacts to receive notification from Oracle about maintenance updates for the Exadata infrastructure. Changing this will force terraform to create new resource. See `customerContactsToSendToOci` Block below.
  /// [dataStorageSizeInTbs] Size of the Exadata infrastructure's data disk group, in terabytes (TB).
  /// [databaseServerType] Database server model type of the Exadata infrastructure. For the list of valid model names, use the ListDbSystemShapes operation. This is a mandatory parameter for Exadata.X11M system shape. Changing this will force terraform to create new resource.
  /// [dbNodeStorageSizeInGbs] Size of the Exadata infrastructure's local node storage, in gigabytes (GB).
  /// [dbServerVersion] Software version of the database servers (dom0) in the Exadata infrastructure.
  /// [displayName] User-friendly name for the Exadata infrastructure. Changing this will force terraform to create a new resource.
  /// [lastMaintenanceRunId] Oracle Cloud Identifier (OCID) of the last maintenance run for the Exadata infrastructure.
  /// [maintenanceWindow] The scheduling details for the maintenance window. Patching and system updates take place during the maintenance window
  /// [maxCpuCount] Total number of CPU cores available on the Exadata infrastructure.
  /// [maxDataStorageInTbs] Total amount of data disk group storage, in terabytes (TB), that's available on the Exadata infrastructure.
  /// [maxDbNodeStorageSizeInGbs] Total amount of local node storage, in gigabytes (GB), that's available on the Exadata infrastructure.
  /// [maxMemoryInGbs] Total amount of memory in gigabytes (GB) available on the Exadata infrastructure.
  /// [memorySizeInGbs] Amount of memory, in gigabytes (GB), that's allocated on the Exadata infrastructure.
  /// [monthlyDbServerVersion] Monthly software version of the database servers in the Exadata infrastructure.
  /// [monthlyStorageServerVersion] Monthly software version of the storage servers installed on the Exadata infrastructure.
  /// [nextMaintenanceRunId] OCID of the next maintenance run for the Exadata infrastructure.
  /// [ociResourceAnchorName] Name of the OCI resource anchor for the Exadata infrastructure.
  /// [ociUrl] HTTPS link to the Exadata infrastructure in OCI.
  /// [ocid] OCID of the Exadata infrastructure.
  /// [percentProgress] Amount of progress made on the current operation on the Exadata infrastructure, expressed as a percentage.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [shape] Model name of the Exadata infrastructure. Changing this will force terraform to create new resource.
  /// [status] Current status of the Exadata infrastructure.
  /// [statusReason] Additional information about the status of the Exadata infrastructure.
  /// [storageCount] Number of storage servers that are activated for the Exadata infrastructure. Changing this will force terraform to create new resource.
  /// [storageServerType] Storage server model type of the Exadata infrastructure. For the list of valid model names, use the ListDbSystemShapes operation. This is a mandatory parameter for Exadata.X11M system shape. Changing this will force terraform to create new resource.
  /// [storageServerVersion] Software version of the storage servers on the Exadata infrastructure.
  /// [tags] Map of tags to assign to the exadata infrastructure. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Optional.
  /// [timeouts] Optional.
  /// [totalStorageSizeInGbs] Total amount of storage, in gigabytes (GB), on the Exadata infrastructure.
  const CloudExadataInfrastructureState({
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
      activatedStorageCount: (() { final guardedValue = map['activatedStorageCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      additionalStorageCount: (() { final guardedValue = map['additionalStorageCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      availabilityZone: (() { final guardedValue = map['availabilityZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      availabilityZoneId: (() { final guardedValue = map['availabilityZoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      availableStorageSizeInGbs: (() { final guardedValue = map['availableStorageSizeInGbs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      computeCount: (() { final guardedValue = map['computeCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      computeModel: (() { final guardedValue = map['computeModel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cpuCount: (() { final guardedValue = map['cpuCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customerContactsToSendToOcis: (() { final guardedValue = map['customerContactsToSendToOcis']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CloudExadataInfrastructureCustomerContactsToSendToOci>(guardedValue, (value) => CloudExadataInfrastructureCustomerContactsToSendToOci.fromMap((value as Map).cast<String, dynamic>()))); })(),
      dataStorageSizeInTbs: (() { final guardedValue = map['dataStorageSizeInTbs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      databaseServerType: (() { final guardedValue = map['databaseServerType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbNodeStorageSizeInGbs: (() { final guardedValue = map['dbNodeStorageSizeInGbs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      dbServerVersion: (() { final guardedValue = map['dbServerVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastMaintenanceRunId: (() { final guardedValue = map['lastMaintenanceRunId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maintenanceWindow: (() { final guardedValue = map['maintenanceWindow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CloudExadataInfrastructureMaintenanceWindow.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      maxCpuCount: (() { final guardedValue = map['maxCpuCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maxDataStorageInTbs: (() { final guardedValue = map['maxDataStorageInTbs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      maxDbNodeStorageSizeInGbs: (() { final guardedValue = map['maxDbNodeStorageSizeInGbs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maxMemoryInGbs: (() { final guardedValue = map['maxMemoryInGbs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      memorySizeInGbs: (() { final guardedValue = map['memorySizeInGbs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      monthlyDbServerVersion: (() { final guardedValue = map['monthlyDbServerVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      monthlyStorageServerVersion: (() { final guardedValue = map['monthlyStorageServerVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nextMaintenanceRunId: (() { final guardedValue = map['nextMaintenanceRunId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ociResourceAnchorName: (() { final guardedValue = map['ociResourceAnchorName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ociUrl: (() { final guardedValue = map['ociUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ocid: (() { final guardedValue = map['ocid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      percentProgress: (() { final guardedValue = map['percentProgress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      shape: (() { final guardedValue = map['shape']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      statusReason: (() { final guardedValue = map['statusReason']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageCount: (() { final guardedValue = map['storageCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      storageServerType: (() { final guardedValue = map['storageServerType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageServerVersion: (() { final guardedValue = map['storageServerVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CloudExadataInfrastructureTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      totalStorageSizeInGbs: (() { final guardedValue = map['totalStorageSizeInGbs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
