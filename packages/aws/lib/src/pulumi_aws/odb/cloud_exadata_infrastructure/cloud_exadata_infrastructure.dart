import 'package:pulumi/pulumi.dart';
import '../cloud_exadata_infrastructure_customer_contacts_to_send_to_oci/cloud_exadata_infrastructure_customer_contacts_to_send_to_oci.dart';
import '../cloud_exadata_infrastructure_maintenance_window/cloud_exadata_infrastructure_maintenance_window.dart';
import '../cloud_exadata_infrastructure_timeouts/cloud_exadata_infrastructure_timeouts.dart';
import 'cloud_exadata_infrastructure_args.dart';

/// Resource for managing exadata infrastructure resource in AWS for Oracle Database@AWS.
///
/// ## Example Usage
///
/// ## Import
///
/// Using `pulumi import`, import Exadata Infrastructure using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:odb/cloudExadataInfrastructure:CloudExadataInfrastructure example example
/// ```
class CloudExadataInfrastructure extends CustomResource {
  /// The number of storage servers requested for the Exadata infrastructure.
  late final Output<int> activatedStorageCount;

  /// The number of storage servers requested for the Exadata infrastructure.
  late final Output<int> additionalStorageCount;

  /// Amazon Resource Name (ARN) of the Exadata infrastructure.
  late final Output<String> arn;

  /// The name of the Availability Zone (AZ) where the Exadata infrastructure is located. Changing this will force terraform to create new resource.
  late final Output<String> availabilityZone;

  /// The AZ ID of the AZ where the Exadata infrastructure is located. Changing this will force terraform to create new resource.
  ///
  /// The following arguments are optional:
  late final Output<String> availabilityZoneId;

  /// The amount of available storage, in gigabytes (GB), for the Exadata infrastructure.
  late final Output<int> availableStorageSizeInGbs;

  /// The number of compute instances that the Exadata infrastructure is located. Changing this will force terraform to create new resource.
  late final Output<int> computeCount;

  /// The OCI model compute model used when you create or clone an instance: ECPU or OCPU.
  late final Output<String> computeModel;

  /// The total number of CPU cores that are allocated to the Exadata infrastructure.
  late final Output<int> cpuCount;

  /// The time when the Exadata infrastructure was created.
  late final Output<String> createdAt;

  /// The email addresses of contacts to receive notification from Oracle about maintenance updates for the Exadata infrastructure. Changing this will force terraform to create new resource.
  late final Output<
          List<CloudExadataInfrastructureCustomerContactsToSendToOci>?>
      customerContactsToSendToOcis;

  /// The size of the Exadata infrastructure's data disk group, in terabytes (TB).
  late final Output<double> dataStorageSizeInTbs;

  /// The database server model type of the Exadata infrastructure. For the list of valid model names, use the ListDbSystemShapes operation. This is a mandatory parameter for Exadata.X11M system shape. Changing this will force terraform to create new resource.
  late final Output<String?> databaseServerType;

  /// The size of the Exadata infrastructure's local node storage, in gigabytes (GB).
  late final Output<int> dbNodeStorageSizeInGbs;

  /// The software version of the database servers (dom0) in the Exadata infrastructure.
  late final Output<String> dbServerVersion;

  /// The user-friendly name for the Exadata infrastructure. Changing this will force terraform to create a new resource.
  late final Output<String> displayName;

  /// The Oracle Cloud Identifier (OCID) of the last maintenance run for the Exadata infrastructure.
  late final Output<String> lastMaintenanceRunId;

  /// The scheduling details for the maintenance window. Patching and system updates take place during the maintenance window
  late final Output<CloudExadataInfrastructureMaintenanceWindow>
      maintenanceWindow;

  /// The total number of CPU cores available on the Exadata infrastructure.
  late final Output<int> maxCpuCount;

  /// The total amount of data disk group storage, in terabytes (TB), that's available on the Exadata infrastructure.
  late final Output<double> maxDataStorageInTbs;

  /// The total amount of local node storage, in gigabytes (GB), that's available on the Exadata infrastructure.
  late final Output<int> maxDbNodeStorageSizeInGbs;

  /// The total amount of memory in gigabytes (GB) available on the Exadata infrastructure.
  late final Output<int> maxMemoryInGbs;

  /// The amount of memory, in gigabytes (GB), that's allocated on the Exadata infrastructure
  late final Output<int> memorySizeInGbs;

  /// The monthly software version of the database servers in the Exadata infrastructure.
  late final Output<String> monthlyDbServerVersion;

  /// The monthly software version of the storage servers installed on the Exadata infrastructure.
  late final Output<String> monthlyStorageServerVersion;

  /// The OCID of the next maintenance run for the Exadata infrastructure.
  late final Output<String> nextMaintenanceRunId;

