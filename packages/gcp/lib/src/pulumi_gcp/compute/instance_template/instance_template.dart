import 'package:pulumi/pulumi.dart';
import '../instance_template_advanced_machine_features/instance_template_advanced_machine_features.dart';
import '../instance_template_confidential_instance_config/instance_template_confidential_instance_config.dart';
import '../instance_template_disk/instance_template_disk.dart';
import '../instance_template_guest_accelerator/instance_template_guest_accelerator.dart';
import '../instance_template_network_interface/instance_template_network_interface.dart';
import '../instance_template_network_performance_config/instance_template_network_performance_config.dart';
import '../instance_template_reservation_affinity/instance_template_reservation_affinity.dart';
import '../instance_template_scheduling/instance_template_scheduling.dart';
import '../instance_template_service_account/instance_template_service_account.dart';
import '../instance_template_shielded_instance_config/instance_template_shielded_instance_config.dart';
import 'instance_template_args.dart';

/// > **Note**: Global instance templates can be used in any region. To lower the impact of outages outside your region and gain data residency within your region, use google_compute_region_instance_template.
///
/// Manages a VM instance template resource within GCE. For more information see
/// [the official documentation](https://cloud.google.com/compute/docs/instance-templates)
/// and
/// [API](https://cloud.google.com/compute/docs/reference/latest/instanceTemplates).
///
///
/// ## Example Usage
///
///
///
/// ### Automatic Envoy Deployment
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
/// ## Deploying the Latest Image
///
/// A common way to use instance templates and managed instance groups is to deploy the
/// latest image in a family, usually the latest build of your application. There are two
/// ways to do this in the provider, and they have their pros and cons. The difference ends
/// up being in how "latest" is interpreted. You can either deploy the latest image available
/// when the provider runs, or you can have each instance check what the latest image is when
/// it's being created, either as part of a scaling event or being rebuilt by the instance
/// group manager.
///
/// If you're not sure, we recommend deploying the latest image available when the provider runs,
/// because this means all the instances in your group will be based on the same image, always,
/// and means that no upgrades or changes to your instances happen outside of a `pulumi up`.
/// You can achieve this by using the `gcp.compute.Image`
/// data source, which will retrieve the latest image on every `pulumi apply`, and will update
/// the template to use that specific image:
///
///
///
/// To have instances update to the latest on every scaling event or instance re-creation,
/// use the family as the image for the disk, and it will use GCP's default behavior, setting
/// the image for the template to the family:
///
///
///
/// ## Import
///
/// Instance templates can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/global/instanceTemplates/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, instance templates can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/instanceTemplate:InstanceTemplate default projects/{{project}}/global/instanceTemplates/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/instanceTemplate:InstanceTemplate default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/instanceTemplate:InstanceTemplate default {{name}}
/// ```
class InstanceTemplate extends CustomResource {
  /// Configure Nested Virtualisation and Simultaneous Hyper Threading on this VM. Structure is documented below
  late final Output<InstanceTemplateAdvancedMachineFeatures?>
      advancedMachineFeatures;

  /// Whether to allow sending and receiving of
  /// packets with non-matching source or destination IPs. This defaults to false.
  late final Output<bool?> canIpForward;

  /// Enable [Confidential Mode](https://cloud.google.com/compute/confidential-vm/docs/about-cvm) on this VM. Structure is documented below
  late final Output<InstanceTemplateConfidentialInstanceConfig>
      confidentialInstanceConfig;

  /// Creation timestamp in RFC3339 text format.
  late final Output<String> creationTimestamp;

  /// A brief description of this resource.
  late final Output<String?> description;

