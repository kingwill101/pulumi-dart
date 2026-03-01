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
    pulumi.Output<int>? activatedStorageCount,
    pulumi.Output<int>? additionalStorageCount,
    pulumi.Output<String>? arn,
    pulumi.Output<String>? availabilityZone,
    pulumi.Output<String>? availabilityZoneId,
    pulumi.Output<int>? availableStorageSizeInGbs,
    pulumi.Output<int>? computeCount,
    pulumi.Output<String>? computeModel,
    pulumi.Output<int>? cpuCount,
    pulumi.Output<String>? createdAt,
    pulumi.Output<List<CloudExadataInfrastructureCustomerContactsToSendToOci>>? customerContactsToSendToOcis,
    pulumi.Output<double>? dataStorageSizeInTbs,
    pulumi.Output<String>? databaseServerType,
    pulumi.Output<int>? dbNodeStorageSizeInGbs,
    pulumi.Output<String>? dbServerVersion,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? lastMaintenanceRunId,
    pulumi.Output<CloudExadataInfrastructureMaintenanceWindow>? maintenanceWindow,
    pulumi.Output<int>? maxCpuCount,
    pulumi.Output<double>? maxDataStorageInTbs,
    pulumi.Output<int>? maxDbNodeStorageSizeInGbs,
    pulumi.Output<int>? maxMemoryInGbs,
    pulumi.Output<int>? memorySizeInGbs,
    pulumi.Output<String>? monthlyDbServerVersion,
    pulumi.Output<String>? monthlyStorageServerVersion,
    pulumi.Output<String>? nextMaintenanceRunId,
    pulumi.Output<String>? ociResourceAnchorName,
    pulumi.Output<String>? ociUrl,
    pulumi.Output<String>? ocid,
    pulumi.Output<double>? percentProgress,
    pulumi.Output<String>? region,
    pulumi.Output<String>? shape,
    pulumi.Output<String>? status,
    pulumi.Output<String>? statusReason,
    pulumi.Output<int>? storageCount,
    pulumi.Output<String>? storageServerType,
    pulumi.Output<String>? storageServerVersion,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<CloudExadataInfrastructureTimeouts>? timeouts,
    pulumi.Output<int>? totalStorageSizeInGbs,
  }) :
      activatedStorageCount = pulumi.Input.asOptionalInput<int>(activatedStorageCount),
      additionalStorageCount = pulumi.Input.asOptionalInput<int>(additionalStorageCount),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      availabilityZone = pulumi.Input.asOptionalInput<String>(availabilityZone),
      availabilityZoneId = pulumi.Input.asOptionalInput<String>(availabilityZoneId),
      availableStorageSizeInGbs = pulumi.Input.asOptionalInput<int>(availableStorageSizeInGbs),
      computeCount = pulumi.Input.asOptionalInput<int>(computeCount),
      computeModel = pulumi.Input.asOptionalInput<String>(computeModel),
      cpuCount = pulumi.Input.asOptionalInput<int>(cpuCount),
      createdAt = pulumi.Input.asOptionalInput<String>(createdAt),
      customerContactsToSendToOcis = pulumi.Input.asOptionalInput<List<CloudExadataInfrastructureCustomerContactsToSendToOci>>(customerContactsToSendToOcis),
      dataStorageSizeInTbs = pulumi.Input.asOptionalInput<double>(dataStorageSizeInTbs),
      databaseServerType = pulumi.Input.asOptionalInput<String>(databaseServerType),
      dbNodeStorageSizeInGbs = pulumi.Input.asOptionalInput<int>(dbNodeStorageSizeInGbs),
      dbServerVersion = pulumi.Input.asOptionalInput<String>(dbServerVersion),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      lastMaintenanceRunId = pulumi.Input.asOptionalInput<String>(lastMaintenanceRunId),
      maintenanceWindow = pulumi.Input.asOptionalInput<CloudExadataInfrastructureMaintenanceWindow>(maintenanceWindow),
      maxCpuCount = pulumi.Input.asOptionalInput<int>(maxCpuCount),
      maxDataStorageInTbs = pulumi.Input.asOptionalInput<double>(maxDataStorageInTbs),
      maxDbNodeStorageSizeInGbs = pulumi.Input.asOptionalInput<int>(maxDbNodeStorageSizeInGbs),
      maxMemoryInGbs = pulumi.Input.asOptionalInput<int>(maxMemoryInGbs),
      memorySizeInGbs = pulumi.Input.asOptionalInput<int>(memorySizeInGbs),
      monthlyDbServerVersion = pulumi.Input.asOptionalInput<String>(monthlyDbServerVersion),
      monthlyStorageServerVersion = pulumi.Input.asOptionalInput<String>(monthlyStorageServerVersion),
      nextMaintenanceRunId = pulumi.Input.asOptionalInput<String>(nextMaintenanceRunId),
      ociResourceAnchorName = pulumi.Input.asOptionalInput<String>(ociResourceAnchorName),
      ociUrl = pulumi.Input.asOptionalInput<String>(ociUrl),
      ocid = pulumi.Input.asOptionalInput<String>(ocid),
      percentProgress = pulumi.Input.asOptionalInput<double>(percentProgress),
      region = pulumi.Input.asOptionalInput<String>(region),
      shape = pulumi.Input.asOptionalInput<String>(shape),
      status = pulumi.Input.asOptionalInput<String>(status),
      statusReason = pulumi.Input.asOptionalInput<String>(statusReason),
      storageCount = pulumi.Input.asOptionalInput<int>(storageCount),
      storageServerType = pulumi.Input.asOptionalInput<String>(storageServerType),
      storageServerVersion = pulumi.Input.asOptionalInput<String>(storageServerVersion),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      timeouts = pulumi.Input.asOptionalInput<CloudExadataInfrastructureTimeouts>(timeouts),
      totalStorageSizeInGbs = pulumi.Input.asOptionalInput<int>(totalStorageSizeInGbs);

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
      activatedStorageCount: map['activatedStorageCount'] == null ? null : pulumi.Output.create<int>(map['activatedStorageCount'] as int),
      additionalStorageCount: map['additionalStorageCount'] == null ? null : pulumi.Output.create<int>(map['additionalStorageCount'] as int),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      availabilityZone: map['availabilityZone'] == null ? null : pulumi.Output.create<String>(map['availabilityZone'] as String),
      availabilityZoneId: map['availabilityZoneId'] == null ? null : pulumi.Output.create<String>(map['availabilityZoneId'] as String),
      availableStorageSizeInGbs: map['availableStorageSizeInGbs'] == null ? null : pulumi.Output.create<int>(map['availableStorageSizeInGbs'] as int),
      computeCount: map['computeCount'] == null ? null : pulumi.Output.create<int>(map['computeCount'] as int),
      computeModel: map['computeModel'] == null ? null : pulumi.Output.create<String>(map['computeModel'] as String),
      cpuCount: map['cpuCount'] == null ? null : pulumi.Output.create<int>(map['cpuCount'] as int),
      createdAt: map['createdAt'] == null ? null : pulumi.Output.create<String>(map['createdAt'] as String),
      customerContactsToSendToOcis: map['customerContactsToSendToOcis'] == null ? null : pulumi.Output.create<List<CloudExadataInfrastructureCustomerContactsToSendToOci>>(pulumi.Input.decodeList<CloudExadataInfrastructureCustomerContactsToSendToOci>(map['customerContactsToSendToOcis'], (value) => CloudExadataInfrastructureCustomerContactsToSendToOci.fromMap((value as Map).cast<String, dynamic>()))),
      dataStorageSizeInTbs: map['dataStorageSizeInTbs'] == null ? null : pulumi.Output.create<double>(map['dataStorageSizeInTbs'] as double),
      databaseServerType: map['databaseServerType'] == null ? null : pulumi.Output.create<String>(map['databaseServerType'] as String),
      dbNodeStorageSizeInGbs: map['dbNodeStorageSizeInGbs'] == null ? null : pulumi.Output.create<int>(map['dbNodeStorageSizeInGbs'] as int),
      dbServerVersion: map['dbServerVersion'] == null ? null : pulumi.Output.create<String>(map['dbServerVersion'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      lastMaintenanceRunId: map['lastMaintenanceRunId'] == null ? null : pulumi.Output.create<String>(map['lastMaintenanceRunId'] as String),
      maintenanceWindow: map['maintenanceWindow'] == null ? null : pulumi.Output.create<CloudExadataInfrastructureMaintenanceWindow>(CloudExadataInfrastructureMaintenanceWindow.fromMap((map['maintenanceWindow'] as Map).cast<String, dynamic>())),
      maxCpuCount: map['maxCpuCount'] == null ? null : pulumi.Output.create<int>(map['maxCpuCount'] as int),
      maxDataStorageInTbs: map['maxDataStorageInTbs'] == null ? null : pulumi.Output.create<double>(map['maxDataStorageInTbs'] as double),
      maxDbNodeStorageSizeInGbs: map['maxDbNodeStorageSizeInGbs'] == null ? null : pulumi.Output.create<int>(map['maxDbNodeStorageSizeInGbs'] as int),
      maxMemoryInGbs: map['maxMemoryInGbs'] == null ? null : pulumi.Output.create<int>(map['maxMemoryInGbs'] as int),
      memorySizeInGbs: map['memorySizeInGbs'] == null ? null : pulumi.Output.create<int>(map['memorySizeInGbs'] as int),
      monthlyDbServerVersion: map['monthlyDbServerVersion'] == null ? null : pulumi.Output.create<String>(map['monthlyDbServerVersion'] as String),
      monthlyStorageServerVersion: map['monthlyStorageServerVersion'] == null ? null : pulumi.Output.create<String>(map['monthlyStorageServerVersion'] as String),
      nextMaintenanceRunId: map['nextMaintenanceRunId'] == null ? null : pulumi.Output.create<String>(map['nextMaintenanceRunId'] as String),
      ociResourceAnchorName: map['ociResourceAnchorName'] == null ? null : pulumi.Output.create<String>(map['ociResourceAnchorName'] as String),
      ociUrl: map['ociUrl'] == null ? null : pulumi.Output.create<String>(map['ociUrl'] as String),
      ocid: map['ocid'] == null ? null : pulumi.Output.create<String>(map['ocid'] as String),
      percentProgress: map['percentProgress'] == null ? null : pulumi.Output.create<double>(map['percentProgress'] as double),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      shape: map['shape'] == null ? null : pulumi.Output.create<String>(map['shape'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      statusReason: map['statusReason'] == null ? null : pulumi.Output.create<String>(map['statusReason'] as String),
      storageCount: map['storageCount'] == null ? null : pulumi.Output.create<int>(map['storageCount'] as int),
      storageServerType: map['storageServerType'] == null ? null : pulumi.Output.create<String>(map['storageServerType'] as String),
      storageServerVersion: map['storageServerVersion'] == null ? null : pulumi.Output.create<String>(map['storageServerVersion'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<CloudExadataInfrastructureTimeouts>(CloudExadataInfrastructureTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
      totalStorageSizeInGbs: map['totalStorageSizeInGbs'] == null ? null : pulumi.Output.create<int>(map['totalStorageSizeInGbs'] as int),
    );
  }
}

