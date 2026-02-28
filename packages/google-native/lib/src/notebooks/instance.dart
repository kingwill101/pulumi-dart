import 'package:pulumi/pulumi.dart' as pulumi;
import 'accelerator_config_response.dart';
import 'container_image_response.dart';
import 'disk_response.dart';
import 'instance_args.dart';
import 'instance_migration_eligibility_response.dart';
import 'reservation_affinity_response.dart';
import 'shielded_instance_config_response.dart';
import 'upgrade_history_entry_response.dart';
import 'vm_image_response.dart';

/// Creates a new Instance in a given project and location.
/// Auto-naming is currently not supported for this resource.
class Instance extends pulumi.CustomResource {
  /// The hardware accelerator used on this instance. If you use accelerators, make sure that your configuration has [enough vCPUs and memory to support the `machine_type` you have selected](https://cloud.google.com/compute/docs/gpus/#gpus-list).
  late final pulumi.Output<AcceleratorConfigResponse> acceleratorConfig;
  /// Input only. The size of the boot disk in GB attached to this instance, up to a maximum of 64000 GB (64 TB). The minimum recommended value is 100 GB. If not specified, this defaults to 100.
  late final pulumi.Output<String> bootDiskSizeGb;
  /// Input only. The type of the boot disk attached to this instance, defaults to standard persistent disk (`PD_STANDARD`).
  late final pulumi.Output<String> bootDiskType;
  /// Optional. Flag to enable ip forwarding or not, default false/off. https://cloud.google.com/vpc/docs/using-routes#canipforward
  late final pulumi.Output<bool> canIpForward;
  /// Use a container image to start the notebook instance.
  late final pulumi.Output<ContainerImageResponse> containerImage;
  /// Instance creation time.
  late final pulumi.Output<String> createTime;
  /// Email address of entity that sent original CreateInstance request.
  late final pulumi.Output<String> creator;
  /// Specify a custom Cloud Storage path where the GPU driver is stored. If not specified, we'll automatically choose from official GPU drivers.
  late final pulumi.Output<String> customGpuDriverPath;
  /// Input only. The size of the data disk in GB attached to this instance, up to a maximum of 64000 GB (64 TB). You can choose the size of the data disk based on how big your notebooks and data are. If not specified, this defaults to 100.
  late final pulumi.Output<String> dataDiskSizeGb;
  /// Input only. The type of the data disk attached to this instance, defaults to standard persistent disk (`PD_STANDARD`).
  late final pulumi.Output<String> dataDiskType;
  /// Input only. Disk encryption method used on the boot and data disks, defaults to GMEK.
  late final pulumi.Output<String> diskEncryption;
  /// Attached disks to notebook instance.
  late final pulumi.Output<List<DiskResponse>> disks;
  /// Whether the end user authorizes Google Cloud to install GPU driver on this instance. If this field is empty or set to false, the GPU driver won't be installed. Only applicable to instances with GPUs.
  late final pulumi.Output<bool> installGpuDriver;
  /// Required. User-defined unique ID of this instance.
  late final pulumi.Output<String> instanceId;
  /// Checks how feasible a migration from UmN to WbI is.
  late final pulumi.Output<InstanceMigrationEligibilityResponse> instanceMigrationEligibility;
  /// Input only. The owner of this instance after creation. Format: `alias@example.com` Currently supports one owner only. If not specified, all of the service account users of your VM instance's service account can use the instance.
  late final pulumi.Output<List<String>> instanceOwners;
  /// Input only. The KMS key used to encrypt the disks, only applicable if disk_encryption is CMEK. Format: `projects/{project_id}/locations/{location}/keyRings/{key_ring_id}/cryptoKeys/{key_id}` Learn more about [using your own encryption keys](/kms/docs/quickstart).
  late final pulumi.Output<String> kmsKey;
  /// Labels to apply to this instance. These can be later modified by the setLabels method.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;
  /// The [Compute Engine machine type](https://cloud.google.com/compute/docs/machine-types) of this instance.
  late final pulumi.Output<String> machineType;
  /// Custom metadata to apply to this instance. For example, to specify a Cloud Storage bucket for automatic backup, you can use the `gcs-data-bucket` metadata tag. Format: `"--metadata=gcs-data-bucket=``BUCKET''"`.
  late final pulumi.Output<Map<String, String>> metadata;
  /// Bool indicating whether this notebook has been migrated to a Workbench Instance
  late final pulumi.Output<bool> migrated;
  /// The name of this notebook instance. Format: `projects/{project_id}/locations/{location}/instances/{instance_id}`
  late final pulumi.Output<String> name;
  /// The name of the VPC that this instance is in. Format: `projects/{project_id}/global/networks/{network_id}`
  late final pulumi.Output<String> network;
  /// Optional. The type of vNIC to be used on this interface. This may be gVNIC or VirtioNet.
  late final pulumi.Output<String> nicType;
  /// If true, the notebook instance will not register with the proxy.
  late final pulumi.Output<bool> noProxyAccess;
  /// If true, no external IP will be assigned to this instance.
  late final pulumi.Output<bool> noPublicIp;
  /// Input only. If true, the data disk will not be auto deleted when deleting the instance.
  late final pulumi.Output<bool> noRemoveDataDisk;
  /// Path to a Bash script that automatically runs after a notebook instance fully boots up. The path must be a URL or Cloud Storage path (`gs://path-to-file/file-name`).
  late final pulumi.Output<String> postStartupScript;
  late final pulumi.Output<String> project;
  /// The proxy endpoint that is used to access the Jupyter notebook.
  late final pulumi.Output<String> proxyUri;
  /// Optional. The optional reservation affinity. Setting this field will apply the specified [Zonal Compute Reservation](https://cloud.google.com/compute/docs/instances/reserving-zonal-resources) to this notebook instance.
  late final pulumi.Output<ReservationAffinityResponse> reservationAffinity;
  /// The service account on this instance, giving access to other Google Cloud services. You can use any service account within the same project, but you must have the service account user permission to use the instance. If not specified, the [Compute Engine default service account](https://cloud.google.com/compute/docs/access/service-accounts#default_service_account) is used.
  late final pulumi.Output<String> serviceAccount;
  /// Optional. The URIs of service account scopes to be included in Compute Engine instances. If not specified, the following [scopes](https://cloud.google.com/compute/docs/access/service-accounts#accesscopesiam) are defined: - https://www.googleapis.com/auth/cloud-platform - https://www.googleapis.com/auth/userinfo.email If not using default scopes, you need at least: https://www.googleapis.com/auth/compute
  late final pulumi.Output<List<String>> serviceAccountScopes;
  /// Optional. Shielded VM configuration. [Images using supported Shielded VM features](https://cloud.google.com/compute/docs/instances/modifying-shielded-vm).
  late final pulumi.Output<ShieldedInstanceConfigResponse> shieldedInstanceConfig;
  /// The state of this instance.
  late final pulumi.Output<String> state;
  /// The name of the subnet that this instance is in. Format: `projects/{project_id}/regions/{region}/subnetworks/{subnetwork_id}`
  late final pulumi.Output<String> subnet;
  /// Optional. The Compute Engine tags to add to runtime (see [Tagging instances](https://cloud.google.com/compute/docs/label-or-tag-resources#tags)).
  late final pulumi.Output<List<String>> tags;
  /// Instance update time.
  late final pulumi.Output<String> updateTime;
  /// The upgrade history of this instance.
  late final pulumi.Output<List<UpgradeHistoryEntryResponse>> upgradeHistory;
  /// Use a Compute Engine VM image to start the notebook instance.
  late final pulumi.Output<VmImageResponse> vmImage;

