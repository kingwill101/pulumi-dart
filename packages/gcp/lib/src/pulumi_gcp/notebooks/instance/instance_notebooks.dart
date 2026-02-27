import 'package:pulumi/pulumi.dart' as pulumi;
import '../instance_accelerator_config/instance_accelerator_config.dart';
import '../instance_container_image/instance_container_image.dart';
import '../instance_reservation_affinity/instance_reservation_affinity_notebooks.dart';
import '../instance_shielded_instance_config/instance_shielded_instance_config_notebooks.dart';
import '../instance_vm_image/instance_vm_image.dart';
import 'instance_notebooks_args.dart';

/// > **Warning:** `google_notebook_instance` is deprecated and will be removed in a future major release. Use `gcp.workbench.Instance` instead.
///
/// A Cloud AI Platform Notebook instance.
///
///
/// > **Note:** Due to limitations of the Notebooks Instance API, many fields
/// in this resource do not properly detect drift. These fields will also not
/// appear in state once imported.
///
///
/// To get more information about Instance, see:
///
/// * [API documentation](https://cloud.google.com/ai-platform/notebooks/docs/reference/rest)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/ai-platform-notebooks)
///
/// ## Example Usage
///
/// ### Notebook Instance Basic
///
///
///
/// ### Notebook Instance Basic Stopped
///
///
///
/// ### Notebook Instance Basic Container
///
///
///
/// ### Notebook Instance Basic Gpu
///
///
///
/// ### Notebook Instance Full
///
///
///
///
/// ## Import
///
/// Instance can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/instances/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, Instance can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:notebooks/instance:Instance default projects/{{project}}/locations/{{location}}/instances/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:notebooks/instance:Instance default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:notebooks/instance:Instance default {{location}}/{{name}}
/// ```
class InstanceNotebooks extends pulumi.CustomResource {
  /// The hardware accelerator used on this instance. If you use accelerators,
  /// make sure that your configuration has enough vCPUs and memory to support the
  /// machineType you have selected.
  /// Structure is documented below.
  late final pulumi.Output<InstanceAcceleratorConfig?> acceleratorConfig;

  /// The size of the boot disk in GB attached to this instance,
  /// up to a maximum of 64000 GB (64 TB). The minimum recommended value is 100 GB.
  /// If not specified, this defaults to 100.
  late final pulumi.Output<int?> bootDiskSizeGb;

  /// Possible disk types for notebook instances.
  /// Possible values are: `DISK_TYPE_UNSPECIFIED`, `PD_STANDARD`, `PD_SSD`, `PD_BALANCED`, `PD_EXTREME`.
  late final pulumi.Output<String?> bootDiskType;

  /// Use a container image to start the notebook instance.
  /// Structure is documented below.
  late final pulumi.Output<InstanceContainerImage?> containerImage;

  /// Instance creation time
  late final pulumi.Output<String> createTime;

  /// Specify a custom Cloud Storage path where the GPU driver is stored.
  /// If not specified, we'll automatically choose from official GPU drivers.
  late final pulumi.Output<String?> customGpuDriverPath;

  /// The size of the data disk in GB attached to this instance,
  /// up to a maximum of 64000 GB (64 TB).
  /// You can choose the size of the data disk based on how big your notebooks and data are.
  /// If not specified, this defaults to 100.
  late final pulumi.Output<int?> dataDiskSizeGb;

  /// Possible disk types for notebook instances.
  /// Possible values are: `DISK_TYPE_UNSPECIFIED`, `PD_STANDARD`, `PD_SSD`, `PD_BALANCED`, `PD_EXTREME`.
  late final pulumi.Output<String?> dataDiskType;

  /// Desired state of the Notebook Instance. Set this field to `ACTIVE` to start the Instance, and `STOPPED` to stop the Instance.
  late final pulumi.Output<String?> desiredState;

  /// Disk encryption method used on the boot and data disks, defaults to GMEK.
  /// Possible values are: `DISK_ENCRYPTION_UNSPECIFIED`, `GMEK`, `CMEK`.
  late final pulumi.Output<String> diskEncryption;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// Whether the end user authorizes Google Cloud to install GPU driver
  /// on this instance. If this field is empty or set to false, the GPU driver
  /// won't be installed. Only applicable to instances with GPUs.
  late final pulumi.Output<bool?> installGpuDriver;

  /// The list of owners of this instance after creation.
  /// Format: alias@example.com.
  /// Currently supports one owner only.
  /// If not specified, all of the service account users of
  /// your VM instance's service account can use the instance.
  late final pulumi.Output<List<String>?> instanceOwners;

  /// The KMS key used to encrypt the disks, only applicable if diskEncryption is CMEK.
  /// Format: projects/{project_id}/locations/{location}/keyRings/{key_ring_id}/cryptoKeys/{key_id}
  late final pulumi.Output<String?> kmsKey;

  /// Labels to apply to this instance. These can be later modified by the setLabels method.
  /// An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// A reference to the zone where the machine resides.
  late final pulumi.Output<String> location;

  /// A reference to a machine type which defines VM kind.
  late final pulumi.Output<String> machineType;

  /// Custom metadata to apply to this instance.
  /// An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  late final pulumi.Output<Map<String, String>?> metadata;

  /// The name specified for the Notebook instance.
  late final pulumi.Output<String> name;

