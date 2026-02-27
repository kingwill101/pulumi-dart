import 'package:pulumi/pulumi.dart';
import '../instance_from_machine_image_advanced_machine_features/instance_from_machine_image_advanced_machine_features.dart';
import '../instance_from_machine_image_attached_disk/instance_from_machine_image_attached_disk.dart';
import '../instance_from_machine_image_boot_disk/instance_from_machine_image_boot_disk.dart';
import '../instance_from_machine_image_confidential_instance_config/instance_from_machine_image_confidential_instance_config.dart';
import '../instance_from_machine_image_guest_accelerator/instance_from_machine_image_guest_accelerator.dart';
import '../instance_from_machine_image_instance_encryption_key/instance_from_machine_image_instance_encryption_key.dart';
import '../instance_from_machine_image_network_interface/instance_from_machine_image_network_interface.dart';
import '../instance_from_machine_image_network_performance_config/instance_from_machine_image_network_performance_config.dart';
import '../instance_from_machine_image_params/instance_from_machine_image_params.dart';
import '../instance_from_machine_image_reservation_affinity/instance_from_machine_image_reservation_affinity.dart';
import '../instance_from_machine_image_scheduling/instance_from_machine_image_scheduling.dart';
import '../instance_from_machine_image_scratch_disk/instance_from_machine_image_scratch_disk.dart';
import '../instance_from_machine_image_service_account/instance_from_machine_image_service_account.dart';
import '../instance_from_machine_image_shielded_instance_config/instance_from_machine_image_shielded_instance_config.dart';
import '../instance_from_machine_image_source_machine_image_encryption_key/instance_from_machine_image_source_machine_image_encryption_key.dart';
import 'instance_from_machine_image_args.dart';

/// Manages a VM instance resource within GCE. For more information see
/// [the official documentation](https://cloud.google.com/compute/docs/instances)
/// and
/// [API](https://cloud.google.com/compute/docs/reference/latest/instances).
///
/// This resource is specifically to create a compute instance from a given
/// `source_machine_image`. To create an instance without a machine image, use the
/// `gcp.compute.Instance` resource.
class InstanceFromMachineImage extends CustomResource {
  /// Controls for advanced machine-related behavior features.
  late final Output<InstanceFromMachineImageAdvancedMachineFeatures>
      advancedMachineFeatures;
  late final Output<bool> allowStoppingForUpdate;

  /// List of disks attached to the instance
  late final Output<List<InstanceFromMachineImageAttachedDisk>> attachedDisks;

  /// The boot disk for the instance.
  late final Output<List<InstanceFromMachineImageBootDisk>> bootDisks;

  /// Whether sending and receiving of packets with non-matching source or destination IPs is allowed.
  late final Output<bool> canIpForward;

  /// The Confidential VM config being used by the instance.  on_host_maintenance has to be set to TERMINATE or this will fail to create.
  late final Output<InstanceFromMachineImageConfidentialInstanceConfig>
      confidentialInstanceConfig;

  /// The CPU platform used by this instance.
  late final Output<String> cpuPlatform;

  /// Creation timestamp in RFC3339 text format.
  late final Output<String> creationTimestamp;

  /// Current status of the instance.
  /// This could be one of the following values: PROVISIONING, STAGING, RUNNING, STOPPING, SUSPENDING, SUSPENDED, REPAIRING, and TERMINATED.
  /// For more information about the status of the instance, see [Instance life cycle](https://cloud.google.com/compute/docs/instances/instance-life-cycle).
  late final Output<String> currentStatus;

  /// Whether deletion protection is enabled on this instance.
  late final Output<bool> deletionProtection;

  /// A brief description of the resource.
  late final Output<String> description;

  /// Desired status of the instance. Either "RUNNING", "SUSPENDED" or "TERMINATED".
  late final Output<String> desiredStatus;
  late final Output<Map<String, String>> effectiveLabels;

  /// Whether the instance has virtual displays enabled.
  late final Output<bool> enableDisplay;

