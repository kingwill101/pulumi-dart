import 'package:pulumi/pulumi.dart' as pulumi;
import '../instance_advanced_machine_features/instance_advanced_machine_features.dart';
import '../instance_attached_disk/instance_attached_disk.dart';
import '../instance_boot_disk/instance_boot_disk.dart';
import '../instance_confidential_instance_config/instance_confidential_instance_config.dart';
import '../instance_guest_accelerator/instance_guest_accelerator.dart';
import '../instance_instance_encryption_key/instance_instance_encryption_key.dart';
import '../instance_network_interface/instance_network_interface.dart';
import '../instance_network_performance_config/instance_network_performance_config.dart';
import '../instance_params/instance_params.dart';
import '../instance_reservation_affinity/instance_reservation_affinity.dart';
import '../instance_scheduling/instance_scheduling.dart';
import '../instance_scratch_disk/instance_scratch_disk.dart';
import '../instance_service_account/instance_service_account.dart';
import '../instance_shielded_instance_config/instance_shielded_instance_config.dart';
import 'instance_compute_args.dart';

/// Manages a VM instance resource within GCE. For more information see
/// [the official documentation](https://cloud.google.com/compute/docs/instances)
/// and
/// [API](https://cloud.google.com/compute/docs/reference/latest/instances).
///
/// ## Example Usage
///
///
///
///
/// ### Confidential Computing
///
/// Example with [Confidential Mode](https://cloud.google.com/confidential-computing/confidential-vm/docs/confidential-vm-overview) activated.
///
///
///
/// ## Import
///
/// Instances can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/zones/{{zone}}/instances/{{name}}`
///
/// * `{{project}}/{{zone}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, instances can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/instance:Instance default projects/{{project}}/zones/{{zone}}/instances/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/instance:Instance default {{project}}/{{zone}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/instance:Instance default {{name}}
/// ```
class InstanceCompute extends pulumi.CustomResource {
  /// Configure Nested Virtualisation and Simultaneous Hyper Threading  on this VM. Structure is documented below
  late final pulumi.Output<InstanceAdvancedMachineFeatures?>
      advancedMachineFeatures;

  /// If true, allows this prvider to stop the instance to update its properties.
  /// If you try to update a property that requires stopping the instance without setting this field, the update will fail.
  late final pulumi.Output<bool?> allowStoppingForUpdate;

  /// Additional disks to attach to the instance. Can be repeated multiple times for multiple disks. Structure is documented below.
  late final pulumi.Output<List<InstanceAttachedDisk>?> attachedDisks;

  /// The boot disk for the instance.
  /// Structure is documented below.
  late final pulumi.Output<InstanceBootDisk> bootDisk;

  /// Whether to allow sending and receiving of
  /// packets with non-matching source or destination IPs.
  /// This defaults to false.
  late final pulumi.Output<bool?> canIpForward;

  /// Enable [Confidential Mode](https://cloud.google.com/compute/confidential-vm/docs/about-cvm) on this VM. Structure is documented below
  late final pulumi.Output<InstanceConfidentialInstanceConfig>
      confidentialInstanceConfig;

  /// The CPU platform used by this instance.
  late final pulumi.Output<String> cpuPlatform;

  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;

  /// The current status of the instance. This could be one of the following values: PROVISIONING, STAGING, RUNNING, STOPPING, SUSPENDING, SUSPENDED, REPAIRING, and TERMINATED. For more information about the status of the instance, see [Instance life cycle](https://cloud.google.com/compute/docs/instances/instance-life-cycle).
  late final pulumi.Output<String> currentStatus;

  /// Enable deletion protection on this instance. Defaults to false.
  /// **Note:** you must disable deletion protection before removing the resource (e.g., via `pulumi destroy`), or the instance cannot be deleted and the provider run will not complete successfully.
  late final pulumi.Output<bool?> deletionProtection;

  /// A brief description of this resource.
  late final pulumi.Output<String?> description;