  /// Disks to attach to instances created from this template.
  /// This can be specified multiple times for multiple disks. Structure is
  /// documented below.
  late final Output<List<InstanceTemplateDisk>> disks;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Enable [Virtual Displays](https://cloud.google.com/compute/docs/instances/enable-instance-virtual-display#verify_display_driver) on this instance.
  /// **Note**: `allow_stopping_for_update` must be set to true in order to update this field.
  late final Output<bool?> enableDisplay;

  /// List of the type and count of accelerator cards attached to the instance. Structure documented below.
  late final Output<List<InstanceTemplateGuestAccelerator>?> guestAccelerators;

  /// A brief description to use for instances
  /// created from this template.
  late final Output<String?> instanceDescription;

  /// Action to be taken when a customer's encryption key is revoked. Supports `STOP` and `NONE`, with `NONE` being the default.
  late final Output<String?> keyRevocationActionType;

  /// A set of key/value label pairs to assign to instances
  /// created from this template.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field 'effective_labels' for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// The machine type to create. To create a machine with a custom type (such as extended memory), format the value like custom-VCPUS-MEM_IN_MB like custom-6-20480 for 6 vCPU and 20GB of RAM.
  late final Output<String> machineType;

  /// Metadata key/value pairs to make available from
  /// within instances created from this template.
  late final Output<Map<String, String>?> metadata;

  /// The unique fingerprint of the metadata.
  late final Output<String> metadataFingerprint;

  /// An alternative to using the
  /// startup-script metadata key, mostly to match the compute_instance resource.
  /// This replaces the startup-script metadata key on the created instance and
  /// thus the two mechanisms are not allowed to be used simultaneously.
  late final Output<String?> metadataStartupScript;

  /// Specifies a minimum CPU platform. Applicable values are the friendly names of CPU platforms, such as
  /// `Intel Haswell` or `Intel Skylake`. See the complete list [here](https://cloud.google.com/compute/docs/instances/specify-min-cpu-platform).
  late final Output<String?> minCpuPlatform;

  /// The name of the instance template. If you leave
  /// this blank, the provider will auto-generate a unique name.
  late final Output<String> name;

  /// Creates a unique name beginning with the specified
  /// prefix. Conflicts with `name`. Max length is 54 characters.
  /// Prefixes with lengths longer than 37 characters will use a shortened
  /// UUID that will be more prone to collisions.
  ///
  /// Resulting name for a `name_prefix` <= 37 characters:
  /// `name_prefix` + YYYYmmddHHSSssss + 8 digit incremental counter
  /// Resulting name for a `name_prefix` 38 - 54 characters:
  /// `name_prefix` + YYmmdd + 3 digit incremental counter
  late final Output<String> namePrefix;

  /// Networks to attach to instances created from
  /// this template. This can be specified multiple times for multiple networks.
  /// Structure is documented below.
  late final Output<List<InstanceTemplateNetworkInterface>?> networkInterfaces;

  /// (Optional, Configures network performance settings for the instance created from the
  /// template. Structure is documented below. **Note**: `machine_type`
  /// must be a [supported type](https://cloud.google.com/compute/docs/networking/configure-vm-with-high-bandwidth-configuration),
  /// the `image` used must include the [`GVNIC`](https://cloud.google.com/compute/docs/networking/using-gvnic#create-instance-gvnic-image)
  /// in `guest-os-features`, and `network_interface.0.nic-type` must be `GVNIC`
  /// in order for this setting to take effect.
  late final Output<InstanceTemplateNetworkPerformanceConfig?>
      networkPerformanceConfig;

  /// numeric identifier of the resource.
  late final Output<String> numericId;

  /// Beta key/value pair represents partner metadata assigned to instance template where key represent a defined namespace and value is a json string represent the entries associted with the namespace.
  late final Output<Map<String, String>?> partnerMetadata;

  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// An instance template is a global resource that is not
  /// bound to a zone or a region. However, you can still specify some regional
  /// resources in an instance template, which restricts the template to the
  /// region where that resource resides. For example, a custom `subnetwork`
  /// resource is tied to a specific region. Defaults to the region of the
  /// Provider if no value is given.
  late final Output<String> region;

  /// Specifies the reservations that this instance can consume from.
  /// Structure is documented below.
  late final Output<InstanceTemplateReservationAffinity?> reservationAffinity;

  /// A set of key/value resource manager tag pairs to bind to the instances. Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/456.
  late final Output<Map<String, String>?> resourceManagerTags;

  /// - A list of self_links of resource policies to attach to the instance. Modifying this list will cause the instance to recreate. Currently a max of 1 resource policy is supported.
  late final Output<String?> resourcePolicies;

  /// The scheduling strategy to use. More details about
  /// this configuration option are detailed below.
  late final Output<InstanceTemplateScheduling> scheduling;

  /// The URI of the created resource.
  late final Output<String> selfLink;

  /// A special URI of the created resource that uniquely identifies this instance template with the following format: `projects/{{project}}/global/instanceTemplates/{{name}}?uniqueId={{uniqueId}}`
  /// Referencing an instance template via this attribute prevents Time of Check to Time of Use attacks when the instance template resides in a shared/untrusted environment.
  late final Output<String> selfLinkUnique;

  /// Service account to attach to the instance. Structure is documented below.
  late final Output<InstanceTemplateServiceAccount?> serviceAccount;

  /// Enable [Shielded VM](https://cloud.google.com/security/shielded-cloud/shielded-vm) on this instance. Shielded VM provides verifiable integrity to prevent against malware and rootkits. Defaults to disabled. Structure is documented below.
  /// **Note**: `shielded_instance_config` can only be used with boot images with shielded vm support. See the complete list [here](https://cloud.google.com/compute/docs/images#shielded-images).
  late final Output<InstanceTemplateShieldedInstanceConfig>
      shieldedInstanceConfig;

  /// Tags to attach to the instance.
  late final Output<List<String>?> tags;

  /// The unique fingerprint of the tags.
  late final Output<String> tagsFingerprint;

  InstanceTemplate(
    String name, {
    InstanceTemplateArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:compute/instanceTemplate:InstanceTemplate',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.advancedMachineFeatures =
        registerOutput<InstanceTemplateAdvancedMachineFeatures?>(
            'advancedMachineFeatures');
    this.canIpForward = registerOutput<bool?>('canIpForward');
    this.confidentialInstanceConfig =
        registerOutput<InstanceTemplateConfidentialInstanceConfig>(
            'confidentialInstanceConfig');
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.description = registerOutput<String?>('description');
    this.disks = registerOutput<List<InstanceTemplateDisk>>('disks');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.enableDisplay = registerOutput<bool?>('enableDisplay');
    this.guestAccelerators =
        registerOutput<List<InstanceTemplateGuestAccelerator>?>(
            'guestAccelerators');
    this.instanceDescription = registerOutput<String?>('instanceDescription');
    this.keyRevocationActionType =
        registerOutput<String?>('keyRevocationActionType');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.machineType = registerOutput<String>('machineType');
    this.metadata = registerOutput<Map<String, String>?>('metadata');
    this.metadataFingerprint = registerOutput<String>('metadataFingerprint');
    this.metadataStartupScript =
        registerOutput<String?>('metadataStartupScript');
    this.minCpuPlatform = registerOutput<String?>('minCpuPlatform');
    this.name = registerOutput<String>('name');
    this.namePrefix = registerOutput<String>('namePrefix');
    this.networkInterfaces =
        registerOutput<List<InstanceTemplateNetworkInterface>?>(
            'networkInterfaces');
    this.networkPerformanceConfig =
        registerOutput<InstanceTemplateNetworkPerformanceConfig?>(
            'networkPerformanceConfig');
    this.numericId = registerOutput<String>('numericId');
    this.partnerMetadata =
        registerOutput<Map<String, String>?>('partnerMetadata');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.region = registerOutput<String>('region');
    this.reservationAffinity =
        registerOutput<InstanceTemplateReservationAffinity?>(
            'reservationAffinity');
    this.resourceManagerTags =
        registerOutput<Map<String, String>?>('resourceManagerTags');
    this.resourcePolicies = registerOutput<String?>('resourcePolicies');
    this.scheduling = registerOutput<InstanceTemplateScheduling>('scheduling');
    this.selfLink = registerOutput<String>('selfLink');
    this.selfLinkUnique = registerOutput<String>('selfLinkUnique');
    this.serviceAccount =
        registerOutput<InstanceTemplateServiceAccount?>('serviceAccount');
    this.shieldedInstanceConfig =
        registerOutput<InstanceTemplateShieldedInstanceConfig>(
            'shieldedInstanceConfig');
    this.tags = registerOutput<List<String>?>('tags');
    this.tagsFingerprint = registerOutput<String>('tagsFingerprint');
  }
}
