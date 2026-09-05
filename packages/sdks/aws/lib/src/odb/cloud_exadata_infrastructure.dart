import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_exadata_infrastructure_args.dart';
import 'cloud_exadata_infrastructure_customer_contacts_to_send_to_oci.dart';
import 'cloud_exadata_infrastructure_maintenance_window.dart';
import 'cloud_exadata_infrastructure_state.dart';
import 'cloud_exadata_infrastructure_timeouts.dart';

/// Resource for managing exadata infrastructure resource in AWS for Oracle Database@AWS.
///
/// ## Example Usage
///
/// ## Import
///
/// Using `pulumi import`, import Exadata Infrastructure using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:odb/cloudExadataInfrastructure:CloudExadataInfrastructure example example
/// ```
class CloudExadataInfrastructure extends pulumi.CustomResource {
  /// Number of storage servers requested for the Exadata infrastructure.
  late final pulumi.Output<int> activatedStorageCount;
  /// Number of storage servers requested for the Exadata infrastructure.
  late final pulumi.Output<int> additionalStorageCount;
  /// ARN of the Exadata infrastructure.
  late final pulumi.Output<String> arn;
  /// Name of the Availability Zone (AZ) where the Exadata infrastructure is located. Changing this will force terraform to create new resource.
  late final pulumi.Output<String> availabilityZone;
  /// AZ ID of the AZ where the Exadata infrastructure is located. Changing this will force terraform to create new resource.
  late final pulumi.Output<String> availabilityZoneId;
  /// Amount of available storage, in gigabytes (GB), for the Exadata infrastructure.
  late final pulumi.Output<int> availableStorageSizeInGbs;
  /// Number of compute instances that the Exadata infrastructure is located. Changing this will force terraform to create new resource.
  late final pulumi.Output<int> computeCount;
  /// OCI model compute model used when you create or clone an instance: ECPU or OCPU.
  late final pulumi.Output<String> computeModel;
  /// Total number of CPU cores that are allocated to the Exadata infrastructure.
  late final pulumi.Output<int> cpuCount;
  /// Time when the Exadata infrastructure was created.
  late final pulumi.Output<String> createdAt;
  /// Email addresses of contacts to receive notification from Oracle about maintenance updates for the Exadata infrastructure. Changing this will force terraform to create new resource. See `customerContactsToSendToOci` Block below.
  late final pulumi.Output<List<CloudExadataInfrastructureCustomerContactsToSendToOci>?> customerContactsToSendToOcis;
  /// Size of the Exadata infrastructure's data disk group, in terabytes (TB).
  late final pulumi.Output<double> dataStorageSizeInTbs;
  /// Database server model type of the Exadata infrastructure. For the list of valid model names, use the ListDbSystemShapes operation. This is a mandatory parameter for Exadata.X11M system shape. Changing this will force terraform to create new resource.
  late final pulumi.Output<String?> databaseServerType;
  /// Size of the Exadata infrastructure's local node storage, in gigabytes (GB).
  late final pulumi.Output<int> dbNodeStorageSizeInGbs;
  /// Software version of the database servers (dom0) in the Exadata infrastructure.
  late final pulumi.Output<String> dbServerVersion;
  /// User-friendly name for the Exadata infrastructure. Changing this will force terraform to create a new resource.
  late final pulumi.Output<String> displayName;
  /// Oracle Cloud Identifier (OCID) of the last maintenance run for the Exadata infrastructure.
  late final pulumi.Output<String> lastMaintenanceRunId;
  /// The scheduling details for the maintenance window. Patching and system updates take place during the maintenance window
  late final pulumi.Output<CloudExadataInfrastructureMaintenanceWindow> maintenanceWindow;
  /// Total number of CPU cores available on the Exadata infrastructure.
  late final pulumi.Output<int> maxCpuCount;
  /// Total amount of data disk group storage, in terabytes (TB), that's available on the Exadata infrastructure.
  late final pulumi.Output<double> maxDataStorageInTbs;
  /// Total amount of local node storage, in gigabytes (GB), that's available on the Exadata infrastructure.
  late final pulumi.Output<int> maxDbNodeStorageSizeInGbs;
  /// Total amount of memory in gigabytes (GB) available on the Exadata infrastructure.
  late final pulumi.Output<int> maxMemoryInGbs;
  /// Amount of memory, in gigabytes (GB), that's allocated on the Exadata infrastructure.
  late final pulumi.Output<int> memorySizeInGbs;
  /// Monthly software version of the database servers in the Exadata infrastructure.
  late final pulumi.Output<String> monthlyDbServerVersion;
  /// Monthly software version of the storage servers installed on the Exadata infrastructure.
  late final pulumi.Output<String> monthlyStorageServerVersion;
  /// OCID of the next maintenance run for the Exadata infrastructure.
  late final pulumi.Output<String> nextMaintenanceRunId;
  /// Name of the OCI resource anchor for the Exadata infrastructure.
  late final pulumi.Output<String> ociResourceAnchorName;
  /// HTTPS link to the Exadata infrastructure in OCI.
  late final pulumi.Output<String> ociUrl;
  /// OCID of the Exadata infrastructure.
  late final pulumi.Output<String> ocid;
  /// Amount of progress made on the current operation on the Exadata infrastructure, expressed as a percentage.
  late final pulumi.Output<double> percentProgress;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Model name of the Exadata infrastructure. Changing this will force terraform to create new resource.
  late final pulumi.Output<String> shape;
  /// Current status of the Exadata infrastructure.
  late final pulumi.Output<String> status;
  /// Additional information about the status of the Exadata infrastructure.
  late final pulumi.Output<String> statusReason;
  /// Number of storage servers that are activated for the Exadata infrastructure. Changing this will force terraform to create new resource.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<int> storageCount;
  /// Storage server model type of the Exadata infrastructure. For the list of valid model names, use the ListDbSystemShapes operation. This is a mandatory parameter for Exadata.X11M system shape. Changing this will force terraform to create new resource.
  late final pulumi.Output<String?> storageServerType;
  /// Software version of the storage servers on the Exadata infrastructure.
  late final pulumi.Output<String> storageServerVersion;
  /// Map of tags to assign to the exadata infrastructure. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<CloudExadataInfrastructureTimeouts?> timeouts;
  /// Total amount of storage, in gigabytes (GB), on the Exadata infrastructure.
  late final pulumi.Output<int> totalStorageSizeInGbs;