  /// The name of the OCI resource anchor for the Exadata infrastructure.
  late final Output<String> ociResourceAnchorName;

  /// The HTTPS link to the Exadata infrastructure in OCI
  late final Output<String> ociUrl;

  /// The OCID of the Exadata infrastructure.
  late final Output<String> ocid;

  /// The amount of progress made on the current operation on the Exadata infrastructure, expressed as a percentage.
  late final Output<double> percentProgress;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The model name of the Exadata infrastructure. Changing this will force terraform to create new resource.
  late final Output<String> shape;

  /// The current status of the Exadata infrastructure.
  late final Output<String> status;

  /// Additional information about the status of the Exadata infrastructure.
  late final Output<String> statusReason;

  /// The number of storage servers that are activated for the Exadata infrastructure. Changing this will force terraform to create new resource.
  late final Output<int> storageCount;

  /// The storage server model type of the Exadata infrastructure. For the list of valid model names, use the ListDbSystemShapes operation. This is a mandatory parameter for Exadata.X11M system shape. Changing this will force terraform to create new resource.
  late final Output<String?> storageServerType;

  /// The software version of the storage servers on the Exadata infrastructure.
  late final Output<String> storageServerVersion;

  /// A map of tags to assign to the exadata infrastructure. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;
  late final Output<Map<String, String>> tagsAll;
  late final Output<CloudExadataInfrastructureTimeouts?> timeouts;

  /// The total amount of storage, in gigabytes (GB), on the Exadata infrastructure.
  late final Output<int> totalStorageSizeInGbs;

  CloudExadataInfrastructure(
    String name, {
    CloudExadataInfrastructureArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:odb/cloudExadataInfrastructure:CloudExadataInfrastructure',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.activatedStorageCount = registerOutput<int>('activatedStorageCount');
    this.additionalStorageCount = registerOutput<int>('additionalStorageCount');
    this.arn = registerOutput<String>('arn');
    this.availabilityZone = registerOutput<String>('availabilityZone');
    this.availabilityZoneId = registerOutput<String>('availabilityZoneId');
    this.availableStorageSizeInGbs =
        registerOutput<int>('availableStorageSizeInGbs');
    this.computeCount = registerOutput<int>('computeCount');
    this.computeModel = registerOutput<String>('computeModel');
    this.cpuCount = registerOutput<int>('cpuCount');
    this.createdAt = registerOutput<String>('createdAt');
    this.customerContactsToSendToOcis = registerOutput<
            List<CloudExadataInfrastructureCustomerContactsToSendToOci>?>(
        'customerContactsToSendToOcis');
    this.dataStorageSizeInTbs = registerOutput<double>('dataStorageSizeInTbs');
    this.databaseServerType = registerOutput<String?>('databaseServerType');
    this.dbNodeStorageSizeInGbs = registerOutput<int>('dbNodeStorageSizeInGbs');
    this.dbServerVersion = registerOutput<String>('dbServerVersion');
    this.displayName = registerOutput<String>('displayName');
    this.lastMaintenanceRunId = registerOutput<String>('lastMaintenanceRunId');
    this.maintenanceWindow =
        registerOutput<CloudExadataInfrastructureMaintenanceWindow>(
            'maintenanceWindow');
    this.maxCpuCount = registerOutput<int>('maxCpuCount');
    this.maxDataStorageInTbs = registerOutput<double>('maxDataStorageInTbs');
    this.maxDbNodeStorageSizeInGbs =
        registerOutput<int>('maxDbNodeStorageSizeInGbs');
    this.maxMemoryInGbs = registerOutput<int>('maxMemoryInGbs');
    this.memorySizeInGbs = registerOutput<int>('memorySizeInGbs');
    this.monthlyDbServerVersion =
        registerOutput<String>('monthlyDbServerVersion');
    this.monthlyStorageServerVersion =
        registerOutput<String>('monthlyStorageServerVersion');
    this.nextMaintenanceRunId = registerOutput<String>('nextMaintenanceRunId');
    this.ociResourceAnchorName =
        registerOutput<String>('ociResourceAnchorName');
    this.ociUrl = registerOutput<String>('ociUrl');
    this.ocid = registerOutput<String>('ocid');
    this.percentProgress = registerOutput<double>('percentProgress');
    this.region = registerOutput<String>('region');
    this.shape = registerOutput<String>('shape');
    this.status = registerOutput<String>('status');
    this.statusReason = registerOutput<String>('statusReason');
    this.storageCount = registerOutput<int>('storageCount');
    this.storageServerType = registerOutput<String?>('storageServerType');
    this.storageServerVersion = registerOutput<String>('storageServerVersion');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts =
        registerOutput<CloudExadataInfrastructureTimeouts?>('timeouts');
    this.totalStorageSizeInGbs = registerOutput<int>('totalStorageSizeInGbs');
  }
}