  /// List of the type and count of accelerator cards attached to the instance.
  late final Output<List<InstanceFromMachineImageGuestAccelerator>>
      guestAccelerators;

  /// A custom hostname for the instance. Must be a fully qualified DNS name and RFC-1035-valid. Valid format is a series of labels 1-63 characters long matching the regular expression a-z, concatenated with periods. The entire hostname must not exceed 253 characters. Changing this forces a new resource to be created.
  late final Output<String> hostname;

  /// Encryption key used to provide data encryption on the given instance.
  late final Output<InstanceFromMachineImageInstanceEncryptionKey>
      instanceEncryptionKey;

  /// The server-assigned unique identifier of this instance.
  late final Output<String> instanceId;

  /// Action to be taken when a customer's encryption key is revoked. Supports "STOP" and "NONE", with "NONE" being the default.
  late final Output<String> keyRevocationActionType;

  /// The unique fingerprint of the labels.
  late final Output<String> labelFingerprint;

  /// A set of key/value label pairs assigned to the instance.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field 'effective_labels' for all of the labels present on the resource.
  late final Output<Map<String, String>> labels;

  /// The machine type to create.
  late final Output<String> machineType;

  /// Metadata key/value pairs made available within the instance.
  late final Output<Map<String, String>> metadata;

  /// The unique fingerprint of the metadata.
  late final Output<String> metadataFingerprint;

  /// Metadata startup scripts made available within the instance.
  late final Output<String> metadataStartupScript;

  /// The minimum CPU platform specified for the VM instance.
  late final Output<String> minCpuPlatform;

  /// A unique name for the resource, required by GCE.
  /// Changing this forces a new resource to be created.
  late final Output<String> name;

  /// The networks attached to the instance.
  late final Output<List<InstanceFromMachineImageNetworkInterface>>
      networkInterfaces;

  /// Configures network performance settings for the instance. If not specified, the instance will be created with its default network performance configuration.
  late final Output<InstanceFromMachineImageNetworkPerformanceConfig>
      networkPerformanceConfig;

  /// Stores additional params passed with the request, but not persisted as part of resource payload.
  late final Output<InstanceFromMachineImageParams> params;

  /// Partner Metadata Map made available within the instance.
  late final Output<Map<String, String>> partnerMetadata;

  /// The ID of the project in which the resource belongs. If self_link is provided, this value is ignored. If neither self_link nor project are provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// Specifies the reservations that this instance can consume from.
  late final Output<InstanceFromMachineImageReservationAffinity>
      reservationAffinity;

  /// A list of self_links of resource policies to attach to the instance. Currently a max of 1 resource policy is supported.
  late final Output<String> resourcePolicies;

  /// The scheduling strategy being used by the instance.
  late final Output<InstanceFromMachineImageScheduling> scheduling;

  /// The scratch disks attached to the instance.
  late final Output<List<InstanceFromMachineImageScratchDisk>> scratchDisks;

  /// The URI of the created resource.
  late final Output<String> selfLink;

  /// The service account to attach to the instance.
  late final Output<InstanceFromMachineImageServiceAccount> serviceAccount;

  /// The shielded vm config being used by the instance.
  late final Output<InstanceFromMachineImageShieldedInstanceConfig>
      shieldedInstanceConfig;

  /// Name or self link of a machine
  /// image to create the instance based on.
  ///
  /// - - -
  late final Output<String> sourceMachineImage;

  /// Encryption key for the source machine image.
  late final Output<InstanceFromMachineImageSourceMachineImageEncryptionKey?>
      sourceMachineImageEncryptionKey;

  /// The list of tags attached to the instance.
  late final Output<List<String>> tags;

  /// The unique fingerprint of the tags.
  late final Output<String> tagsFingerprint;

  /// The zone that the machine should be created in. If not
  /// set, the provider zone is used.
  ///
  /// In addition to these, most* arguments from `gcp.compute.Instance` are supported
  /// as a way to override the properties in the machine image. All exported attributes
  /// from `gcp.compute.Instance` are likewise exported here.
  ///
  /// > **Warning:** *Due to API limitations, disk overrides are currently disabled. This includes the "boot_disk", "attached_disk", and "scratch_disk" fields.
  late final Output<String> zone;

