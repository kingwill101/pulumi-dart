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
  final pulumi.Input<
    List<CloudExadataInfrastructureCustomerContactsToSendToOci>
  >?
  customerContactsToSendToOcis;

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
  final pulumi.Input<CloudExadataInfrastructureMaintenanceWindow>?
  maintenanceWindow;

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
      'customerContactsToSendToOcis':
          ?pulumi.Input.mapOptionalInputValue<
            List<CloudExadataInfrastructureCustomerContactsToSendToOci>,
            List<Map<String, dynamic>>
          >(
            customerContactsToSendToOcis,
            (value) =>
                pulumi.Input.encodeList<
                  CloudExadataInfrastructureCustomerContactsToSendToOci,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'dataStorageSizeInTbs': ?dataStorageSizeInTbs,
      'databaseServerType': ?databaseServerType,
      'dbNodeStorageSizeInGbs': ?dbNodeStorageSizeInGbs,
      'dbServerVersion': ?dbServerVersion,
      'displayName': ?displayName,
      'lastMaintenanceRunId': ?lastMaintenanceRunId,
      'maintenanceWindow':
          ?pulumi.Input.mapOptionalInputValue<
            CloudExadataInfrastructureMaintenanceWindow,
            Map<String, dynamic>
          >(maintenanceWindow, (value) => value.toMap()),
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
      'timeouts':
          ?pulumi.Input.mapOptionalInputValue<
            CloudExadataInfrastructureTimeouts,
            Map<String, dynamic>
          >(timeouts, (value) => value.toMap()),
      'totalStorageSizeInGbs': ?totalStorageSizeInGbs,
    };
  }

  factory CloudExadataInfrastructureState.fromMap(Map<String, dynamic> map) {
    return CloudExadataInfrastructureState(
      activatedStorageCount: (() {
        final guardedValue = map['activatedStorageCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      additionalStorageCount: (() {
        final guardedValue = map['additionalStorageCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      arn: (() {
        final guardedValue = map['arn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      availabilityZone: (() {
        final guardedValue = map['availabilityZone'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      availabilityZoneId: (() {
        final guardedValue = map['availabilityZoneId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      availableStorageSizeInGbs: (() {
        final guardedValue = map['availableStorageSizeInGbs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      computeCount: (() {
        final guardedValue = map['computeCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      computeModel: (() {
        final guardedValue = map['computeModel'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      cpuCount: (() {
        final guardedValue = map['cpuCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      createdAt: (() {
        final guardedValue = map['createdAt'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      customerContactsToSendToOcis: (() {
        final guardedValue = map['customerContactsToSendToOcis'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            CloudExadataInfrastructureCustomerContactsToSendToOci
          >(
            guardedValue,
            (value) =>
                CloudExadataInfrastructureCustomerContactsToSendToOci.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      dataStorageSizeInTbs: (() {
        final guardedValue = map['dataStorageSizeInTbs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      databaseServerType: (() {
        final guardedValue = map['databaseServerType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dbNodeStorageSizeInGbs: (() {
        final guardedValue = map['dbNodeStorageSizeInGbs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      dbServerVersion: (() {
        final guardedValue = map['dbServerVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      lastMaintenanceRunId: (() {
        final guardedValue = map['lastMaintenanceRunId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      maintenanceWindow: (() {
        final guardedValue = map['maintenanceWindow'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CloudExadataInfrastructureMaintenanceWindow.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      maxCpuCount: (() {
        final guardedValue = map['maxCpuCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      maxDataStorageInTbs: (() {
        final guardedValue = map['maxDataStorageInTbs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      maxDbNodeStorageSizeInGbs: (() {
        final guardedValue = map['maxDbNodeStorageSizeInGbs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      maxMemoryInGbs: (() {
        final guardedValue = map['maxMemoryInGbs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      memorySizeInGbs: (() {
        final guardedValue = map['memorySizeInGbs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      monthlyDbServerVersion: (() {
        final guardedValue = map['monthlyDbServerVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      monthlyStorageServerVersion: (() {
        final guardedValue = map['monthlyStorageServerVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      nextMaintenanceRunId: (() {
        final guardedValue = map['nextMaintenanceRunId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ociResourceAnchorName: (() {
        final guardedValue = map['ociResourceAnchorName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ociUrl: (() {
        final guardedValue = map['ociUrl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ocid: (() {
        final guardedValue = map['ocid'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      percentProgress: (() {
        final guardedValue = map['percentProgress'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      shape: (() {
        final guardedValue = map['shape'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      statusReason: (() {
        final guardedValue = map['statusReason'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      storageCount: (() {
        final guardedValue = map['storageCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      storageServerType: (() {
        final guardedValue = map['storageServerType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      storageServerVersion: (() {
        final guardedValue = map['storageServerVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      tagsAll: (() {
        final guardedValue = map['tagsAll'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      timeouts: (() {
        final guardedValue = map['timeouts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CloudExadataInfrastructureTimeouts.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      totalStorageSizeInGbs: (() {
        final guardedValue = map['totalStorageSizeInGbs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