  /// Creates a new [CloudExadataInfrastructure].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CloudExadataInfrastructure]. {@macro pulumi_odb_cloud_exadata_infrastructure_cloud_exadata_infrastructure_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CloudExadataInfrastructure(
    String name, {
    CloudExadataInfrastructureArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:odb/cloudExadataInfrastructure:CloudExadataInfrastructure',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    activatedStorageCount = registerOutput<int>('activatedStorageCount');
    additionalStorageCount = registerOutput<int>('additionalStorageCount');
    arn = registerOutput<String>('arn');
    availabilityZone = registerOutput<String>('availabilityZone');
    availabilityZoneId = registerOutput<String>('availabilityZoneId');
    availableStorageSizeInGbs = registerOutput<int>('availableStorageSizeInGbs');
    computeCount = registerOutput<int>('computeCount');
    computeModel = registerOutput<String>('computeModel');
    cpuCount = registerOutput<int>('cpuCount');
    createdAt = registerOutput<String>('createdAt');
    customerContactsToSendToOcis = registerOutput<List<CloudExadataInfrastructureCustomerContactsToSendToOci>?>('customerContactsToSendToOcis', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CloudExadataInfrastructureCustomerContactsToSendToOci>(guardedValue, (value) => CloudExadataInfrastructureCustomerContactsToSendToOci.fromMap((value as Map).cast<String, dynamic>())); });
    dataStorageSizeInTbs = registerOutput<double>('dataStorageSizeInTbs');
    databaseServerType = registerOutput<String?>('databaseServerType');
    dbNodeStorageSizeInGbs = registerOutput<int>('dbNodeStorageSizeInGbs');
    dbServerVersion = registerOutput<String>('dbServerVersion');
    displayName = registerOutput<String>('displayName');
    lastMaintenanceRunId = registerOutput<String>('lastMaintenanceRunId');
    maintenanceWindow = registerOutput<CloudExadataInfrastructureMaintenanceWindow>('maintenanceWindow', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CloudExadataInfrastructureMaintenanceWindow.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    maxCpuCount = registerOutput<int>('maxCpuCount');
    maxDataStorageInTbs = registerOutput<double>('maxDataStorageInTbs');
    maxDbNodeStorageSizeInGbs = registerOutput<int>('maxDbNodeStorageSizeInGbs');
    maxMemoryInGbs = registerOutput<int>('maxMemoryInGbs');
    memorySizeInGbs = registerOutput<int>('memorySizeInGbs');
    monthlyDbServerVersion = registerOutput<String>('monthlyDbServerVersion');
    monthlyStorageServerVersion = registerOutput<String>('monthlyStorageServerVersion');
    nextMaintenanceRunId = registerOutput<String>('nextMaintenanceRunId');
    ociResourceAnchorName = registerOutput<String>('ociResourceAnchorName');
    ociUrl = registerOutput<String>('ociUrl');
    ocid = registerOutput<String>('ocid');
    percentProgress = registerOutput<double>('percentProgress');
    region = registerOutput<String>('region');
    shape = registerOutput<String>('shape');
    status = registerOutput<String>('status');
    statusReason = registerOutput<String>('statusReason');
    storageCount = registerOutput<int>('storageCount');
    storageServerType = registerOutput<String?>('storageServerType');
    storageServerVersion = registerOutput<String>('storageServerVersion');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<CloudExadataInfrastructureTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CloudExadataInfrastructureTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    totalStorageSizeInGbs = registerOutput<int>('totalStorageSizeInGbs');
  }