  /// Desired status of the instance. Either
  /// `"RUNNING"`, `"SUSPENDED"` or `"TERMINATED"`.
  late final pulumi.Output<String?> desiredStatus;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// Enable [Virtual Displays](https://cloud.google.com/compute/docs/instances/enable-instance-virtual-display#verify_display_driver) on this instance.
  /// **Note**: `allow_stopping_for_update` must be set to true or your instance must have a `desired_status` of `TERMINATED` in order to update this field.
  late final pulumi.Output<bool?> enableDisplay;

  /// List of the type and count of accelerator cards attached to the instance. Structure documented below.
  /// **Note:** GPU accelerators can only be used with `on_host_maintenance` option set to TERMINATE.
  late final pulumi.Output<List<InstanceGuestAccelerator>> guestAccelerators;

  /// A custom hostname for the instance. Must be a fully qualified DNS name and RFC-1035-valid.
  /// Valid format is a series of labels 1-63 characters long matching the regular expression `a-z`, concatenated with periods.
  /// The entire hostname must not exceed 253 characters. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> hostname;

  /// Configuration for data encryption on the instance with encryption keys. Structure is documented below.
  late final pulumi.Output<InstanceInstanceEncryptionKey?>
      instanceEncryptionKey;

  /// The server-assigned unique identifier of this instance.
  late final pulumi.Output<String> instanceId;

  /// Action to be taken when a customer's encryption key is revoked. Supports `STOP` and `NONE`, with `NONE` being the default.
  late final pulumi.Output<String?> keyRevocationActionType;

  /// The unique fingerprint of the labels.
  late final pulumi.Output<String> labelFingerprint;

  /// A map of key/value label pairs to assign to the instance.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field 'effective_labels' for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// The machine type to create.
  ///
  /// **Note:** If you want to update this value (resize the VM) after initial creation, you must set `allow_stopping_for_update` to `true`.
  ///
  /// [Custom machine types](https://cloud.google.com/dataproc/docs/concepts/compute/custom-machine-types) can be formatted as `custom-NUMBER_OF_CPUS-AMOUNT_OF_MEMORY_MB`, e.g. `custom-6-20480` for 6 vCPU and 20GB of RAM.
  /// Because of current API limitations some custom machine types may get converted to different machine types (such as an equivalent standard type) and cause non-empty plans in your configuration. Use
  /// `lifecycle.ignore_changes` on `machine_type` in these cases.
  ///
  /// There is a limit of 6.5 GB per CPU unless you add [extended memory](https://cloud.google.com/compute/docs/instances/creating-instance-with-custom-machine-type#extendedmemory). You must do this explicitly by adding the suffix `-ext`, e.g. `custom-2-15360-ext` for 2 vCPU and 15 GB of memory.
  late final pulumi.Output<String> machineType;

  /// Metadata key/value pairs to make available from
  /// within the instance. Ssh keys attached in the Cloud Console will be removed.
  /// Add them to your config in order to keep them attached to your instance.
  /// A list of predefined metadata keys (e.g. ssh-keys) can be found [here](https://cloud.google.com/compute/docs/metadata/predefined-metadata-keys)
  ///
  /// > Depending on the OS you choose for your instance, some metadata keys have
  /// special functionality.  Most linux-based images will run the content of
  /// `metadata.startup-script` in a shell on every boot.  At a minimum,
  /// Debian, CentOS, RHEL, SLES, Container-Optimized OS, and Ubuntu images
  /// support this key.  Windows instances require other keys depending on the format
  /// of the script and the time you would like it to run - see [this table](https://cloud.google.com/compute/docs/startupscript#providing_a_startup_script_for_windows_instances).
  /// For the convenience of the users of `metadata.startup-script`,
  /// we provide a special attribute, `metadata_startup_script`, which is documented below.
  late final pulumi.Output<Map<String, String>?> metadata;