  InstanceFromMachineImage(
    String name, {
    InstanceFromMachineImageArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:compute/instanceFromMachineImage:InstanceFromMachineImage',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.advancedMachineFeatures =
        registerOutput<InstanceFromMachineImageAdvancedMachineFeatures>(
            'advancedMachineFeatures');
    this.allowStoppingForUpdate =
        registerOutput<bool>('allowStoppingForUpdate');
    this.attachedDisks =
        registerOutput<List<InstanceFromMachineImageAttachedDisk>>(
            'attachedDisks');
    this.bootDisks =
        registerOutput<List<InstanceFromMachineImageBootDisk>>('bootDisks');
    this.canIpForward = registerOutput<bool>('canIpForward');
    this.confidentialInstanceConfig =
        registerOutput<InstanceFromMachineImageConfidentialInstanceConfig>(
            'confidentialInstanceConfig');
    this.cpuPlatform = registerOutput<String>('cpuPlatform');
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.currentStatus = registerOutput<String>('currentStatus');
    this.deletionProtection = registerOutput<bool>('deletionProtection');
    this.description = registerOutput<String>('description');
    this.desiredStatus = registerOutput<String>('desiredStatus');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.enableDisplay = registerOutput<bool>('enableDisplay');
    this.guestAccelerators =
        registerOutput<List<InstanceFromMachineImageGuestAccelerator>>(
            'guestAccelerators');
    this.hostname = registerOutput<String>('hostname');
    this.instanceEncryptionKey =
        registerOutput<InstanceFromMachineImageInstanceEncryptionKey>(
            'instanceEncryptionKey');
    this.instanceId = registerOutput<String>('instanceId');
    this.keyRevocationActionType =
        registerOutput<String>('keyRevocationActionType');
    this.labelFingerprint = registerOutput<String>('labelFingerprint');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.machineType = registerOutput<String>('machineType');
    this.metadata = registerOutput<Map<String, String>>('metadata');
    this.metadataFingerprint = registerOutput<String>('metadataFingerprint');
    this.metadataStartupScript =
        registerOutput<String>('metadataStartupScript');
    this.minCpuPlatform = registerOutput<String>('minCpuPlatform');
    this.name = registerOutput<String>('name');
    this.networkInterfaces =
        registerOutput<List<InstanceFromMachineImageNetworkInterface>>(
            'networkInterfaces');
    this.networkPerformanceConfig =
        registerOutput<InstanceFromMachineImageNetworkPerformanceConfig>(
            'networkPerformanceConfig');
    this.params = registerOutput<InstanceFromMachineImageParams>('params');
    this.partnerMetadata =
        registerOutput<Map<String, String>>('partnerMetadata');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.reservationAffinity =
        registerOutput<InstanceFromMachineImageReservationAffinity>(
            'reservationAffinity');
    this.resourcePolicies = registerOutput<String>('resourcePolicies');
    this.scheduling =
        registerOutput<InstanceFromMachineImageScheduling>('scheduling');
    this.scratchDisks =
        registerOutput<List<InstanceFromMachineImageScratchDisk>>(
            'scratchDisks');
    this.selfLink = registerOutput<String>('selfLink');
    this.serviceAccount =
        registerOutput<InstanceFromMachineImageServiceAccount>(
            'serviceAccount');
    this.shieldedInstanceConfig =
        registerOutput<InstanceFromMachineImageShieldedInstanceConfig>(
            'shieldedInstanceConfig');
    this.sourceMachineImage = registerOutput<String>('sourceMachineImage');
    this.sourceMachineImageEncryptionKey = registerOutput<
            InstanceFromMachineImageSourceMachineImageEncryptionKey?>(
        'sourceMachineImageEncryptionKey');
    this.tags = registerOutput<List<String>>('tags');
    this.tagsFingerprint = registerOutput<String>('tagsFingerprint');
    this.zone = registerOutput<String>('zone');
  }
}