  /// Gets an existing [CloudExadataInfrastructure] resource's state with the given [name] and [id].
  static CloudExadataInfrastructure get(
    String name,
    pulumi.Input<String> id, {
    CloudExadataInfrastructureState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return CloudExadataInfrastructure._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  CloudExadataInfrastructure._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:odb/cloudExadataInfrastructure:CloudExadataInfrastructure',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    activatedStorageCount = registerOutput<int>('activatedStorageCount');
    additionalStorageCount = registerOutput<int>('additionalStorageCount');
    arn = registerOutput<String>('arn');
    availabilityZone = registerOutput<String>('availabilityZone');
    availabilityZoneId = registerOutput<String>('availabilityZoneId');
    availableStorageSizeInGbs = registerOutput<int>('availableStorageSizeInGbs');
    computeCount = registerOutput<int>('computeCount');
    computeModel = registerOutput<String>('computeModel');
    cpuCount = registerOutput<int>('cpuCount');
    createdAt = registerOutput<String>('createdAt');
    customerContactsToSendToOcis = registerOutput<List<CloudExadataInfrastructureCustomerContactsToSendToOci>?>('customerContactsToSendToOcis', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CloudExadataInfrastructureCustomerContactsToSendToOci>(guardedValue, (value) => CloudExadataInfrastructureCustomerContactsToSendToOci.fromMap((value as Map).cast<String, dynamic>())); });
    dataStorageSizeInTbs = registerOutput<double>('dataStorageSizeInTbs');
    databaseServerType = registerOutput<String?>('databaseServerType');
    dbNodeStorageSizeInGbs = registerOutput<int>('dbNodeStorageSizeInGbs');
    dbServerVersion = registerOutput<String>('dbServerVersion');
    displayName = registerOutput<String>('displayName');
    lastMaintenanceRunId = registerOutput<String>('lastMaintenanceRunId');
    maintenanceWindow = registerOutput<CloudExadataInfrastructureMaintenanceWindow>('maintenanceWindow', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CloudExadataInfrastructureMaintenanceWindow.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    maxCpuCount = registerOutput<int>('maxCpuCount');
    maxDataStorageInTbs = registerOutput<double>('maxDataStorageInTbs');
    maxDbNodeStorageSizeInGbs = registerOutput<int>('maxDbNodeStorageSizeInGbs');
    maxMemoryInGbs = registerOutput<int>('maxMemoryInGbs');
    memorySizeInGbs = registerOutput<int>('memorySizeInGbs');
    monthlyDbServerVersion = registerOutput<String>('monthlyDbServerVersion');
    monthlyStorageServerVersion = registerOutput<String>('monthlyStorageServerVersion');
    nextMaintenanceRunId = registerOutput<String>('nextMaintenanceRunId');
    ociResourceAnchorName = registerOutput<String>('ociResourceAnchorName');
    ociUrl = registerOutput<String>('ociUrl');
    ocid = registerOutput<String>('ocid');
    percentProgress = registerOutput<double>('percentProgress');
    region = registerOutput<String>('region');
    shape = registerOutput<String>('shape');
    status = registerOutput<String>('status');
    statusReason = registerOutput<String>('statusReason');
    storageCount = registerOutput<int>('storageCount');
    storageServerType = registerOutput<String?>('storageServerType');
    storageServerVersion = registerOutput<String>('storageServerVersion');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<CloudExadataInfrastructureTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CloudExadataInfrastructureTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    totalStorageSizeInGbs = registerOutput<int>('totalStorageSizeInGbs');
  }

  /// Creates a typed reference to an existing [CloudExadataInfrastructure] resource.
  CloudExadataInfrastructure.reference(String urn)
    : super(
        'aws:odb/cloudExadataInfrastructure:CloudExadataInfrastructure',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    activatedStorageCount = registerOutput<int>('activatedStorageCount');
    additionalStorageCount = registerOutput<int>('additionalStorageCount');
    arn = registerOutput<String>('arn');
    availabilityZone = registerOutput<String>('availabilityZone');
    availabilityZoneId = registerOutput<String>('availabilityZoneId');
    availableStorageSizeInGbs = registerOutput<int>('availableStorageSizeInGbs');
    computeCount = registerOutput<int>('computeCount');
    computeModel = registerOutput<String>('computeModel');
    cpuCount = registerOutput<int>('cpuCount');
    createdAt = registerOutput<String>('createdAt');
    customerContactsToSendToOcis = registerOutput<List<CloudExadataInfrastructureCustomerContactsToSendToOci>?>('customerContactsToSendToOcis', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CloudExadataInfrastructureCustomerContactsToSendToOci>(guardedValue, (value) => CloudExadataInfrastructureCustomerContactsToSendToOci.fromMap((value as Map).cast<String, dynamic>())); });
    dataStorageSizeInTbs = registerOutput<double>('dataStorageSizeInTbs');
    databaseServerType = registerOutput<String?>('databaseServerType');
    dbNodeStorageSizeInGbs = registerOutput<int>('dbNodeStorageSizeInGbs');
    dbServerVersion = registerOutput<String>('dbServerVersion');
    displayName = registerOutput<String>('displayName');
    lastMaintenanceRunId = registerOutput<String>('lastMaintenanceRunId');
    maintenanceWindow = registerOutput<CloudExadataInfrastructureMaintenanceWindow>('maintenanceWindow', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CloudExadataInfrastructureMaintenanceWindow.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    maxCpuCount = registerOutput<int>('maxCpuCount');
    maxDataStorageInTbs = registerOutput<double>('maxDataStorageInTbs');
    maxDbNodeStorageSizeInGbs = registerOutput<int>('maxDbNodeStorageSizeInGbs');
    maxMemoryInGbs = registerOutput<int>('maxMemoryInGbs');
    memorySizeInGbs = registerOutput<int>('memorySizeInGbs');
    monthlyDbServerVersion = registerOutput<String>('monthlyDbServerVersion');
    monthlyStorageServerVersion = registerOutput<String>('monthlyStorageServerVersion');
    nextMaintenanceRunId = registerOutput<String>('nextMaintenanceRunId');
    ociResourceAnchorName = registerOutput<String>('ociResourceAnchorName');
    ociUrl = registerOutput<String>('ociUrl');
    ocid = registerOutput<String>('ocid');
    percentProgress = registerOutput<double>('percentProgress');
    region = registerOutput<String>('region');
    shape = registerOutput<String>('shape');
    status = registerOutput<String>('status');
    statusReason = registerOutput<String>('statusReason');
    storageCount = registerOutput<int>('storageCount');
    storageServerType = registerOutput<String?>('storageServerType');
    storageServerVersion = registerOutput<String>('storageServerVersion');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<CloudExadataInfrastructureTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CloudExadataInfrastructureTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    totalStorageSizeInGbs = registerOutput<int>('totalStorageSizeInGbs');
  }
}