  /// Creates a new [Instance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Instance]. {@macro pulumi_notebooks_v1_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Instance(
    String name, {
    InstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:notebooks/v1:Instance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.acceleratorConfig = registerOutput<AcceleratorConfigResponse>('acceleratorConfig');
    this.bootDiskSizeGb = registerOutput<String>('bootDiskSizeGb');
    this.bootDiskType = registerOutput<String>('bootDiskType');
    this.canIpForward = registerOutput<bool>('canIpForward');
    this.containerImage = registerOutput<ContainerImageResponse>('containerImage');
    this.createTime = registerOutput<String>('createTime');
    this.creator = registerOutput<String>('creator');
    this.customGpuDriverPath = registerOutput<String>('customGpuDriverPath');
    this.dataDiskSizeGb = registerOutput<String>('dataDiskSizeGb');
    this.dataDiskType = registerOutput<String>('dataDiskType');
    this.diskEncryption = registerOutput<String>('diskEncryption');
    this.disks = registerOutput<List<DiskResponse>>('disks');
    this.installGpuDriver = registerOutput<bool>('installGpuDriver');
    this.instanceId = registerOutput<String>('instanceId');
    this.instanceMigrationEligibility = registerOutput<InstanceMigrationEligibilityResponse>('instanceMigrationEligibility');
    this.instanceOwners = registerOutput<List<String>>('instanceOwners');
    this.kmsKey = registerOutput<String>('kmsKey');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.machineType = registerOutput<String>('machineType');
    this.metadata = registerOutput<Map<String, String>>('metadata');
    this.migrated = registerOutput<bool>('migrated');
    this.name = registerOutput<String>('name');
    this.network = registerOutput<String>('network');
    this.nicType = registerOutput<String>('nicType');
    this.noProxyAccess = registerOutput<bool>('noProxyAccess');
    this.noPublicIp = registerOutput<bool>('noPublicIp');
    this.noRemoveDataDisk = registerOutput<bool>('noRemoveDataDisk');
    this.postStartupScript = registerOutput<String>('postStartupScript');
    this.project = registerOutput<String>('project');
    this.proxyUri = registerOutput<String>('proxyUri');
    this.reservationAffinity = registerOutput<ReservationAffinityResponse>('reservationAffinity');
    this.serviceAccount = registerOutput<String>('serviceAccount');
    this.serviceAccountScopes = registerOutput<List<String>>('serviceAccountScopes');
    this.shieldedInstanceConfig = registerOutput<ShieldedInstanceConfigResponse>('shieldedInstanceConfig');
    this.state = registerOutput<String>('state');
    this.subnet = registerOutput<String>('subnet');
    this.tags = registerOutput<List<String>>('tags');
    this.updateTime = registerOutput<String>('updateTime');
    this.upgradeHistory = registerOutput<List<UpgradeHistoryEntryResponse>>('upgradeHistory');
    this.vmImage = registerOutput<VmImageResponse>('vmImage');
  }
}