  /// The unique fingerprint of the metadata.
  late final pulumi.Output<String> metadataFingerprint;

  /// An alternative to using the
  /// startup-script metadata key, except this one forces the instance to be recreated
  /// (thus re-running the script) if it is changed. This replaces the startup-script
  /// metadata key on the created instance and thus the two mechanisms are not
  /// allowed to be used simultaneously.  Users are free to use either mechanism - the
  /// only distinction is that this separate attribute will cause a recreate on
  /// modification.  On import, `metadata_startup_script` will not be set - if you
  /// choose to specify it you will see a diff immediately after import causing a
  /// destroy/recreate operation. If importing an instance and specifying this value
  /// is desired, you will need to modify your state file.
  late final pulumi.Output<String?> metadataStartupScript;

  /// Specifies a minimum CPU platform for the VM instance. Applicable values are the friendly names of CPU platforms, such as
  /// `Intel Haswell` or `Intel Skylake`. See the complete list [here](https://cloud.google.com/compute/docs/instances/specify-min-cpu-platform).
  /// **Note**: `allow_stopping_for_update` must be set to true or your instance must have a `desired_status` of `TERMINATED` in order to update this field.
  late final pulumi.Output<String> minCpuPlatform;

  /// A unique name for the resource, required by GCE.
  /// Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;

  /// Networks to attach to the instance. This can
  /// be specified multiple times. Structure is documented below.
  ///
  /// - - -
  late final pulumi.Output<List<InstanceNetworkInterface>> networkInterfaces;

  /// (Optional, Beta
  /// Configures network performance settings for the instance. Structure is
  /// documented below. **Note**: `machine_type` must be a [supported type](https://cloud.google.com/compute/docs/networking/configure-vm-with-high-bandwidth-configuration),
  /// the `image` used must include the [`GVNIC`](https://cloud.google.com/compute/docs/networking/using-gvnic#create-instance-gvnic-image)
  /// in `guest-os-features`, and `network_interface.0.nic-type` must be `GVNIC`
  /// in order for this setting to take effect.
  late final pulumi.Output<InstanceNetworkPerformanceConfig?>
      networkPerformanceConfig;

  /// Additional instance parameters.
  /// .
  late final pulumi.Output<InstanceParams?> params;

  /// Beta key/value pair represents partner metadata assigned to instance where key represent a defined namespace and value is a json string represent the entries associted with the namespace.
  late final pulumi.Output<Map<String, String>?> partnerMetadata;

  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// Specifies the reservations that this instance can consume from.
  /// Structure is documented below.
  late final pulumi.Output<InstanceReservationAffinity> reservationAffinity;

  /// - A list of self_links of resource policies to attach to the instance. Modifying this list will cause the instance to recreate. Currently a max of 1 resource policy is supported.
  late final pulumi.Output<String?> resourcePolicies;

  /// The scheduling strategy to use. More details about
  /// this configuration option are detailed below.
  late final pulumi.Output<InstanceScheduling> scheduling;

  /// Scratch disks to attach to the instance. This can be
  /// specified multiple times for multiple scratch disks. Structure is documented below.
  late final pulumi.Output<List<InstanceScratchDisk>?> scratchDisks;

  /// The URI of the created resource.
  late final pulumi.Output<String> selfLink;

  /// Service account to attach to the instance.
  /// Structure is documented below.
  /// **Note**: `allow_stopping_for_update` must be set to true or your instance must have a `desired_status` of `TERMINATED` in order to update this field.
  late final pulumi.Output<InstanceServiceAccount?> serviceAccount;

  /// Enable [Shielded VM](https://cloud.google.com/security/shielded-cloud/shielded-vm) on this instance. Shielded VM provides verifiable integrity to prevent against malware and rootkits. Defaults to disabled. Structure is documented below.
  /// **Note**: `shielded_instance_config` can only be used with boot images with shielded vm support. See the complete list [here](https://cloud.google.com/compute/docs/images#shielded-images).
  /// **Note**: `allow_stopping_for_update` must be set to true or your instance must have a `desired_status` of `TERMINATED` in order to update this field.
  late final pulumi.Output<InstanceShieldedInstanceConfig>
      shieldedInstanceConfig;