  /// The name of the VPC that this instance is in.
  /// Format: projects/{project_id}/global/networks/{network_id}
  late final pulumi.Output<String> network;

  /// The type of vNIC driver.
  /// Possible values are: `UNSPECIFIED_NIC_TYPE`, `VIRTIO_NET`, `GVNIC`.
  late final pulumi.Output<String?> nicType;

  /// The notebook instance will not register with the proxy..
  late final pulumi.Output<bool?> noProxyAccess;

  /// No public IP will be assigned to this instance.
  late final pulumi.Output<bool?> noPublicIp;

  /// If true, the data disk will not be auto deleted when deleting the instance.
  late final pulumi.Output<bool?> noRemoveDataDisk;

  /// Path to a Bash script that automatically runs after a
  /// notebook instance fully boots up. The path must be a URL
  /// or Cloud Storage path (gs://path-to-file/file-name).
  late final pulumi.Output<String?> postStartupScript;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The proxy endpoint that is used to access the Jupyter notebook.
  /// Only returned when the resource is in a `PROVISIONED` state. If
  /// needed you can utilize `pulumi up -refresh-only` to await
  /// the population of this value.
  late final pulumi.Output<String> proxyUri;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// Reservation Affinity for consuming Zonal reservation.
  /// Structure is documented below.
  late final pulumi.Output<InstanceReservationAffinityNotebooks?>
      reservationAffinity;

  /// The service account on this instance, giving access to other
  /// Google Cloud services. You can use any service account within
  /// the same project, but you must have the service account user
  /// permission to use the instance. If not specified,
  /// the Compute Engine default service account is used.
  late final pulumi.Output<String> serviceAccount;

  /// Optional. The URIs of service account scopes to be included in Compute Engine instances.
  /// If not specified, the following scopes are defined:
  /// - https://www.googleapis.com/auth/cloud-platform
  /// - https://www.googleapis.com/auth/userinfo.email
  late final pulumi.Output<List<String>> serviceAccountScopes;

  /// A set of Shielded Instance options. Check [Images using supported Shielded VM features]
  /// Not all combinations are valid
  /// Structure is documented below.
  late final pulumi.Output<InstanceShieldedInstanceConfigNotebooks>
      shieldedInstanceConfig;

  /// The state of this instance.
  late final pulumi.Output<String> state;

  /// The name of the subnet that this instance is in.
  /// Format: projects/{project_id}/regions/{region}/subnetworks/{subnetwork_id}
  late final pulumi.Output<String> subnet;

  /// The Compute Engine tags to add to instance.
  late final pulumi.Output<List<String>> tags;

  /// Instance update time.
  late final pulumi.Output<String> updateTime;

  /// Use a Compute Engine VM image to start the notebook instance.
  /// Structure is documented below.
  late final pulumi.Output<InstanceVmImage?> vmImage;

  InstanceNotebooks(
    String name, {
    InstanceNotebooksArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:notebooks/instance:Instance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.acceleratorConfig =
        registerOutput<InstanceAcceleratorConfig?>('acceleratorConfig');
    this.bootDiskSizeGb = registerOutput<int?>('bootDiskSizeGb');
    this.bootDiskType = registerOutput<String?>('bootDiskType');
    this.containerImage =
        registerOutput<InstanceContainerImage?>('containerImage');
    this.createTime = registerOutput<String>('createTime');
    this.customGpuDriverPath = registerOutput<String?>('customGpuDriverPath');
    this.dataDiskSizeGb = registerOutput<int?>('dataDiskSizeGb');
    this.dataDiskType = registerOutput<String?>('dataDiskType');
    this.desiredState = registerOutput<String?>('desiredState');
    this.diskEncryption = registerOutput<String>('diskEncryption');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.installGpuDriver = registerOutput<bool?>('installGpuDriver');
    this.instanceOwners = registerOutput<List<String>?>('instanceOwners');
    this.kmsKey = registerOutput<String?>('kmsKey');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.machineType = registerOutput<String>('machineType');
    this.metadata = registerOutput<Map<String, String>?>('metadata');
    this.name = registerOutput<String>('name');
    this.network = registerOutput<String>('network');
    this.nicType = registerOutput<String?>('nicType');
    this.noProxyAccess = registerOutput<bool?>('noProxyAccess');
    this.noPublicIp = registerOutput<bool?>('noPublicIp');
    this.noRemoveDataDisk = registerOutput<bool?>('noRemoveDataDisk');
    this.postStartupScript = registerOutput<String?>('postStartupScript');
    this.project = registerOutput<String>('project');
    this.proxyUri = registerOutput<String>('proxyUri');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.reservationAffinity =
        registerOutput<InstanceReservationAffinityNotebooks?>(
            'reservationAffinity');
    this.serviceAccount = registerOutput<String>('serviceAccount');
    this.serviceAccountScopes =
        registerOutput<List<String>>('serviceAccountScopes');
    this.shieldedInstanceConfig =
        registerOutput<InstanceShieldedInstanceConfigNotebooks>(
            'shieldedInstanceConfig');
    this.state = registerOutput<String>('state');
    this.subnet = registerOutput<String>('subnet');
    this.tags = registerOutput<List<String>>('tags');
    this.updateTime = registerOutput<String>('updateTime');
    this.vmImage = registerOutput<InstanceVmImage?>('vmImage');
  }
}