  /// A list of network tags to attach to the instance.
  late final pulumi.Output<List<String>?> tags;

  /// The unique fingerprint of the tags.
  late final pulumi.Output<String> tagsFingerprint;

  /// The zone that the machine should be created in. If it is not provided, the provider zone is used.
  late final pulumi.Output<String> zone;

  InstanceCompute(
    String name, {
    InstanceComputeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/instance:Instance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.advancedMachineFeatures =
        registerOutput<InstanceAdvancedMachineFeatures?>(
            'advancedMachineFeatures');
    this.allowStoppingForUpdate =
        registerOutput<bool?>('allowStoppingForUpdate');
    this.attachedDisks =
        registerOutput<List<InstanceAttachedDisk>?>('attachedDisks');
    this.bootDisk = registerOutput<InstanceBootDisk>('bootDisk');
    this.canIpForward = registerOutput<bool?>('canIpForward');
    this.confidentialInstanceConfig =
        registerOutput<InstanceConfidentialInstanceConfig>(
            'confidentialInstanceConfig');
    this.cpuPlatform = registerOutput<String>('cpuPlatform');
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.currentStatus = registerOutput<String>('currentStatus');
    this.deletionProtection = registerOutput<bool?>('deletionProtection');
    this.description = registerOutput<String?>('description');
    this.desiredStatus = registerOutput<String?>('desiredStatus');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.enableDisplay = registerOutput<bool?>('enableDisplay');
    this.guestAccelerators =
        registerOutput<List<InstanceGuestAccelerator>>('guestAccelerators');
    this.hostname = registerOutput<String?>('hostname');
    this.instanceEncryptionKey =
        registerOutput<InstanceInstanceEncryptionKey?>('instanceEncryptionKey');
    this.instanceId = registerOutput<String>('instanceId');
    this.keyRevocationActionType =
        registerOutput<String?>('keyRevocationActionType');
    this.labelFingerprint = registerOutput<String>('labelFingerprint');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.machineType = registerOutput<String>('machineType');
    this.metadata = registerOutput<Map<String, String>?>('metadata');
    this.metadataFingerprint = registerOutput<String>('metadataFingerprint');
    this.metadataStartupScript =
        registerOutput<String?>('metadataStartupScript');
    this.minCpuPlatform = registerOutput<String>('minCpuPlatform');
    this.name = registerOutput<String>('name');
    this.networkInterfaces =
        registerOutput<List<InstanceNetworkInterface>>('networkInterfaces');
    this.networkPerformanceConfig =
        registerOutput<InstanceNetworkPerformanceConfig?>(
            'networkPerformanceConfig');
    this.params = registerOutput<InstanceParams?>('params');
    this.partnerMetadata =
        registerOutput<Map<String, String>?>('partnerMetadata');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.reservationAffinity =
        registerOutput<InstanceReservationAffinity>('reservationAffinity');
    this.resourcePolicies = registerOutput<String?>('resourcePolicies');
    this.scheduling = registerOutput<InstanceScheduling>('scheduling');
    this.scratchDisks =
        registerOutput<List<InstanceScratchDisk>?>('scratchDisks');
    this.selfLink = registerOutput<String>('selfLink');
    this.serviceAccount =
        registerOutput<InstanceServiceAccount?>('serviceAccount');
    this.shieldedInstanceConfig =
        registerOutput<InstanceShieldedInstanceConfig>(
            'shieldedInstanceConfig');
    this.tags = registerOutput<List<String>?>('tags');
    this.tagsFingerprint = registerOutput<String>('tagsFingerprint');
    this.zone = registerOutput<String>('zone');
  }
}
